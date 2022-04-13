#!/bin/sh
nvcc -x cu -arch=sm_75 -dc  main.cpp -o main.o
nvcc -arch=sm_75 -dlink main.o laplace.o -o gpuCode.o
g++ gpuCode.o main.o laplace.o -L/usr/local/cuda-11.1/targets/x86_64-linux/lib -fPIE -lcudart -o main
