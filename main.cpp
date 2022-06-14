#include <cuda_runtime.h>
#include <cuda.h>
#include <cmath>
#include <cstdio>

// define the domain size and the halo width
int64_t domain_size = 64;
int64_t domain_height = 60;
int64_t halo_width = 4;

typedef double ElementType;

#include "utils.h"
#include "laplace.h"

typedef MemRef1D MemRefType1D;
typedef MemRef2D MemRefType2D;
typedef MemRef3D MemRefType3D;

extern "C" 
{
 void _mlir_ciface_laplace(MemRefType3D *input, MemRefType3D *output);
}

CUcontext cuContext;
CUdevice cuDevice;
CUmodule cuModule;
//double in[72][72][72],out[72][72][72];

// program times the execution of the linked program and times the result
int main(int argc, char **argv) {


    if(argc == 3) {
        domain_size = atoi(argv[1]);
        domain_height = atoi(argv[2]);
    } else if (argc == 1) {
    } else {
        std::cout << "Either provide the domain size and domain height like this \"./kernel 128 60\" or do not provide any arguments at all in which case the program is ran with domain size 64 and domain heigh 60" << std::endl;
        exit(1);
    }
    cuInit(0);
    cuDeviceGet(&cuDevice, 0);
    cuCtxCreate(&cuContext, 0, cuDevice);


    // cudaFree(nullptr);
    const std::array<int64_t, 3> sizes3D = { domain_size + 2 * halo_width,
                                             domain_size + 2 * halo_width,
                                             domain_height + 2 * halo_width };


    // allocate the storage
    MemRefType3D in = allocateMemRef(sizes3D);
    MemRefType3D out_cpu = allocateMemRef(sizes3D);
    MemRefType3D out = allocateMemRef(sizes3D);

    fillMath(1.1, 2.0, 1.5, 2.8, 2.0, 4.1, in, domain_size, domain_height);
    initValue(out, 0.0, domain_size, domain_height);
    initValue(out_cpu, 0.0, domain_size, domain_height);
    
    MemRefCopyH2D(in);
    laplace(in, out_cpu);

    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);
    cudaEventRecord(start,0);
    // computing the reference version
     _mlir_ciface_laplace(&in, &out);

    cudaEventRecord(stop,0);
    cudaEventSynchronize(stop);
  
    cudaEventElapsedTime(&et, start, stop);
    MemRefCopyD2H(out);
    check_difference(out, out_cpu);
    printf("GPU time = %f ms\n", et);

    // free the storage
    freeMemRef(in);
    freeMemRef(out);

    return 0;
}

