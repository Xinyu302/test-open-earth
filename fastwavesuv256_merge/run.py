from ast import arg
import os
import os.path
from re import A
import subprocess
import argparse

# CWD = os.path.realpath(os.path.dirname(__file__))
CWD = os.path.dirname(os.path.realpath(__file__))
BENCH_NAME = os.path.basename(CWD)

origin_mlir_path = os.path.join(CWD, BENCH_NAME + ".mlir")
lowered_mlir_path = os.path.join(CWD, BENCH_NAME + "_lowered.mlir")
bc_path = os.path.join(CWD, BENCH_NAME + ".bc")
assembly_path = os.path.join(CWD, BENCH_NAME + ".s")
object_path = os.path.join(CWD, BENCH_NAME + ".o")
demo_path = os.path.join(CWD, "demo")

def compile_mlir():
    print("Compiling MLIR...")

    cmd1 = "oec-opt --stencil-shape-inference --convert-stencil-to-std --cse \
        --parallel-loop-tiling='parallel-loop-tile-sizes=128,1,1' \
        --canonicalize --test-gpu-greedy-parallel-loop-mapping \
        --convert-parallel-loops-to-gpu --canonicalize --lower-affine --convert-scf-to-std --stencil-kernel-to-cubin " + origin_mlir_path
    cmd1_paras = "oec-opt --canonicalize --stencil-inlining --cse --canonicalize --stencil-shape-inference --stencil-storage-materialization --stencil-shape-inference --stencil-combine-to-ifelse --cse \
        --canonicalize --convert-stencil-to-std --cse --parallel-loop-tiling=parallel-loop-tile-sizes=128,1,1 \
        --canonicalize --test-gpu-greedy-parallel-loop-mapping --convert-parallel-loops-to-gpu --lower-affine \
        --convert-scf-to-std --gpu-kernel-outlining --cse \
        --canonicalize --stencil-kernel-to-cubin --cse --canonicalize --mlir-disable-threading " + origin_mlir_path
    with open(lowered_mlir_path, "w") as f:
        ret = subprocess.call(cmd1_paras.split(), cwd=CWD, stdout=f)
    if ret != 0:
        print("Error: compile_mlir failed in lowering")
        exit(1)
    cmd2 = "mlir-translate --mlir-to-llvmir " + lowered_mlir_path
    with open(bc_path, "w") as f:
        ret = subprocess.call(cmd2.split(), cwd=CWD, stdout=f)
    if ret != 0:
        print("Error: compile_mlir failed in translation")
        exit(1)
    cmd3 = "llc -O3 " + bc_path + " -o " + assembly_path
    ret = subprocess.call(cmd3.split(), cwd=CWD)
    if ret != 0:
        print("Error: compile_mlir failed in llc")
        exit(1)
    cmd4 = "clang -c " + assembly_path + " -fPIE -o " + object_path
    ret = subprocess.call(cmd4.split(), cwd=CWD)
    if ret != 0:
        print("Error: compile_mlir failed in clang")
        exit(1)

def clean():
    for file in [lowered_mlir_path, bc_path, assembly_path, object_path, demo_path]:
        if os.path.exists(file):
            os.remove(file)


def link():
    print("Linking...")
    cmd = "nvcc -ccbin clang {}.cpp ".format(BENCH_NAME) + object_path + " -L/root/new-open-earth/llvm-project/install/lib -lcuda-runtime-wrappers -lcudart -lcuda -o demo"
    ret = subprocess.call(cmd.split(), cwd=CWD)
    if ret != 0:
        print("Error: link failed")
        exit(1)

def run():
    print("Running...")
    cmd = "./demo"
    stdout_file = open("result.txt","w");
    stderr_file = open("error.txt","w");
    ret = subprocess.call(cmd.split(), cwd=CWD, stdout=stdout_file, stderr=stderr_file)
    if ret != 0:
        print("Error: run failed")
        exit(1)

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--clean', action='store_true')
    parser.add_argument('--run', action='store_true')
    args = parser.parse_args()

    if args.clean:
        clean()
    if args.run:
        clean()
        compile_mlir()
        link()
        run()
        print("done!")
