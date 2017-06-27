	.text
	.file	"all_large_t.bc"
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
	movsd	%xmm0, -40(%rbp)
	movq	-16(%rbp), %rsi
	movsd	16(%rsi), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jbe	.LBB0_2
# BB#1:
	movl	$1, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
.LBB0_2:
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	xorl	%ecx, %ecx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	setnp	%dl
	sete	%sil
	testb	%dl, %sil
	cmovnel	%ecx, %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB0_3:
	movl	-76(%rbp), %eax         # 4-byte Reload
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4611686018427387904     # double 2
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1440512, %rsp          # imm = 0x15FB00
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -224(%rbp)
	movl	$0, -228(%rbp)
	movl	%edi, -260(%rbp)
	movq	%rsi, -272(%rbp)
	movaps	%xmm0, -1440336(%rbp)
	movl	$0, -1440340(%rbp)
	cmpl	$2, -260(%rbp)
	jge	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -1440440(%rbp)    # 4-byte Spill
	callq	exit
.LBB1_2:
	movabsq	$.L.str.1, %rsi
	movq	-272(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -1440280(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440372(%rbp), %rdx
	movq	-1440280(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440441(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440404(%rbp), %rdx
	movq	-1440280(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440441(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#5:                                 #   in Loop: Header=BB1_3 Depth=1
	movabsq	$.L.str.2, %rsi
	leaq	-1440436(%rbp), %rdx
	movq	-1440280(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	xorl	%ecx, %ecx
	movb	%cl, %r8b
	cmpl	$1, %eax
	movb	%r8b, -1440441(%rbp)    # 1-byte Spill
	jne	.LBB1_7
# BB#6:                                 #   in Loop: Header=BB1_3 Depth=1
	cmpl	$60000, -1440340(%rbp)  # imm = 0xEA60
	setl	%al
	movb	%al, -1440441(%rbp)     # 1-byte Spill
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	movb	-1440441(%rbp), %al     # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_8
	jmp	.LBB1_14
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-1440372(%rbp), %eax
	movslq	-1440340(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%eax, -1440272(%rbp,%rcx,8)
	movl	-1440404(%rbp), %eax
	movslq	-1440340(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%eax, -1440268(%rbp,%rcx,8)
	movl	-1440436(%rbp), %eax
	movslq	-1440340(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%eax, -1440264(%rbp,%rcx,8)
	movl	-1440372(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm1, -1440456(%rbp)   # 8-byte Spill
	callq	pow
	movl	-1440404(%rbp), %eax
	cvtsi2sdl	%eax, %xmm1
	movsd	%xmm0, -1440464(%rbp)   # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-1440456(%rbp), %xmm1   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	callq	pow
	movsd	-1440464(%rbp), %xmm1   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -88(%rbp)
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, -112(%rbp)
	movsd	%xmm0, -136(%rbp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, -160(%rbp)
	movsd	-1440464(%rbp), %xmm1   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movl	-1440436(%rbp), %eax
	cvtsi2sdl	%eax, %xmm0
	movsd	-1440456(%rbp), %xmm2   # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	%xmm1, -1440472(%rbp)   # 8-byte Spill
	movaps	%xmm2, %xmm1
	callq	pow
	movsd	%xmm0, -184(%rbp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, -208(%rbp)
	movsd	-1440472(%rbp), %xmm1   # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	sqrt
	movslq	-1440340(%rbp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movsd	%xmm0, -1440256(%rbp,%rcx,8)
	movl	-1440340(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -1440336(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -1440336(%rbp)
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %edi
	movl	%edx, %r8d
	addl	%esi, %r8d
	addl	%edi, %r8d
	addl	$1, %eax
	imull	$3, %eax, %esi
	movl	%eax, -20(%rbp)
	cmpl	%esi, %r8d
	movl	%edx, -1440476(%rbp)    # 4-byte Spill
	movl	%r8d, -1440480(%rbp)    # 4-byte Spill
	movl	%eax, -1440484(%rbp)    # 4-byte Spill
	je	.LBB1_13
# BB#9:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	-1440480(%rbp), %eax    # 4-byte Reload
	cltd
	movl	-1440476(%rbp), %ecx    # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_11
# BB#10:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-1440484(%rbp), %eax    # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB1_12
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-1440476(%rbp), %eax    # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -1440340(%rbp)
	jmp	.LBB1_3
.LBB1_14:
	jmp	.LBB1_15
.LBB1_15:
	movl	-1440340(%rbp), %esi
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	printf
	movslq	-1440340(%rbp), %rsi
	movl	$compare, %edx
	movl	%edx, %ecx
	movl	$24, %edx
                                        # kill: %RDX<def> %EDX<kill>
	leaq	-1440272(%rbp), %rdi
	movl	%eax, -1440488(%rbp)    # 4-byte Spill
	callq	qsort
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -1440304(%rbp)
	movl	$0, -1440308(%rbp)
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movl	-1440308(%rbp), %eax
	cmpl	-1440340(%rbp), %eax
	jge	.LBB1_24
# BB#17:                                #   in Loop: Header=BB1_16 Depth=1
	movabsq	$.L.str.4, %rdi
	leaq	-1440272(%rbp), %rax
	movslq	-1440308(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	(%rdx), %esi
	movslq	-1440308(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movl	4(%rdx), %edx
	movslq	-1440308(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	8(%rax), %ecx
	movb	$0, %al
	callq	printf
	movl	%eax, -1440492(%rbp)    # 4-byte Spill
# BB#18:                                #   in Loop: Header=BB1_16 Depth=1
	movl	-1440308(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -1440304(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -1440304(%rbp)
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
	movl	%ecx, -1440496(%rbp)    # 4-byte Spill
	movl	%edi, -1440500(%rbp)    # 4-byte Spill
	movl	%eax, -1440504(%rbp)    # 4-byte Spill
	je	.LBB1_23
# BB#19:                                #   in Loop: Header=BB1_16 Depth=1
	movl	-1440500(%rbp), %eax    # 4-byte Reload
	cltd
	movl	-1440496(%rbp), %ecx    # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_21
# BB#20:                                #   in Loop: Header=BB1_16 Depth=1
	movl	-1440504(%rbp), %eax    # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB1_22
.LBB1_21:                               #   in Loop: Header=BB1_16 Depth=1
	movl	-1440496(%rbp), %eax    # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB1_22:                               #   in Loop: Header=BB1_16 Depth=1
	jmp	.LBB1_23
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -1440308(%rbp)
	jmp	.LBB1_16
.LBB1_24:
	xorl	%eax, %eax
	addq	$1440512, %rsp          # imm = 0x15FB00
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
