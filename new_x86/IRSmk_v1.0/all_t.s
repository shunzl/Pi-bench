	.text
	.file	"all_t.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.long	5000                    # 0x1388
	.long	5000                    # 0x1388
	.long	5000                    # 0x1388
	.long	5000                    # 0x1388
.LCPI0_2:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_1:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$1088, %rsp             # imm = 0x440
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 640(%rsp)
	movl	$0, 636(%rsp)
	leaq	560(%rsp), %rax
	movq	%rax, 552(%rsp)
	leaq	336(%rsp), %rax
	movq	%rax, 328(%rsp)
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	$0, 248(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	$0, 184(%rsp)
	movaps	%xmm0, 160(%rsp)
	movq	$0, 152(%rsp)
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [5000,5000,5000,5000]
	movaps	%xmm1, 80(%rsp)
	movl	$5000, 76(%rsp)         # imm = 0x1388
	movl	$.L.str, %ecx
	movl	%ecx, %edi
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movb	%dl, %al
	movaps	%xmm0, 48(%rsp)         # 16-byte Spill
	movb	%dl, 47(%rsp)           # 1-byte Spill
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	callq	printf
	movb	47(%rsp), %dl           # 1-byte Reload
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movb	%dl, %al
	callq	readInput
	movslq	i_ub(%rip), %rdi
	movq	%rdi, 952(%rsp)
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 912(%rsp)
	movups	%xmm0, 896(%rsp)
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, 136(%rsp)
	movslq	x_size(%rip), %rax
	movq	%rax, 856(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 816(%rsp)
	movups	%xmm0, 800(%rsp)
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 144(%rsp)
	movq	328(%rsp), %rdi
	callq	allocMem
	movq	552(%rsp), %rdi
	movq	328(%rsp), %rsi
	movq	144(%rsp), %rdx
	movq	136(%rsp), %rcx
	callq	init
	movl	40(%rsp), %r8d          # 4-byte Reload
	movl	%r8d, %esi
	leaq	312(%rsp), %rdi
	callq	gettimeofday
	movl	%eax, 32(%rsp)          # 4-byte Spill
	callq	clock
	movq	%rax, 248(%rsp)
	movaps	48(%rsp), %xmm0         # 16-byte Reload
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5000, 108(%rsp)        # imm = 0x1388
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	552(%rsp), %rdi
	movq	328(%rsp), %rsi
	movq	144(%rsp), %rdx
	movq	136(%rsp), %rcx
	callq	rmatmult3
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	108(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 112(%rsp)
	movaps	.LCPI0_2(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 112(%rsp)
	addl	$1, %eax
	movl	%eax, 108(%rsp)
	jmp	.LBB0_1
.LBB0_4:
	xorl	%eax, %eax
	movl	%eax, %esi
	leaq	296(%rsp), %rdi
	movl	%eax, 28(%rsp)          # 4-byte Spill
	callq	gettimeofday
	movl	%eax, 24(%rsp)          # 4-byte Spill
	callq	clock
	movq	%rax, 184(%rsp)
	movl	$.L.str.1, %ecx
	movl	%ecx, %edi
	movl	28(%rsp), %ecx          # 4-byte Reload
	movb	%cl, %dl
	movb	%dl, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	108(%rsp), %eax
	cmpl	i_ub, %eax
	jge	.LBB0_8
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.2, %rdi
	movl	108(%rsp), %esi
	movq	136(%rsp), %rax
	movslq	108(%rsp), %rcx
	movsd	(%rax,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 16(%rsp)          # 4-byte Spill
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	$5, %eax
	movl	i_ub, %ecx
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	12(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	addl	108(%rsp), %eax
	movl	%eax, 108(%rsp)
	jmp	.LBB0_5
.LBB0_8:
	movabsq	$.L.str.3, %rdi
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	296(%rsp), %rax
	subq	312(%rsp), %rax
	cvtsi2sdq	%rax, %xmm1
	movq	304(%rsp), %rax
	subq	320(%rsp), %rax
	cvtsi2sdq	%rax, %xmm2
	divsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm1
	movsd	%xmm1, 152(%rsp)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movsd	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	184(%rsp), %rcx
	subq	248(%rsp), %rcx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movb	$1, %al
	callq	printf
	movl	636(%rsp), %edx
	movl	%eax, 4(%rsp)           # 4-byte Spill
	movl	%edx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	rmatmult3
	.p2align	4, 0x90
	.type	rmatmult3,@function
rmatmult3:                              # @rmatmult3
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$2816, %rsp             # imm = 0xB00
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	%rdi, 920(%rsp)
	movq	%rsi, 912(%rsp)
	movq	%rdx, 904(%rsp)
	movq	%rcx, 896(%rsp)
	movq	$.L.str.5, 888(%rsp)
	movq	920(%rsp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, 732(%rsp)
	movq	920(%rsp), %rcx
	movl	20(%rcx), %eax
	movl	%eax, 700(%rsp)
	movq	920(%rsp), %rcx
	movl	12(%rcx), %eax
	movl	%eax, 668(%rsp)
	movq	920(%rsp), %rcx
	movl	24(%rcx), %eax
	movl	%eax, 636(%rsp)
	movq	920(%rsp), %rcx
	movl	16(%rcx), %eax
	movl	%eax, 604(%rsp)
	movq	920(%rsp), %rcx
	movl	28(%rcx), %eax
	movl	%eax, 572(%rsp)
	movq	920(%rsp), %rcx
	movl	68(%rcx), %eax
	movl	%eax, 540(%rsp)
	movq	920(%rsp), %rcx
	movl	72(%rcx), %eax
	movl	%eax, 508(%rsp)
	movq	912(%rsp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, 496(%rsp)
	movq	912(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, 488(%rsp)
	movq	912(%rsp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, 480(%rsp)
	movq	912(%rsp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, 472(%rsp)
	movq	912(%rsp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, 464(%rsp)
	movq	912(%rsp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, 456(%rsp)
	movq	912(%rsp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, 448(%rsp)
	movq	912(%rsp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, 440(%rsp)
	movq	912(%rsp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, 432(%rsp)
	movq	912(%rsp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, 424(%rsp)
	movq	912(%rsp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, 416(%rsp)
	movq	912(%rsp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, 408(%rsp)
	movq	912(%rsp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, 400(%rsp)
	movq	912(%rsp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, 392(%rsp)
	movq	912(%rsp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, 384(%rsp)
	movq	912(%rsp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, 376(%rsp)
	movq	912(%rsp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, 368(%rsp)
	movq	912(%rsp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, 360(%rsp)
	movq	912(%rsp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, 352(%rsp)
	movq	912(%rsp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, 344(%rsp)
	movq	912(%rsp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, 336(%rsp)
	movq	912(%rsp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, 328(%rsp)
	movq	912(%rsp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, 320(%rsp)
	movq	912(%rsp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, 312(%rsp)
	movq	912(%rsp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, 304(%rsp)
	movq	912(%rsp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, 296(%rsp)
	movq	912(%rsp), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, 288(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 2616(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2576(%rsp)
	movups	%xmm0, 2560(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 2520(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2480(%rsp)
	movups	%xmm0, 2464(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, 280(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 2424(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2384(%rsp)
	movups	%xmm0, 2368(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 2328(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2288(%rsp)
	movups	%xmm0, 2272(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 272(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 2232(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2192(%rsp)
	movups	%xmm0, 2176(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 2136(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2096(%rsp)
	movups	%xmm0, 2080(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, 264(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 2040(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2000(%rsp)
	movups	%xmm0, 1984(%rsp)
	shlq	$3, %rdx
	negq	%rdx
	leaq	-8(%rcx,%rdx), %rcx
	movq	%rcx, 256(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 1944(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1904(%rsp)
	movups	%xmm0, 1888(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 248(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 1848(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1808(%rsp)
	movups	%xmm0, 1792(%rsp)
	shlq	$3, %rdx
	negq	%rdx
	leaq	8(%rcx,%rdx), %rcx
	movq	%rcx, 240(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 1752(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1712(%rsp)
	movups	%xmm0, 1696(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	leaq	-8(%rcx,%rdx,8), %rcx
	movq	%rcx, 232(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 1656(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1616(%rsp)
	movups	%xmm0, 1600(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rcx, 224(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	movq	%rdx, 1560(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1520(%rsp)
	movups	%xmm0, 1504(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	leaq	8(%rcx,%rdx,8), %rcx
	movq	%rcx, 216(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 1464(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1424(%rsp)
	movups	%xmm0, 1408(%rsp)
	shlq	$3, %rdx
	negq	%rdx
	leaq	-8(%rcx,%rdx), %rcx
	movq	%rcx, 208(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 1368(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1328(%rsp)
	movups	%xmm0, 1312(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 200(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 1272(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1232(%rsp)
	movups	%xmm0, 1216(%rsp)
	shlq	$3, %rdx
	negq	%rdx
	leaq	8(%rcx,%rdx), %rcx
	movq	%rcx, 192(%rsp)
	movq	904(%rsp), %rcx
	addq	$-8, %rcx
	movq	%rcx, 184(%rsp)
	movq	904(%rsp), %rcx
	movq	%rcx, 176(%rsp)
	movq	904(%rsp), %rcx
	addq	$8, %rcx
	movq	%rcx, 168(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	leaq	-8(%rcx,%rdx,8), %rcx
	movq	%rcx, 160(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movq	%rcx, 152(%rsp)
	movq	904(%rsp), %rcx
	movslq	540(%rsp), %rdx
	leaq	8(%rcx,%rdx,8), %rcx
	movq	%rcx, 144(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 1176(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1136(%rsp)
	movups	%xmm0, 1120(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, 136(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 1080(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1040(%rsp)
	movups	%xmm0, 1024(%rsp)
	shlq	$3, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 128(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	movslq	540(%rsp), %rdx
	movq	%rdx, 984(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 944(%rsp)
	movups	%xmm0, 928(%rsp)
	subq	%rdx, %r8
	shlq	$3, %r8
	addq	%r8, %rcx
	addq	$8, %rcx
	movq	%rcx, 120(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, 112(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 104(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, 96(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$-8, %rcx
	movq	%rcx, 88(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 80(%rsp)
	movq	904(%rsp), %rcx
	movslq	508(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	movslq	540(%rsp), %rdx
	shlq	$3, %rdx
	addq	%rdx, %rcx
	addq	$8, %rcx
	movq	%rcx, 72(%rsp)
	movl	604(%rsp), %eax
	movl	%eax, 764(%rsp)
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
                                        #       Child Loop BB1_5 Depth 3
	movl	764(%rsp), %eax
	cmpl	572(%rsp), %eax
	jge	.LBB1_32
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	668(%rsp), %eax
	movl	%eax, 796(%rsp)
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_5 Depth 3
	movl	796(%rsp), %eax
	cmpl	636(%rsp), %eax
	jge	.LBB1_25
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=2
	movl	732(%rsp), %eax
	movl	%eax, 828(%rsp)
.LBB1_5:                                #   Parent Loop BB1_1 Depth=1
                                        #     Parent Loop BB1_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	828(%rsp), %eax
	cmpl	700(%rsp), %eax
	jge	.LBB1_18
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=3
	movl	828(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 832(%rsp)
	movl	796(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 800(%rsp)
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	movaps	800(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movaps	832(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	addl	%ecx, %eax
	movl	764(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 768(%rsp)
	movl	508(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 512(%rsp)
	movaps	768(%rsp), %xmm2
	movaps	%xmm2, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	imull	%edx, %ecx
	paddd	%xmm3, %xmm0
	movaps	%xmm0, 864(%rsp)
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %edi
	movl	%edx, %r8d
	addl	%esi, %r8d
	addl	%edi, %r8d
	addl	%ecx, %eax
	imull	$3, %eax, %ecx
	movl	%eax, 2780(%rsp)
	cmpl	%ecx, %r8d
	movl	%edx, 68(%rsp)          # 4-byte Spill
	movl	%eax, 64(%rsp)          # 4-byte Spill
	movl	%r8d, 60(%rsp)          # 4-byte Spill
	je	.LBB1_11
# BB#7:                                 #   in Loop: Header=BB1_5 Depth=3
	movl	60(%rsp), %eax          # 4-byte Reload
	cltd
	movl	68(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_5 Depth=3
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2780(%rsp)
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_5 Depth=3
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2780(%rsp)
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=3
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_5 Depth=3
	movl	2780(%rsp), %eax
	movl	%eax, 860(%rsp)
	movq	496(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movq	280(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm0
	movq	488(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	272(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	480(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	264(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	472(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	256(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	464(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	248(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	456(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	240(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	448(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	232(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	440(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	224(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	432(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	216(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	424(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	208(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	416(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	200(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	408(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	192(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	400(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	184(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	392(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	176(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	384(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	168(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	376(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	160(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	368(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	152(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	360(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	144(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	352(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	136(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	344(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	128(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	336(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	120(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	328(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	112(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	320(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	104(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	312(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	96(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	304(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	88(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	296(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	80(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	288(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	(%rcx,%rdx,8), %xmm1    # xmm1 = mem[0],zero
	movq	72(%rsp), %rcx
	movslq	860(%rsp), %rdx
	mulsd	(%rcx,%rdx,8), %xmm1
	addsd	%xmm1, %xmm0
	movq	896(%rsp), %rcx
	movslq	860(%rsp), %rdx
	movsd	%xmm0, (%rcx,%rdx,8)
# BB#12:                                #   in Loop: Header=BB1_5 Depth=3
	movl	828(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 832(%rsp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 832(%rsp)
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
	movl	%eax, 2748(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movl	%eax, 48(%rsp)          # 4-byte Spill
	je	.LBB1_17
# BB#13:                                #   in Loop: Header=BB1_5 Depth=3
	movl	52(%rsp), %eax          # 4-byte Reload
	cltd
	movl	56(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_5 Depth=3
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2748(%rsp)
	jmp	.LBB1_16
.LBB1_15:                               #   in Loop: Header=BB1_5 Depth=3
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2748(%rsp)
.LBB1_16:                               #   in Loop: Header=BB1_5 Depth=3
	jmp	.LBB1_17
.LBB1_17:                               #   in Loop: Header=BB1_5 Depth=3
	movl	2748(%rsp), %eax
	movl	%eax, 828(%rsp)
	jmp	.LBB1_5
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_19
.LBB1_19:                               #   in Loop: Header=BB1_3 Depth=2
	movl	796(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 800(%rsp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 800(%rsp)
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
	movl	%eax, 2716(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB1_24
# BB#20:                                #   in Loop: Header=BB1_3 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_22
# BB#21:                                #   in Loop: Header=BB1_3 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2716(%rsp)
	jmp	.LBB1_23
.LBB1_22:                               #   in Loop: Header=BB1_3 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2716(%rsp)
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=2
	jmp	.LBB1_24
.LBB1_24:                               #   in Loop: Header=BB1_3 Depth=2
	movl	2716(%rsp), %eax
	movl	%eax, 796(%rsp)
	jmp	.LBB1_3
.LBB1_25:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_26
.LBB1_26:                               #   in Loop: Header=BB1_1 Depth=1
	movl	764(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 768(%rsp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 768(%rsp)
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
	movl	%eax, 2684(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB1_31
# BB#27:                                #   in Loop: Header=BB1_1 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	32(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_29
# BB#28:                                #   in Loop: Header=BB1_1 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2684(%rsp)
	jmp	.LBB1_30
.LBB1_29:                               #   in Loop: Header=BB1_1 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2684(%rsp)
.LBB1_30:                               #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_31
.LBB1_31:                               #   in Loop: Header=BB1_1 Depth=1
	movl	2684(%rsp), %eax
	movl	%eax, 764(%rsp)
	jmp	.LBB1_1
.LBB1_32:
	movq	%rbp, %rsp
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
	subq	$112, %rsp
	movabsq	$.L.str.8, %rdi
	movabsq	$.L.str.1.9, %rsi
	callq	fopen
	movq	%rax, -64(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:
	movabsq	$.L.str.2.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3.11, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
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
	movq	-64(%rbp), %rbx
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 24(%rsp)
	movb	$0, %al
	callq	fscanf
	movabsq	$.L.str.5.13, %rdi
	movl	%eax, -84(%rbp)         # 4-byte Spill
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
	movl	%eax, -88(%rbp)         # 4-byte Spill
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
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jge	.LBB2_4
# BB#3:
	movabsq	$.L.str.2.10, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.7, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$1, %edi
	movl	%eax, -100(%rbp)        # 4-byte Spill
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
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movq	-64(%rbp), %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fclose
	movl	%eax, -112(%rbp)        # 4-byte Spill
	addq	$112, %rsp
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
	andq	$-32, %rsp
	subq	$192, %rsp
	movq	%rdi, 56(%rsp)
	movslq	i_ub(%rip), %rdi
	movq	%rdi, 120(%rsp)
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 80(%rsp)
	movups	%xmm0, 64(%rsp)
	shlq	$3, %rdi
	movl	%edi, %eax
	movl	%eax, 28(%rsp)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, (%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 8(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 16(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 24(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 32(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 40(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 48(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 56(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 64(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 72(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 80(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 88(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 96(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 104(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 112(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 120(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 128(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 136(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 144(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 152(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 160(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 168(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 176(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 184(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 192(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 200(%rdi)
	movslq	28(%rsp), %rdi
	callq	malloc
	movq	56(%rsp), %rdi
	movq	%rax, 208(%rdi)
	movq	56(%rsp), %rax
	cmpq	$0, 208(%rax)
	jne	.LBB3_2
# BB#1:
	movabsq	$.L.str.10, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, 24(%rsp)          # 4-byte Spill
.LBB3_2:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	allocMem, .Lfunc_end3-allocMem

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$240, %rsp
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%rdx, -104(%rbp)
	movq	%rcx, -112(%rbp)
	movl	imin(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	imax(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movl	jmin(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movl	jmax(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	kmin(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	kmax(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	jp(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	kp(%rip), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-96(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -144(%rbp)
	movq	-96(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, -152(%rbp)
	movq	-96(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rcx, -160(%rbp)
	movq	-96(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	%rcx, -168(%rbp)
	movq	-96(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	%rcx, -176(%rbp)
	movq	-96(%rbp), %rcx
	movq	40(%rcx), %rcx
	movq	%rcx, -184(%rbp)
	movq	-96(%rbp), %rcx
	movq	48(%rcx), %rcx
	movq	%rcx, -192(%rbp)
	movq	-96(%rbp), %rcx
	movq	56(%rcx), %rcx
	movq	%rcx, -200(%rbp)
	movq	-96(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rcx, -208(%rbp)
	movq	-96(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rcx, -216(%rbp)
	movq	-96(%rbp), %rcx
	movq	80(%rcx), %rcx
	movq	%rcx, -224(%rbp)
	movq	-96(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	%rcx, -232(%rbp)
	movq	-96(%rbp), %rcx
	movq	96(%rcx), %rcx
	movq	%rcx, -240(%rbp)
	movq	-96(%rbp), %rcx
	movq	104(%rcx), %rcx
	movq	%rcx, -248(%rbp)
	movq	-96(%rbp), %rcx
	movq	112(%rcx), %rcx
	movq	%rcx, -256(%rbp)
	movq	-96(%rbp), %rcx
	movq	120(%rcx), %rcx
	movq	%rcx, -264(%rbp)
	movq	-96(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rcx, -272(%rbp)
	movq	-96(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	%rcx, -280(%rbp)
	movq	-96(%rbp), %rcx
	movq	144(%rcx), %rcx
	movq	%rcx, -288(%rbp)
	movq	-96(%rbp), %rcx
	movq	152(%rcx), %rcx
	movq	%rcx, -296(%rbp)
	movq	-96(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -304(%rbp)
	movq	-96(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	%rcx, -312(%rbp)
	movq	-96(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -320(%rbp)
	movq	-96(%rbp), %rcx
	movq	184(%rcx), %rcx
	movq	%rcx, -328(%rbp)
	movq	-96(%rbp), %rcx
	movq	192(%rcx), %rcx
	movq	%rcx, -336(%rbp)
	movq	-96(%rbp), %rcx
	movq	200(%rcx), %rcx
	movq	%rcx, -344(%rbp)
	movq	-96(%rbp), %rcx
	movq	208(%rcx), %rcx
	movq	%rcx, -352(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movl	$0, -132(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	i_ub, %eax
	jge	.LBB4_4
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -112(%rbp)
	movq	$0, (%rax)
	cvtsi2sdl	-132(%rbp), %xmm0
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -144(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	incl	%edx
	cvtsi2sdl	%edx, %xmm0
	movq	-152(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -152(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$2, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-160(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -160(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$3, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-168(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -168(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$4, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-176(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -176(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$5, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-184(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -184(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$6, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-192(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -192(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$7, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-200(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -200(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$8, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-208(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -208(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$9, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-216(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -216(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$10, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-224(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -224(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$11, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-232(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -232(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$12, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-240(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -240(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$13, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-248(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -248(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$14, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-256(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -256(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$15, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-264(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -264(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$16, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-272(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -272(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$17, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-280(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -280(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$18, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-288(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -288(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$19, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-296(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -296(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$20, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-304(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -304(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$21, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-312(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -312(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$22, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-320(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -320(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$23, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-328(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -328(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$24, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-336(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -336(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	addl	$25, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-344(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -344(%rbp)
	movsd	%xmm0, (%rax)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -128(%rbp)
	addl	$26, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-352(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -352(%rbp)
	movsd	%xmm0, (%rax)
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -128(%rbp)
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_1
.LBB4_4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movl	$0, -132(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	x_size, %eax
	jge	.LBB4_13
# BB#6:                                 #   in Loop: Header=BB4_5 Depth=1
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtsi2sdl	-132(%rbp), %xmm1
	movsd	%xmm1, -56(%rbp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, -80(%rbp)
	mulsd	%xmm1, %xmm0
	movq	-104(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -104(%rbp)
	movsd	%xmm0, (%rax)
# BB#7:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-132(%rbp), %eax
	movaps	-128(%rbp), %xmm0
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -128(%rbp)
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
	movl	%ecx, -356(%rbp)        # 4-byte Spill
	movl	%edi, -360(%rbp)        # 4-byte Spill
	movl	%eax, -364(%rbp)        # 4-byte Spill
	je	.LBB4_12
# BB#8:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-360(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-356(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_10
# BB#9:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-364(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB4_11
.LBB4_10:                               #   in Loop: Header=BB4_5 Depth=1
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB4_11:                               #   in Loop: Header=BB4_5 Depth=1
	jmp	.LBB4_12
.LBB4_12:                               #   in Loop: Header=BB4_5 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_5
.LBB4_13:
	addq	$240, %rsp
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
