
module {
    func @fastwavesuv_split4(%arg0: !stencil.field<?x?x?xf64>, %arg1: !stencil.field<?x?x?xf64>, %arg2: !stencil.field<?x?x?xf64>, %arg3: !stencil.field<?x?x?xf64>, %arg4: !stencil.field<0x?x0xf64>, %arg5: !stencil.field<?x?x?xf64>) attributes {stencil.program} {
        
        %0 = stencil.cast %arg0([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %1 = stencil.cast %arg1([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %2 = stencil.cast %arg2([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %3 = stencil.cast %arg3([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %4 = stencil.cast %arg4([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<0x?x0xf64>) -> !stencil.field<0x72x0xf64>
        %5 = stencil.cast %arg5([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %6 = stencil.load %0 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
        %7 = stencil.load %1 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
        %8 = stencil.load %2 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
        %9 = stencil.load %3 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
        %10 = stencil.load %4 : (!stencil.field<0x72x0xf64>) -> !stencil.temp<0x?x0xf64>
%11 = stencil.apply (%arg11 = %6 : !stencil.temp<?x?x?xf64>, %arg12 = %7 : !stencil.temp<?x?x?xf64>, %arg13 = %8 : !stencil.temp<?x?x?xf64>, %arg14 = %9 : !stencil.temp<?x?x?xf64>, %arg15 = %10 : !stencil.temp<0x?x0xf64>) -> !stencil.temp<?x?x?xf64> {
      %cst = constant 1.000000e+01 : f64
      %cst_0 = constant 2.000000e+00 : f64
      %26 = stencil.access %arg13 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %27 = stencil.access %arg14 [1, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %28 = stencil.access %arg14 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %29 = stencil.access %arg15 [0, 0, 0] : (!stencil.temp<0x?x0xf64>) -> f64
      %30 = addf %27, %28 : f64
      %31 = mulf %cst_0, %29 : f64
      %32 = divf %31, %30 : f64
      %33 = mulf %26, %32 : f64
      %34 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %35 = subf %34, %33 : f64
      %36 = mulf %cst, %35 : f64
      %37 = stencil.access %arg11 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %38 = addf %36, %37 : f64
      %39 = stencil.store_result %38 : (f64) -> !stencil.result<f64>
      stencil.return %39 : !stencil.result<f64>
    }
        stencil.store %11 to %5([0, 0, 0] : [64, 64, 64]) : !stencil.temp<?x?x?xf64> to !stencil.field<72x72x72xf64>
        return
        

            }
    }
            
