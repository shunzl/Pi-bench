	.text
	.file	"all.bc"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_0:
	.long	1073741824              # float 2
.LCPI0_1:
	.long	1065353216              # float 1
.LCPI0_4:
	.long	1082130432              # float 4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	xorps	%xmm0, %xmm0
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	movl	$0, -4(%rbp)
	movss	%xmm2, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	%xmm2, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	%xmm0, -28(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtss2sd	-16(%rbp), %xmm1
	movapd	.LCPI0_3(%rip), %xmm2   # xmm2 = [nan,nan]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_3
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movss	-16(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-24(%rbp), %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-28(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	divss	-20(%rbp), %xmm0
	movss	%xmm0, -16(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movabsq	$.L.str, %rdi
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	mulss	-12(%rbp), %xmm0
	movss	%xmm0, -12(%rbp)
	cvtss2sd	-12(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pi:%.6f\n"
	.size	.L.str, 9


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
