#include <cuda_runtime.h>
#include <cuda.h>
#include <cmath>

// define the domain size and the halo width
int32_t domain_size = 64;
int32_t domain_height = 60;
int32_t halo_width = 4;

typedef double ElementType;

#include "util.h"

typedef MemRef1D MemRefType1D;
typedef MemRef2D MemRefType2D;
typedef MemRef3D MemRefType3D;

#define CUDA_CALL_SAFE(f) \
	    do \
    {                                                        \
	            cudaError_t _cuda_error = f;                         \
	            if (_cuda_error != cudaSuccess)                      \
	            {                                                    \
			                fprintf(stderr,  \
							                "%s, %d, CUDA ERROR: %s %s\n",  \
									                __FILE__,   \
											                __LINE__,   \
													                cudaGetErrorName(_cuda_error),  \
															                cudaGetErrorString(_cuda_error) \
																	            ); \
			                abort(); \
			                return EXIT_FAILURE; \
			            } \
	        } while (0)        

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
    const std::array<int32_t, 3> sizes3D = { domain_size + 2 * halo_width,
                                             domain_size + 2 * halo_width,
                                             domain_height + 2 * halo_width };


    // allocate the storage
    MemRefType3D in = allocateMemRef(sizes3D);
    MemRefType3D out = allocateMemRef(sizes3D);
    fillMath(1.1, 2.0, 1.5, 2.8, 2.0, 4.1, in, domain_size, domain_height);
    initValue(out, 0.0, domain_size, domain_height);
    for (int i = 0; i < domain_size; i++) 
        for (int j = 0; j < domain_size; j++) 
            for (int k = 0; k < domain_height; k++) {
                std::cout << in(i,j,k) << std::endl;
            }
    // computing the reference version
     _mlir_ciface_laplace(&in, &out);

     std::cout << "-----------\n";
     for (int i = 0; i < domain_size; i++) 
        for (int j = 0; j < domain_size; j++) 
            for (int k = 0; k < domain_height; k++) {
                std::cout << out(i,j,k) << std::endl;
            }
    // free the storage
    freeMemRef(in);
    freeMemRef(out);

    return 0;
}

