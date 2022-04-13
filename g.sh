#/bin/sh

g++ -c main.cpp -o main-g++.o
g++ main-g++.o laplace.o -o main-g++
