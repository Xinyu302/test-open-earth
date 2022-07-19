
module {
    func @fastwavesuv_split0(%arg0: !stencil.field<?x?x?xf64>, %arg1: !stencil.field<?x?x?xf64>, %arg2: !stencil.field<?x?x?xf64>) attributes {stencil.program} {
        
        %0 = stencil.cast %arg0([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %1 = stencil.cast %arg1([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %2 = stencil.cast %arg2([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>
        %3 = stencil.load %0 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
        %4 = stencil.load %1 : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>
%5 = stencil.apply (%arg11 = %3 : !stencil.temp<?x?x?xf64>, %arg12 = %4 : !stencil.temp<?x?x?xf64>) -> !stencil.temp<?x?x?xf64> {
      %26 = stencil.access %arg11 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %27 = stencil.access %arg12 [0, 0, 0] : (!stencil.temp<?x?x?xf64>) -> f64
      %28 = mulf %26, %27 : f64
      %cst = constant 1.000000e+00 : f64
      %29 = subf %cst, %26 : f64
      %30 = stencil.access %arg12 [0, 0, -1] : (!stencil.temp<?x?x?xf64>) -> f64
      %31 = mulf %30, %29 : f64
      %32 = addf %28, %31 : f64
      %33 = stencil.store_result %32 : (f64) -> !stencil.result<f64>
      stencil.return %33 : !stencil.result<f64>
    }
        stencil.store %5 to %2([0, 0, 0] : [64, 64, 64]) : !stencil.temp<?x?x?xf64> to !stencil.field<72x72x72xf64>
        return
        

            }
    }
            
