#include <cmath>
#include <chrono>

// define the domain size and the halo width
int32_t domain_size = 512-8;
int32_t domain_height = 512-8;
int32_t halo_width = 4;

typedef double ElementType;

#include "util.h"

extern "C" {
  void _mlir_ciface_fastwavesuv(Storage3D *, Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage3D *,Storage1D *);
}

void printStorage(Storage3D &ref) {

for (int i = 0; i < domain_size; i++) 
      for (int j = 0; j < domain_size; j++) 
          for (int k = 0; k < domain_height; k++) {
              std::cout << ref(i,j,k) << std::endl;
          }
}

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

  const int32_t size1D = domain_size + 2 * halo_width;
  const std::array<int32_t, 3> sizes3D = {domain_size + 2 * halo_width,
                                      domain_size + 2 * halo_width,
                                      domain_height + 2 * halo_width};

  // allocate the storage
  Storage3D uin = allocateStorage(sizes3D);
  Storage3D utens = allocateStorage(sizes3D);
  Storage3D vin = allocateStorage(sizes3D);
  Storage3D vtens = allocateStorage(sizes3D);
  Storage3D wgtfac = allocateStorage(sizes3D);
  Storage3D ppuv = allocateStorage(sizes3D);
  Storage3D hhl = allocateStorage(sizes3D);
  Storage3D rho = allocateStorage(sizes3D);
  Storage3D uout = allocateStorage(sizes3D);
  Storage3D vout = allocateStorage(sizes3D);
  Storage1D fx = allocateStorage(size1D);
  // Storage3D ppgk = allocateStorage(sizes3D);
  // Storage3D ppgc = allocateStorage(sizes3D);
  // Storage3D ppgu = allocateStorage(sizes3D);
  // Storage3D ppgv = allocateStorage(sizes3D);

  ElementType dt = 10.0;
  ElementType edadlat = ldexpl(1.0, -11);

  fillMath(1.0, 3.3, 1.5, 1.5, 2.0, 4.0, uin, domain_size, domain_height);
  fillMath(1.1, 2.0, 1.5, 2.8, 2.0, 4.1, utens, domain_size, domain_height);
  fillMath(1.1, 2.0, 1.5, 2.8, 2.0, 4.1, vin, domain_size, domain_height);
  fillMath(8.0, 9.4, 1.5, 1.7, 2.0, 3.5, vtens, domain_size, domain_height);
  fillMath(8.0, 9.4, 1.5, 1.7, 2.0, 3.5, ppuv, domain_size, domain_height);
  fillMath(5.0, 8.0, 1.5, 7.1, 2.0, 4.3, wgtfac, domain_size, domain_height);
  fillMath(5.0, 8.0, 1.5, 7.1, 2.0, 4.3, hhl, domain_size, domain_height);
  fillMath(3.2, 7.0, 2.5, 6.1, 3.0, 2.3, rho, domain_size, domain_height);
  fillMath(4.5, 5.0, 2.5, 2.1, 3.0, 2.3, fx, domain_size, domain_height);

  initValue(uout, 0.0, domain_size, domain_height);
  initValue(vout, 0.0, domain_size, domain_height);

  memH2D(uin);
  memH2D(utens);
  memH2D(vin);
  memH2D(vtens);
  memH2D(wgtfac);
  memH2D(ppuv);
  memH2D(hhl);
  memH2D(rho);
  memH2D(uout);
  memH2D(vout);
  memH2D(fx);

  auto start = std::chrono::high_resolution_clock::now();

  _mlir_ciface_fastwavesuv( &uin, &vin, &utens, &vtens, &wgtfac, &ppuv, &hhl, &rho,&uout, &vout, &fx);

  auto end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double> elapsed_seconds = end-start;
  std::cout << "elapsed time: " << elapsed_seconds.count() << "s" << std::endl;

  memD2H(uout);
  memD2H(vout);
  // free the storage in device memory
  freeDeviceStorage(uin);
  freeDeviceStorage(utens);
  freeDeviceStorage(vin);
  freeDeviceStorage(vtens);
  freeDeviceStorage(wgtfac);
  freeDeviceStorage(ppuv);
  freeDeviceStorage(hhl);
  freeDeviceStorage(rho);

  freeDeviceStorage(fx);
  // std::cout << "after values" << std::endl;
  // std::cout << "uout" << std::endl;

  // printStorage(uout);
  // std::cout << "vout" << std::endl;
  // printStorage(vout);


    // free the storage in host memory
  freeStorage(uout);
  freeStorage(vout);
  // freeStorage(ppgk);
  // freeStorage(ppgc);
  // freeStorage(ppgu);
  // freeStorage(ppgv);

  return 0;
}
