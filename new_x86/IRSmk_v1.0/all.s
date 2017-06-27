	.text
	.file	"all.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movabsq	$.L.str, %rdi
	xorps	%xmm0, %xmm0
	leaq	-304(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	$0, -4(%rbp)
	movq	%rcx, -88(%rbp)
	movq	%rax, -312(%rbp)
	movq	$0, -352(%rbp)
	movq	$0, -360(%rbp)
	movsd	%xmm0, -368(%rbp)
	movl	$0, -388(%rbp)
	movl	$5000, -392(%rbp)       # imm = 0x1388
	movb	$0, %al
	callq	printf
	movl	%eax, -396(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	readInput
	movslq	i_ub, %rcx
	shlq	$3, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -384(%rbp)
	movslq	x_size, %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -376(%rbp)
	movq	-312(%rbp), %rdi
	callq	allocMem
	movq	-88(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	-384(%rbp), %rcx
	callq	init
	leaq	-328(%rbp), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	callq	gettimeofday
	movl	%eax, -400(%rbp)        # 4-byte Spill
	callq	clock
	movq	%rax, -352(%rbp)
	movl	$0, -388(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5000, -388(%rbp)       # imm = 0x1388
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rdi
	movq	-312(%rbp), %rsi
	movq	-376(%rbp), %rdx
	movq	-384(%rbp), %rcx
	callq	rmatmult3
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	-388(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	leaq	-344(%rbp), %rdi
	xorl	%eax, %eax
	movl	%eax, %esi
	callq	gettimeofday
	movl	%eax, -404(%rbp)        # 4-byte Spill
	callq	clock
	movabsq	$.L.str.1, %rdi
	movq	%rax, -360(%rbp)
	movb	$0, %al
	callq	printf
	movl	$0, -388(%rbp)
	movl	%eax, -408(%rbp)        # 4-byte Spill
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-388(%rbp), %eax
	cmpl	i_ub, %eax
	jge	.LBB0_8
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.2, %rdi
	movl	-388(%rbp), %esi
	movq	-384(%rbp), %rax
	movslq	-388(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -412(%rbp)        # 4-byte Spill
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	$5, %eax
	movl	i_ub, %ecx
	movl	%eax, -416(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-416(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	addl	-388(%rbp), %eax
	movl	%eax, -388(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movabsq	$.L.str.3, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-344(%rbp), %rax
	subq	-328(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	-336(%rbp), %rax
	subq	-320(%rbp), %rax
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, -368(%rbp)
	movsd	-368(%rbp), %xmm0       # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	-360(%rbp), %rcx
	subq	-352(%rbp), %rcx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -420(%rbp)        # 4-byte Spill
	movb	$1, %al
	callq	printf
	movl	-4(%rbp), %edx
	movl	%eax, -424(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.globl	rmatmult3
	.p2align	4, 0x90
	.type	rmatmult3,@function
rmatmult3:                              # @rmatmult3
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$392, %rsp              # imm = 0x188
	xorl	%eax, %eax
	movl	%eax, %r8d
	movabsq	$.L.str.5, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, -60(%rbp)
	movq	-8(%rbp), %rcx
	movl	20(%rcx), %eax
	movl	%eax, -64(%rbp)
	movq	-8(%rbp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, -68(%rbp)
	movq	-8(%rbp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, -72(%rbp)
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, -76(%rbp)
	movq	-8(%rbp), %rcx
	movl	28(%rcx), %eax
	movl	%eax, -80(%rbp)
	movq	-8(%rbp), %rcx
	movl	68(%rcx), %eax
	movl	%eax, -84(%rbp)
	movq	-8(%rbp), %rcx
	movl	72(%rcx), %eax
	movl	%eax, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -136(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -176(%rbp)
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -184(%rbp)
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -192(%rbp)
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movq	-16(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -216(%rbp)
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -232(%rbp)
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -240(%rbp)
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, -248(%rbp)
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -256(%rbp)
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -272(%rbp)
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, -288(%rbp)
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, -296(%rbp)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, -304(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$-8, %rcx
	movq	%rcx, -312(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -320(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$8, %rcx
	movq	%rcx, -328(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$-8, %rcx
	movq	%rcx, -336(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -344(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$8, %rcx
	movq	%rcx, -352(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -360(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -368(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, -376(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$-8, %rcx
	movq	%rcx, -384(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -392(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$8, %rcx
	movq	%rcx, -400(%rbp)
	movq	-24(%rbp), %rcx
	addq	$-8, %rcx
	movq	%rcx, -408(%rbp)
	movq	-24(%rbp), %rcx
	movq	%rcx, -416(%rbp)
	movq	-24(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -424(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -432(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -440(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, -448(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	addq	$-8, %rcx
	movq	%rcx, -456(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	movq	%r8, %rsi
	subq	%rdx, %rsi
	shlq	$3, %rsi
	addq	%rsi, %rcx
	movq	%rcx, -464(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	subq	%rdx, %r8
	shlq	$3, %r8
	addq	%r8, %rcx
	addq	$8, %rcx
	movq	%rcx, -472(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -480(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -488(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, -496(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, -504(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -512(%rbp)
	movq	-24(%rbp), %rcx
	movslq	-88(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	-84(%rbp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, -520(%rbp)
	movl	-76(%rbp), %eax
	movl	%eax, -56(%rbp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	movl	-56(%rbp), %eax
	cmpl	-80(%rbp), %eax
	jge	.LBB1_12
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	-68(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	.LBB1_10
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=2
	movl	-60(%rbp), %eax
	movl	%eax, -48(%rbp)
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-48(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jge	.LBB1_8
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=3
	movl	-48(%rbp), %eax
	movl	-52(%rbp), %ecx
	imull	-84(%rbp), %ecx
	addl	%ecx, %eax
	movl	-56(%rbp), %ecx
	imull	-88(%rbp), %ecx
	addl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movq	-96(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm0    # xmm0 = mem[0],zero
	movq	-312(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm0
	movq	-104(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-320(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-112(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-328(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-120(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-336(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-128(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-344(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-136(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-352(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-144(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-360(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-152(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-368(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-160(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-376(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-168(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-384(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-176(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-392(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-184(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-400(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-192(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-408(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-200(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-416(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-208(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-424(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-216(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-432(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-224(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-440(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-232(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-448(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-240(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-456(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-248(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-464(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-256(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-472(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-264(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-480(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-272(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-488(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-280(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-496(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-288(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-504(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-296(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-512(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-304(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	movq	-520(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	mulsd	(%rdx,%rsi,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	-32(%rbp), %rdx
	movslq	-44(%rbp), %rsi
	movsd	%xmm0, (%rdx,%rsi,8)
# BB#7:                                 #   in Loop: Header=BB1_5 Depth=3
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB1_5
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_9
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_3
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB1_1
.LBB1_12:
	addq	$392, %rsp              # imm = 0x188
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rmatmult3, .Lfunc_end1-rmatmult3

	.globl	readInput
	.p2align	4, 0x90
	.type	readInput,@function
readInput:                              # @readInput
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.1.9, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:
	movabsq	$.L.str.2.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3.11, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	exit
.LBB2_2:
	movabsq	$.L.str.4.12, %rsi
	movabsq	$kmin, %rdx
	movabsq	$kmax, %rcx
	movabsq	$jmin, %r8
	movabsq	$jmax, %r9
	movabsq	$imin, %rax
	movabsq	$imax, %rdi
	movabsq	$kp, %r10
	movabsq	$jp, %r11
	movq	-40(%rbp), %rbx
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movb	$0, %al
	callq	fscanf
	movabsq	$.L.str.5.13, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	kmin, %esi
	movl	kmax, %edx
	movl	jmin, %ecx
	movl	jmax, %r8d
	movl	imin, %r9d
	movl	imax, %r14d
	movl	kp, %r15d
	movl	jp, %r12d
	movl	%r14d, (%rsp)
	movl	%r15d, 8(%rsp)
	movl	%r12d, 16(%rsp)
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	imin, %ecx
	movl	jmin, %edx
	imull	jp, %edx
	addl	%edx, %ecx
	movl	kmin, %edx
	imull	kp, %edx
	addl	%edx, %ecx
	movl	%ecx, i_lb
	movl	imax, %ecx
	subl	$1, %ecx
	movl	jmax, %edx
	subl	$1, %edx
	imull	jp, %edx
	addl	%edx, %ecx
	movl	kmax, %edx
	subl	$1, %edx
	imull	kp, %edx
	addl	%edx, %ecx
	addl	$1, %ecx
	movl	%ecx, i_ub
	movl	i_lb, %ecx
	subl	kp, %ecx
	subl	jp, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jge	.LBB2_4
# BB#3:
	movabsq	$.L.str.2.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.7, %rdi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -76(%rbp)         # 4-byte Spill
	callq	exit
.LBB2_4:
	movabsq	$.L.str.8.14, %rdi
	movl	i_ub, %eax
	movl	kp, %ecx
	addl	jp, %ecx
	addl	$1, %ecx
	shll	$1, %ecx
	addl	%ecx, %eax
	addl	$10, %eax
	movl	%eax, x_size
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movl	i_lb, %esi
	movl	i_ub, %edx
	movl	x_size, %ecx
	movl	%eax, -80(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
	callq	fclose
	movl	%eax, -88(%rbp)         # 4-byte Spill
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	readInput, .Lfunc_end2-readInput

	.globl	allocMem
	.p2align	4, 0x90
	.type	allocMem,@function
allocMem:                               # @allocMem
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movslq	i_ub, %rdi
	shlq	$3, %rdi
	movl	%edi, %eax
	movl	%eax, -12(%rbp)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, (%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 24(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 64(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 80(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 88(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 96(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 104(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 112(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 120(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 128(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 136(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 144(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 152(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 168(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 176(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 184(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 192(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 200(%rdi)
	movslq	-12(%rbp), %rdi
	callq	malloc
	movq	-8(%rbp), %rdi
	movq	%rax, 208(%rdi)
	movq	-8(%rbp), %rax
	cmpq	$0, 208(%rax)
	jne	.LBB3_2
# BB#1:
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -16(%rbp)         # 4-byte Spill
.LBB3_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	allocMem, .Lfunc_end3-allocMem

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.text
	.globl	init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	imin, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	imax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movl	jmin, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movl	jmax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	kmin, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	kmax, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	jp, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	kp, %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-16(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -80(%rbp)
	movq	-16(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -88(%rbp)
	movq	-16(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -96(%rbp)
	movq	-16(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -104(%rbp)
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -120(%rbp)
	movq	-16(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -128(%rbp)
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -136(%rbp)
	movq	-16(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movq	-16(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-16(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-16(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -176(%rbp)
	movq	-16(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -184(%rbp)
	movq	-16(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -192(%rbp)
	movq	-16(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, -216(%rbp)
	movq	-16(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movq	-16(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, -232(%rbp)
	movq	-16(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, -240(%rbp)
	movq	-16(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, -248(%rbp)
	movq	-16(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, -256(%rbp)
	movl	$0, -36(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	i_ub, %eax
	jge	.LBB4_4
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	xorps	%xmm0, %xmm0
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -32(%rbp)
	movsd	%xmm0, (%rax)
	cvtsi2sdl	-36(%rbp), %xmm0
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -48(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$1, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-56(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -56(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$2, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-64(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -64(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$3, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -72(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$4, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-80(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -80(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$5, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -88(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$6, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -96(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$7, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -104(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$8, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$9, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-120(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -120(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$10, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-128(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -128(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$11, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-136(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -136(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$12, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -144(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$13, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$14, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$15, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -168(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$16, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-176(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -176(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$17, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -184(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$18, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -192(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$19, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -200(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$20, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -208(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$21, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -216(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$22, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-224(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -224(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$23, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -232(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$24, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -240(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$25, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-248(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -248(%rbp)
	movsd	%xmm0, (%rax)
	movl	-36(%rbp), %edx
	addl	$26, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-256(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -256(%rbp)
	movsd	%xmm0, (%rax)
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	movl	$0, -36(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	x_size, %eax
	jge	.LBB4_8
# BB#6:                                 #   in Loop: Header=BB4_5 Depth=1
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-36(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -24(%rbp)
	movsd	%xmm0, (%rax)
# BB#7:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB4_5
.LBB4_8:
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init, .Lfunc_end4-init

	.type	i_ub,@object            # @i_ub
	.comm	i_ub,4,4
	.type	x_size,@object          # @x_size
	.comm	x_size,4,4
	.type	kmin,@object            # @kmin
	.comm	kmin,4,4
	.type	kmax,@object            # @kmax
	.comm	kmax,4,4
	.type	jmin,@object            # @jmin
	.comm	jmin,4,4
	.type	jmax,@object            # @jmax
	.comm	jmax,4,4
	.type	imin,@object            # @imin
	.comm	imin,4,4
	.type	imax,@object            # @imax
	.comm	imax,4,4
	.type	kp,@object              # @kp
	.comm	kp,4,4
	.type	jp,@object              # @jp
	.comm	jp,4,4
	.type	i_lb,@object            # @i_lb
	.comm	i_lb,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\nSequoia Benchmark Version 1.0\n\n"
	.size	.L.str, 33

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"***** results \n"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"i = %10d      b[i] = %e \n"
	.size	.L.str.2, 26

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\nWall time = %f seconds. \n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\nCPU  time = %f seconds. \n\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rmatmult3"
	.size	.L.str.5, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"irsmk_input"
	.size	.L.str.8, 12

	.type	.L.str.1.9,@object      # @.str.1.9
.L.str.1.9:
	.asciz	"r"
	.size	.L.str.1.9, 2

	.type	.L.str.2.10,@object     # @.str.2.10
.L.str.2.10:
	.asciz	"***** ERROR \n"
	.size	.L.str.2.10, 14

	.type	.L.str.3.11,@object     # @.str.3.11
.L.str.3.11:
	.asciz	"      Cannot open input file irsmk_input \n"
	.size	.L.str.3.11, 43

	.type	.L.str.4.12,@object     # @.str.4.12
.L.str.4.12:
	.asciz	"%d %d %d %d %d %d %d %d"
	.size	.L.str.4.12, 24

	.type	.L.str.5.13,@object     # @.str.5.13
.L.str.5.13:
	.asciz	"***** input  \n"
	.size	.L.str.5.13, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"kmin = %8d     kmax = %8d \njmin = %8d     jmax = %8d \nimin = %8d     imax = %8d \nkp   = %8d     jp   = %8d \n \n \n"
	.size	.L.str.6, 113

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"      lb of xdbl < 0 \n"
	.size	.L.str.7, 23

	.type	.L.str.8.14,@object     # @.str.8.14
.L.str.8.14:
	.asciz	"***** array bounds  \n"
	.size	.L.str.8.14, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"i_lb = %10d    i_ub = %10d    x_size = %10d \n \n \n"
	.size	.L.str.9, 50

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"*****ERROR: allocMem out of memory \n"
	.size	.L.str.10, 37


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
