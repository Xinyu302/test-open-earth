#!/bin/sh
llc -O3 laplace.bc -o laplace.s
clang -c laplace.s -fPIE -o laplace.o
#nvcc -fPIE -arch=sm_70  main.cu -o main.o  
#nvcc -arch=sm_70  main.cu -o main.o  
#gcc main.o laplace.o -o main -fPIE -L/usr/local/cuda-11.1/targets/x86_64-linux/lib -lcudart
nvcc -ccbin clang main.cpp laplace.o -L/root/llvm-project/install/lib -lcuda-runtime-wrappers -lcudart -lcuda -o demo
