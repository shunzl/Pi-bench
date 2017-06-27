	.text
	.file	"all_small_t.bc"
	.globl	compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	strcmp
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jge	.LBB0_2
# BB#1:
	movl	$1, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	cmpl	$0, -36(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -52(%rbp)         # 4-byte Spill
.LBB0_3:
	movl	-52(%rbp), %eax         # 4-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$7680240, %rsp          # imm = 0x7530F0
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	movaps	%xmm0, -7680192(%rbp)
	movl	$0, -7680196(%rbp)
	cmpl	$2, -116(%rbp)
	jge	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -7680200(%rbp)    # 4-byte Spill
	callq	exit
.LBB1_2:
	movabsq	$.L.str.1, %rsi
	movq	-128(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -7680136(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-7680128(%rbp), %rax
	movq	-7680136(%rbp), %rdi
	movslq	-7680196(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fscanf
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	cmpl	$1, %eax
	movb	%r9b, -7680201(%rbp)    # 1-byte Spill
	jne	.LBB1_5
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	cmpl	$60000, -7680196(%rbp)  # imm = 0xEA60
	setl	%al
	movb	%al, -7680201(%rbp)     # 1-byte Spill
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	movb	-7680201(%rbp), %al     # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_12
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-7680196(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -7680192(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7680192(%rbp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	addl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -20(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -7680208(%rbp)    # 4-byte Spill
	movl	%edi, -7680212(%rbp)    # 4-byte Spill
	movl	%eax, -7680216(%rbp)    # 4-byte Spill
	je	.LBB1_11
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	-7680212(%rbp), %eax    # 4-byte Reload
	cltd
	movl	-7680208(%rbp), %ecx    # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	-7680216(%rbp), %eax    # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-7680208(%rbp), %eax    # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -7680196(%rbp)
	jmp	.LBB1_3
.LBB1_12:
	jmp	.LBB1_13
.LBB1_13:
	movl	-7680196(%rbp), %esi
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	printf
	movslq	-7680196(%rbp), %rsi
	movl	$compare, %edx
	movl	%edx, %ecx
	movl	$128, %edx
                                        # kill: %RDX<def> %EDX<kill>
	leaq	-7680128(%rbp), %rdi
	movl	%eax, -7680220(%rbp)    # 4-byte Spill
	callq	qsort
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -7680160(%rbp)
	movl	$0, -7680164(%rbp)
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movl	-7680164(%rbp), %eax
	cmpl	-7680196(%rbp), %eax
	jge	.LBB1_22
# BB#15:                                #   in Loop: Header=BB1_14 Depth=1
	movabsq	$.L.str.4, %rdi
	leaq	-7680128(%rbp), %rax
	movslq	-7680164(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -7680224(%rbp)    # 4-byte Spill
# BB#16:                                #   in Loop: Header=BB1_14 Depth=1
	movl	-7680164(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -7680160(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -7680160(%rbp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	addl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -52(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -7680228(%rbp)    # 4-byte Spill
	movl	%edi, -7680232(%rbp)    # 4-byte Spill
	movl	%eax, -7680236(%rbp)    # 4-byte Spill
	je	.LBB1_21
# BB#17:                                #   in Loop: Header=BB1_14 Depth=1
	movl	-7680232(%rbp), %eax    # 4-byte Reload
	cltd
	movl	-7680228(%rbp), %ecx    # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_14 Depth=1
	movl	-7680236(%rbp), %eax    # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB1_20
.LBB1_19:                               #   in Loop: Header=BB1_14 Depth=1
	movl	-7680228(%rbp), %eax    # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	jmp	.LBB1_21
.LBB1_21:                               #   in Loop: Header=BB1_14 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -7680164(%rbp)
	jmp	.LBB1_14
.LBB1_22:
	xorl	%eax, %eax
	addq	$7680240, %rsp          # imm = 0x7530F0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	main, .Lfunc_end1-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
