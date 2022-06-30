import os
import os.path
import subprocess


# CWD = os.path.realpath(os.path.dirname(__file__))
CWD = os.path.dirname(os.path.realpath(__file__))
BENCH_NAME = os.path.basename(CWD)

origin_mlir_path = os.path.join(CWD, BENCH_NAME + ".mlir")
lowered_mlir_path = os.path.join(CWD, BENCH_NAME + "_lowered.mlir")
bc_path = os.path.join(CWD, BENCH_NAME + ".bc")
assembly_path = os.path.join(CWD, BENCH_NAME + ".s")
object_path = os.path.join(CWD, BENCH_NAME + ".o")

def compile_mlir():
    print("Compiling MLIR...")

    cmd1 = "oec-opt --stencil-shape-inference --convert-stencil-to-std --cse \
        --parallel-loop-tiling='parallel-loop-tile-sizes=128,1,1' \
        --canonicalize --test-gpu-greedy-parallel-loop-mapping \
        --convert-parallel-loops-to-gpu --canonicalize --lower-affine --convert-scf-to-std --stencil-kernel-to-cubin " + origin_mlir_path
    subprocess.call(cmd1.split(), cwd=CWD, stdout=lowered_mlir_path)
    cmd2 = "mlir-translate --mlir-to-llvmir " + lowered_mlir_path
    subprocess.call(cmd2.split(), cwd=CWD, stdout=bc_path)
    cmd3 = "llc -O3 " + bc_path + " -o " + assembly_path
    subprocess.call(cmd3.split(), cwd=CWD)
    cmd4 = "clang -c " + assembly_path + " -fPIE -o " + object_path
    subprocess.call(cmd4.split(), cwd=CWD)

def clean():
    for file in [lowered_mlir_path, bc_path, assembly_path, object_path]:
        if os.path.exists(file):
            os.remove(file)


def link():
    print("Linking...")
    cmd = "nvcc -ccbin clang {}.cpp ".format(BENCH_NAME) + object_path + " -L/root/new-open-earth/llvm-project/install/lib -lcuda-runtime-wrappers -lcudart -lcuda -o demo"
    subprocess.call(cmd.split(), cwd=CWD)
    
def run():
    print("Running...")
    cmd = "./demo"
    ret = subprocess.call(cmd.split(), cwd=CWD)
    if ret != 0:
        print("Error: run failed")
        exit(1)

if __name__ == '__main__':
    clean()
    compile_mlir()
    link()
    run()