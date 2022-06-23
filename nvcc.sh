#!/bin/sh
oec-opt --stencil-shape-inference --convert-stencil-to-std --cse --parallel-loop-tiling='parallel-loop-tile-sizes=128,1,1' --canonicalize --test-gpu-greedy-parallel-loop-mapping --convert-parallel-loops-to-gpu --canonicalize --lower-affine --convert-scf-to-std --stencil-kernel-to-cubin laplace.mlir > laplace_lowered.mlir
mlir-translate --mlir-to-llvmir laplace_lowered.mlir > laplace.bc
llc -O3 laplace.bc -o laplace.s
clang -c laplace.s -fPIE -o laplace.o
#nvcc -fPIE -arch=sm_70  main.cu -o main.o  
#nvcc -arch=sm_70  main.cu -o main.o  
#gcc main.o laplace.o -o main -fPIE -L/usr/local/cuda-11.1/targets/x86_64-linux/lib -lcudart
nvcc -ccbin clang main-uvm.cpp laplace.o -L/root/new-open-earth/llvm-project/install/lib -lcuda-runtime-wrappers -lcudart -lcuda -o demo
