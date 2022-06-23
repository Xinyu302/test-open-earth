	.text
	.file	"LLVMDialectModule"
	.globl	laplace                         # -- Begin function laplace
	.p2align	4, 0x90
	.type	laplace,@function
laplace:                                # @laplace
.Lfunc_begin0:
	.file	1 "/root/new-open-earth/open-earth-compiler/test/test-open-earth/laplace_lowered.mlir"
	.loc	1 4 0                           # laplace_lowered.mlir:4:0
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	336(%rsp), %r13
	movq	328(%rsp), %rbp
.Ltmp0:
	.loc	1 76 11 prologue_end            # laplace_lowered.mlir:76:11
	callq	mgpuStreamCreate@PLT
	movq	%rax, %r15
	.loc	1 80 11                         # laplace_lowered.mlir:80:11
	movl	$laplace_kernel_gpubin_cst, %edi
	callq	mgpuModuleLoad@PLT
	movq	%rax, %r14
	.loc	1 84 11                         # laplace_lowered.mlir:84:11
	movl	$laplace_kernel_laplace_kernel_kernel_name, %esi
	movq	%rax, %rdi
	callq	mgpuModuleGetFunction@PLT
	.loc	1 111 5                         # laplace_lowered.mlir:111:5
	movq	%rbx, 8(%rsp)
	leaq	8(%rsp), %rcx
	.loc	1 114 5                         # laplace_lowered.mlir:114:5
	movq	%rcx, 104(%rsp)
	.loc	1 116 12                        # laplace_lowered.mlir:116:12
	leaq	16(%rsp), %rcx
	.loc	1 117 5                         # laplace_lowered.mlir:117:5
	movq	%r12, 16(%rsp)
	.loc	1 120 5                         # laplace_lowered.mlir:120:5
	movq	%rcx, 112(%rsp)
	.loc	1 122 12                        # laplace_lowered.mlir:122:12
	leaq	24(%rsp), %rcx
	.loc	1 123 5                         # laplace_lowered.mlir:123:5
	movl	$20955, 24(%rsp)                # imm = 0x51DB
	.loc	1 126 5                         # laplace_lowered.mlir:126:5
	movq	%rcx, 120(%rsp)
	.loc	1 128 12                        # laplace_lowered.mlir:128:12
	leaq	28(%rsp), %rcx
	movabsq	$283467841600, %rdx             # imm = 0x4200000040
	.loc	1 129 5                         # laplace_lowered.mlir:129:5
	movq	%rdx, 28(%rsp)
	.loc	1 132 5                         # laplace_lowered.mlir:132:5
	movq	%rcx, 128(%rsp)
	.loc	1 134 12                        # laplace_lowered.mlir:134:12
	leaq	32(%rsp), %rcx
	.loc	1 138 5                         # laplace_lowered.mlir:138:5
	movq	%rcx, 136(%rsp)
	.loc	1 140 12                        # laplace_lowered.mlir:140:12
	leaq	36(%rsp), %rcx
	.loc	1 141 5                         # laplace_lowered.mlir:141:5
	movl	$66, 36(%rsp)
	.loc	1 144 5                         # laplace_lowered.mlir:144:5
	movq	%rcx, 144(%rsp)
	.loc	1 146 12                        # laplace_lowered.mlir:146:12
	leaq	40(%rsp), %rcx
	movabsq	$309237650496, %rdx             # imm = 0x4800001440
	.loc	1 147 5                         # laplace_lowered.mlir:147:5
	movq	%rdx, 40(%rsp)
	.loc	1 150 5                         # laplace_lowered.mlir:150:5
	movq	%rcx, 152(%rsp)
	.loc	1 152 12                        # laplace_lowered.mlir:152:12
	leaq	44(%rsp), %rcx
	.loc	1 156 5                         # laplace_lowered.mlir:156:5
	movq	%rcx, 160(%rsp)
	.loc	1 158 12                        # laplace_lowered.mlir:158:12
	leaq	48(%rsp), %rcx
	.loc	1 159 5                         # laplace_lowered.mlir:159:5
	movl	$1, 48(%rsp)
	.loc	1 162 5                         # laplace_lowered.mlir:162:5
	movq	%rcx, 168(%rsp)
	.loc	1 164 12                        # laplace_lowered.mlir:164:12
	leaq	56(%rsp), %rcx
	.loc	1 165 5                         # laplace_lowered.mlir:165:5
	movq	%rbp, 56(%rsp)
	.loc	1 168 5                         # laplace_lowered.mlir:168:5
	movq	%rcx, 176(%rsp)
	.loc	1 170 12                        # laplace_lowered.mlir:170:12
	leaq	64(%rsp), %rcx
	.loc	1 171 5                         # laplace_lowered.mlir:171:5
	movq	%r13, 64(%rsp)
	.loc	1 174 5                         # laplace_lowered.mlir:174:5
	movq	%rcx, 184(%rsp)
	.loc	1 176 12                        # laplace_lowered.mlir:176:12
	leaq	72(%rsp), %rcx
	.loc	1 177 5                         # laplace_lowered.mlir:177:5
	movl	$21028, 72(%rsp)                # imm = 0x5224
	.loc	1 180 5                         # laplace_lowered.mlir:180:5
	movq	%rcx, 192(%rsp)
	.loc	1 182 12                        # laplace_lowered.mlir:182:12
	leaq	76(%rsp), %rcx
	movabsq	$274877907008, %rsi             # imm = 0x4000000040
	.loc	1 183 5                         # laplace_lowered.mlir:183:5
	movq	%rsi, 76(%rsp)
	.loc	1 186 5                         # laplace_lowered.mlir:186:5
	movq	%rcx, 200(%rsp)
	.loc	1 188 12                        # laplace_lowered.mlir:188:12
	leaq	80(%rsp), %rcx
	.loc	1 192 5                         # laplace_lowered.mlir:192:5
	movq	%rcx, 208(%rsp)
	.loc	1 194 12                        # laplace_lowered.mlir:194:12
	leaq	84(%rsp), %rcx
	.loc	1 195 5                         # laplace_lowered.mlir:195:5
	movl	$64, 84(%rsp)
	.loc	1 198 5                         # laplace_lowered.mlir:198:5
	movq	%rcx, 216(%rsp)
	.loc	1 200 12                        # laplace_lowered.mlir:200:12
	leaq	88(%rsp), %rcx
	.loc	1 201 5                         # laplace_lowered.mlir:201:5
	movq	%rdx, 88(%rsp)
	.loc	1 204 5                         # laplace_lowered.mlir:204:5
	movq	%rcx, 224(%rsp)
	.loc	1 206 12                        # laplace_lowered.mlir:206:12
	leaq	92(%rsp), %rcx
	.loc	1 210 5                         # laplace_lowered.mlir:210:5
	movq	%rcx, 232(%rsp)
	.loc	1 212 12                        # laplace_lowered.mlir:212:12
	leaq	96(%rsp), %rcx
	.loc	1 213 5                         # laplace_lowered.mlir:213:5
	movl	$1, 96(%rsp)
	.loc	1 216 5                         # laplace_lowered.mlir:216:5
	movq	%rcx, 240(%rsp)
	.loc	1 224 12                        # laplace_lowered.mlir:224:12
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	112(%rsp), %rbp
	movl	$64, %esi
	movl	$64, %edx
	movl	$1, %ecx
	movl	$64, %r8d
	movl	$1, %r9d
	movq	%rax, %rdi
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	%rbp
	.cfi_adjust_cfa_offset 8
	pushq	%r15
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	callq	mgpuLaunchKernel@PLT
	addq	$48, %rsp
	.cfi_adjust_cfa_offset -48
	.loc	1 225 12                        # laplace_lowered.mlir:225:12
	movq	%r14, %rdi
	callq	mgpuModuleUnload@PLT
	.loc	1 226 12                        # laplace_lowered.mlir:226:12
	movq	%r15, %rdi
	callq	mgpuStreamSynchronize@PLT
	.loc	1 227 12                        # laplace_lowered.mlir:227:12
	movq	%r15, %rdi
	callq	mgpuStreamDestroy@PLT
	.loc	1 228 5                         # laplace_lowered.mlir:228:5
	addq	$248, %rsp
	.cfi_def_cfa_offset 56
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
	.loc	1 230 0                         # laplace_lowered.mlir:230:0
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
	.loc	1 231 10 prologue_end           # laplace_lowered.mlir:231:10
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
	.loc	1 241 11                        # laplace_lowered.mlir:241:11
	movl	16(%rax), %r12d
	movl	20(%rax), %r13d
	movl	24(%rax), %ebx
	movl	28(%rax), %ebp
	movl	32(%rax), %r11d
	movl	36(%rax), %r15d
	movl	40(%rax), %r14d
	.loc	1 251 5                         # laplace_lowered.mlir:251:5
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
	callq	laplace@PLT
	addq	$120, %rsp
	.cfi_adjust_cfa_offset -120
	.loc	1 252 5                         # laplace_lowered.mlir:252:5
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
	.asciz	"\177ELF\002\001\0013\007\000\000\000\000\000\000\000\002\000\276\000u\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\n\000\000\000\000\000\000F\005#\000@\000\000\000\000\000@\000\f\000\001\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000.text.laplace_kernel\000.nv.info.laplace_kernel\000.nv.shared.laplace_kernel\000.nv.constant0.laplace_kernel\000.rel.nv.constant0.laplace_kernel\000.debug_frame\000.rel.debug_frame\000.rela.debug_frame\000.nv.callgraph\000.nv.prototype\000.nv.rel.action\000\000.shstrtab\000.strtab\000.symtab\000.symtab_shndx\000.nv.info\000laplace_kernel\000.text.laplace_kernel\000.nv.info.laplace_kernel\000.nv.shared.laplace_kernel\000.rel.nv.constant0.laplace_kernel\000.nv.constant0.laplace_kernel\000_param\000.debug_frame\000.rel.debug_frame\000.rela.debug_frame\000.nv.callgraph\000.nv.prototype\000.nv.rel.action\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\000\000\003\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\251\000\000\000\003\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\315\000\000\000\003\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\375\000\000\000\003\000\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\001\000\000\003\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\022\020\013\000\000\000\000\000\000\000\000\000\200\002\000\000\000\000\000\000\377\377\377\377(\000\000\000\000\000\000\000\377\377\377\377\377\377\377\377\003\000\004|\377\377\377\377\017\f\201\200\200(\000\b\377\201\200(\b\201\200\200(\000\000\000\000\000\000\000\377\377\377\3770\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p\002\000\000\000\000\000\000\004\004\000\000\000\004\210\000\000\000\f\201\200\200(\000\004\374\377\377?\000\000\000\004\021\b\000\006\000\000\000\000\000\000\000\004/\b\000\006\000\000\000\026\000\000\000\004\022\b\000\006\000\000\000\000\000\000\000\004\034\004\000 \002\000\000\0041\004\000\020\000\000\000\003\033\377\000\004\027\f\000\000\000\000\000\000\000\000\000\000\360!\000\004\027\f\000\000\000\000\000\001\000\b\000\000\360!\000\004\027\f\000\000\000\000\000\002\000\020\000\000\360\021\000\004\027\f\000\000\000\000\000\003\000\024\000\000\360\021\000\004\027\f\000\000\000\000\000\004\000\030\000\000\360\021\000\004\027\f\000\000\000\000\000\005\000\034\000\000\360\021\000\004\027\f\000\000\000\000\000\006\000 \000\000\360\021\000\004\027\f\000\000\000\000\000\007\000$\000\000\360\021\000\004\027\f\000\000\000\000\000\b\000(\000\000\360\021\000\004\027\f\000\000\000\000\000\t\0000\000\000\360!\000\004\027\f\000\000\000\000\000\n\0008\000\000\360!\000\004\027\f\000\000\000\000\000\013\000@\000\000\360\021\000\004\027\f\000\000\000\000\000\f\000D\000\000\360\021\000\004\027\f\000\000\000\000\000\r\000H\000\000\360\021\000\004\027\f\000\000\000\000\000\016\000L\000\000\360\021\000\004\027\f\000\000\000\000\000\017\000P\000\000\360\021\000\004\027\f\000\000\000\000\000\020\000T\000\000\360\021\000\004\027\f\000\000\000\000\000\021\000X\000\000\360\021\000\003\031\\\000\004\n\b\000\002\000\000\000`\001\\\000\0047\004\000u\000\000\000\0046\004\000\001\000\000\000\000\000\000\000\377\377\377\377\000\000\000\000\376\377\377\377\000\000\000\000\375\377\377\377K\000\000\000\000\000\000\000\000\002\002\b\020\n/\"\000\000\000\b\000\000\000\000\000\000\b\b\000\000\000\000\000\000\020\b\000\000\000\000\000\000\030\b\000\000\000\000\000\000 \b\000\000\000\000\000\000(\b\000\000\000\000\000\0000\b\000\000\000\000\000\0008\b\000\000\000\000\001\000\000\b\000\000\000\000\001\000\b\b\000\000\000\000\001\000\020\b\000\000\000\000\001\000\030\b\000\000\000\000\001\000 \b\000\000\000\000\001\000(\b\000\000\000\000\001\0000\b\000\000\000\000\001\0008\b\000\000\000\000\002\000\000\b\000\000\000\000\002\000\b\b\000\000\000\000\002\000\020\b\000\000\000\000\002\000\030\b\000\000\000\000\002\000 \b\000\000\000\000\002\000(\b\000\000\000\000\002\0000\b\000\000\000\000\002\0008\b\000\000\000\000\000\000\000\024,\000\000\000\t\000\000\f\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\002z\001\000\000\n\000\000\000\017\000\000\000\304\017\000\211\363\377\377\377\000\000\000\377\000\016\000\000\342\017\000\031y\000\000\000\000\000\000\000%\000\000\000\"\016\000\002x\002\000@\024\000\000\000\017\000\000\000\306\017\000\031y\003\000\000\000\000\000\000&\000\000\000h\016\000\031y\007\000\000\000\000\000\000!\000\000\000\242\016\000\020x\000\000\001\000\000\000\377\340\377\007\000\342\037\000$t\003\003\333Q\000\000\002\002\216\007\000\310/\000$x\002\000H\000\000\000\003\002\216\007\000\342\017\000\020x\005\007\001\000\000\000\377\340\377\007\000\344O\000\002x\000\000\b\000\000\000\000\017\000\000\000\344\017\000\020r\003\002\007\000\000\000\377\340\377\007\000\344\017\004\020x\013\005\270\377\377\377\002\340\377\007\000\344\017\000\020x\007\003\002\000\000\000\377\340\377\007\000\344\017\004\020x\t\003I\000\000\000\377\340\377\007\000\342\017\000%v\n\013\000Z\000\000\000\002\216\007\000\342\017\000\020r\r\002\005\000\000\000\377\340\377\007\000\306\017\000%v\004\003\000Z\000\000\000\002\216\007\000\310\017\000%v\006\007\000Z\000\000\000\002\216\007\000\342\017\b\200y\n\n\000\000\000\000\000\353\020\000\000\246\016\000%v\b\t\000Z\000\000\000\002\216\007\000\342\017\b\200y\004\004\000\000\000\000\000\353\020\000\000\346\016\000%v\f\r\000Z\000\000\000\002\216\007\000\342\017\000\200y\006\006\000\000\000\000\000\353\020\000\000\350\016\000\200y\b\b\000\000\000\000\000\353\020\000\000\250\016\000\200y\f\f\000\000\000\000\000\353\020\000\000\"\017\000\020x\003\003\001\000\000\000\377\340\377\007\000\312\017\000%v\002\003\000f\000\000\000\002\216\007\000\342\017\000)r\016\004\000\000\000\000\006\000\000\000\000\310\217\000)r\020\b\000\000\000\000\n\000\000\000\000\bN\000(x\022\f\000\000\020\300\000\000\000\000\000\310\017\001)r\016\016\000\000\000\000\020\000\000\000\000\020\036\000)r\016\016\000\000\000\000\022\000\000\000\000\022\036\000\205s\000\002\000\000\000\000\016\353\020\000\000\342\037\000My\000\000\000\000\000\000\000\000\200\003\000\352\017\000Gy\000\000\360\377\377\377\377\377\203\003\000\300\017\000\030y\000\000\000\000\000\000\000\000\000\000\000\300\017\000\030y\000\000\000\000\000\000\000\000\000\000\000\300\017\000\030y\000\000\000\000\000\000\000\000\000\000\000\300\017\000\030y\000\000\000\000\000\000\000\000\000\000\000\300\017\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\022\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000R\001\000\000\000\000\000\000(\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\023\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\002\000\000\000\000\000\000\250\000\000\000\000\000\000\000\002\000\000\000\006\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\267\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000(\003\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\230\003\000\000\000\000\000\000$\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000G\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\274\003\000\000\000\000\000\000T\001\000\000\000\000\000\000\003\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\347\000\000\000\001\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\005\000\000\000\000\000\000\030\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\003\001\000\000\013\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000(\005\000\000\000\000\000\000\340\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\304\000\000\000\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\006\000\000\000\000\000\000\020\000\000\000\000\000\000\000\003\000\000\000\004\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000y\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\030\006\000\000\000\000\000\000\274\001\000\000\000\000\000\000\000\000\000\000\013\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0002\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\200\002\000\000\000\000\000\000\003\000\000\000\006\000\000\026\200\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	laplace_kernel_gpubin_cst, 3456

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
	.byte	4                               # DW_AT_decl_line
                                        # DW_AT_external
	.byte	2                               # Abbrev [2] 0x43:0x19 DW_TAG_subprogram
	.quad	.Lfunc_begin1                   # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       # DW_AT_high_pc
	.byte	1                               # DW_AT_frame_base
	.byte	87
	.long	.Linfo_string4                  # DW_AT_linkage_name
	.long	.Linfo_string4                  # DW_AT_name
	.byte	1                               # DW_AT_decl_file
	.byte	230                             # DW_AT_decl_line
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
