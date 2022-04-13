	.text
	.file	"LLVMDialectModule"
	.globl	laplace                         # -- Begin function laplace
	.p2align	4, 0x90
	.type	laplace,@function
laplace:                                # @laplace
.Lfunc_begin0:
	.file	1 "/root/open-earth-compiler/test/laplace_lowered.mlir"
	.loc	1 6 0                           # laplace_lowered.mlir:6:0
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$120, %rsp
	.cfi_def_cfa_offset 160
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	192(%rsp), %r15
	movq	184(%rsp), %r12
.Ltmp0:
	.loc	1 56 11 prologue_end            # laplace_lowered.mlir:56:11
	movl	$laplace_kernel_gpubin_cst, %edi
	callq	mgpuModuleLoad
	.loc	1 60 11                         # laplace_lowered.mlir:60:11
	movl	$laplace_kernel_laplace_kernel_kernel_name, %esi
	movq	%rax, %rdi
	callq	mgpuModuleGetFunction
	movq	%rax, %r14
	.loc	1 62 11                         # laplace_lowered.mlir:62:11
	callq	mgpuStreamCreate
	movq	%rax, %rbx
	.loc	1 79 5                          # laplace_lowered.mlir:79:5
	movq	%r12, (%rsp)
	movq	%rsp, %rax
	.loc	1 82 5                          # laplace_lowered.mlir:82:5
	movq	%rax, 48(%rsp)
	.loc	1 84 11                         # laplace_lowered.mlir:84:11
	leaq	8(%rsp), %rax
	.loc	1 85 5                          # laplace_lowered.mlir:85:5
	movq	%r15, 8(%rsp)
	.loc	1 88 5                          # laplace_lowered.mlir:88:5
	movq	%rax, 56(%rsp)
	.loc	1 90 11                         # laplace_lowered.mlir:90:11
	leaq	16(%rsp), %rax
	.loc	1 91 5                          # laplace_lowered.mlir:91:5
	movl	$21028, 16(%rsp)                # imm = 0x5224
	.loc	1 94 5                          # laplace_lowered.mlir:94:5
	movq	%rax, 64(%rsp)
	.loc	1 96 11                         # laplace_lowered.mlir:96:11
	leaq	20(%rsp), %rax
	movabsq	$274877907008, %rcx             # imm = 0x4000000040
	.loc	1 97 5                          # laplace_lowered.mlir:97:5
	movq	%rcx, 20(%rsp)
	.loc	1 100 5                         # laplace_lowered.mlir:100:5
	movq	%rax, 72(%rsp)
	.loc	1 102 11                        # laplace_lowered.mlir:102:11
	leaq	24(%rsp), %rax
	.loc	1 106 5                         # laplace_lowered.mlir:106:5
	movq	%rax, 80(%rsp)
	.loc	1 108 11                        # laplace_lowered.mlir:108:11
	leaq	28(%rsp), %rax
	.loc	1 109 5                         # laplace_lowered.mlir:109:5
	movl	$64, 28(%rsp)
	.loc	1 112 5                         # laplace_lowered.mlir:112:5
	movq	%rax, 88(%rsp)
	.loc	1 114 11                        # laplace_lowered.mlir:114:11
	leaq	32(%rsp), %rax
	movabsq	$309237650496, %rcx             # imm = 0x4800001440
	.loc	1 115 5                         # laplace_lowered.mlir:115:5
	movq	%rcx, 32(%rsp)
	.loc	1 118 5                         # laplace_lowered.mlir:118:5
	movq	%rax, 96(%rsp)
	.loc	1 120 11                        # laplace_lowered.mlir:120:11
	leaq	36(%rsp), %rax
	.loc	1 124 5                         # laplace_lowered.mlir:124:5
	movq	%rax, 104(%rsp)
	.loc	1 126 12                        # laplace_lowered.mlir:126:12
	leaq	40(%rsp), %rax
	.loc	1 127 5                         # laplace_lowered.mlir:127:5
	movl	$1, 40(%rsp)
	.loc	1 130 5                         # laplace_lowered.mlir:130:5
	movq	%rax, 112(%rsp)
	.loc	1 132 12                        # laplace_lowered.mlir:132:12
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	56(%rsp), %rax
	movq	%r14, %rdi
	movl	$64, %esi
	movl	$64, %edx
	movl	$1, %ecx
	movl	$64, %r8d
	movl	$1, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	mgpuLaunchKernel
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	.loc	1 133 12                        # laplace_lowered.mlir:133:12
	movq	%rbx, %rdi
	callq	mgpuStreamSynchronize
	.loc	1 134 5                         # laplace_lowered.mlir:134:5
	addq	$120, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Ltmp1:
