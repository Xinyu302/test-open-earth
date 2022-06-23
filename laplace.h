#ifndef LAPLACE_H
#define LAPLACE_H

void laplace(const MemRef3D& in, MemRef3D& out) {
  for (int32_t i = 0; i < domain_size; ++i) {
    for (int32_t j = 0; j < domain_size; ++j) {
      for (int32_t k = 0; k < domain_height; ++k) {
        out(i, j, k) =
            -4.0 * in(i, j, k) + ((in(i - 1, j, k) + in(i + 1, j, k)) +
                                  (in(i, j + 1, k) + in(i, j - 1, k)));
      }
    }
  }
}

#endif // LAPLACE_H
