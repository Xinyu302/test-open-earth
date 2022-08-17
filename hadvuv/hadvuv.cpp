#include <cmath>
#include <chrono>

// define the domain size and the halo width
int32_t domain_size = 64;
int32_t domain_height = 60;
int32_t halo_width = 4;

typedef double ElementType;

#include "util.h"

extern "C" {
  void _mlir_ciface_hadvuv(Storage3D *, Storage3D *,Storage3D *,Storage3D *,Storage1D *,Storage1D *,Storage1D *,Storage1D *);
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

  const int32_t size1D = domain_size + 2*halo_width;
  const std::array<int32_t, 3> sizes3D = { domain_size + 2*halo_width,
                                           domain_size + 2*halo_width,
                                           domain_height + 2*halo_width };


  // allocate the storage
  Storage3D uin = allocateStorage(sizes3D);
  Storage3D vin = allocateStorage(sizes3D);
  Storage3D uout = allocateStorage(sizes3D);
  Storage3D vout = allocateStorage(sizes3D);
  Storage1D acrlat0 = allocateStorage(size1D);
  Storage1D acrlat1 = allocateStorage(size1D);
  Storage1D tgrlatda0 = allocateStorage(size1D);
  Storage1D tgrlatda1 = allocateStorage(size1D);
//   Storage3D uatupos = allocateStorage(sizes3D);
//   Storage3D vatupos = allocateStorage(sizes3D);
//   Storage3D uatvpos = allocateStorage(sizes3D);
//   Storage3D vatvpos = allocateStorage(sizes3D);
//   Storage3D uavg = allocateStorage(sizes3D);
//   Storage3D vavg = allocateStorage(sizes3D);
//   Storage3D ures = allocateStorage(sizes3D);
//   Storage3D vres = allocateStorage(sizes3D);


//   ElementType eddlat = ldexpl(1.0, -11);
//   ElementType eddlon = ldexpl(1.5, -11);

  fillMath(1.1, 2.0, 1.5, 2.8, 2.0, 4.1, uin, domain_size, domain_height);
  fillMath(8.0, 9.4, 1.5, 1.7, 2.0, 3.5, vin, domain_size, domain_height);

  fillMath(8.0, 9.4, 1.5, 1.7, 2.0, 3.5, acrlat0, domain_size, domain_height);
  fillMath(5.0, 8.0, 1.5, 7.1, 2.0, 4.3, acrlat1, domain_size, domain_height);
  fillMath(5.0, 8.0, 1.5, 7.1, 2.0, 4.3, tgrlatda0, domain_size, domain_height);
  fillMath(3.2, 7.0, 2.5, 6.1, 3.0, 2.3, tgrlatda1, domain_size, domain_height);

  initValue(uout, 0.0, domain_size, domain_height);
  initValue(vout, 0.0, domain_size, domain_height);


  memH2D(uin);
  memH2D(vin);
  memH2D(uout);
  memH2D(vout);
  memH2D(acrlat0);
  memH2D(acrlat1);
  memH2D(tgrlatda0);
  memH2D(tgrlatda1);

  auto start = std::chrono::high_resolution_clock::now();

  _mlir_ciface_hadvuv(&uin, &vin,&uout, &vout, &acrlat0, &acrlat1, &tgrlatda0, &tgrlatda1);

  auto end = std::chrono::high_resolution_clock::now();
  std::chrono::duration<double> elapsed_seconds = end-start;
  std::cout << "elapsed time: " << elapsed_seconds.count() << "s" << std::endl;

  memD2H(uout);
  memD2H(vout);
  std::cout << "uout" << std::endl;
  printStorage(uout);
  std::cout << "vout" << std::endl;
  printStorage(vout);


  // free the storage
  freeDeviceStorage(uin);
  freeDeviceStorage(vin);
  freeStorage(uout);
  freeStorage(vout);
  freeDeviceStorage(acrlat0);
  freeDeviceStorage(acrlat1);
  freeDeviceStorage(tgrlatda0);
  freeDeviceStorage(tgrlatda1);
//   freeStorage(uatupos);
//   freeStorage(vatupos);
//   freeStorage(uatvpos);
//   freeStorage(vatvpos);
//   freeStorage(uavg);
//   freeStorage(vavg);
//   freeStorage(ures);
//   freeStorage(vres);

  return 0;
}
