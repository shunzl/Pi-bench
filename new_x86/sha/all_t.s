	.text
	.file	"all_t.bc"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp              # imm = 0x140
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	%edi, -84(%rbp)
	movq	%rsi, -96(%rbp)
	cmpl	$2, -84(%rbp)
	jge	.LBB0_2
# BB#1:
	leaq	-288(%rbp), %rdi
	movq	stdin, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rsi
	callq	sha_stream
	leaq	-288(%rbp), %rdi
	callq	sha_print
	jmp	.LBB0_14
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	pcmpeqd	%xmm1, %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -80(%rbp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	addl	$-1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -20(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edi, -296(%rbp)        # 4-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB0_8
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_8
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)
	movl	-300(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	je	.LBB0_13
# BB#9:                                 #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str, %rsi
	movq	-96(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -96(%rbp)
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -104(%rbp)
	cmpq	$0, -104(%rbp)
	jne	.LBB0_11
# BB#10:                                #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-96(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -304(%rbp)        # 4-byte Spill
	jmp	.LBB0_12
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	leaq	-288(%rbp), %rdi
	movq	-104(%rbp), %rsi
	callq	sha_stream
	leaq	-288(%rbp), %rdi
	callq	sha_print
	movq	-104(%rbp), %rdi
	callq	fclose
	movl	%eax, -308(%rbp)        # 4-byte Spill
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:
	xorl	%eax, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.globl	sha_init
	.p2align	4, 0x90
	.type	sha_init,@function
sha_init:                               # @sha_init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$3285377520, %eax       # imm = 0xC3D2E1F0
	movl	%eax, %ecx
	movl	$2562383102, %eax       # imm = 0x98BADCFE
	movl	%eax, %edx
	movl	$4023233417, %eax       # imm = 0xEFCDAB89
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$1732584193, (%rdi)     # imm = 0x67452301
	movq	-8(%rbp), %rdi
	movq	%rsi, 8(%rdi)
	movq	-8(%rbp), %rsi
	movq	%rdx, 16(%rsi)
	movq	-8(%rbp), %rdx
	movq	$271733878, 24(%rdx)    # imm = 0x10325476
	movq	-8(%rbp), %rdx
	movq	%rcx, 32(%rdx)
	movq	-8(%rbp), %rcx
	movq	$0, 40(%rcx)
	movq	-8(%rbp), %rcx
	movq	$0, 48(%rcx)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	sha_init, .Lfunc_end1-sha_init

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_0:
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.long	64                      # 0x40
	.text
	.globl	sha_update
	.p2align	4, 0x90
	.type	sha_update,@function
sha_update:                             # @sha_update
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, 56(%rsp)
	movq	%rsi, 48(%rsp)
	movl	%edx, 28(%rsp)
	movq	56(%rsp), %rsi
	movq	40(%rsi), %rsi
	movslq	28(%rsp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	56(%rsp), %rdi
	cmpq	40(%rdi), %rsi
	jae	.LBB2_2
# BB#1:
	movq	56(%rsp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
.LBB2_2:
	movslq	28(%rsp), %rax
	movq	%rax, 216(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 176(%rsp)
	movups	%xmm0, 160(%rsp)
	shlq	$3, %rax
	movq	56(%rsp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movslq	28(%rsp), %rax
	shrq	$29, %rax
	movq	56(%rsp), %rcx
	addq	48(%rcx), %rax
	movq	%rax, 48(%rcx)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, 28(%rsp)
	jl	.LBB2_10
# BB#4:                                 #   in Loop: Header=BB2_3 Depth=1
	movq	56(%rsp), %rax
	movq	48(%rsp), %rcx
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	movups	32(%rcx), %xmm2
	movups	48(%rcx), %xmm3
	movups	%xmm3, 104(%rax)
	movups	%xmm2, 88(%rax)
	movups	%xmm1, 72(%rax)
	movups	%xmm0, 56(%rax)
	movq	56(%rsp), %rdi
	callq	sha_transform
	movq	48(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 48(%rsp)
	movl	28(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 32(%rsp)
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [64,64,64,64]
	psubd	%xmm1, %xmm0
	movaps	%xmm0, 32(%rsp)
	movd	%xmm0, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r8d
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%esi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	subl	$64, %edx
	imull	$3, %edx, %r8d
	movl	%edx, 380(%rsp)
	cmpl	%r8d, %r10d
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	%r10d, 20(%rsp)         # 4-byte Spill
	movl	%edx, 16(%rsp)          # 4-byte Spill
	je	.LBB2_9
# BB#5:                                 #   in Loop: Header=BB2_3 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB2_7
# BB#6:                                 #   in Loop: Header=BB2_3 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 380(%rsp)
	jmp	.LBB2_8
.LBB2_7:                                #   in Loop: Header=BB2_3 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 380(%rsp)
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_9
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movl	380(%rsp), %eax
	movl	%eax, 28(%rsp)
	jmp	.LBB2_3
.LBB2_10:
	movq	56(%rsp), %rax
	addq	$56, %rax
	movq	48(%rsp), %rsi
	movslq	28(%rsp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_0:
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
	.long	16                      # 0x10
.LCPI3_1:
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	20                      # 0x14
.LCPI3_2:
	.long	40                      # 0x28
	.long	40                      # 0x28
	.long	40                      # 0x28
	.long	40                      # 0x28
.LCPI3_3:
	.long	60                      # 0x3c
	.long	60                      # 0x3c
	.long	60                      # 0x3c
	.long	60                      # 0x3c
.LCPI3_4:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.p2align	4, 0x90
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$1696, %rsp             # imm = 0x6A0
	movq	%rdi, 1072(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 1056(%rsp)
	movl	$0, 1052(%rsp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, 1052(%rsp)
	jge	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	1072(%rsp), %rax
	movslq	1052(%rsp), %rcx
	movq	56(%rax,%rcx,8), %rax
	movslq	1052(%rsp), %rcx
	movq	%rax, 16(%rsp,%rcx,8)
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	1052(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 1056(%rsp)
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 1056(%rsp)
	addl	$1, %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_1
.LBB3_4:
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [16,16,16,16]
	movaps	%xmm0, 1056(%rsp)
	movl	$16, 1052(%rsp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, 1052(%rsp)
	jge	.LBB3_8
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	1052(%rsp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movq	16(%rsp,%rcx,8), %rcx
	movl	1052(%rsp), %eax
	subl	$8, %eax
	movslq	%eax, %rdx
	xorq	16(%rsp,%rdx,8), %rcx
	movl	1052(%rsp), %eax
	subl	$14, %eax
	movslq	%eax, %rdx
	xorq	16(%rsp,%rdx,8), %rcx
	movl	1052(%rsp), %eax
	subl	$16, %eax
	movslq	%eax, %rdx
	xorq	16(%rsp,%rdx,8), %rcx
	movslq	1052(%rsp), %rdx
	movq	%rcx, 16(%rsp,%rdx,8)
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	1052(%rsp), %eax
	movaps	1056(%rsp), %xmm0
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 1056(%rsp)
	addl	$1, %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_5
.LBB3_8:
	movq	1072(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 920(%rsp)
	movq	1072(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 856(%rsp)
	movq	1072(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 792(%rsp)
	movq	1072(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 728(%rsp)
	movq	1072(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 664(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 1056(%rsp)
	movl	$0, 1052(%rsp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$20, 1052(%rsp)
	jge	.LBB3_12
# BB#10:                                #   in Loop: Header=BB3_9 Depth=1
	movq	920(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shlq	$5, %rax
	movq	920(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	856(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	movq	792(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm0, 800(%rsp)
	andq	%rdx, %rcx
	movq	856(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	notq	%rdx
	movq	728(%rsp), %rsi
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 752(%rsp)
	movaps	%xmm0, 736(%rsp)
	andq	%rsi, %rdx
	orq	%rdx, %rcx
	addq	%rcx, %rax
	movq	664(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	addq	%rcx, %rax
	movslq	1052(%rsp), %rcx
	addq	16(%rsp,%rcx,8), %rax
	addq	$1518500249, %rax       # imm = 0x5A827999
	movq	%rax, 984(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 664(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 728(%rsp)
	movq	856(%rsp), %rax
	shlq	$30, %rax
	movq	856(%rsp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, 792(%rsp)
	movq	920(%rsp), %rax
	movq	%rax, 856(%rsp)
	movq	984(%rsp), %rax
	movq	%rax, 920(%rsp)
# BB#11:                                #   in Loop: Header=BB3_9 Depth=1
	movl	1052(%rsp), %eax
	movaps	1056(%rsp), %xmm0
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 1056(%rsp)
	addl	$1, %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_9
.LBB3_12:
	movaps	.LCPI3_1(%rip), %xmm0   # xmm0 = [20,20,20,20]
	movaps	%xmm0, 1056(%rsp)
	movl	$20, 1052(%rsp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$40, 1052(%rsp)
	jge	.LBB3_16
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movq	920(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shlq	$5, %rax
	movq	920(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	856(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	movq	792(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm0, 800(%rsp)
	xorq	%rdx, %rcx
	movq	728(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 752(%rsp)
	movaps	%xmm0, 736(%rsp)
	xorq	%rdx, %rcx
	addq	%rcx, %rax
	movq	664(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	addq	%rcx, %rax
	movslq	1052(%rsp), %rcx
	addq	16(%rsp,%rcx,8), %rax
	addq	$1859775393, %rax       # imm = 0x6ED9EBA1
	movq	%rax, 984(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 664(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 728(%rsp)
	movq	856(%rsp), %rax
	shlq	$30, %rax
	movq	856(%rsp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, 792(%rsp)
	movq	920(%rsp), %rax
	movq	%rax, 856(%rsp)
	movq	984(%rsp), %rax
	movq	%rax, 920(%rsp)
# BB#15:                                #   in Loop: Header=BB3_13 Depth=1
	movl	1052(%rsp), %eax
	movaps	1056(%rsp), %xmm0
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 1056(%rsp)
	addl	$1, %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_13
.LBB3_16:
	movaps	.LCPI3_2(%rip), %xmm0   # xmm0 = [40,40,40,40]
	movaps	%xmm0, 1056(%rsp)
	movl	$40, 1052(%rsp)
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	cmpl	$60, 1052(%rsp)
	jge	.LBB3_20
# BB#18:                                #   in Loop: Header=BB3_17 Depth=1
	movq	920(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shlq	$5, %rax
	movq	920(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	856(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	movq	792(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm0, 800(%rsp)
	andq	%rdx, %rcx
	movq	856(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	movq	728(%rsp), %rsi
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 752(%rsp)
	movaps	%xmm0, 736(%rsp)
	andq	%rsi, %rdx
	orq	%rdx, %rcx
	movq	792(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm0, 800(%rsp)
	movq	728(%rsp), %rsi
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 752(%rsp)
	movaps	%xmm0, 736(%rsp)
	andq	%rsi, %rdx
	orq	%rdx, %rcx
	addq	%rcx, %rax
	movq	664(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	addq	%rcx, %rax
	movslq	1052(%rsp), %rcx
	addq	16(%rsp,%rcx,8), %rax
	movabsq	$2400959708, %rcx       # imm = 0x8F1BBCDC
	addq	%rcx, %rax
	movq	%rax, 984(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 664(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 728(%rsp)
	movq	856(%rsp), %rax
	shlq	$30, %rax
	movq	856(%rsp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, 792(%rsp)
	movq	920(%rsp), %rax
	movq	%rax, 856(%rsp)
	movq	984(%rsp), %rax
	movq	%rax, 920(%rsp)
# BB#19:                                #   in Loop: Header=BB3_17 Depth=1
	movl	1052(%rsp), %eax
	movaps	1056(%rsp), %xmm0
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 1056(%rsp)
	addl	$1, %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_17
.LBB3_20:
	movaps	.LCPI3_3(%rip), %xmm0   # xmm0 = [60,60,60,60]
	movaps	%xmm0, 1056(%rsp)
	movl	$60, 1052(%rsp)
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	cmpl	$80, 1052(%rsp)
	jge	.LBB3_29
# BB#22:                                #   in Loop: Header=BB3_21 Depth=1
	movq	920(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shlq	$5, %rax
	movq	920(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	856(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 880(%rsp)
	movaps	%xmm0, 864(%rsp)
	movq	792(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 816(%rsp)
	movaps	%xmm0, 800(%rsp)
	xorq	%rdx, %rcx
	movq	728(%rsp), %rdx
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 752(%rsp)
	movaps	%xmm0, 736(%rsp)
	xorq	%rdx, %rcx
	addq	%rcx, %rax
	movq	664(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 688(%rsp)
	movaps	%xmm0, 672(%rsp)
	addq	%rcx, %rax
	movslq	1052(%rsp), %rcx
	addq	16(%rsp,%rcx,8), %rax
	movabsq	$3395469782, %rcx       # imm = 0xCA62C1D6
	addq	%rcx, %rax
	movq	%rax, 984(%rsp)
	movq	728(%rsp), %rax
	movq	%rax, 664(%rsp)
	movq	792(%rsp), %rax
	movq	%rax, 728(%rsp)
	movq	856(%rsp), %rax
	shlq	$30, %rax
	movq	856(%rsp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, 792(%rsp)
	movq	920(%rsp), %rax
	movq	%rax, 856(%rsp)
	movq	984(%rsp), %rax
	movq	%rax, 920(%rsp)
# BB#23:                                #   in Loop: Header=BB3_21 Depth=1
	movl	1052(%rsp), %eax
	movaps	1056(%rsp), %xmm0
	movaps	.LCPI3_4(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 1056(%rsp)
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
	movl	%eax, 1404(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB3_28
# BB#24:                                #   in Loop: Header=BB3_21 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	cltd
	movl	12(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB3_26
# BB#25:                                #   in Loop: Header=BB3_21 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 1404(%rsp)
	jmp	.LBB3_27
.LBB3_26:                               #   in Loop: Header=BB3_21 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1404(%rsp)
.LBB3_27:                               #   in Loop: Header=BB3_21 Depth=1
	jmp	.LBB3_28
.LBB3_28:                               #   in Loop: Header=BB3_21 Depth=1
	movl	1404(%rsp), %eax
	movl	%eax, 1052(%rsp)
	jmp	.LBB3_21
.LBB3_29:
	movq	920(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 944(%rsp)
	movaps	%xmm0, 928(%rsp)
	movq	1072(%rsp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	856(%rsp), %rax
	movq	1072(%rsp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	792(%rsp), %rax
	movq	1072(%rsp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	728(%rsp), %rax
	movq	1072(%rsp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	664(%rsp), %rax
	movq	1072(%rsp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_0:
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
	.long	63                      # 0x3f
.LCPI4_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	sha_final
	.p2align	4, 0x90
	.type	sha_final,@function
sha_final:                              # @sha_final
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$192, %rsp
	movq	%rdi, 168(%rsp)
	movq	40(%rdi), %rdi
	movq	%rdi, 88(%rsp)
	movq	168(%rsp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, 24(%rsp)
	movq	88(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	%edi, %eax
	shrl	$3, %eax
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	%ecx, 140(%rsp)
	movq	168(%rsp), %rdi
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [63,63,63,63]
	pand	%xmm1, %xmm0
	movaps	%xmm0, 144(%rsp)
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 144(%rsp)
	movl	%ecx, %eax
	addl	$1, %eax
	movl	%eax, 140(%rsp)
	movslq	%ecx, %rdx
	movb	$-128, 56(%rdi,%rdx)
	cmpl	$56, 140(%rsp)
	jle	.LBB4_2
# BB#1:
	xorl	%esi, %esi
	movl	$64, %eax
	movq	168(%rsp), %rcx
	addq	$56, %rcx
	movslq	140(%rsp), %rdx
	addq	%rdx, %rcx
	subl	140(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	callq	memset
	movq	168(%rsp), %rdi
	callq	sha_transform
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	movq	168(%rsp), %rcx
	addq	$56, %rcx
	movq	%rcx, %rdi
	callq	memset
	jmp	.LBB4_3
.LBB4_2:
	xorl	%esi, %esi
	movl	$56, %eax
	movq	168(%rsp), %rcx
	addq	$56, %rcx
	movslq	140(%rsp), %rdx
	addq	%rdx, %rcx
	subl	140(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	callq	memset
.LBB4_3:
	movq	24(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, 168(%rcx)
	movq	88(%rsp), %rax
	movq	168(%rsp), %rcx
	movq	%rax, 176(%rcx)
	movq	168(%rsp), %rdi
	callq	sha_transform
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final

	.globl	sha_stream
	.p2align	4, 0x90
	.type	sha_stream,@function
sha_stream:                             # @sha_stream
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$8240, %rsp             # imm = 0x2030
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	sha_init
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	leaq	-8240(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -36(%rbp)
	cmpl	$0, %r8d
	jle	.LBB5_3
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	leaq	-8240(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	-36(%rbp), %edx
	callq	sha_update
	jmp	.LBB5_1
.LBB5_3:
	movq	-8(%rbp), %rdi
	callq	sha_final
	addq	$8240, %rsp             # imm = 0x2030
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream

	.globl	sha_print
	.p2align	4, 0x90
	.type	sha_print,@function
sha_print:                              # @sha_print
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movabsq	$.L.str.5, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rsi
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdx
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rcx
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %r8
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %r9
	movq	%rax, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -12(%rbp)         # 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str.5, 31


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
