	.text
	.file	"qsort_small.ll"
	.globl	compare
	.p2align	4, 0x90
	.type	compare,@function
compare:                                # @compare
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	strcmp
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB0_2
# BB#1:
	movl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	cmpl	$0, -20(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB0_3:
	movl	-36(%rbp), %eax         # 4-byte Reload
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare

	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$7680048, %rsp          # imm = 0x753030
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -7680032(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -7680036(%rbp)    # 4-byte Spill
	callq	exit
.LBB1_2:
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -7680024(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-7680016(%rbp), %rax
	movq	-7680024(%rbp), %rdi
	movslq	-7680032(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movq	%rax, %rdx
	movb	$0, %al
	callq	fscanf
	xorl	%r8d, %r8d
	movb	%r8b, %r9b
	cmpl	$1, %eax
	movb	%r9b, -7680037(%rbp)    # 1-byte Spill
	jne	.LBB1_5
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	cmpl	$60000, -7680032(%rbp)  # imm = 0xEA60
	setl	%al
	movb	%al, -7680037(%rbp)     # 1-byte Spill
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	movb	-7680037(%rbp), %al     # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_6
	jmp	.LBB1_7
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-7680032(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7680032(%rbp)
	jmp	.LBB1_3
.LBB1_7:
	jmp	.LBB1_8
.LBB1_8:
	movabsq	$.L.str.3, %rdi
	movl	-7680032(%rbp), %esi
	movb	$0, %al
	callq	printf
	movl	$128, %esi
	movl	%esi, %edx
	movabsq	$compare, %rcx
	leaq	-7680016(%rbp), %rdi
	movslq	-7680032(%rbp), %rsi
	movl	%eax, -7680044(%rbp)    # 4-byte Spill
	callq	qsort
	movl	$0, -7680028(%rbp)
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	movl	-7680028(%rbp), %eax
	cmpl	-7680032(%rbp), %eax
	jge	.LBB1_12
# BB#10:                                #   in Loop: Header=BB1_9 Depth=1
	movabsq	$.L.str.4, %rdi
	leaq	-7680016(%rbp), %rax
	movslq	-7680028(%rbp), %rcx
	shlq	$7, %rcx
	addq	%rcx, %rax
	movq	%rax, %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -7680048(%rbp)    # 4-byte Spill
# BB#11:                                #   in Loop: Header=BB1_9 Depth=1
	movl	-7680028(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -7680028(%rbp)
	jmp	.LBB1_9
.LBB1_12:
	xorl	%eax, %eax
	addq	$7680048, %rsp          # imm = 0x753030
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
