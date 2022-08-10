import re
import os
import sys

CWD = os.path.dirname(__file__)
kernel_size = 512
origin_kernel_size = 72
halo_width = 4

if __name__ == '__main__':
    print(sys.argv[1])
    file_path = sys.argv[1]
    assert os.path.exists(file_path)
    assert file_path.endswith(".mlir")
    # for file in os.listdir(CWD):
    #     if file.endswith(".mlir"):
            # file_path = os.path.join(CWD, file)
    with open(file_path, "r") as f:
        content = f.read()
        replace_pattern_list = []
        if origin_kernel_size == 64:
            replace_pattern_list.append("{0}, {0}, {0}".format(origin_kernel_size - 2 * halo_width))
            replace_pattern_list.append(str(origin_kernel_size - halo_width))
            replace_pattern_list.append("[^f]" + str(origin_kernel_size))
        elif origin_kernel_size - halo_width == 64:
            replace_pattern_list.append("{0}, {0}, {0}".format(origin_kernel_size - 2 * halo_width))
            replace_pattern_list.append("[^f]" + str(origin_kernel_size - halo_width))
            replace_pattern_list.append(str(origin_kernel_size))
        else:
            replace_pattern_list.append("{0}, {0}, {0}".format(origin_kernel_size - 2 * halo_width))
            replace_pattern_list.append(str(origin_kernel_size - halo_width))
            replace_pattern_list.append(str(origin_kernel_size))

        for index, pattern in enumerate(replace_pattern_list):
            if index == 0:
                content = content.replace(pattern, "{0}, {0}, {0}".format(kernel_size - 2 * halo_width))
            if index == 1:
                content = content.replace(pattern, str(kernel_size - halo_width))
            if index == 2:
                content = content.replace(pattern, str(kernel_size))
    print(content)