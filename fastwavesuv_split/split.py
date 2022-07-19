import re
import os

CWD = os.path.dirname(__file__)
kernel_name = os.path.basename(CWD)

def print_header(kernel_index, argc, f):
    args = []
    for i in range(argc + 1): # +1 for the return value
        args.append("%arg{}: !stencil.field<?x?x?xf64>".format(i))

    print('''
module {
    func @%s(%s) attributes {stencil.program} {
        ''' %(kernel_name + str(kernel_index), ', '.join(args)), file=f)


class big_kernel:
    def __init__(self) -> None:
        pass
        

class kernel:
    def __init__(self, index) -> None:
        self.index = index
        self.paras = []
        self.rv = []


with open(os.path.join(CWD, kernel_name + ".mlir"), "r") as f:
    content = f.read()
    obj = re.findall("%\d+ = stencil\.apply.*?\{.*?\}", content, re.S)

    for kernel_index, kernel_content in enumerate(obj):
        with open(kernel_name + str(kernel_index) + ".mlir", "w") as f:
            
        
            func_arg_list = re.findall("%arg(\d+) = %(\d+)", kernel_content)

            arg_length = len(func_arg_list)
            return_arg_index = arg_length
            print_header(kernel_index, arg_length, f)
            for i in range(arg_length + 1):
                print("        %{} = stencil.cast %arg{}([-4, -4, -4] : [68, 68, 68]) : (!stencil.field<?x?x?xf64>) -> !stencil.field<72x72x72xf64>".format(i,i), file=f)
            modified_index_list = []
            now_index = arg_length + 1
            for i in range(arg_length):
                print("        %{} = stencil.load %{} : (!stencil.field<72x72x72xf64>) -> !stencil.temp<?x?x?xf64>".format(now_index, i), file=f)
                modified_index_list.append(now_index)
                now_index += 1
            for i,(l, r) in enumerate(func_arg_list):
                kernel_content = kernel_content.replace("%" + r, "%" + str(modified_index_list[i]))
            return_value = re.findall("%(\d+) = stencil\.apply.*?\{.*?\}", kernel_content, re.S)[0]
            kernel_content = kernel_content.replace("%" + return_value, "%" + str(now_index))
            return_index = now_index
            now_index += 1
            print(kernel_content, file=f) # print the modified kernel content    
            print("        stencil.store %{} to %{}([0, 0, 0] : [64, 64, 64]) : !stencil.temp<?x?x?xf64> to !stencil.field<72x72x72xf64>".format(return_index, return_arg_index), file=f)
            print("        return", file=f)
            print("        ", file=f)
            print('''
            }
    }
            ''', file=f)
        
