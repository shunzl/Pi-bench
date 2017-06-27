	.text
	.file	"qsort_large.ll"
	.globl	compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB0_2
# BB#1:
	movl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	setnp	%dl
	sete	%sil
	testb	%dl, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_3:
	movl	-36(%rbp), %eax         # 4-byte Reload
	popq	%rbp
	retq
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1440096, %rsp          # imm = 0x15F960
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -1440032(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -1440048(%rbp)    # 4-byte Spill
	callq	exit
.LBB1_2:
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -1440024(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440036(%rbp), %rdx
	movq	-1440024(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440049(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440040(%rbp), %rdx
	movq	-1440024(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440049(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#5:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440044(%rbp), %rdx
	movq	-1440024(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440049(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#6:                                 #   in Loop: Header=BB1_3 Depth=1
	cmpl	$60000, -1440032(%rbp)  # imm = 0xEA60
	setl	%al
	movb	%al, -1440049(%rbp)     # 1-byte Spill
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	movb	-1440049(%rbp), %al     # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_9
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	leaq	-1440016(%rbp), %rax
	movl	-1440036(%rbp), %ecx
	movslq	-1440032(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, (%rsi)
	movl	-1440040(%rbp), %ecx
	movslq	-1440032(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movl	%ecx, 4(%rsi)
	movl	-1440044(%rbp), %ecx
	movslq	-1440032(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rax
	movl	%ecx, 8(%rax)
	cvtsi2sdl	-1440036(%rbp), %xmm0
	callq	pow
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	cvtsi2sdl	-1440040(%rbp), %xmm2
	movsd	%xmm0, -1440064(%rbp)   # 8-byte Spill
	movaps	%xmm2, %xmm0
	callq	pow
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-1440064(%rbp), %xmm2   # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvtsi2sdl	-1440044(%rbp), %xmm0
	movsd	%xmm2, -1440072(%rbp)   # 8-byte Spill
	callq	pow
	leaq	-1440016(%rbp), %rax
	movsd	-1440072(%rbp), %xmm1   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movq	%rax, -1440080(%rbp)    # 8-byte Spill
	callq	sqrt
	movslq	-1440032(%rbp), %rax
	imulq	$24, %rax, %rax
	movq	-1440080(%rbp), %rdx    # 8-byte Reload
	addq	%rax, %rdx
	movsd	%xmm0, 16(%rdx)
	movl	-1440032(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -1440032(%rbp)
	jmp	.LBB1_3
.LBB1_9:
	jmp	.LBB1_10
.LBB1_10:
	movabsq	$.L.str.3, %rdi
	movl	-1440032(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$24, %esi
	movl	%esi, %edx
	movabsq	$compare, %rcx
	leaq	-1440016(%rbp), %rdi
	movslq	-1440032(%rbp), %rsi
	movl	%eax, -1440084(%rbp)    # 4-byte Spill
	callq	qsort
	movl	$0, -1440028(%rbp)
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	-1440028(%rbp), %eax
	cmpl	-1440032(%rbp), %eax
	jge	.LBB1_14
# BB#12:                                #   in Loop: Header=BB1_11 Depth=1
	movabsq	$.L.str.4, %rdi
	leaq	-1440016(%rbp), %rax
	movslq	-1440028(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %esi
	movslq	-1440028(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %edx
	movslq	-1440028(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %ecx
	movb	$0, %al
	callq	printf
	movl	%eax, -1440088(%rbp)    # 4-byte Spill
# BB#13:                                #   in Loop: Header=BB1_11 Depth=1
	movl	-1440028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1440028(%rbp)
	jmp	.LBB1_11
.LBB1_14:
	xorl	%eax, %eax
	addq	$1440096, %rsp          # imm = 0x15F960
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_large <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nSorting %d vectors based on distance from the origin.\n\n"
	.size	.L.str.3, 57

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%d %d %d\n"
	.size	.L.str.4, 10


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
