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
    %20:2 = stencil.apply (%arg11 = %15 : !stencil.temp<?x?x?xf64>, %arg12 = %16 : !stencil.temp<?x?x?xf64>, %arg13 = %17 : !stencil.temp<?x?x?xf64>, %arg14 = %13 : !stencil.temp<?x?x?xf64>, %arg15 = %14 : !stencil.temp<?x?x?xf64>, %arg16 = %18 : !stencil.temp<?x?x?xf64>, %arg17 = %11 : !stencil.temp<?x?x?xf64>, %arg18 = %12 : !stencil.temp<?x?x?xf64>, %arg19 = %19 : !stencil.temp<0x?x0xf64>) -> (!stencil.temp<?x?x?xf64>, !stencil.temp<?x?x?xf64>) {
      %cst = constant 2.000000e+00 : f64
      %cst_0 = constant 1.000000e+01 : f64
      %cst_1 = constant 9.765625E-4 : f64
      %cst_2 = constant 5.000000e-01 : f64
      %cst_3 = constant 1.000000e+00 : f64
      %21 = stencil.access %arg11 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %22 = stencil.access %arg12 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %23 = mulf %21, %22 : f64
      %24 = subf %cst_3, %21 : f64
      %25 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %26 = mulf %25, %24 : f64
      %27 = addf %23, %26 : f64
      %28 = stencil.access %arg11 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %29 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %30 = mulf %28, %29 : f64
      %31 = subf %cst_3, %28 : f64
      %32 = stencil.access %arg12 [0, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %33 = mulf %32, %31 : f64
      %34 = addf %30, %33 : f64
      %35 = subf %27, %34 : f64
      %36 = stencil.access %arg12 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %37 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %38 = subf %36, %37 : f64
      %39 = stencil.access %arg11 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %40 = stencil.access %arg12 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %41 = mulf %39, %40 : f64
      %42 = subf %cst_3, %39 : f64
      %43 = stencil.access %arg12 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %44 = mulf %43, %42 : f64
      %45 = addf %41, %44 : f64
      %46 = stencil.access %arg11 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %47 = stencil.access %arg12 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %48 = mulf %46, %47 : f64
      %49 = subf %cst_3, %46 : f64
      %50 = stencil.access %arg12 [1, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %51 = mulf %50, %49 : f64
      %52 = addf %48, %51 : f64
      %53 = subf %45, %52 : f64
      %54 = addf %53, %35 : f64
      %55 = mulf %cst_2, %54 : f64
      %56 = stencil.access %arg13 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %57 = stencil.access %arg13 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %58 = stencil.access %arg13 [1, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %59 = stencil.access %arg13 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %60 = addf %56, %57 : f64
      %61 = addf %58, %59 : f64
      %62 = subf %60, %61 : f64
      %63 = subf %56, %57 : f64
      %64 = subf %58, %59 : f64
      %65 = addf %63, %64 : f64
      %66 = divf %62, %65 : f64
      %67 = mulf %55, %66 : f64
      %68 = addf %38, %67 : f64
      %69 = stencil.access %arg16 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %70 = stencil.access %arg16 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %71 = stencil.access %arg19 [0, 0, 0] : (!stencil.temp<0x?x0xf64>) -> f64
      %72 = addf %69, %70 : f64
      %73 = mulf %cst, %71 : f64
      %74 = divf %73, %72 : f64
      %75 = mulf %68, %74 : f64
      %76 = stencil.access %arg18 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %77 = subf %76, %75 : f64
      %78 = mulf %cst_0, %77 : f64
      %79 = stencil.access %arg17 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %80 = addf %78, %79 : f64
      %81 = stencil.store_result %80 : (f64) -> !stencil.result<f64>
      %82 = stencil.access %arg12 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %83 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %84 = subf %82, %83 : f64
      %85 = stencil.access %arg11 [0, 1, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %86 = stencil.access %arg12 [0, 1, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %87 = mulf %85, %86 : f64
      %88 = subf %cst_3, %85 : f64
      %89 = stencil.access %arg12 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %90 = mulf %89, %88 : f64
      %91 = addf %87, %90 : f64
      %92 = stencil.access %arg11 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %93 = stencil.access %arg12 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %94 = mulf %92, %93 : f64
      %95 = subf %cst_3, %92 : f64
      %96 = stencil.access %arg12 [0, 1, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %97 = mulf %96, %95 : f64
      %98 = addf %94, %97 : f64
      %99 = subf %91, %98 : f64
      %100 = stencil.access %arg11 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %101 = stencil.access %arg12 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %102 = mulf %100, %101 : f64
      %103 = subf %cst_3, %100 : f64
      %104 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %105 = mulf %104, %103 : f64
      %106 = addf %102, %105 : f64
      %107 = stencil.access %arg11 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %108 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %109 = mulf %107, %108 : f64
      %110 = subf %cst_3, %107 : f64
      %111 = stencil.access %arg12 [0, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %112 = mulf %111, %110 : f64
      %113 = addf %109, %112 : f64
      %114 = subf %106, %113 : f64
      %115 = addf %99, %114 : f64
      %116 = mulf %cst_2, %115 : f64
      %117 = stencil.access %arg13 [0, 0, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %118 = stencil.access %arg13 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %119 = stencil.access %arg13 [0, 1, 1] : (!stencil.temp<?x?x?xf64>) -> f64
      %120 = stencil.access %arg13 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %121 = addf %117, %118 : f64
      %122 = addf %119, %120 : f64
      %123 = subf %121, %122 : f64
      %124 = subf %117, %118 : f64
      %125 = subf %119, %120 : f64
      %126 = addf %124, %125 : f64
      %127 = divf %123, %126 : f64
      %128 = mulf %116, %127 : f64
      %129 = addf %84, %128 : f64
      %130 = stencil.access %arg16 [0, 1, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %131 = stencil.access %arg16 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %132 = addf %130, %131 : f64
      %133 = divf %cst_1, %132 : f64
      %134 = mulf %129, %133 : f64
      %135 = stencil.access %arg15 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %136 = subf %135, %134 : f64
      %137 = mulf %cst_0, %136 : f64
      %138 = stencil.access %arg14 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %139 = addf %137, %138 : f64
      %140 = stencil.store_result %139 : (f64) -> !stencil.result<f64>
      stencil.return %81, %140 : !stencil.result<f64>, !stencil.result<f64>
    }
    stencil.store %20#0 to %8([0, 0, 0] : [504, 504, 504]) : !stencil.temp<?x?x?xf64> to !stencil.field<512x512x512xf64>
    stencil.store %20#1 to %9([0, 0, 0] : [504, 504, 504]) : !stencil.temp<?x?x?xf64> to !stencil.field<512x512x512xf64>
    return
  }
}