.Lfunc_end0:
	.size	laplace, .Lfunc_end0-laplace
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_laplace            # -- Begin function _mlir_ciface_laplace
	.p2align	4, 0x90
	.type	_mlir_ciface_laplace,@function
_mlir_ciface_laplace:                   # @_mlir_ciface_laplace
.Lfunc_begin1:
	.loc	1 136 0                         # laplace_lowered.mlir:136:0
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rax
.Ltmp2:
	.loc	1 137 10 prologue_end           # laplace_lowered.mlir:137:10
	movl	28(%rdi), %r9d
	movl	24(%rdi), %r8d
	movl	20(%rdi), %ecx
	movl	16(%rdi), %edx
	movq	(%rdi), %r10
	movq	8(%rdi), %rsi
	movl	32(%rdi), %ebp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movl	36(%rdi), %ebp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movl	40(%rdi), %edi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	.loc	1 147 11                        # laplace_lowered.mlir:147:11
	movl	16(%rax), %r12d
	movl	20(%rax), %r13d
	movl	24(%rax), %ebx
	movl	28(%rax), %ebp
	movl	32(%rax), %r11d
	movl	36(%rax), %r15d
	movl	40(%rax), %r14d
	.loc	1 157 5                         # laplace_lowered.mlir:157:5
	movq	%r10, %rdi
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	%r11
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	8(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	(%rax)
	.cfi_adjust_cfa_offset 8
	pushq	72(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	88(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)                       # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	laplace
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	.loc	1 158 5                         # laplace_lowered.mlir:158:5
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Ltmp3:
.Lfunc_end1:
	.size	_mlir_ciface_laplace, .Lfunc_end1-_mlir_ciface_laplace
	.cfi_endproc
                                        # -- End function
	.type	laplace_kernel_laplace_kernel_kernel_name,@object # @laplace_kernel_laplace_kernel_kernel_name
	.section	.rodata,"a",@progbits
laplace_kernel_laplace_kernel_kernel_name:
	.asciz	"laplace_kernel"
	.size	laplace_kernel_laplace_kernel_kernel_name, 15

	.type	laplace_kernel_gpubin_cst,@object # @laplace_kernel_gpubin_cst
	.p2align	4
laplace_kernel_gpubin_cst:
	.asciz	"\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000o\000\000\000\000\000\000\000\000\000\000\000@\n\000\000\000\000\000\000\200\007\000\000\000\000\000\000F\005#\000@\0008\000\003\000@\000\013\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text.laplace_kernel\000.nv.info.laplace_kernel\000.nv.shared.laplace_kernel\000.nv.constant0.laplace_kernel\000.rel.nv.constant0.laplace_kernel\000.debug_frame\000.rel.debug_frame\000.nv.rel.action\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000laplace_kernel\000.text.laplace_kernel\000.nv.info.laplace_kernel\000.nv.shared.laplace_kernel\000.rel.nv.constant0.laplace_kernel\000.nv.constant0.laplace_kernel\000_param\000.debug_frame\000.rel.debug_frame\000.nv.rel.action\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\000\000\003\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\251\000\000\000\003\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\315\000\000\000\003\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\353\000\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\n\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\377\377\377\377(\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\003\000\004|\377\377\377\377\017\f\201\200\200(\000\b\377\201\200(\b\201\200\200(\000\000\000\000\000\000\000\377\377\377\3770\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\360\000\000\000\000\000\000\000\004\004\000\000\000\004\000\000\000\000\f\201\200\200(\000\0040\000\000\000\000\000\000\004\021\b\000\005\000\000\000\000\000\000\000\004/\b\000\005\000\000\000\b\000\000\000\004\022\b\000\005\000\000\000\000\000\000\000\004\034\004\000\320\000\000\000\0041\004\000\020\000\000\000\003\033\377\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\024\000\000\360\021\000\004\027\f\000\000\000\000\000\004\000\030\000\000\360\021\000\004\027\f\000\000\000\000\000\005\000\034\000\000\360\021\000\004\027\f\000\000\000\000\000\006\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\007\000$\000\000\360\021\000\004\027\f\000\000\000\000\000\b\000(\000\000\360\021\000\003\031,\000\004\n\b\000\002\000\000\000`\001,\000\0047\004\000o\000\000\000\0046\004\000\001\000\000\000K\000\000\000\000\000\000\000\000\002\002\b\020\n/\"\000\000\000\b\000\000\000\000\000\000\b\b\000\000\000\000\000\000\020\b\000\000\000\000\000\000\030\b\000\000\000\000\000\000 \b\000\000\000\000\000\000(\b\000\000\000\000\000\0000\b\000\000\000\000\000\0008\b\000\000\000\000\001\000\000\b\000\000\000\000\001\000\b\b\000\000\000\000\001\000\020\b\000\000\000\000\001\000\030\b\000\000\000\000\001\000 \b\000\000\000\000\001\000(\b\000\000\000\000\001\0000\b\000\000\000\000\001\0008\b\000\000\000\000\002\000\000\b\000\000\000\000\002\000\b\b\000\000\000\000\002\000\020\b\000\000\000\000\002\000\030\b\000\000\000\000\002\000 \b\000\000\000\000\002\000(\b\000\000\000\000\002\0000\b\000\000\000\000\002\0008\b\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002z\001\000\000\n\000\000\000\017\000\000\000\320\017\000\211\363\377\377\377\000\000\000\377\000\016\000\000\342\017\000\031y\000\000\000\000\000\000\000%\000\000\000\"\016\000\002x\004\000\000\000\000\000\000\017\000\000\000\306\017\000\031y\003\000\000\000\000\000\000&\000\000\000(\016\000\031y\005\000\000\000\000\000\000!\000\000\000b\016\000$x\000\003H\000\000\000\000\002\216\007\000\342\037\000\002x\003\000\b\000\000\000\000\017\000\000\000\306\017\000$x\000\000H\000\000\000\377\002\216\007\000\312\017\000\020x\000\000$R\000\000\005\340\377\007\000\344/\000\002x\005\000\000\000\020\300\000\017\000\000\000\306\017\000%v\002\000\000Z\000\000\003\002\216\007\000\320\017\000\205s\000\002\000\000\000\000\004\353\020\000\000\342\017\000My\000\000\000\000\000\000\000\000\200\003\000\352\017\000Gy\000\000\360\377\377\377\377\377\203\003\000\300\017\000\030y\000\000\000\000\000\000\000\000\000\000\000\300\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\344\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000$\001\000\000\000\000\000\000\372\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \002\000\000\000\000\000\000\220\000\000\000\000\000\000\000\002\000\000\000\004\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\267\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\260\002\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000 \003\000\000\000\000\000\000$\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000G\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000D\003\000\000\000\000\000\000\304\000\000\000\000\000\000\000\003\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\325\000\000\000\013\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\004\000\000\000\000\000\000\320\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\304\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\330\004\000\000\000\000\000\000\020\000\000\000\000\000\000\000\003\000\000\000\004\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000y\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\350\004\000\000\000\000\000\000\214\001\000\000\000\000\000\000\000\000\000\000\n\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\006\000\000\000\000\000\000\000\001\000\000\000\000\000\000\003\000\000\000\005\000\000\b\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\005\000\000\000@\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\250\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\005\000\000\000\350\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\230\002\000\000\000\000\000\000\230\002\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000"
	.size	laplace_kernel_gpubin_cst, 2792

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	1                               # DW_CHILDREN_yes
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.ascii	"\264B"                         # DW_AT_GNU_pubnames
	.byte	25                              # DW_FORM_flag_present
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	2                               # Abbreviation Code
	.byte	46                              # DW_TAG_subprogram
	.byte	0                               # DW_CHILDREN_no
	.byte	17                              # DW_AT_low_pc
	.byte	1                               # DW_FORM_addr
	.byte	18                              # DW_AT_high_pc
	.byte	6                               # DW_FORM_data4
	.byte	64                              # DW_AT_frame_base
	.byte	24                              # DW_FORM_exprloc
	.byte	110                             # DW_AT_linkage_name
	.byte	14                              # DW_FORM_strp
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	58                              # DW_AT_decl_file
	.byte	11                              # DW_FORM_data1
	.byte	59                              # DW_AT_decl_line
	.byte	11                              # DW_FORM_data1
	.byte	63                              # DW_AT_external
	.byte	25                              # DW_FORM_flag_present
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x52 DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin0       # DW_AT_high_pc
	.byte	2                               # Abbrev [2] 0x2a:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin0                   # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string3                  # DW_AT_linkage_name
	.long	.Linfo_string3                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	6                               # DW_AT_decl_line
                                        # DW_AT_external
	.byte	2                               # Abbrev [2] 0x43:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	136                             # DW_AT_decl_line
                                        # DW_AT_external
	.byte	0                               # End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mlir"                          # string offset=0
.Linfo_string1:
	.asciz	"LLVMDialectModule"             # string offset=5
.Linfo_string2:
	.asciz	"/"                             # string offset=23
.Linfo_string3:
	.asciz	"laplace"                       # string offset=25
.Linfo_string4:
	.asciz	"_mlir_ciface_laplace"          # string offset=33
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	93                              # Compilation Unit Length
	.long	42                              # DIE offset
	.asciz	"laplace"                       # External Name
	.long	67                              # DIE offset
	.asciz	"_mlir_ciface_laplace"          # External Name
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	93                              # Compilation Unit Length
	.long	0                               # End Mark
.LpubTypes_end0:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
