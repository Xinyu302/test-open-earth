module  {
  func @fastwavesuv(%arg0: !stencil.field<?x?x?xf64>, %arg1: !stencil.field<?x?x?xf64>, %arg2: !stencil.field<?x?x?xf64>, %arg3: !stencil.field<?x?x?xf64>, %arg4: !stencil.field<?x?x?xf64>, %arg5: !stencil.field<?x?x?xf64>, %arg6: !stencil.field<?x?x?xf64>, %arg7: !stencil.field<?x?x?xf64>, %arg8: !stencil.field<?x?x?xf64>, %arg9: !stencil.field<?x?x?xf64>, %arg10: !stencil.field<0x?x0xf64>) attributes {stencil.program} {
    %0 = stencil.cast %arg0([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %1 = stencil.cast %arg1([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %2 = stencil.cast %arg2([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %3 = stencil.cast %arg3([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %4 = stencil.cast %arg4([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %5 = stencil.cast %arg5([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %6 = stencil.cast %arg6([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %7 = stencil.cast %arg7([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %8 = stencil.cast %arg8([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %9 = stencil.cast %arg9([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<512x512x512xf64>
    %10 = stencil.cast %arg10([-4, -4, -4] : [508, 508, 508]) : (!stencil.field<0x?x0xf64>) -> !stencil.field<0x512x0xf64>
    %11 = stencil.load %0 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %12 = stencil.load %1 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %13 = stencil.load %2 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %14 = stencil.load %3 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %15 = stencil.load %4 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %16 = stencil.load %5 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %17 = stencil.load %6 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %18 = stencil.load %7 : (!stencil.field<512x512x512xf64>) -> !stencil.temp<?x?x?xf64>
    %19 = stencil.load %10 : (!stencil.field<0x512x0xf64>) -> !stencil.temp<0x?x0xf64>
    %20:2 = stencil.apply (%arg11 = %15 : !stencil.temp<?x?x?xf64>, %arg12 = %16 : !stencil.temp<?x?x?xf64>, %arg13 = %17 : !stencil.temp<?x?x?xf64>, %arg14 = %11 : !stencil.temp<?x?x?xf64>, %arg15 = %12 : !stencil.temp<?x?x?xf64>, %arg16 = %18 : !stencil.temp<?x?x?xf64>, %arg17 = %19 : !stencil.temp<0x?x0xf64>, %arg18 = %13 : !stencil.temp<?x?x?xf64>, %arg19 = %14 : !stencil.temp<?x?x?xf64>) -> (!stencil.temp<?x?x?xf64>, !stencil.temp<?x?x?xf64>) {
      %cst = constant 9.765625E-4 : f64
      %cst_0 = constant 1.000000e+01 : f64
      %cst_1 = constant 2.000000e+00 : f64
      %cst_2 = constant 5.000000e-01 : f64
      %cst_3 = constant 1.000000e+00 : f64
      %21 = stencil.access %arg12 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %22 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %23 = subf %21, %22 : f64
      %24 = stencil.access %arg11 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %25 = stencil.access %arg12 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %26 = mulf %24, %25 : f64
      %27 = subf %cst_3, %24 : f64
      %28 = stencil.access %arg12 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %29 = mulf %28, %27 : f64
      %30 = addf %26, %29 : f64
      %31 = stencil.access %arg11 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %32 = mulf %31, %28 : f64
      %33 = subf %cst_3, %31 : f64
      %34 = stencil.access %arg12 [1, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %35 = mulf %34, %33 : f64
      %36 = addf %32, %35 : f64
      %37 = subf %30, %36 : f64
      %38 = stencil.access %arg11 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %39 = stencil.access %arg12 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %40 = mulf %38, %39 : f64
      %41 = subf %cst_3, %38 : f64
      %42 = mulf %22, %41 : f64
      %43 = addf %40, %42 : f64
      %44 = stencil.access %arg11 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %45 = mulf %44, %22 : f64
      %46 = subf %cst_3, %44 : f64
      %47 = stencil.access %arg12 [0, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %48 = mulf %47, %46 : f64
      %49 = addf %45, %48 : f64
      %50 = subf %43, %49 : f64
      %51 = addf %37, %50 : f64
      %52 = mulf %cst_2, %51 : f64
      %53 = stencil.access %arg13 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %54 = stencil.access %arg13 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %55 = stencil.access %arg13 [0, 1, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %56 = stencil.access %arg13 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %57 = addf %53, %54 : f64
      %58 = subf %53, %54 : f64
      %59 = addf %55, %56 : f64
      %60 = subf %57, %59 : f64
      %61 = subf %55, %56 : f64
      %62 = addf %58, %61 : f64
      %63 = divf %60, %62 : f64
      %64 = mulf %52, %63 : f64
      %65 = addf %23, %64 : f64
      %66 = stencil.access %arg16 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %67 = stencil.access %arg16 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %68 = addf %66, %67 : f64
      %69 = divf %cst, %68 : f64
      %70 = mulf %65, %69 : f64
      %71 = stencil.access %arg19 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %72 = subf %71, %70 : f64
      %73 = mulf %cst_0, %72 : f64
      %74 = stencil.access %arg18 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %75 = addf %73, %74 : f64
      %76 = stencil.store_result %75 : (f64) -> !stencil.result<f64>
      %77 = subf %28, %22 : f64
      %78 = stencil.access %arg13 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %79 = stencil.access %arg13 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %80 = addf %78, %79 : f64
      %81 = subf %57, %80 : f64
      %82 = subf %78, %79 : f64
      %83 = addf %58, %82 : f64
      %84 = divf %81, %83 : f64
      %85 = mulf %52, %84 : f64
      %86 = addf %77, %85 : f64
      %87 = stencil.access %arg16 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %88 = stencil.access %arg17 [0, 0, 0] : (!stencil.temp<0x?x0xf64>) -> f64
      %89 = addf %87, %67 : f64
      %90 = mulf %cst_1, %88 : f64
      %91 = divf %90, %89 : f64
      %92 = mulf %86, %91 : f64
      %93 = stencil.access %arg15 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %94 = subf %93, %92 : f64
      %95 = mulf %cst_0, %94 : f64
      %96 = stencil.access %arg14 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %97 = addf %95, %96 : f64
      %98 = stencil.store_result %97 : (f64) -> !stencil.result<f64>
      stencil.return %76, %98 : !stencil.result<f64>, !stencil.result<f64>
    }
    stencil.store %20#1 to %8([0, 0, 0] : [504, 504, 504]) : !stencil.temp<?x?x?xf64> to !stencil.field<512x512x512xf64>
    stencil.store %20#0 to %9([0, 0, 0] : [504, 504, 504]) : !stencil.temp<?x?x?xf64> to !stencil.field<512x512x512xf64>
    return
  }
}

