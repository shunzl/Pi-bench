	.text
	.file	"all_t.bc"
	.globl	usage
	.p2align	4, 0x90
	.type	usage,@function
usage:                                  # @usage
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1, %rdi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3, %rdi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.5, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.6, %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.7, %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.9, %rdi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.10, %rdi
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movl	%eax, -64(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.12, %rdi
	movl	%eax, -68(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, -72(%rbp)         # 4-byte Spill
	callq	exit
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
	.long	10                      # 0xa
.LCPI1_1:
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.text
	.globl	getint
	.p2align	4, 0x90
	.type	getint,@function
getint:                                 # @getint
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$10160, %rsp            # imm = 0x27B0
	movq	%rdi, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	getc
	movl	%eax, -84(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$35, -84(%rbp)
	jne	.LBB1_3
# BB#2:                                 #   in Loop: Header=BB1_1 Depth=1
	movl	$9000, %esi             # imm = 0x2328
	leaq	-10128(%rbp), %rdi
	movq	-64(%rbp), %rdx
	callq	fgets
	movq	%rax, -10136(%rbp)      # 8-byte Spill
.LBB1_3:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$-1, -84(%rbp)
	jne	.LBB1_5
# BB#4:
	movabsq	$.L.str.13, %rsi
	movabsq	$.L.str.14, %rdx
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -10140(%rbp)      # 4-byte Spill
	callq	exit
.LBB1_5:                                #   in Loop: Header=BB1_1 Depth=1
	cmpl	$48, -84(%rbp)
	jl	.LBB1_8
# BB#6:                                 #   in Loop: Header=BB1_1 Depth=1
	cmpl	$57, -84(%rbp)
	jg	.LBB1_8
# BB#7:
	jmp	.LBB1_9
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-64(%rbp), %rdi
	callq	getc
	movl	%eax, -84(%rbp)
	jmp	.LBB1_1
.LBB1_9:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -112(%rbp)
	movl	$0, -116(%rbp)
.LBB1_10:                               # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [10,10,10,10]
	pmuludq	%xmm1, %xmm0
	pshufd	$160, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,2]
	addl	%eax, %eax
	movl	%eax, %ecx
	leal	(%rcx,%rcx,4), %eax
	movl	-84(%rbp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -80(%rbp)
	movaps	.LCPI1_1(%rip), %xmm2   # xmm2 = [48,48,48,48]
	psubd	%xmm2, %xmm1
	addl	$-48, %edx
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -112(%rbp)
	movd	%xmm0, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	addl	%edx, %eax
	imull	$3, %eax, %edx
	movl	%eax, -20(%rbp)
	cmpl	%edx, %r9d
	movl	%eax, -10144(%rbp)      # 4-byte Spill
	movl	%esi, -10148(%rbp)      # 4-byte Spill
	movl	%r9d, -10152(%rbp)      # 4-byte Spill
	je	.LBB1_15
# BB#11:                                #   in Loop: Header=BB1_10 Depth=1
	movl	-10152(%rbp), %eax      # 4-byte Reload
	cltd
	movl	-10148(%rbp), %ecx      # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_13
# BB#12:                                #   in Loop: Header=BB1_10 Depth=1
	movl	-10144(%rbp), %eax      # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_10 Depth=1
	movl	-10148(%rbp), %eax      # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB1_14:                               #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_15
.LBB1_15:                               #   in Loop: Header=BB1_10 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -116(%rbp)
	movq	-64(%rbp), %rdi
	callq	getc
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.LBB1_17
# BB#16:
	movl	-116(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB1_22
.LBB1_17:                               #   in Loop: Header=BB1_10 Depth=1
	cmpl	$48, -84(%rbp)
	jl	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_10 Depth=1
	cmpl	$57, -84(%rbp)
	jle	.LBB1_20
.LBB1_19:
	jmp	.LBB1_21
.LBB1_20:                               #   in Loop: Header=BB1_10 Depth=1
	jmp	.LBB1_10
.LBB1_21:
	movl	-116(%rbp), %eax
	movl	%eax, -52(%rbp)
.LBB1_22:
	movl	-52(%rbp), %eax
	addq	$10160, %rsp            # imm = 0x27B0
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint

	.globl	get_image
	.p2align	4, 0x90
	.type	get_image,@function
get_image:                              # @get_image
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$192, %rsp
	movabsq	$.L.str.15, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -40(%rbp)
	cmpq	$0, %rax
	jne	.LBB2_2
# BB#1:
	movabsq	$.L.str.16, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	exit
.LBB2_2:
	movq	-40(%rbp), %rdi
	callq	fgetc
	movb	%al, %cl
	movb	%cl, -144(%rbp)
	movq	-40(%rbp), %rdi
	callq	fgetc
	movb	%al, %cl
	movb	%cl, -143(%rbp)
	movsbl	-144(%rbp), %eax
	cmpl	$80, %eax
	jne	.LBB2_4
# BB#3:
	movsbl	-143(%rbp), %eax
	cmpl	$53, %eax
	je	.LBB2_5
.LBB2_4:
	movabsq	$.L.str.17, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -172(%rbp)        # 4-byte Spill
	callq	exit
.LBB2_5:
	movq	-40(%rbp), %rdi
	callq	getint
	movq	-24(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	callq	getint
	movq	-32(%rbp), %rdi
	movl	%eax, (%rdi)
	movq	-40(%rbp), %rdi
	callq	getint
	movl	%eax, -164(%rbp)
	movq	-24(%rbp), %rdi
	movl	(%rdi), %eax
	movq	-32(%rbp), %rdi
	imull	(%rdi), %eax
	movslq	%eax, %rdi
	callq	malloc
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	imull	(%rax), %ecx
	movslq	%ecx, %rdx
	movq	-40(%rbp), %rcx
	callq	fread
	cmpq	$0, %rax
	jne	.LBB2_7
# BB#6:
	movabsq	$.L.str.18, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -176(%rbp)        # 4-byte Spill
	callq	exit
.LBB2_7:
	movq	-40(%rbp), %rdi
	callq	fclose
	movl	%eax, -180(%rbp)        # 4-byte Spill
	addq	$192, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image

	.globl	put_image
	.p2align	4, 0x90
	.type	put_image,@function
put_image:                              # @put_image
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movabsq	$.L.str.19, %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movl	%edx, -68(%rbp)
	movl	%ecx, -100(%rbp)
	movq	-32(%rbp), %rdi
	movq	%rax, %rsi
	callq	fopen
	movq	%rax, -112(%rbp)
	cmpq	$0, %rax
	jne	.LBB3_2
# BB#1:
	movabsq	$.L.str.20, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	callq	exit
.LBB3_2:
	movl	$1, %eax
	movl	%eax, %edx
	movq	-112(%rbp), %rdi
	movl	$.L.str.21, %eax
	movl	%eax, %esi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	movb	%cl, -129(%rbp)         # 1-byte Spill
	callq	fprintf
	movq	-112(%rbp), %rdi
	movl	-68(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	$.L.str.22, %r8d
	movl	%r8d, %esi
	movb	-129(%rbp), %r9b        # 1-byte Reload
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	%r9b, %al
	callq	fprintf
	movq	-112(%rbp), %rdi
	movl	$.L.str.23, %ecx
	movl	%ecx, %esi
	movb	-129(%rbp), %r9b        # 1-byte Reload
	movl	%eax, -140(%rbp)        # 4-byte Spill
	movb	%r9b, %al
	callq	fprintf
	movq	-40(%rbp), %rdi
	movl	-68(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -64(%rbp)
	movl	-100(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -96(%rbp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	movq	-112(%rbp), %rcx
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	fwrite
	cmpq	$1, %rax
	je	.LBB3_4
# BB#3:
	movabsq	$.L.str.24, %rsi
	movq	stderr, %rdi
	movq	-32(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	xorl	%edi, %edi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	exit
.LBB3_4:
	movq	-112(%rbp), %rdi
	callq	fclose
	movl	-20(%rbp), %ecx
	movl	%eax, -152(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	int_to_uchar
	.p2align	4, 0x90
	.type	int_to_uchar,@function
int_to_uchar:                           # @int_to_uchar
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movl	%edx, -100(%rbp)
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -164(%rbp)
	movq	-64(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, -196(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movl	$0, -132(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB4_8
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-164(%rbp), %edx
	jle	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -164(%rbp)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	cmpl	-196(%rbp), %edx
	jge	.LBB4_6
# BB#5:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-64(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, -196(%rbp)
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-132(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -128(%rbp)
	addl	$1, %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_1
.LBB4_8:
	movl	-196(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -192(%rbp)
	movl	-164(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -160(%rbp)
	movaps	-192(%rbp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -160(%rbp)
	subl	%eax, %ecx
	movl	%ecx, -164(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -128(%rbp)
	movl	$0, -132(%rbp)
.LBB4_9:                                # =>This Inner Loop Header: Depth=1
	movl	-132(%rbp), %eax
	cmpl	-100(%rbp), %eax
	jge	.LBB4_17
# BB#10:                                #   in Loop: Header=BB4_9 Depth=1
	movq	-64(%rbp), %rax
	movslq	-132(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	subl	-196(%rbp), %edx
	imull	$255, %edx, %eax
	cltd
	idivl	-164(%rbp)
	movb	%al, %sil
	movq	-72(%rbp), %rcx
	movslq	-132(%rbp), %rdi
	movb	%sil, (%rcx,%rdi)
# BB#11:                                #   in Loop: Header=BB4_9 Depth=1
	movl	-132(%rbp), %eax
	movaps	-128(%rbp), %xmm0
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
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
	movl	%ecx, -200(%rbp)        # 4-byte Spill
	movl	%edi, -204(%rbp)        # 4-byte Spill
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB4_16
# BB#12:                                #   in Loop: Header=BB4_9 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_14
# BB#13:                                #   in Loop: Header=BB4_9 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB4_15
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=1
	movl	-200(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB4_15:                               #   in Loop: Header=BB4_9 Depth=1
	jmp	.LBB4_16
.LBB4_16:                               #   in Loop: Header=BB4_9 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -132(%rbp)
	jmp	.LBB4_9
.LBB4_17:
	movl	-52(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI5_0:
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
	.long	4294967040              # 0xffffff00
.LCPI5_1:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
.LCPI5_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI5_2:
	.quad	4636737291354636288     # double 100
	.text
	.globl	setup_brightness_lut
	.p2align	4, 0x90
	.type	setup_brightness_lut,@function
setup_brightness_lut:                   # @setup_brightness_lut
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -184(%rbp)
	movl	%esi, -212(%rbp)
	movl	%edx, -244(%rbp)
	movl	$516, %edx              # imm = 0x204
	movl	%edx, %edi
	callq	malloc
	movq	-184(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-184(%rbp), %rax
	movq	(%rax), %rdi
	addq	$258, %rdi              # imm = 0x102
	movq	%rdi, (%rax)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [4294967040,4294967040,4294967040,4294967040]
	movaps	%xmm0, -272(%rbp)
	movl	$-256, -276(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$257, -276(%rbp)        # imm = 0x101
	jge	.LBB5_11
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-276(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	-212(%rbp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm0, -52(%rbp)
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cvtdq2ps	%xmm2, %xmm2
	movups	%xmm2, -80(%rbp)
	movss	%xmm1, -100(%rbp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, -128(%rbp)
	movups	-128(%rbp), %xmm3
	divps	%xmm3, %xmm2
	movaps	%xmm2, -304(%rbp)
	divss	%xmm1, %xmm0
	movss	%xmm0, -308(%rbp)
	movss	-308(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-308(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	-304(%rbp), %xmm2
	mulps	-304(%rbp), %xmm2
	movaps	%xmm2, -304(%rbp)
	mulss	%xmm1, %xmm0
	movss	%xmm0, -308(%rbp)
	cmpl	$6, -244(%rbp)
	jne	.LBB5_4
# BB#3:                                 #   in Loop: Header=BB5_1 Depth=1
	movss	-308(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	-308(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	-304(%rbp), %xmm2
	mulps	-304(%rbp), %xmm2
	mulss	%xmm1, %xmm0
	movss	-308(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	mulps	-304(%rbp), %xmm2
	movaps	%xmm2, -304(%rbp)
	mulss	%xmm1, %xmm0
	movss	%xmm0, -308(%rbp)
.LBB5_4:                                #   in Loop: Header=BB5_1 Depth=1
	movss	-308(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI5_1(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00,-0.000000e+00,-0.000000e+00]
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	callq	exp
	movsd	%xmm0, -152(%rbp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, -176(%rbp)
	movsd	.LCPI5_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -308(%rbp)
	cvttss2si	%xmm0, %eax
	movb	%al, %cl
	movq	-184(%rbp), %rdx
	movq	(%rdx), %rdx
	movslq	-276(%rbp), %rsi
	movb	%cl, (%rdx,%rsi)
# BB#5:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-276(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -272(%rbp)
	movaps	.LCPI5_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -272(%rbp)
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
	movl	%ecx, -312(%rbp)        # 4-byte Spill
	movl	%edi, -316(%rbp)        # 4-byte Spill
	movl	%eax, -320(%rbp)        # 4-byte Spill
	je	.LBB5_10
# BB#6:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-316(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-312(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB5_8
# BB#7:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-320(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB5_9
.LBB5_8:                                #   in Loop: Header=BB5_1 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB5_9:                                #   in Loop: Header=BB5_1 Depth=1
	jmp	.LBB5_10
.LBB5_10:                               #   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB5_1
.LBB5_11:
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI6_0:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI6_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI6_2:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.text
	.globl	susan_principle
	.p2align	4, 0x90
	.type	susan_principle,@function
susan_principle:                        # @susan_principle
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$6240, %rsp             # imm = 0x1860
	movq	%rdi, 272(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%rdx, 256(%rsp)
	movl	%ecx, 236(%rsp)
	movl	%r8d, 204(%rsp)
	movl	%r9d, 172(%rsp)
	movq	264(%rsp), %rdi
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	movl	172(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 176(%rsp)
	imull	%r8d, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, 6104(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6064(%rsp)
	movups	%xmm0, 6048(%rsp)
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [3,3,3,3]
	movaps	%xmm0, 144(%rsp)
	movl	$3, 140(%rsp)
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movl	140(%rsp), %eax
	movl	172(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 176(%rsp)
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_20
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movaps	.LCPI6_0(%rip), %xmm0   # xmm0 = [3,3,3,3]
	movaps	%xmm0, 112(%rsp)
	movl	$3, 108(%rsp)
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	108(%rsp), %eax
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 208(%rsp)
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB6_13
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=2
	movaps	.LCPI6_2(%rip), %xmm0   # xmm0 = [100,100,100,100]
	movaps	%xmm0, 80(%rsp)
	movl	$100, 76(%rsp)
	movq	272(%rsp), %rax
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	addl	$-3, %ecx
	movl	204(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	108(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 64(%rsp)
	movq	256(%rsp), %rax
	movq	272(%rsp), %rsi
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movl	204(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 112(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6008(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5968(%rsp)
	movups	%xmm0, 5952(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 80(%rsp)
	movl	%ecx, 5932(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5904(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5848(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5808(%rsp)
	movups	%xmm0, 5792(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 5772(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5744(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5688(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5648(%rsp)
	movups	%xmm0, 5632(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 5612(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5584(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-3, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 5528(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5488(%rsp)
	movups	%xmm0, 5472(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 5452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5424(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5368(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5328(%rsp)
	movups	%xmm0, 5312(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 5292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5264(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5168(%rsp)
	movups	%xmm0, 5152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 5132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5008(%rsp)
	movups	%xmm0, 4992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4848(%rsp)
	movups	%xmm0, 4832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-5, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 4728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4688(%rsp)
	movups	%xmm0, 4672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4528(%rsp)
	movups	%xmm0, 4512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4368(%rsp)
	movups	%xmm0, 4352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4304(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4248(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4208(%rsp)
	movups	%xmm0, 4192(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4088(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4048(%rsp)
	movups	%xmm0, 4032(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 4012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3984(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3928(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3888(%rsp)
	movups	%xmm0, 3872(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3852(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3824(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3768(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3728(%rsp)
	movups	%xmm0, 3712(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3692(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3664(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-6, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 3608(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3568(%rsp)
	movups	%xmm0, 3552(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3532(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3504(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3448(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3408(%rsp)
	movups	%xmm0, 3392(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3372(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3344(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3288(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3248(%rsp)
	movups	%xmm0, 3232(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3212(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3184(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 64(%rsp)
	movq	56(%rsp), %rsi
	movq	%rax, %rdi
	addq	$3, %rdi
	movq	%rdi, 64(%rsp)
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 3128(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3088(%rsp)
	movups	%xmm0, 3072(%rsp)
	subq	%rax, %rsi
	movzbl	(%rsi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 3052(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3024(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2968(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2928(%rsp)
	movups	%xmm0, 2912(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2892(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2864(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2808(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2768(%rsp)
	movups	%xmm0, 2752(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2732(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2704(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-6, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 2648(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2608(%rsp)
	movups	%xmm0, 2592(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2572(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2544(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2488(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2448(%rsp)
	movups	%xmm0, 2432(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2412(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2384(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2328(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2288(%rsp)
	movups	%xmm0, 2272(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2252(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2224(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2168(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2128(%rsp)
	movups	%xmm0, 2112(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 2092(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2064(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2008(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1968(%rsp)
	movups	%xmm0, 1952(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1932(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1904(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1848(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1808(%rsp)
	movups	%xmm0, 1792(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1772(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1744(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1688(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1648(%rsp)
	movups	%xmm0, 1632(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1612(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1584(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-5, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 1528(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1488(%rsp)
	movups	%xmm0, 1472(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1424(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1368(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1328(%rsp)
	movups	%xmm0, 1312(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1264(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1168(%rsp)
	movups	%xmm0, 1152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1008(%rsp)
	movups	%xmm0, 992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 848(%rsp)
	movups	%xmm0, 832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-3, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 688(%rsp)
	movups	%xmm0, 672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 528(%rsp)
	movups	%xmm0, 512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 368(%rsp)
	movups	%xmm0, 352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 304(%rsp)
	movdqu	304(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	76(%rsp), %ecx
	cmpl	236(%rsp), %ecx
	jg	.LBB6_6
# BB#5:                                 #   in Loop: Header=BB6_3 Depth=2
	movl	236(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 240(%rsp)
	movl	76(%rsp), %ecx
	subl	%ecx, %eax
	movq	264(%rsp), %rdx
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movl	204(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%esi, %ecx
	movl	108(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 112(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_7
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=2
	movl	108(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 112(%rsp)
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 112(%rsp)
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
	movl	%eax, 6204(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB6_12
# BB#8:                                 #   in Loop: Header=BB6_3 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB6_10
# BB#9:                                 #   in Loop: Header=BB6_3 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 6204(%rsp)
	jmp	.LBB6_11
.LBB6_10:                               #   in Loop: Header=BB6_3 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 6204(%rsp)
.LBB6_11:                               #   in Loop: Header=BB6_3 Depth=2
	jmp	.LBB6_12
.LBB6_12:                               #   in Loop: Header=BB6_3 Depth=2
	movl	6204(%rsp), %eax
	movl	%eax, 108(%rsp)
	jmp	.LBB6_3
.LBB6_13:                               #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_14
.LBB6_14:                               #   in Loop: Header=BB6_1 Depth=1
	movl	140(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movaps	.LCPI6_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 144(%rsp)
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
	movl	%eax, 6172(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB6_19
# BB#15:                                #   in Loop: Header=BB6_1 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	32(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB6_17
# BB#16:                                #   in Loop: Header=BB6_1 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 6172(%rsp)
	jmp	.LBB6_18
.LBB6_17:                               #   in Loop: Header=BB6_1 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 6172(%rsp)
.LBB6_18:                               #   in Loop: Header=BB6_1 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               #   in Loop: Header=BB6_1 Depth=1
	movl	6172(%rsp), %eax
	movl	%eax, 140(%rsp)
	jmp	.LBB6_1
.LBB6_20:
	movl	284(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI7_0:
	.long	730                     # 0x2da
	.long	730                     # 0x2da
	.long	730                     # 0x2da
	.long	730                     # 0x2da
.LCPI7_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI7_2:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.text
	.globl	susan_principle_small
	.p2align	4, 0x90
	.type	susan_principle_small,@function
susan_principle_small:                  # @susan_principle_small
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$1760, %rsp             # imm = 0x6E0
	movq	%rdi, 272(%rsp)
	movq	%rsi, 264(%rsp)
	movq	%rdx, 256(%rsp)
	movl	%ecx, 236(%rsp)
	movl	%r8d, 204(%rsp)
	movl	%r9d, 172(%rsp)
	movq	264(%rsp), %rdi
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	movl	172(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 176(%rsp)
	imull	%r8d, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, 1624(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1584(%rsp)
	movups	%xmm0, 1568(%rsp)
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movaps	.LCPI7_0(%rip), %xmm0   # xmm0 = [730,730,730,730]
	movaps	%xmm0, 240(%rsp)
	movl	$730, 236(%rsp)         # imm = 0x2DA
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, 144(%rsp)
	movl	$1, 140(%rsp)
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_3 Depth 2
	movl	140(%rsp), %eax
	movl	172(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 176(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_20
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movaps	.LCPI7_1(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, 112(%rsp)
	movl	$1, 108(%rsp)
.LBB7_3:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	108(%rsp), %eax
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 208(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB7_13
# BB#4:                                 #   in Loop: Header=BB7_3 Depth=2
	movaps	.LCPI7_2(%rip), %xmm0   # xmm0 = [100,100,100,100]
	movaps	%xmm0, 80(%rsp)
	movl	$100, 76(%rsp)
	movq	272(%rsp), %rax
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	decl	%ecx
	movl	204(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	108(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 64(%rsp)
	movq	256(%rsp), %rax
	movq	272(%rsp), %rsi
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movl	204(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 112(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 56(%rsp)
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1528(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1488(%rsp)
	movups	%xmm0, 1472(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 80(%rsp)
	movl	%ecx, 1452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1424(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1368(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1328(%rsp)
	movups	%xmm0, 1312(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1264(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1168(%rsp)
	movups	%xmm0, 1152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 1132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-2, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 1048(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1008(%rsp)
	movups	%xmm0, 992(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	64(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 64(%rsp)
	movq	56(%rsp), %rsi
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 888(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 848(%rsp)
	movups	%xmm0, 832(%rsp)
	subq	%rax, %rsi
	movzbl	(%rsi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	204(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	addl	$-2, %ecx
	movq	64(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 64(%rsp)
	movq	56(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 64(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 688(%rsp)
	movups	%xmm0, 672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 64(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 528(%rsp)
	movups	%xmm0, 512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movq	56(%rsp), %rax
	movq	64(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 368(%rsp)
	movups	%xmm0, 352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	76(%rsp), %edx
	movaps	80(%rsp), %xmm0
	movl	%ecx, 332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 304(%rsp)
	movdqu	304(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 80(%rsp)
	addl	%ecx, %edx
	movl	%edx, 76(%rsp)
	movl	76(%rsp), %ecx
	cmpl	236(%rsp), %ecx
	jg	.LBB7_6
# BB#5:                                 #   in Loop: Header=BB7_3 Depth=2
	movl	236(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 240(%rsp)
	movl	76(%rsp), %ecx
	subl	%ecx, %eax
	movq	264(%rsp), %rdx
	movl	140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movl	204(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 208(%rsp)
	imull	%esi, %ecx
	movl	108(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 112(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
.LBB7_6:                                #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_7
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=2
	movl	108(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 112(%rsp)
	movaps	.LCPI7_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 112(%rsp)
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
	movl	%eax, 1724(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB7_12
# BB#8:                                 #   in Loop: Header=BB7_3 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB7_10
# BB#9:                                 #   in Loop: Header=BB7_3 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1724(%rsp)
	jmp	.LBB7_11
.LBB7_10:                               #   in Loop: Header=BB7_3 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1724(%rsp)
.LBB7_11:                               #   in Loop: Header=BB7_3 Depth=2
	jmp	.LBB7_12
.LBB7_12:                               #   in Loop: Header=BB7_3 Depth=2
	movl	1724(%rsp), %eax
	movl	%eax, 108(%rsp)
	jmp	.LBB7_3
.LBB7_13:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_14
.LBB7_14:                               #   in Loop: Header=BB7_1 Depth=1
	movl	140(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 144(%rsp)
	movaps	.LCPI7_1(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 144(%rsp)
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
	movl	%eax, 1692(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB7_19
# BB#15:                                #   in Loop: Header=BB7_1 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	32(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB7_17
# BB#16:                                #   in Loop: Header=BB7_1 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1692(%rsp)
	jmp	.LBB7_18
.LBB7_17:                               #   in Loop: Header=BB7_1 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1692(%rsp)
.LBB7_18:                               #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               #   in Loop: Header=BB7_1 Depth=1
	movl	1692(%rsp), %eax
	movl	%eax, 140(%rsp)
	jmp	.LBB7_1
.LBB7_20:
	movl	284(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI8_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	median
	.p2align	4, 0x90
	.type	median,@function
median:                                 # @median
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -64(%rbp)
	movl	%esi, -84(%rbp)
	movl	%edx, -116(%rbp)
	movl	%ecx, -148(%rbp)
	movq	-64(%rbp), %rdi
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	decl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	movl	%ecx, %eax
	movl	%edx, %r8d
	leal	-1(%rax,%r8), %ecx
	movslq	%ecx, %rax
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, -192(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	decl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -188(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	decl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	1(%rax,%rdi), %ecx
	movl	%ecx, -184(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	movl	%ecx, %edi
	movl	%edx, %r8d
	leal	-1(%rdi,%r8), %ecx
	movslq	%ecx, %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -180(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	1(%rax,%rdi), %ecx
	movl	%ecx, -176(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	incl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	movl	%ecx, %edi
	movl	%edx, %r8d
	leal	-1(%rdi,%r8), %ecx
	movslq	%ecx, %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -172(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	incl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rax,%rdi), %ecx
	movl	%ecx, -168(%rbp)
	movq	-64(%rbp), %rax
	movl	-84(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	incl	%ecx
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	imull	%edx, %ecx
	movl	-116(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	1(%rax,%rdi), %ecx
	movl	%ecx, -164(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movl	$0, -212(%rbp)
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	cmpl	$7, -212(%rbp)
	jge	.LBB8_20
# BB#2:                                 #   in Loop: Header=BB8_1 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$7, %eax
	movl	-244(%rbp), %ecx
	movl	-212(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -208(%rbp)
	subl	%edx, %eax
	cmpl	%eax, %ecx
	jge	.LBB8_13
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=2
	movslq	-244(%rbp), %rax
	movl	%eax, %ecx
	movl	-192(%rbp,%rax,4), %edx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -240(%rbp)
	addl	$1, %ecx
	movslq	%ecx, %rax
	cmpl	-192(%rbp,%rax,4), %edx
	jle	.LBB8_6
# BB#5:                                 #   in Loop: Header=BB8_3 Depth=2
	movslq	-244(%rbp), %rax
	movl	-192(%rbp,%rax,4), %ecx
	movl	%ecx, -276(%rbp)
	movslq	-244(%rbp), %rax
	movl	%eax, %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -240(%rbp)
	movl	-188(%rbp,%rax,4), %ecx
	movslq	-244(%rbp), %rax
	movl	%ecx, -192(%rbp,%rax,4)
	movl	-276(%rbp), %ecx
	movl	-244(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -240(%rbp)
	addl	$1, %edx
	movslq	%edx, %rax
	movl	%ecx, -192(%rbp,%rax,4)
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	jmp	.LBB8_7
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=2
	movl	-244(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -240(%rbp)
	movaps	.LCPI8_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -240(%rbp)
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
	movl	%ecx, -280(%rbp)        # 4-byte Spill
	movl	%edi, -284(%rbp)        # 4-byte Spill
	movl	%eax, -288(%rbp)        # 4-byte Spill
	je	.LBB8_12
# BB#8:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	-284(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-280(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB8_10
# BB#9:                                 #   in Loop: Header=BB8_3 Depth=2
	movl	-288(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB8_11
.LBB8_10:                               #   in Loop: Header=BB8_3 Depth=2
	movl	-280(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB8_11:                               #   in Loop: Header=BB8_3 Depth=2
	jmp	.LBB8_12
.LBB8_12:                               #   in Loop: Header=BB8_3 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB8_3
.LBB8_13:                               #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_14
.LBB8_14:                               #   in Loop: Header=BB8_1 Depth=1
	movl	-212(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -208(%rbp)
	movaps	.LCPI8_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -208(%rbp)
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
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edi, -296(%rbp)        # 4-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB8_19
# BB#15:                                #   in Loop: Header=BB8_1 Depth=1
	movl	-296(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB8_17
# BB#16:                                #   in Loop: Header=BB8_1 Depth=1
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB8_18
.LBB8_17:                               #   in Loop: Header=BB8_1 Depth=1
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB8_18:                               #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_19
.LBB8_19:                               #   in Loop: Header=BB8_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB8_1
.LBB8_20:
	movl	$2, %eax
	movl	-180(%rbp), %ecx
	addl	-176(%rbp), %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-304(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movb	%al, %sil
	movzbl	%sil, %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	median, .Lfunc_end8-median

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI9_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	enlarge
	.p2align	4, 0x90
	.type	enlarge,@function
enlarge:                                # @enlarge
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp              # imm = 0x140
	movq	%rdi, -160(%rbp)
	movq	%rsi, -168(%rbp)
	movq	%rdx, -176(%rbp)
	movq	%rcx, -184(%rbp)
	movl	%r8d, -212(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movl	-244(%rbp), %eax
	movq	-184(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB9_4
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	-168(%rbp), %rax
	movl	-244(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -240(%rbp)
	movl	-212(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -208(%rbp)
	addl	%edx, %ecx
	movq	-176(%rbp), %rsi
	movl	(%rsi), %edx
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %edx
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	-212(%rbp), %rsi
	addq	%rsi, %rax
	movq	-160(%rbp), %rsi
	movq	(%rsi), %rsi
	movl	-244(%rbp), %ecx
	movq	-176(%rbp), %r8
	imull	(%r8), %ecx
	movslq	%ecx, %r8
	addq	%r8, %rsi
	movq	-176(%rbp), %r8
	movslq	(%r8), %rdx
	movq	%rax, %rdi
	callq	memcpy
# BB#3:                                 #   in Loop: Header=BB9_1 Depth=1
	movl	-244(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -240(%rbp)
	movaps	.LCPI9_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -240(%rbp)
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB9_1
.LBB9_4:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movl	-244(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB9_8
# BB#6:                                 #   in Loop: Header=BB9_5 Depth=1
	movq	-168(%rbp), %rax
	movl	-212(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -208(%rbp)
	subl	$1, %ecx
	subl	-244(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-212(%rbp), %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rdx
	movl	-244(%rbp), %ecx
	movq	-176(%rbp), %r8
	imull	(%r8), %ecx
	movslq	%ecx, %r8
	addq	%r8, %rdx
	movq	-176(%rbp), %r8
	movslq	(%r8), %r8
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	memcpy
	movq	-168(%rbp), %rax
	movq	-184(%rbp), %rdx
	movl	(%rdx), %ecx
	addl	-212(%rbp), %ecx
	addl	-244(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	(%rdx), %r9d
	movl	-212(%rbp), %r10d
	shll	$1, %r10d
	addl	%r10d, %r9d
	imull	%r9d, %ecx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movslq	-212(%rbp), %rdx
	addq	%rdx, %rax
	movq	-160(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-184(%rbp), %rsi
	movl	(%rsi), %ecx
	subl	-244(%rbp), %ecx
	subl	$1, %ecx
	movq	-176(%rbp), %rsi
	imull	(%rsi), %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rdx
	movq	-176(%rbp), %rsi
	movslq	(%rsi), %rsi
	movq	%rax, %rdi
	movq	%rsi, -288(%rbp)        # 8-byte Spill
	movq	%rdx, %rsi
	movq	-288(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
# BB#7:                                 #   in Loop: Header=BB9_5 Depth=1
	movl	-244(%rbp), %eax
	movaps	-240(%rbp), %xmm0
	movaps	.LCPI9_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -240(%rbp)
	addl	$1, %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB9_5
.LBB9_8:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -240(%rbp)
	movl	$0, -244(%rbp)
.LBB9_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	movl	-244(%rbp), %eax
	cmpl	-212(%rbp), %eax
	jge	.LBB9_26
# BB#10:                                #   in Loop: Header=BB9_9 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -272(%rbp)
	movl	$0, -276(%rbp)
.LBB9_11:                               #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-276(%rbp), %eax
	movq	-184(%rbp), %rcx
	movl	(%rcx), %edx
	movl	-212(%rbp), %esi
	shll	$1, %esi
	addl	%esi, %edx
	cmpl	%edx, %eax
	jge	.LBB9_19
# BB#12:                                #   in Loop: Header=BB9_11 Depth=2
	movq	-168(%rbp), %rax
	movl	-276(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -272(%rbp)
	movq	-176(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	addl	-212(%rbp), %ecx
	addl	-244(%rbp), %ecx
	movslq	%ecx, %rdx
	movb	(%rax,%rdx), %r8b
	movq	-168(%rbp), %rax
	movl	-276(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	addl	-212(%rbp), %ecx
	subl	$1, %ecx
	subl	-244(%rbp), %ecx
	movslq	%ecx, %rdx
	movb	%r8b, (%rax,%rdx)
	movq	-168(%rbp), %rax
	movl	-276(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	movq	-176(%rbp), %rdx
	addl	(%rdx), %ecx
	addl	-212(%rbp), %ecx
	subl	$1, %ecx
	subl	-244(%rbp), %ecx
	movslq	%ecx, %rdx
	movb	(%rax,%rdx), %r8b
	movq	-168(%rbp), %rax
	movl	-276(%rbp), %ecx
	movq	-176(%rbp), %rdx
	movl	(%rdx), %esi
	movl	-212(%rbp), %edi
	shll	$1, %edi
	addl	%edi, %esi
	imull	%esi, %ecx
	movq	-176(%rbp), %rdx
	addl	(%rdx), %ecx
	addl	-212(%rbp), %ecx
	addl	-244(%rbp), %ecx
	movslq	%ecx, %rdx
	movb	%r8b, (%rax,%rdx)
# BB#13:                                #   in Loop: Header=BB9_11 Depth=2
	movl	-276(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -272(%rbp)
	movaps	.LCPI9_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -272(%rbp)
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
	movl	%ecx, -292(%rbp)        # 4-byte Spill
	movl	%edi, -296(%rbp)        # 4-byte Spill
	movl	%eax, -300(%rbp)        # 4-byte Spill
	je	.LBB9_18
# BB#14:                                #   in Loop: Header=BB9_11 Depth=2
	movl	-296(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-292(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB9_16
# BB#15:                                #   in Loop: Header=BB9_11 Depth=2
	movl	-300(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB9_17
.LBB9_16:                               #   in Loop: Header=BB9_11 Depth=2
	movl	-292(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB9_17:                               #   in Loop: Header=BB9_11 Depth=2
	jmp	.LBB9_18
.LBB9_18:                               #   in Loop: Header=BB9_11 Depth=2
	movl	-20(%rbp), %eax
	movl	%eax, -276(%rbp)
	jmp	.LBB9_11
.LBB9_19:                               #   in Loop: Header=BB9_9 Depth=1
	jmp	.LBB9_20
.LBB9_20:                               #   in Loop: Header=BB9_9 Depth=1
	movl	-244(%rbp), %eax
	movaps	-240(%rbp), %xmm0
	movaps	.LCPI9_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -240(%rbp)
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
	movl	%ecx, -304(%rbp)        # 4-byte Spill
	movl	%edi, -308(%rbp)        # 4-byte Spill
	movl	%eax, -312(%rbp)        # 4-byte Spill
	je	.LBB9_25
# BB#21:                                #   in Loop: Header=BB9_9 Depth=1
	movl	-308(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-304(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB9_23
# BB#22:                                #   in Loop: Header=BB9_9 Depth=1
	movl	-312(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB9_24
.LBB9_23:                               #   in Loop: Header=BB9_9 Depth=1
	movl	-304(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB9_24:                               #   in Loop: Header=BB9_9 Depth=1
	jmp	.LBB9_25
.LBB9_25:                               #   in Loop: Header=BB9_9 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -244(%rbp)
	jmp	.LBB9_9
.LBB9_26:
	movl	-212(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -208(%rbp)
	shll	$1, %eax
	movq	-176(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movl	-212(%rbp), %eax
	shll	$1, %eax
	movq	-184(%rbp), %rcx
	addl	(%rcx), %eax
	movl	%eax, (%rcx)
	movq	-168(%rbp), %rcx
	movq	-160(%rbp), %rdx
	movq	%rcx, (%rdx)
	movl	-148(%rbp), %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI10_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI10_3:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
.LCPI10_4:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
.LCPI10_5:
	.long	10000                   # 0x2710
	.long	10000                   # 0x2710
	.long	10000                   # 0x2710
	.long	10000                   # 0x2710
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI10_1:
	.quad	4609434218613702656     # double 1.5
.LCPI10_6:
	.quad	4636737291354636288     # double 100
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI10_2:
	.long	1097859072              # float 15
	.text
	.globl	susan_smoothing
	.p2align	4, 0x90
	.type	susan_smoothing,@function
susan_smoothing:                        # @susan_smoothing
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$2208, %rsp             # imm = 0x8A0
	cvtsd2ss	%xmm0, %xmm0
	movl	%edi, 668(%rsp)
	movq	%rsi, 656(%rsp)
	movss	%xmm0, 636(%rsp)
	movl	%edx, 604(%rsp)
	movl	%ecx, 572(%rsp)
	movq	%r8, 560(%rsp)
	movq	656(%rsp), %rsi
	movq	%rsi, 144(%rsp)
	cmpl	$0, 668(%rsp)
	jne	.LBB10_2
# BB#1:
	movss	636(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, 2008(%rsp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, 1984(%rsp)
	movsd	.LCPI10_1(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 1964(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 1936(%rsp)
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 448(%rsp)
	addl	$1, %eax
	movl	%eax, 444(%rsp)
	jmp	.LBB10_3
.LBB10_2:
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 448(%rsp)
	movl	$1, 444(%rsp)
.LBB10_3:
	movss	.LCPI10_2(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	movaps	%xmm1, 112(%rsp)
	movl	$0, 108(%rsp)
	movss	636(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	jbe	.LBB10_6
# BB#4:
	cmpl	$0, 108(%rsp)
	jne	.LBB10_6
# BB#5:
	movabsq	$.L.str.25, %rdi
	cvtss2sd	636(%rsp), %xmm0
	movb	$1, %al
	callq	printf
	movabsq	$.L.str.26, %rdi
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.27, %rdi
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, 96(%rsp)          # 4-byte Spill
	callq	exit
.LBB10_6:
	movl	444(%rsp), %eax
	shll	$1, %eax
	addl	$1, %eax
	cmpl	604(%rsp), %eax
	jg	.LBB10_8
# BB#7:
	movl	444(%rsp), %eax
	shll	$1, %eax
	addl	$1, %eax
	cmpl	572(%rsp), %eax
	jle	.LBB10_9
.LBB10_8:
	movabsq	$.L.str.28, %rdi
	movl	444(%rsp), %esi
	movl	604(%rsp), %edx
	movl	572(%rsp), %ecx
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, 92(%rsp)          # 4-byte Spill
	callq	exit
.LBB10_9:
	movl	604(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	movl	444(%rsp), %ecx
	movl	%eax, %edx
	movl	%ecx, %esi
	leal	(%rdx,%rsi,2), %eax
	movl	572(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 576(%rsp)
	movl	444(%rsp), %edi
	shll	$1, %edi
	addl	%edi, %ecx
	imull	%ecx, %eax
	movslq	%eax, %rdi
	callq	malloc
	leaq	656(%rsp), %rdi
	leaq	604(%rsp), %rdx
	leaq	572(%rsp), %rcx
	movq	%rax, 136(%rsp)
	movq	136(%rsp), %rsi
	movl	444(%rsp), %r8d
	callq	enlarge
	cmpl	$0, 668(%rsp)
	movl	%eax, 88(%rsp)          # 4-byte Spill
	jne	.LBB10_53
# BB#10:
	movl	444(%rsp), %eax
	movaps	448(%rsp), %xmm0
	paddd	%xmm0, %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 512(%rsp)
	movl	%eax, %ecx
	leal	1(%rcx,%rcx), %eax
	movl	%eax, 508(%rsp)
	movl	604(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	movl	508(%rsp), %edx
	movaps	512(%rsp), %xmm1
	psubd	%xmm1, %xmm0
	movaps	%xmm0, 480(%rsp)
	movd	%xmm0, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	subl	%edx, %eax
	imull	$3, %eax, %edx
	movl	%eax, 2172(%rsp)
	cmpl	%edx, %r9d
	movl	%esi, 84(%rsp)          # 4-byte Spill
	movl	%r9d, 80(%rsp)          # 4-byte Spill
	movl	%eax, 76(%rsp)          # 4-byte Spill
	je	.LBB10_15
# BB#11:
	movl	80(%rsp), %eax          # 4-byte Reload
	cltd
	movl	84(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_13
# BB#12:
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2172(%rsp)
	jmp	.LBB10_14
.LBB10_13:
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2172(%rsp)
.LBB10_14:
	jmp	.LBB10_15
.LBB10_15:
	xorl	%eax, %eax
	movl	2172(%rsp), %ecx
	movl	%ecx, 476(%rsp)
	movl	508(%rsp), %ecx
	imull	%ecx, %ecx
	movslq	%ecx, %rdi
	movl	%eax, 72(%rsp)          # 4-byte Spill
	callq	malloc
	movq	%rax, 168(%rsp)
	movq	%rax, 160(%rsp)
	movss	636(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 640(%rsp)
	movss	636(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 640(%rsp)
	mulps	%xmm2, %xmm2
	mulss	%xmm1, %xmm0
	movaps	.LCPI10_4(%rip), %xmm1  # xmm1 = [-0.000000e+00,-0.000000e+00,-0.000000e+00,-0.000000e+00]
	xorps	%xmm1, %xmm2
	movaps	%xmm2, 544(%rsp)
	xorps	%xmm1, %xmm0
	movss	%xmm0, 540(%rsp)
	movl	444(%rsp), %ecx
	movaps	448(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 416(%rsp)
	movl	72(%rsp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	movl	%edx, 412(%rsp)
.LBB10_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_18 Depth 2
	movl	412(%rsp), %eax
	cmpl	444(%rsp), %eax
	jg	.LBB10_23
# BB#17:                                #   in Loop: Header=BB10_16 Depth=1
	xorl	%eax, %eax
	movl	444(%rsp), %ecx
	movaps	448(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 384(%rsp)
	subl	%ecx, %eax
	movl	%eax, 380(%rsp)
.LBB10_18:                              #   Parent Loop BB10_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	cmpl	444(%rsp), %eax
	jg	.LBB10_21
# BB#19:                                #   in Loop: Header=BB10_18 Depth=2
	movsd	.LCPI10_6(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	412(%rsp), %eax
	imull	%eax, %eax
	movl	380(%rsp), %ecx
	imull	%ecx, %ecx
	addl	%ecx, %eax
	cvtsi2ssl	%eax, %xmm1
	movss	540(%rsp), %xmm2        # xmm2 = mem[0],zero,zero,zero
	movss	%xmm1, 1916(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 1888(%rsp)
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	exp
	movaps	%xmm0, %xmm1
	movsd	%xmm0, 712(%rsp)
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movupd	%xmm0, 688(%rsp)
	movsd	64(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, 348(%rsp)
	movl	348(%rsp), %eax
	movb	%al, %dl
	movq	160(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 160(%rsp)
	movb	%dl, (%rsi)
# BB#20:                                #   in Loop: Header=BB10_18 Depth=2
	movl	380(%rsp), %eax
	movaps	384(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 384(%rsp)
	addl	$1, %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB10_18
.LBB10_21:                              #   in Loop: Header=BB10_16 Depth=1
	jmp	.LBB10_22
.LBB10_22:                              #   in Loop: Header=BB10_16 Depth=1
	movl	412(%rsp), %eax
	movaps	416(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	addl	$1, %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB10_16
.LBB10_23:
	movl	444(%rsp), %eax
	movl	%eax, 412(%rsp)
.LBB10_24:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_26 Depth 2
                                        #       Child Loop BB10_28 Depth 3
                                        #         Child Loop BB10_30 Depth 4
	movl	412(%rsp), %eax
	movl	572(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 576(%rsp)
	subl	444(%rsp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_52
# BB#25:                                #   in Loop: Header=BB10_24 Depth=1
	movl	444(%rsp), %eax
	movl	%eax, 380(%rsp)
.LBB10_26:                              #   Parent Loop BB10_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB10_28 Depth 3
                                        #         Child Loop BB10_30 Depth 4
	movl	380(%rsp), %eax
	movl	604(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 608(%rsp)
	subl	444(%rsp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_50
# BB#27:                                #   in Loop: Header=BB10_26 Depth=2
	xorl	%eax, %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
	movq	168(%rsp), %rcx
	movq	%rcx, 160(%rsp)
	movq	656(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	444(%rsp), %esi
	subl	%esi, %edx
	movl	604(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 608(%rsp)
	imull	%esi, %edx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movslq	380(%rsp), %rdi
	addq	%rdi, %rcx
	movslq	444(%rsp), %rdi
	movq	%rdi, 1848(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 1808(%rsp)
	movups	%xmm1, 1792(%rsp)
	subq	%rdi, %rcx
	movq	%rcx, 176(%rsp)
	movq	656(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	604(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 608(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, 188(%rsp)
	movq	560(%rsp), %rcx
	movslq	188(%rsp), %rdi
	addq	%rdi, %rcx
	movq	%rcx, 152(%rsp)
	movl	444(%rsp), %edx
	movaps	448(%rsp), %xmm1
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, 320(%rsp)
	subl	%edx, %eax
	movl	%eax, 316(%rsp)
.LBB10_28:                              #   Parent Loop BB10_24 Depth=1
                                        #     Parent Loop BB10_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB10_30 Depth 4
	movl	316(%rsp), %eax
	cmpl	444(%rsp), %eax
	jg	.LBB10_45
# BB#29:                                #   in Loop: Header=BB10_28 Depth=3
	xorl	%eax, %eax
	movl	444(%rsp), %ecx
	movaps	448(%rsp), %xmm0
	xorps	%xmm1, %xmm1
	psubd	%xmm0, %xmm1
	movdqa	%xmm1, 352(%rsp)
	subl	%ecx, %eax
	movl	%eax, 348(%rsp)
.LBB10_30:                              #   Parent Loop BB10_24 Depth=1
                                        #     Parent Loop BB10_26 Depth=2
                                        #       Parent Loop BB10_28 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	348(%rsp), %eax
	cmpl	444(%rsp), %eax
	jg	.LBB10_38
# BB#31:                                #   in Loop: Header=BB10_30 Depth=4
	movq	176(%rsp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 176(%rsp)
	movzbl	(%rax), %edx
	movl	%edx, 252(%rsp)
	movq	160(%rsp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 160(%rsp)
	movzbl	(%rax), %edx
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rcx
	movq	%rcx, 1752(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1712(%rsp)
	movups	%xmm0, 1696(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	%edx, 1676(%rsp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 1648(%rsp)
	movl	%esi, 1628(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1600(%rsp)
	pmuludq	%xmm1, %xmm0
	pshufd	$160, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,2]
	movaps	%xmm0, 224(%rsp)
	imull	%esi, %edx
	movl	%edx, 220(%rsp)
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%edx, %esi
	movl	%esi, 284(%rsp)
	movl	220(%rsp), %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%esi, %edx
	movl	108(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 112(%rsp)
	paddd	112(%rsp), %xmm2
	movdqa	%xmm2, 112(%rsp)
	addl	%edx, %esi
	movl	%esi, 108(%rsp)
# BB#32:                                #   in Loop: Header=BB10_30 Depth=4
	movl	348(%rsp), %eax
	movaps	352(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 352(%rsp)
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
	movl	%eax, 2140(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edi, 56(%rsp)          # 4-byte Spill
	movl	%eax, 52(%rsp)          # 4-byte Spill
	je	.LBB10_37
# BB#33:                                #   in Loop: Header=BB10_30 Depth=4
	movl	56(%rsp), %eax          # 4-byte Reload
	cltd
	movl	60(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_35
# BB#34:                                #   in Loop: Header=BB10_30 Depth=4
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2140(%rsp)
	jmp	.LBB10_36
.LBB10_35:                              #   in Loop: Header=BB10_30 Depth=4
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2140(%rsp)
.LBB10_36:                              #   in Loop: Header=BB10_30 Depth=4
	jmp	.LBB10_37
.LBB10_37:                              #   in Loop: Header=BB10_30 Depth=4
	movl	2140(%rsp), %eax
	movl	%eax, 348(%rsp)
	jmp	.LBB10_30
.LBB10_38:                              #   in Loop: Header=BB10_28 Depth=3
	movl	476(%rsp), %eax
	movq	176(%rsp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 176(%rsp)
# BB#39:                                #   in Loop: Header=BB10_28 Depth=3
	movl	316(%rsp), %eax
	movaps	320(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
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
	movl	%eax, 2108(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%edi, 44(%rsp)          # 4-byte Spill
	movl	%eax, 40(%rsp)          # 4-byte Spill
	je	.LBB10_44
# BB#40:                                #   in Loop: Header=BB10_28 Depth=3
	movl	44(%rsp), %eax          # 4-byte Reload
	cltd
	movl	48(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_42
# BB#41:                                #   in Loop: Header=BB10_28 Depth=3
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2108(%rsp)
	jmp	.LBB10_43
.LBB10_42:                              #   in Loop: Header=BB10_28 Depth=3
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2108(%rsp)
.LBB10_43:                              #   in Loop: Header=BB10_28 Depth=3
	jmp	.LBB10_44
.LBB10_44:                              #   in Loop: Header=BB10_28 Depth=3
	movl	2108(%rsp), %eax
	movl	%eax, 316(%rsp)
	jmp	.LBB10_28
.LBB10_45:                              #   in Loop: Header=BB10_26 Depth=2
	movl	284(%rsp), %eax
	movaps	288(%rsp), %xmm0
	movaps	.LCPI10_5(%rip), %xmm1  # xmm1 = [10000,10000,10000,10000]
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	subl	$10000, %eax            # imm = 0x2710
	movl	%eax, 220(%rsp)
	cmpl	$0, 220(%rsp)
	jne	.LBB10_47
# BB#46:                                #   in Loop: Header=BB10_26 Depth=2
	movq	656(%rsp), %rdi
	movl	412(%rsp), %esi
	movl	380(%rsp), %edx
	movl	604(%rsp), %ecx
	callq	median
	movq	144(%rsp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 144(%rsp)
	movb	%al, (%rdi)
	jmp	.LBB10_48
.LBB10_47:                              #   in Loop: Header=BB10_26 Depth=2
	movl	108(%rsp), %eax
	movl	188(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 192(%rsp)
	imull	$10000, %ecx, %ecx      # imm = 0x2710
	subl	%ecx, %eax
	cltd
	idivl	220(%rsp)
	movb	%al, %sil
	movq	144(%rsp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 144(%rsp)
	movb	%sil, (%rdi)
.LBB10_48:                              #   in Loop: Header=BB10_26 Depth=2
	jmp	.LBB10_49
.LBB10_49:                              #   in Loop: Header=BB10_26 Depth=2
	movl	380(%rsp), %eax
	movaps	384(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 384(%rsp)
	addl	$1, %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB10_26
.LBB10_50:                              #   in Loop: Header=BB10_24 Depth=1
	jmp	.LBB10_51
.LBB10_51:                              #   in Loop: Header=BB10_24 Depth=1
	movl	412(%rsp), %eax
	movaps	416(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	addl	$1, %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB10_24
.LBB10_52:
	jmp	.LBB10_75
.LBB10_53:
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 416(%rsp)
	movl	$1, 412(%rsp)
.LBB10_54:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_56 Depth 2
	movl	412(%rsp), %eax
	movl	572(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 576(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_74
# BB#55:                                #   in Loop: Header=BB10_54 Depth=1
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 384(%rsp)
	movl	$1, 380(%rsp)
.LBB10_56:                              #   Parent Loop BB10_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	movl	604(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 608(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB10_67
# BB#57:                                #   in Loop: Header=BB10_56 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
	movq	656(%rsp), %rax
	movl	412(%rsp), %ecx
	decl	%ecx
	movl	604(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 176(%rsp)
	movq	656(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	604(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	imull	%edx, %ecx
	movl	380(%rsp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, 188(%rsp)
	movq	560(%rsp), %rax
	movslq	188(%rsp), %rsi
	addq	%rsi, %rax
	movq	%rax, 152(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, 176(%rsp)
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1560(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1520(%rsp)
	movups	%xmm0, 1504(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, 176(%rsp)
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1464(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1424(%rsp)
	movups	%xmm0, 1408(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1368(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1328(%rsp)
	movups	%xmm0, 1312(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movl	604(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	addl	$-2, %ecx
	movq	176(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 176(%rsp)
	leaq	1(%rax,%rsi), %rdi
	movq	%rdi, 176(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1272(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1232(%rsp)
	movups	%xmm0, 1216(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, 176(%rsp)
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1176(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1136(%rsp)
	movups	%xmm0, 1120(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 1080(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1040(%rsp)
	movups	%xmm0, 1024(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movl	604(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 608(%rsp)
	addl	$-2, %ecx
	movq	176(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 176(%rsp)
	leaq	1(%rax,%rsi), %rdi
	movq	%rdi, 176(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 984(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 944(%rsp)
	movups	%xmm0, 928(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movq	%rax, %rsi
	incq	%rsi
	movq	%rsi, 176(%rsp)
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 848(%rsp)
	movups	%xmm0, 832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movq	176(%rsp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 252(%rsp)
	movq	152(%rsp), %rax
	movslq	252(%rsp), %rsi
	movq	%rsi, 792(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 752(%rsp)
	movups	%xmm0, 736(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	%ecx, 220(%rsp)
	movl	284(%rsp), %edx
	movaps	288(%rsp), %xmm0
	movaps	224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 288(%rsp)
	addl	%ecx, %edx
	movl	%edx, 284(%rsp)
	movl	220(%rsp), %ecx
	movl	252(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	movaps	224(%rsp), %xmm1
	movaps	%xmm1, %xmm2
	pmuludq	%xmm0, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pmuludq	%xmm0, %xmm1
	pshufd	$232, %xmm1, %xmm0      # xmm0 = xmm1[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	imull	%edx, %ecx
	movl	108(%rsp), %edx
	movaps	112(%rsp), %xmm0
	paddd	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	addl	%ecx, %edx
	movl	%edx, 108(%rsp)
	movl	284(%rsp), %ecx
	movaps	288(%rsp), %xmm0
	movaps	.LCPI10_3(%rip), %xmm1  # xmm1 = [100,100,100,100]
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	subl	$100, %ecx
	movl	%ecx, 220(%rsp)
	cmpl	$0, 220(%rsp)
	jne	.LBB10_59
# BB#58:                                #   in Loop: Header=BB10_56 Depth=2
	movq	656(%rsp), %rdi
	movl	412(%rsp), %esi
	movl	380(%rsp), %edx
	movl	604(%rsp), %ecx
	callq	median
	movq	144(%rsp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 144(%rsp)
	movb	%al, (%rdi)
	jmp	.LBB10_60
.LBB10_59:                              #   in Loop: Header=BB10_56 Depth=2
	movl	108(%rsp), %eax
	movl	188(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 192(%rsp)
	imull	$100, %ecx, %ecx
	subl	%ecx, %eax
	cltd
	idivl	220(%rsp)
	movb	%al, %sil
	movq	144(%rsp), %rdi
	movq	%rdi, %r8
	addq	$1, %r8
	movq	%r8, 144(%rsp)
	movb	%sil, (%rdi)
.LBB10_60:                              #   in Loop: Header=BB10_56 Depth=2
	jmp	.LBB10_61
.LBB10_61:                              #   in Loop: Header=BB10_56 Depth=2
	movl	380(%rsp), %eax
	movaps	384(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 384(%rsp)
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
	movl	%eax, 2076(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	%eax, 28(%rsp)          # 4-byte Spill
	je	.LBB10_66
# BB#62:                                #   in Loop: Header=BB10_56 Depth=2
	movl	32(%rsp), %eax          # 4-byte Reload
	cltd
	movl	36(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_64
# BB#63:                                #   in Loop: Header=BB10_56 Depth=2
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2076(%rsp)
	jmp	.LBB10_65
.LBB10_64:                              #   in Loop: Header=BB10_56 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2076(%rsp)
.LBB10_65:                              #   in Loop: Header=BB10_56 Depth=2
	jmp	.LBB10_66
.LBB10_66:                              #   in Loop: Header=BB10_56 Depth=2
	movl	2076(%rsp), %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB10_56
.LBB10_67:                              #   in Loop: Header=BB10_54 Depth=1
	jmp	.LBB10_68
.LBB10_68:                              #   in Loop: Header=BB10_54 Depth=1
	movl	412(%rsp), %eax
	movaps	416(%rsp), %xmm0
	movaps	.LCPI10_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 416(%rsp)
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
	movl	%eax, 2044(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	%eax, 16(%rsp)          # 4-byte Spill
	je	.LBB10_73
# BB#69:                                #   in Loop: Header=BB10_54 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_71
# BB#70:                                #   in Loop: Header=BB10_54 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2044(%rsp)
	jmp	.LBB10_72
.LBB10_71:                              #   in Loop: Header=BB10_54 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 2044(%rsp)
.LBB10_72:                              #   in Loop: Header=BB10_54 Depth=1
	jmp	.LBB10_73
.LBB10_73:                              #   in Loop: Header=BB10_54 Depth=1
	movl	2044(%rsp), %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB10_54
.LBB10_74:
	jmp	.LBB10_75
.LBB10_75:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI11_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	edge_draw
	.p2align	4, 0x90
	.type	edge_draw,@function
edge_draw:                              # @edge_draw
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$768, %rsp              # imm = 0x300
	movq	%rdi, 192(%rsp)
	movq	%rsi, 184(%rsp)
	movl	%edx, 156(%rsp)
	movl	%ecx, 124(%rsp)
	movl	%r8d, 92(%rsp)
	cmpl	$0, 92(%rsp)
	jne	.LBB11_8
# BB#1:
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$0, 60(%rsp)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	60(%rsp), %eax
	movl	156(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	movl	124(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 128(%rsp)
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_7
# BB#3:                                 #   in Loop: Header=BB11_2 Depth=1
	movq	40(%rsp), %rax
	movzbl	(%rax), %ecx
	cmpl	$8, %ecx
	jge	.LBB11_5
# BB#4:                                 #   in Loop: Header=BB11_2 Depth=1
	movq	192(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	184(%rsp), %rdx
	movq	%rcx, 664(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 624(%rsp)
	movups	%xmm0, 608(%rsp)
	movq	%rdx, 568(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 528(%rsp)
	movups	%xmm0, 512(%rsp)
	subq	%rdx, %rcx
	addq	%rcx, %rax
	movslq	156(%rsp), %rcx
	movq	%rcx, 472(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 432(%rsp)
	movups	%xmm0, 416(%rsp)
	subq	%rcx, %rax
	movq	%rax, %rcx
	decq	%rcx
	movq	%rcx, 48(%rsp)
	movq	%rax, 48(%rsp)
	movb	$-1, -1(%rax)
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 48(%rsp)
	movb	$-1, (%rax)
	movq	48(%rsp), %rax
	movb	$-1, (%rax)
	movl	156(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	addl	$-2, %esi
	movq	48(%rsp), %rax
	movslq	%esi, %rcx
	movq	%rax, %rdx
	addq	%rcx, %rdx
	movq	%rdx, 48(%rsp)
	leaq	1(%rax,%rcx), %rdx
	movq	%rdx, 48(%rsp)
	movb	$-1, (%rax,%rcx)
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 48(%rsp)
	movb	$-1, 1(%rax)
	movl	156(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 160(%rsp)
	subl	$2, %esi
	movq	48(%rsp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, 48(%rsp)
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rsp)
	movb	$-1, (%rax)
	movq	48(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rsp)
	movb	$-1, (%rax)
	movq	48(%rsp), %rax
	movb	$-1, (%rax)
.LBB11_5:                               #   in Loop: Header=BB11_2 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
# BB#6:                                 #   in Loop: Header=BB11_2 Depth=1
	movl	60(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 64(%rsp)
	movaps	.LCPI11_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 64(%rsp)
	addl	$1, %eax
	movl	%eax, 60(%rsp)
	jmp	.LBB11_2
.LBB11_7:
	jmp	.LBB11_8
.LBB11_8:
	movq	184(%rsp), %rax
	movq	%rax, 40(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$0, 60(%rsp)
.LBB11_9:                               # =>This Inner Loop Header: Depth=1
	movl	60(%rsp), %eax
	movl	156(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	movl	124(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 128(%rsp)
	imull	%edx, %ecx
	cmpl	%ecx, %eax
	jge	.LBB11_19
# BB#10:                                #   in Loop: Header=BB11_9 Depth=1
	movq	40(%rsp), %rax
	movzbl	(%rax), %ecx
	cmpl	$8, %ecx
	jge	.LBB11_12
# BB#11:                                #   in Loop: Header=BB11_9 Depth=1
	movq	192(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	184(%rsp), %rdx
	movq	%rcx, 376(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 336(%rsp)
	movups	%xmm0, 320(%rsp)
	movq	%rdx, 280(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 240(%rsp)
	movups	%xmm0, 224(%rsp)
	subq	%rdx, %rcx
	movb	$0, (%rax,%rcx)
.LBB11_12:                              #   in Loop: Header=BB11_9 Depth=1
	movq	40(%rsp), %rax
	addq	$1, %rax
	movq	%rax, 40(%rsp)
# BB#13:                                #   in Loop: Header=BB11_9 Depth=1
	movl	60(%rsp), %eax
	movaps	64(%rsp), %xmm0
	movaps	.LCPI11_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 64(%rsp)
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
	movl	%eax, 732(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	%eax, 28(%rsp)          # 4-byte Spill
	je	.LBB11_18
# BB#14:                                #   in Loop: Header=BB11_9 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	cltd
	movl	36(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB11_16
# BB#15:                                #   in Loop: Header=BB11_9 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 732(%rsp)
	jmp	.LBB11_17
.LBB11_16:                              #   in Loop: Header=BB11_9 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 732(%rsp)
.LBB11_17:                              #   in Loop: Header=BB11_9 Depth=1
	jmp	.LBB11_18
.LBB11_18:                              #   in Loop: Header=BB11_9 Depth=1
	movl	732(%rsp), %eax
	movl	%eax, 60(%rsp)
	jmp	.LBB11_9
.LBB11_19:
	movl	204(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI12_0:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI12_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI12_2:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI12_3:
	.quad	4604480259023595110     # double 0.69999999999999996
	.text
	.globl	susan_thin
	.p2align	4, 0x90
	.type	susan_thin,@function
susan_thin:                             # @susan_thin
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$3224, %rsp             # imm = 0xC98
	movq	%rdi, -2368(%rbp)
	movq	%rsi, -2376(%rbp)
	movl	%edx, -2404(%rbp)
	movl	%ecx, -2436(%rbp)
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3168(%rbp)
	movl	$4, -3172(%rbp)
.LBB12_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
                                        #       Child Loop BB12_38 Depth 3
                                        #         Child Loop BB12_40 Depth 4
	movl	-3172(%rbp), %eax
	movl	-2436(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2432(%rbp)
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_118
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3200(%rbp)
	movl	$4, -3204(%rbp)
.LBB12_3:                               #   Parent Loop BB12_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_38 Depth 3
                                        #         Child Loop BB12_40 Depth 4
	movl	-3204(%rbp), %eax
	movl	-2404(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB12_111
# BB#4:                                 #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_104
# BB#5:                                 #   in Loop: Header=BB12_3 Depth=2
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2500(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	-3204(%rbp), %rsi
	leaq	-1(%rsi,%rax), %rdi
	movq	%rdi, -3216(%rbp)
	movzbl	-1(%rsi,%rax), %ecx
	subl	$8, %ecx
	setl	%r8b
	movzbl	%r8b, %edx
	movzbl	(%rsi,%rax), %r9d
	subl	$8, %r9d
	setl	%r8b
	movzbl	%r8b, %r10d
	movl	%edx, -1444(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	pinsrw	$0, %edx, %xmm1
	pinsrw	$2, %edx, %xmm1
	pinsrw	$4, %edx, %xmm1
	pinsrw	$6, %edx, %xmm1
	movups	%xmm1, -1472(%rbp)
	movl	%r10d, -1492(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %r10d, %xmm2
	pinsrw	$2, %r10d, %xmm2
	pinsrw	$4, %r10d, %xmm2
	pinsrw	$6, %r10d, %xmm2
	movups	%xmm2, -1520(%rbp)
	paddd	%xmm2, %xmm1
	addl	%r10d, %edx
	movq	-3216(%rbp), %rax
	movzbl	2(%rax), %r10d
	subl	$8, %r10d
	setl	%r8b
	movzbl	%r8b, %r11d
	movl	%r11d, -1540(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %r11d, %xmm2
	pinsrw	$2, %r11d, %xmm2
	pinsrw	$4, %r11d, %xmm2
	pinsrw	$6, %r11d, %xmm2
	movups	%xmm2, -1568(%rbp)
	paddd	%xmm2, %xmm1
	addl	%r11d, %edx
	movq	-3216(%rbp), %rax
	movslq	-2404(%rbp), %rsi
	movzbl	(%rax,%rsi), %r11d
	subl	$8, %r11d
	setl	%r8b
	movzbl	%r8b, %ebx
	movl	%ebx, -1588(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %ebx, %xmm2
	pinsrw	$2, %ebx, %xmm2
	pinsrw	$4, %ebx, %xmm2
	pinsrw	$6, %ebx, %xmm2
	movups	%xmm2, -1616(%rbp)
	paddd	%xmm2, %xmm1
	addl	%ebx, %edx
	movq	-3216(%rbp), %rax
	movslq	-2404(%rbp), %rsi
	movzbl	2(%rax,%rsi), %ebx
	subl	$8, %ebx
	setl	%r8b
	movzbl	%r8b, %r14d
	movl	%r14d, -1636(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %r14d, %xmm2
	pinsrw	$2, %r14d, %xmm2
	pinsrw	$4, %r14d, %xmm2
	pinsrw	$6, %r14d, %xmm2
	movups	%xmm2, -1664(%rbp)
	paddd	%xmm2, %xmm1
	addl	%r14d, %edx
	movq	-3216(%rbp), %rax
	movslq	-2404(%rbp), %rsi
	addq	%rsi, %rax
	movzbl	(%rsi,%rax), %r14d
	subl	$8, %r14d
	setl	%r8b
	movzbl	%r8b, %r15d
	movl	%r15d, -1684(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %r15d, %xmm2
	pinsrw	$2, %r15d, %xmm2
	pinsrw	$4, %r15d, %xmm2
	pinsrw	$6, %r15d, %xmm2
	movups	%xmm2, -1712(%rbp)
	paddd	%xmm2, %xmm1
	addl	%r15d, %edx
	movq	-3216(%rbp), %rax
	movslq	-2404(%rbp), %rsi
	addq	%rsi, %rax
	movzbl	1(%rsi,%rax), %r15d
	subl	$8, %r15d
	setl	%r8b
	movzbl	%r8b, %r12d
	movl	%r12d, -1732(%rbp)
	movaps	%xmm0, %xmm2
	pinsrw	$0, %r12d, %xmm2
	pinsrw	$2, %r12d, %xmm2
	pinsrw	$4, %r12d, %xmm2
	pinsrw	$6, %r12d, %xmm2
	movups	%xmm2, -1760(%rbp)
	paddd	%xmm2, %xmm1
	addl	%r12d, %edx
	movq	-3216(%rbp), %rax
	movslq	-2404(%rbp), %rsi
	addq	%rsi, %rax
	movzbl	2(%rsi,%rax), %r12d
	subl	$8, %r12d
	setl	%r8b
	movzbl	%r8b, %r13d
	movl	%r13d, -1780(%rbp)
	pinsrw	$0, %r13d, %xmm0
	pinsrw	$2, %r13d, %xmm0
	pinsrw	$4, %r13d, %xmm0
	pinsrw	$6, %r13d, %xmm0
	movups	%xmm0, -1808(%rbp)
	paddd	%xmm0, %xmm1
	movaps	%xmm1, -3008(%rbp)
	movd	%xmm1, %esi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %edi
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %eax
	addl	%edi, %eax
	addl	%r8d, %eax
	addl	%r13d, %edx
	imull	$3, %edx, %edi
	movl	%edx, -68(%rbp)
	cmpl	%edi, %eax
	movl	%ecx, -3220(%rbp)       # 4-byte Spill
	movl	%eax, -3224(%rbp)       # 4-byte Spill
	movl	%r9d, -3228(%rbp)       # 4-byte Spill
	movl	%esi, -3232(%rbp)       # 4-byte Spill
	movl	%edx, -3236(%rbp)       # 4-byte Spill
	movl	%r10d, -3240(%rbp)      # 4-byte Spill
	movl	%r11d, -3244(%rbp)      # 4-byte Spill
	movl	%ebx, -3248(%rbp)       # 4-byte Spill
	movl	%r14d, -3252(%rbp)      # 4-byte Spill
	movl	%r15d, -3256(%rbp)      # 4-byte Spill
	movl	%r12d, -3260(%rbp)      # 4-byte Spill
	je	.LBB12_10
# BB#6:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	-3224(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-3232(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB12_8
# BB#7:                                 #   in Loop: Header=BB12_3 Depth=2
	movl	-3236(%rbp), %eax       # 4-byte Reload
	movl	%eax, -68(%rbp)
	jmp	.LBB12_9
.LBB12_8:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-3232(%rbp), %eax       # 4-byte Reload
	movl	%eax, -68(%rbp)
.LBB12_9:                               #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_10
.LBB12_10:                              #   in Loop: Header=BB12_3 Depth=2
	movl	-68(%rbp), %eax
	movl	%eax, -3012(%rbp)
	cmpl	$0, -3012(%rbp)
	jne	.LBB12_12
# BB#11:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movb	$100, (%rax,%rsi)
.LBB12_12:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$1, -3012(%rbp)
	jne	.LBB12_59
# BB#13:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$6, %ecx
	jge	.LBB12_59
# BB#14:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2480(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2476(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	4(%rax,%rsi,4), %ecx
	movl	%ecx, -2472(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2468(%rbp)
	movl	$0, -2464(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	4(%rax,%rsi,4), %ecx
	movl	%ecx, -2460(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2456(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, -2452(%rbp)
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	4(%rax,%rsi,4), %ecx
	movl	%ecx, -2448(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_16
# BB#15:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2480(%rbp)
	movl	$0, -2476(%rbp)
	movl	$0, -2468(%rbp)
	movl	-2472(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2472(%rbp)
	movl	-2456(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2456(%rbp)
	imull	$3, -2460(%rbp), %eax
	movl	%eax, -2460(%rbp)
	imull	$3, -2452(%rbp), %eax
	movl	%eax, -2452(%rbp)
	movl	-2448(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2448(%rbp)
	jmp	.LBB12_37
.LBB12_16:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_18
# BB#17:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2476(%rbp)
	movl	$0, -2480(%rbp)
	movl	$0, -2472(%rbp)
	movl	-2468(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2468(%rbp)
	movl	-2460(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2460(%rbp)
	imull	$3, -2456(%rbp), %eax
	movl	%eax, -2456(%rbp)
	imull	$3, -2448(%rbp), %eax
	movl	%eax, -2448(%rbp)
	movl	-2452(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2452(%rbp)
	jmp	.LBB12_36
.LBB12_18:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_20
# BB#19:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2472(%rbp)
	movl	$0, -2476(%rbp)
	movl	$0, -2460(%rbp)
	movl	-2480(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2480(%rbp)
	movl	-2448(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2448(%rbp)
	imull	$3, -2468(%rbp), %eax
	movl	%eax, -2468(%rbp)
	imull	$3, -2452(%rbp), %eax
	movl	%eax, -2452(%rbp)
	movl	-2456(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2456(%rbp)
	jmp	.LBB12_35
.LBB12_20:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_22
# BB#21:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2468(%rbp)
	movl	$0, -2480(%rbp)
	movl	$0, -2456(%rbp)
	movl	-2476(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2476(%rbp)
	movl	-2452(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2452(%rbp)
	imull	$3, -2472(%rbp), %eax
	movl	%eax, -2472(%rbp)
	imull	$3, -2448(%rbp), %eax
	movl	%eax, -2448(%rbp)
	movl	-2460(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2460(%rbp)
	jmp	.LBB12_34
.LBB12_22:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_24
# BB#23:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2460(%rbp)
	movl	$0, -2472(%rbp)
	movl	$0, -2448(%rbp)
	movl	-2476(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2476(%rbp)
	movl	-2452(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2452(%rbp)
	imull	$3, -2480(%rbp), %eax
	movl	%eax, -2480(%rbp)
	imull	$3, -2456(%rbp), %eax
	movl	%eax, -2456(%rbp)
	movl	-2468(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2468(%rbp)
	jmp	.LBB12_33
.LBB12_24:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_26
# BB#25:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2456(%rbp)
	movl	$0, -2468(%rbp)
	movl	$0, -2452(%rbp)
	movl	-2480(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2480(%rbp)
	movl	-2448(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2448(%rbp)
	imull	$3, -2476(%rbp), %eax
	movl	%eax, -2476(%rbp)
	imull	$3, -2460(%rbp), %eax
	movl	%eax, -2460(%rbp)
	movl	-2472(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2472(%rbp)
	jmp	.LBB12_32
.LBB12_26:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_28
# BB#27:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2452(%rbp)
	movl	$0, -2456(%rbp)
	movl	$0, -2448(%rbp)
	movl	-2468(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2468(%rbp)
	movl	-2460(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2460(%rbp)
	imull	$3, -2480(%rbp), %eax
	movl	%eax, -2480(%rbp)
	imull	$3, -2472(%rbp), %eax
	movl	%eax, -2472(%rbp)
	movl	-2476(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2476(%rbp)
	jmp	.LBB12_31
.LBB12_28:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$8, %ecx
	jge	.LBB12_30
# BB#29:                                #   in Loop: Header=BB12_3 Depth=2
	movl	$0, -2448(%rbp)
	movl	$0, -2460(%rbp)
	movl	$0, -2452(%rbp)
	movl	-2456(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2456(%rbp)
	movl	-2472(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -2472(%rbp)
	imull	$3, -2476(%rbp), %eax
	movl	%eax, -2476(%rbp)
	imull	$3, -2468(%rbp), %eax
	movl	%eax, -2468(%rbp)
	movl	-2480(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -2480(%rbp)
.LBB12_30:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_31
.LBB12_31:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_32
.LBB12_32:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_33
.LBB12_33:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_34
.LBB12_34:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_35
.LBB12_35:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_36
.LBB12_36:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_37
.LBB12_37:                              #   in Loop: Header=BB12_3 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -2976(%rbp)
	movl	$0, -2980(%rbp)
	movaps	%xmm0, -3136(%rbp)
	movl	$0, -3140(%rbp)
.LBB12_38:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB12_40 Depth 4
	cmpl	$3, -3140(%rbp)
	jge	.LBB12_47
# BB#39:                                #   in Loop: Header=BB12_38 Depth=3
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3104(%rbp)
	movl	$0, -3108(%rbp)
.LBB12_40:                              #   Parent Loop BB12_1 Depth=1
                                        #     Parent Loop BB12_3 Depth=2
                                        #       Parent Loop BB12_38 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpl	$3, -3108(%rbp)
	jge	.LBB12_45
# BB#41:                                #   in Loop: Header=BB12_40 Depth=4
	movl	-3140(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	movl	-3140(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	addl	%ecx, %eax
	movl	-3140(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	addl	%ecx, %eax
	movl	-3108(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3104(%rbp)
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-2480(%rbp,%rdx,4), %eax
	cmpl	-2980(%rbp), %eax
	jle	.LBB12_43
# BB#42:                                #   in Loop: Header=BB12_40 Depth=4
	movl	-3140(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	movl	-3140(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	addl	%ecx, %eax
	movl	-3140(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	addl	%ecx, %eax
	movl	-3108(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3104(%rbp)
	addl	%ecx, %eax
	movslq	%eax, %rdx
	movl	-2480(%rbp,%rdx,4), %eax
	movl	%eax, -2980(%rbp)
	movl	-3140(%rbp), %eax
	movl	%eax, -3044(%rbp)
	movl	-3108(%rbp), %eax
	movl	%eax, -3076(%rbp)
.LBB12_43:                              #   in Loop: Header=BB12_40 Depth=4
	jmp	.LBB12_44
.LBB12_44:                              #   in Loop: Header=BB12_40 Depth=4
	movl	-3108(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3104(%rbp)
	movaps	.LCPI12_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -3104(%rbp)
	addl	$1, %eax
	movl	%eax, -3108(%rbp)
	jmp	.LBB12_40
.LBB12_45:                              #   in Loop: Header=BB12_38 Depth=3
	jmp	.LBB12_46
.LBB12_46:                              #   in Loop: Header=BB12_38 Depth=3
	movl	-3140(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3136(%rbp)
	movaps	.LCPI12_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -3136(%rbp)
	addl	$1, %eax
	movl	%eax, -3140(%rbp)
	jmp	.LBB12_38
.LBB12_47:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -2980(%rbp)
	jle	.LBB12_58
# BB#48:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$4, %ecx
	jge	.LBB12_50
# BB#49:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-3044(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3040(%rbp)
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movl	-3076(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3072(%rbp)
	addl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movb	$4, (%rax,%rsi)
	jmp	.LBB12_51
.LBB12_50:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, -1828(%rbp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, -1856(%rbp)
	incl	%ecx
	movb	%cl, %dil
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3168(%rbp)
	movl	-3044(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3040(%rbp)
	movl	%ecx, %esi
	movl	%edx, %r8d
	leal	-1(%rsi,%r8), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3200(%rbp)
	addl	%edx, %ecx
	movl	-3076(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3072(%rbp)
	addl	%edx, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movb	%dil, (%rax,%rsi)
.LBB12_51:                              #   in Loop: Header=BB12_3 Depth=2
	movl	-3044(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3040(%rbp)
	movl	-3044(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3040(%rbp)
	addl	%ecx, %eax
	movl	-3076(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -3072(%rbp)
	addl	%ecx, %eax
	cmpl	$3, %eax
	jge	.LBB12_57
# BB#52:                                #   in Loop: Header=BB12_3 Depth=2
	movl	-3044(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3040(%rbp)
	movaps	.LCPI12_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	psubd	%xmm1, %xmm0
	movl	-3172(%rbp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -3168(%rbp)
	paddd	%xmm0, %xmm1
	movaps	%xmm1, -3168(%rbp)
	movl	%eax, %edx
	movl	%ecx, %esi
	leal	-1(%rsi,%rdx), %eax
	movl	%eax, -3172(%rbp)
	movl	-3076(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -3072(%rbp)
	movaps	.LCPI12_2(%rip), %xmm1  # xmm1 = [2,2,2,2]
	psubd	%xmm1, %xmm0
	addl	$-2, %eax
	movl	-3204(%rbp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqa	%xmm1, -3200(%rbp)
	paddd	-3200(%rbp), %xmm0
	movdqa	%xmm0, -3200(%rbp)
	addl	%eax, %ecx
	movl	%ecx, -3204(%rbp)
	cmpl	$4, -3172(%rbp)
	jge	.LBB12_54
# BB#53:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3168(%rbp)
	movl	$4, -3172(%rbp)
.LBB12_54:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$4, -3204(%rbp)
	jge	.LBB12_56
# BB#55:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3200(%rbp)
	movl	$4, -3204(%rbp)
.LBB12_56:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_57
.LBB12_57:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_58
.LBB12_58:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_59
.LBB12_59:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$2, -3012(%rbp)
	jne	.LBB12_93
# BB#60:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	subl	$8, %ecx
	setl	%r8b
	movzbl	%r8b, %edx
	movl	%edx, -2852(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %edx
	decl	%edx
	movl	-2404(%rbp), %r9d
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r9d, %edx
	movl	-3204(%rbp), %r9d
	addl	%r9d, %edx
	movslq	%edx, %rsi
	movzbl	1(%rax,%rsi), %edx
	subl	$8, %edx
	setl	%r8b
	movzbl	%r8b, %r9d
	movl	%r9d, -2884(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r9d
	incl	%r9d
	movl	-2404(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r10d, %r9d
	movl	-3204(%rbp), %r10d
	movl	%r9d, %esi
	movl	%r10d, %edi
	leal	-1(%rsi,%rdi), %r9d
	movslq	%r9d, %rsi
	movzbl	(%rax,%rsi), %r9d
	subl	$8, %r9d
	setl	%r8b
	movzbl	%r8b, %r10d
	movl	%r10d, -2916(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r10d
	incl	%r10d
	movl	-2404(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r11d, %r10d
	movl	-3204(%rbp), %r11d
	addl	%r11d, %r10d
	movslq	%r10d, %rsi
	movzbl	1(%rax,%rsi), %r10d
	subl	$8, %r10d
	setl	%r8b
	movzbl	%r8b, %r11d
	movl	%r11d, -2948(%rbp)
	movl	-2852(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2848(%rbp)
	movl	-2884(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2880(%rbp)
	addl	%ebx, %r11d
	movl	-2916(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2912(%rbp)
	addl	%ebx, %r11d
	movl	-2948(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2944(%rbp)
	addl	%ebx, %r11d
	cmpl	$2, %r11d
	movl	%ecx, -3264(%rbp)       # 4-byte Spill
	movl	%edx, -3268(%rbp)       # 4-byte Spill
	movl	%r9d, -3272(%rbp)       # 4-byte Spill
	movl	%r10d, -3276(%rbp)      # 4-byte Spill
	jne	.LBB12_83
# BB#61:                                #   in Loop: Header=BB12_3 Depth=2
	movl	-2852(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2848(%rbp)
	movl	-2948(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2944(%rbp)
	orl	%ecx, %eax
	movl	-2884(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2880(%rbp)
	movl	-2916(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2912(%rbp)
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB12_83
# BB#62:                                #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -2852(%rbp)
	je	.LBB12_67
# BB#63:                                #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -2884(%rbp)
	je	.LBB12_65
# BB#64:                                #   in Loop: Header=BB12_3 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3104(%rbp)
	movl	$0, -3108(%rbp)
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, -3136(%rbp)
	movl	$-1, -3140(%rbp)
	jmp	.LBB12_66
.LBB12_65:                              #   in Loop: Header=BB12_3 Depth=2
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, -3104(%rbp)
	movl	$-1, -3108(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3136(%rbp)
	movl	$0, -3140(%rbp)
.LBB12_66:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_71
.LBB12_67:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -2884(%rbp)
	je	.LBB12_69
# BB#68:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, -3104(%rbp)
	movl	$1, -3108(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3136(%rbp)
	movl	$0, -3140(%rbp)
	jmp	.LBB12_70
.LBB12_69:                              #   in Loop: Header=BB12_3 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -3104(%rbp)
	movl	$0, -3108(%rbp)
	movaps	.LCPI12_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, -3136(%rbp)
	movl	$1, -3140(%rbp)
.LBB12_70:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_71
.LBB12_71:                              #   in Loop: Header=BB12_3 Depth=2
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	-2368(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-3140(%rbp), %edx
	addl	%edx, %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movl	-3108(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movl	-2500(%rbp), %edx
	cvtsi2ssl	%edx, %xmm2
	movss	%xmm1, -1876(%rbp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, -1904(%rbp)
	movss	%xmm2, -1924(%rbp)
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, -1952(%rbp)
	divss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB12_82
# BB#72:                                #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -3108(%rbp)
	jne	.LBB12_76
# BB#73:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-3140(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, %edi
	leal	(%rdi,%rsi,2), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jle	.LBB12_76
# BB#74:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-3140(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, %edi
	leal	(%rdi,%rsi,2), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jle	.LBB12_76
# BB#75:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-3140(%rbp), %edx
	movl	%edx, %esi
	movl	%ecx, %edi
	leal	(%rdi,%rsi,2), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jg	.LBB12_80
.LBB12_76:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$0, -3140(%rbp)
	jne	.LBB12_81
# BB#77:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	movl	-3108(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jle	.LBB12_81
# BB#78:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	incl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	movl	-3108(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jle	.LBB12_81
# BB#79:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	movl	-3108(%rbp), %edx
	shll	$1, %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	cmpl	$7, %ecx
	jle	.LBB12_81
.LBB12_80:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movb	$100, (%rax,%rsi)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-3140(%rbp), %edx
	addl	%edx, %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	addl	-3204(%rbp), %ecx
	addl	-3108(%rbp), %ecx
	movslq	%ecx, %rsi
	movb	$3, (%rax,%rsi)
.LBB12_81:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_82
.LBB12_82:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_92
.LBB12_83:                              #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	subl	$8, %ecx
	setl	%dil
	movzbl	%dil, %edx
	movl	%edx, -2596(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %edx
	movl	-2404(%rbp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r8d, %edx
	movl	-3204(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movzbl	1(%rax,%rsi), %edx
	subl	$8, %edx
	setl	%dil
	movzbl	%dil, %r8d
	movl	%r8d, -2628(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r8d
	incl	%r8d
	movl	-2404(%rbp), %r9d
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r9d, %r8d
	movl	-3204(%rbp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rsi
	movzbl	(%rax,%rsi), %r8d
	subl	$8, %r8d
	setl	%dil
	movzbl	%dil, %r9d
	movl	%r9d, -2660(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r9d
	movl	-2404(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r10d, %r9d
	movl	-3204(%rbp), %r10d
	movl	%r9d, %esi
	movl	%r10d, %r11d
	leal	-1(%rsi,%r11), %r9d
	movslq	%r9d, %rsi
	movzbl	(%rax,%rsi), %r9d
	subl	$8, %r9d
	setl	%dil
	movzbl	%dil, %r10d
	movl	%r10d, -2692(%rbp)
	movl	-2596(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movl	-2628(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2624(%rbp)
	addl	%ebx, %r10d
	movl	-2660(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2656(%rbp)
	addl	%ebx, %r10d
	movl	-2692(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2688(%rbp)
	addl	%ebx, %r10d
	cmpl	$2, %r10d
	movl	%ecx, -3280(%rbp)       # 4-byte Spill
	movl	%edx, -3284(%rbp)       # 4-byte Spill
	movl	%r8d, -3288(%rbp)       # 4-byte Spill
	movl	%r9d, -3292(%rbp)       # 4-byte Spill
	jne	.LBB12_91
# BB#84:                                #   in Loop: Header=BB12_3 Depth=2
	movl	-2692(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2688(%rbp)
	movl	-2628(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2624(%rbp)
	orl	%ecx, %eax
	movl	-2596(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movl	-2660(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2656(%rbp)
	orl	%edx, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB12_91
# BB#85:                                #   in Loop: Header=BB12_3 Depth=2
	movl	-2596(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %edx
	addl	$-2, %edx
	movl	-2404(%rbp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%esi, %edx
	movl	-3204(%rbp), %esi
	movl	%edx, %edi
	movl	%esi, %r8d
	leal	-1(%rdi,%r8), %edx
	movslq	%edx, %rdi
	movzbl	(%rcx,%rdi), %edx
	subl	$8, %edx
	setl	%r9b
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %esi
	addl	$-2, %esi
	movl	-2404(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r10d, %esi
	movl	-3204(%rbp), %r10d
	addl	%r10d, %esi
	movslq	%esi, %rdi
	movzbl	1(%rcx,%rdi), %esi
	subl	$8, %esi
	setl	%r11b
	movb	%r9b, %bl
	orb	%r11b, %bl
	movzbl	%r9b, %r10d
	movzbl	%r11b, %r14d
	movl	%r10d, -1972(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r10d, %xmm1
	pinsrw	$2, %r10d, %xmm1
	pinsrw	$4, %r10d, %xmm1
	pinsrw	$6, %r10d, %xmm1
	movups	%xmm1, -2000(%rbp)
	movl	%r14d, -2020(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r14d, %xmm1
	pinsrw	$2, %r14d, %xmm1
	pinsrw	$4, %r14d, %xmm1
	pinsrw	$6, %r14d, %xmm1
	movups	%xmm1, -2048(%rbp)
	movzbl	%bl, %r10d
	andl	%r10d, %eax
	movl	-2692(%rbp), %r10d
	movd	%r10d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2688(%rbp)
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r14d
	decl	%r14d
	movl	-2404(%rbp), %r15d
	movd	%r15d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%r15d, %r14d
	movl	-3204(%rbp), %r15d
	movl	%r14d, %edi
	movl	%r15d, %r8d
	leal	-2(%rdi,%r8), %r14d
	movslq	%r14d, %rdi
	movzbl	(%rcx,%rdi), %r14d
	subl	$8, %r14d
	setl	%r9b
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r15d
	incl	%r15d
	movl	-2404(%rbp), %r12d
	movd	%r12d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%r12d, %r15d
	movl	-3204(%rbp), %r12d
	movl	%r15d, %edi
	movl	%r12d, %r8d
	leal	-2(%rdi,%r8), %r15d
	movslq	%r15d, %rdi
	movzbl	(%rcx,%rdi), %r15d
	subl	$8, %r15d
	setl	%r11b
	movb	%r9b, %bl
	orb	%r11b, %bl
	movzbl	%r9b, %r12d
	movzbl	%r11b, %r13d
	movl	%r12d, -2068(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r12d, %xmm1
	pinsrw	$2, %r12d, %xmm1
	pinsrw	$4, %r12d, %xmm1
	pinsrw	$6, %r12d, %xmm1
	movups	%xmm1, -2096(%rbp)
	movl	%r13d, -2116(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r13d, %xmm1
	pinsrw	$2, %r13d, %xmm1
	pinsrw	$4, %r13d, %xmm1
	pinsrw	$6, %r13d, %xmm1
	movups	%xmm1, -2144(%rbp)
	movzbl	%bl, %r12d
	andl	%r12d, %r10d
	orl	%r10d, %eax
	movl	-2628(%rbp), %r10d
	movd	%r10d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2624(%rbp)
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r12d
	decl	%r12d
	movl	-2404(%rbp), %r13d
	movd	%r13d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%r13d, %r12d
	movl	-3204(%rbp), %r13d
	addl	%r13d, %r12d
	movslq	%r12d, %rdi
	movzbl	2(%rcx,%rdi), %r12d
	subl	$8, %r12d
	setl	%r9b
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r13d
	incl	%r13d
	movl	-2404(%rbp), %edi
	movd	%edi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%edi, %r13d
	movl	-3204(%rbp), %edi
	addl	%edi, %r13d
	movslq	%r13d, %r8
	movzbl	2(%rcx,%r8), %edi
	subl	$8, %edi
	setl	%r11b
	movb	%r9b, %bl
	orb	%r11b, %bl
	movzbl	%r9b, %r13d
	movzbl	%r11b, %r8d
	movl	%r13d, -2164(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r13d, %xmm1
	pinsrw	$2, %r13d, %xmm1
	pinsrw	$4, %r13d, %xmm1
	pinsrw	$6, %r13d, %xmm1
	movups	%xmm1, -2192(%rbp)
	movl	%r8d, -2212(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r8d, %xmm1
	pinsrw	$2, %r8d, %xmm1
	pinsrw	$4, %r8d, %xmm1
	pinsrw	$6, %r8d, %xmm1
	movups	%xmm1, -2240(%rbp)
	movzbl	%bl, %r8d
	andl	%r8d, %r10d
	orl	%r10d, %eax
	movl	-2660(%rbp), %r8d
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2656(%rbp)
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r10d
	addl	$2, %r10d
	movl	-2404(%rbp), %r13d
	movd	%r13d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%r13d, %r10d
	movl	-3204(%rbp), %r13d
	movl	%r10d, %r9d
	movl	%r13d, %r10d
	leal	-1(%r9,%r10), %r13d
	movslq	%r13d, %r9
	movzbl	(%rcx,%r9), %r13d
	subl	$8, %r13d
	setl	%r11b
	movzbl	%r11b, %r9d
	movq	-2376(%rbp), %rcx
	movl	-3172(%rbp), %r10d
	addl	$2, %r10d
	movl	-2404(%rbp), %r11d
	movd	%r11d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -2400(%rbp)
	imull	%r11d, %r10d
	movl	-3204(%rbp), %r11d
	addl	%r11d, %r10d
	movslq	%r10d, %r10
	movzbl	1(%rcx,%r10), %r11d
	subl	$8, %r11d
	setl	%bl
	movzbl	%bl, %r10d
	movl	%r9d, -2260(%rbp)
	movaps	%xmm0, %xmm1
	pinsrw	$0, %r9d, %xmm1
	pinsrw	$2, %r9d, %xmm1
	pinsrw	$4, %r9d, %xmm1
	pinsrw	$6, %r9d, %xmm1
	movups	%xmm1, -2288(%rbp)
	movl	%r10d, -2308(%rbp)
	pinsrw	$0, %r10d, %xmm0
	pinsrw	$2, %r10d, %xmm0
	pinsrw	$4, %r10d, %xmm0
	pinsrw	$6, %r10d, %xmm0
	movdqu	%xmm0, -2336(%rbp)
	orl	%r10d, %r9d
	andl	%r9d, %r8d
	orl	%r8d, %eax
	cmpl	$0, %eax
	movl	%r15d, -3296(%rbp)      # 4-byte Spill
	movl	%edx, -3300(%rbp)       # 4-byte Spill
	movl	%r11d, -3304(%rbp)      # 4-byte Spill
	movl	%esi, -3308(%rbp)       # 4-byte Spill
	movl	%edi, -3312(%rbp)       # 4-byte Spill
	movl	%r14d, -3316(%rbp)      # 4-byte Spill
	movl	%r13d, -3320(%rbp)      # 4-byte Spill
	movl	%r12d, -3324(%rbp)      # 4-byte Spill
	je	.LBB12_91
# BB#86:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movb	$100, (%rax,%rsi)
	movl	-3172(%rbp), %ecx
	movaps	-3168(%rbp), %xmm0
	pcmpeqd	%xmm1, %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	%ecx, -3172(%rbp)
	movl	-3204(%rbp), %ecx
	movaps	-3200(%rbp), %xmm0
	movaps	.LCPI12_2(%rip), %xmm1  # xmm1 = [2,2,2,2]
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, -3200(%rbp)
	subl	$2, %ecx
	movl	%ecx, -3204(%rbp)
	cmpl	$4, -3172(%rbp)
	jge	.LBB12_88
# BB#87:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3168(%rbp)
	movl	$4, -3172(%rbp)
.LBB12_88:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$4, -3204(%rbp)
	jge	.LBB12_90
# BB#89:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3200(%rbp)
	movl	$4, -3204(%rbp)
.LBB12_90:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_91
.LBB12_91:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_92
.LBB12_92:                              #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_93
.LBB12_93:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$2, -3012(%rbp)
	jle	.LBB12_103
# BB#94:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	subl	$8, %ecx
	setl	%dil
	movzbl	%dil, %edx
	movl	%edx, -2596(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %edx
	movl	-2404(%rbp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r8d, %edx
	movl	-3204(%rbp), %r8d
	addl	%r8d, %edx
	movslq	%edx, %rsi
	movzbl	1(%rax,%rsi), %edx
	subl	$8, %edx
	setl	%dil
	movzbl	%dil, %r8d
	movl	%r8d, -2628(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r8d
	incl	%r8d
	movl	-2404(%rbp), %r9d
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r9d, %r8d
	movl	-3204(%rbp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rsi
	movzbl	(%rax,%rsi), %r8d
	subl	$8, %r8d
	setl	%dil
	movzbl	%dil, %r9d
	movl	%r9d, -2660(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r9d
	movl	-2404(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r10d, %r9d
	movl	-3204(%rbp), %r10d
	movl	%r9d, %esi
	movl	%r10d, %r11d
	leal	-1(%rsi,%r11), %r9d
	movslq	%r9d, %rsi
	movzbl	(%rax,%rsi), %r9d
	subl	$8, %r9d
	setl	%dil
	movzbl	%dil, %r10d
	movl	%r10d, -2692(%rbp)
	movl	-2596(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movl	-2628(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2624(%rbp)
	addl	%ebx, %r10d
	movl	-2660(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2656(%rbp)
	addl	%ebx, %r10d
	movl	-2692(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2688(%rbp)
	addl	%ebx, %r10d
	cmpl	$1, %r10d
	movl	%ecx, -3328(%rbp)       # 4-byte Spill
	movl	%edx, -3332(%rbp)       # 4-byte Spill
	movl	%r8d, -3336(%rbp)       # 4-byte Spill
	movl	%r9d, -3340(%rbp)       # 4-byte Spill
	jle	.LBB12_102
# BB#95:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	decl	%ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	movl	%ecx, %esi
	movl	%edx, %edi
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rsi
	movzbl	(%rax,%rsi), %ecx
	subl	$8, %ecx
	setl	%r8b
	movzbl	%r8b, %edx
	movl	%edx, -2852(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %edx
	decl	%edx
	movl	-2404(%rbp), %r9d
	movd	%r9d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r9d, %edx
	movl	-3204(%rbp), %r9d
	addl	%r9d, %edx
	movslq	%edx, %rsi
	movzbl	1(%rax,%rsi), %edx
	subl	$8, %edx
	setl	%r8b
	movzbl	%r8b, %r9d
	movl	%r9d, -2884(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r9d
	incl	%r9d
	movl	-2404(%rbp), %r10d
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r10d, %r9d
	movl	-3204(%rbp), %r10d
	movl	%r9d, %esi
	movl	%r10d, %edi
	leal	-1(%rsi,%rdi), %r9d
	movslq	%r9d, %rsi
	movzbl	(%rax,%rsi), %r9d
	subl	$8, %r9d
	setl	%r8b
	movzbl	%r8b, %r10d
	movl	%r10d, -2916(%rbp)
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %r10d
	incl	%r10d
	movl	-2404(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%r11d, %r10d
	movl	-3204(%rbp), %r11d
	addl	%r11d, %r10d
	movslq	%r10d, %rsi
	movzbl	1(%rax,%rsi), %r10d
	subl	$8, %r10d
	setl	%r8b
	movzbl	%r8b, %r11d
	movl	%r11d, -2948(%rbp)
	movl	-2852(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2848(%rbp)
	movl	-2596(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movaps	-2848(%rbp), %xmm1
	por	%xmm0, %xmm1
	movaps	%xmm1, -2720(%rbp)
	orl	%ebx, %r11d
	movl	%r11d, -2724(%rbp)
	movl	-2884(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2880(%rbp)
	movl	-2628(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2624(%rbp)
	movaps	-2880(%rbp), %xmm1
	por	%xmm0, %xmm1
	movaps	%xmm1, -2752(%rbp)
	orl	%ebx, %r11d
	movl	%r11d, -2756(%rbp)
	movl	-2948(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2944(%rbp)
	movl	-2660(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2656(%rbp)
	movaps	-2944(%rbp), %xmm1
	por	%xmm0, %xmm1
	movaps	%xmm1, -2784(%rbp)
	orl	%ebx, %r11d
	movl	%r11d, -2788(%rbp)
	movl	-2916(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2912(%rbp)
	movl	-2692(%rbp), %ebx
	movd	%ebx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2688(%rbp)
	movaps	-2912(%rbp), %xmm1
	por	%xmm0, %xmm1
	movaps	%xmm1, -2816(%rbp)
	orl	%ebx, %r11d
	movl	%r11d, -2820(%rbp)
	movl	-2724(%rbp), %ebx
	movl	-2756(%rbp), %r14d
	addl	%r14d, %ebx
	movl	-2788(%rbp), %r14d
	addl	%r14d, %ebx
	addl	%r11d, %ebx
	movl	-2596(%rbp), %r11d
	movd	%r11d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2592(%rbp)
	movl	-2756(%rbp), %r14d
	andl	%r14d, %r11d
	movl	-2628(%rbp), %r14d
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2624(%rbp)
	movl	-2788(%rbp), %r15d
	andl	%r15d, %r14d
	addl	%r14d, %r11d
	movl	-2660(%rbp), %r14d
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2656(%rbp)
	movl	-2820(%rbp), %r15d
	andl	%r15d, %r14d
	addl	%r14d, %r11d
	movl	-2692(%rbp), %r14d
	movd	%r14d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -2688(%rbp)
	andl	-2724(%rbp), %r14d
	addl	%r14d, %r11d
	subl	%r11d, %ebx
	cmpl	$2, %ebx
	movl	%ecx, -3344(%rbp)       # 4-byte Spill
	movl	%edx, -3348(%rbp)       # 4-byte Spill
	movl	%r9d, -3352(%rbp)       # 4-byte Spill
	movl	%r10d, -3356(%rbp)      # 4-byte Spill
	jge	.LBB12_101
# BB#96:                                #   in Loop: Header=BB12_3 Depth=2
	movq	-2376(%rbp), %rax
	movl	-3172(%rbp), %ecx
	movl	-2404(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -2400(%rbp)
	imull	%edx, %ecx
	movl	-3204(%rbp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movb	$100, (%rax,%rsi)
	movl	-3172(%rbp), %ecx
	movaps	-3168(%rbp), %xmm0
	pcmpeqd	%xmm1, %xmm1
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -3168(%rbp)
	decl	%ecx
	movl	%ecx, -3172(%rbp)
	movl	-3204(%rbp), %ecx
	movaps	-3200(%rbp), %xmm0
	movaps	.LCPI12_2(%rip), %xmm1  # xmm1 = [2,2,2,2]
	psubd	%xmm1, %xmm0
	movdqa	%xmm0, -3200(%rbp)
	subl	$2, %ecx
	movl	%ecx, -3204(%rbp)
	cmpl	$4, -3172(%rbp)
	jge	.LBB12_98
# BB#97:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3168(%rbp)
	movl	$4, -3172(%rbp)
.LBB12_98:                              #   in Loop: Header=BB12_3 Depth=2
	cmpl	$4, -3204(%rbp)
	jge	.LBB12_100
# BB#99:                                #   in Loop: Header=BB12_3 Depth=2
	movaps	.LCPI12_0(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, -3200(%rbp)
	movl	$4, -3204(%rbp)
.LBB12_100:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_101
.LBB12_101:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_102
.LBB12_102:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_103
.LBB12_103:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_104
.LBB12_104:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_105
.LBB12_105:                             #   in Loop: Header=BB12_3 Depth=2
	movl	-3204(%rbp), %eax
	movaps	-3200(%rbp), %xmm0
	movaps	.LCPI12_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -3200(%rbp)
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
	movl	%eax, -1380(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -3360(%rbp)       # 4-byte Spill
	movl	%edi, -3364(%rbp)       # 4-byte Spill
	movl	%eax, -3368(%rbp)       # 4-byte Spill
	je	.LBB12_110
# BB#106:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-3364(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-3360(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB12_108
# BB#107:                               #   in Loop: Header=BB12_3 Depth=2
	movl	-3368(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1380(%rbp)
	jmp	.LBB12_109
.LBB12_108:                             #   in Loop: Header=BB12_3 Depth=2
	movl	-3360(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1380(%rbp)
.LBB12_109:                             #   in Loop: Header=BB12_3 Depth=2
	jmp	.LBB12_110
.LBB12_110:                             #   in Loop: Header=BB12_3 Depth=2
	movl	-1380(%rbp), %eax
	movl	%eax, -3204(%rbp)
	jmp	.LBB12_3
.LBB12_111:                             #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_112
.LBB12_112:                             #   in Loop: Header=BB12_1 Depth=1
	movl	-3172(%rbp), %eax
	movaps	-3168(%rbp), %xmm0
	movaps	.LCPI12_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -3168(%rbp)
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
	movl	%eax, -1412(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -3372(%rbp)       # 4-byte Spill
	movl	%edi, -3376(%rbp)       # 4-byte Spill
	movl	%eax, -3380(%rbp)       # 4-byte Spill
	je	.LBB12_117
# BB#113:                               #   in Loop: Header=BB12_1 Depth=1
	movl	-3376(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-3372(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB12_115
# BB#114:                               #   in Loop: Header=BB12_1 Depth=1
	movl	-3380(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1412(%rbp)
	jmp	.LBB12_116
.LBB12_115:                             #   in Loop: Header=BB12_1 Depth=1
	movl	-3372(%rbp), %eax       # 4-byte Reload
	movl	%eax, -1412(%rbp)
.LBB12_116:                             #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_117
.LBB12_117:                             #   in Loop: Header=BB12_1 Depth=1
	movl	-1412(%rbp), %eax
	movl	%eax, -3172(%rbp)
	jmp	.LBB12_1
.LBB12_118:
	movl	-2356(%rbp), %eax
	addq	$3224, %rsp             # imm = 0xC98
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_0:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI13_1:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI13_2:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI13_5:
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
.LCPI13_7:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
.LCPI13_10:
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
	.long	9                       # 0x9
.LCPI13_11:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI13_3:
	.quad	4606281698874543309     # double 0.90000000000000002
.LCPI13_8:
	.quad	4602678819172646912     # double 0.5
.LCPI13_9:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI13_4:
	.long	1232348160              # float 1.0E+6
.LCPI13_6:
	.long	1077936128              # float 3
	.text
	.globl	susan_edges
	.p2align	4, 0x90
	.type	susan_edges,@function
susan_edges:                            # @susan_edges
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$21600, %rsp            # imm = 0x5460
	movl	16(%rbp), %eax
	movq	%rdi, 624(%rsp)
	movq	%rsi, 616(%rsp)
	movq	%rdx, 608(%rsp)
	movq	%rcx, 600(%rsp)
	movl	%r8d, 572(%rsp)
	movl	%r9d, 540(%rsp)
	movl	%eax, 508(%rsp)
	movq	616(%rsp), %rdi
	movl	540(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	movl	508(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 512(%rsp)
	imull	%r8d, %eax
	movslq	%eax, %rcx
	movq	%rcx, 21304(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 21264(%rsp)
	movups	%xmm0, 21248(%rsp)
	shlq	$2, %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
	callq	memset
	movaps	.LCPI13_0(%rip), %xmm0  # xmm0 = [3,3,3,3]
	movaps	%xmm0, 416(%rsp)
	movl	$3, 412(%rsp)
	movq	%rax, 112(%rsp)         # 8-byte Spill
.LBB13_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	412(%rsp), %eax
	movl	508(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 512(%rsp)
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_10
# BB#2:                                 #   in Loop: Header=BB13_1 Depth=1
	movaps	.LCPI13_0(%rip), %xmm0  # xmm0 = [3,3,3,3]
	movaps	%xmm0, 384(%rsp)
	movl	$3, 380(%rsp)
.LBB13_3:                               #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	subl	$3, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_8
# BB#4:                                 #   in Loop: Header=BB13_3 Depth=2
	movaps	.LCPI13_11(%rip), %xmm0 # xmm0 = [100,100,100,100]
	movaps	%xmm0, 320(%rsp)
	movl	$100, 316(%rsp)
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	addl	$-3, %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	movq	600(%rsp), %rax
	movq	624(%rsp), %rsi
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movl	380(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 384(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 120(%rsp)
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 21208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 21168(%rsp)
	movups	%xmm0, 21152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 320(%rsp)
	movl	%ecx, 21132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 21104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 21048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 21008(%rsp)
	movups	%xmm0, 20992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 20888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20848(%rsp)
	movups	%xmm0, 20832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 20728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20688(%rsp)
	movups	%xmm0, 20672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 20568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20528(%rsp)
	movups	%xmm0, 20512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 20408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20368(%rsp)
	movups	%xmm0, 20352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20304(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 20248(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20208(%rsp)
	movups	%xmm0, 20192(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 20144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 20088(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 20048(%rsp)
	movups	%xmm0, 20032(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 20012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19984(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 19928(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19888(%rsp)
	movups	%xmm0, 19872(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19852(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19824(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 19768(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19728(%rsp)
	movups	%xmm0, 19712(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19692(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19664(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 19608(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19568(%rsp)
	movups	%xmm0, 19552(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19532(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19504(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 19448(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19408(%rsp)
	movups	%xmm0, 19392(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19372(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19344(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 19288(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19248(%rsp)
	movups	%xmm0, 19232(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19212(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19184(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 19128(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 19088(%rsp)
	movups	%xmm0, 19072(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 19052(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 19024(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 18968(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18928(%rsp)
	movups	%xmm0, 18912(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18892(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18864(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 18808(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18768(%rsp)
	movups	%xmm0, 18752(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18732(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18704(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 18648(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18608(%rsp)
	movups	%xmm0, 18592(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18572(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18544(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 18488(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18448(%rsp)
	movups	%xmm0, 18432(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18412(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18384(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movq	%rax, %rdi
	addq	$3, %rdi
	movq	%rdi, 128(%rsp)
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 18328(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18288(%rsp)
	movups	%xmm0, 18272(%rsp)
	subq	%rax, %rsi
	movzbl	(%rsi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18252(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18224(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 18168(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 18128(%rsp)
	movups	%xmm0, 18112(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 18092(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 18064(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 18008(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17968(%rsp)
	movups	%xmm0, 17952(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17932(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17904(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 17848(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17808(%rsp)
	movups	%xmm0, 17792(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17772(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17744(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 17688(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17648(%rsp)
	movups	%xmm0, 17632(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17612(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17584(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 17528(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17488(%rsp)
	movups	%xmm0, 17472(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17424(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 17368(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17328(%rsp)
	movups	%xmm0, 17312(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17264(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 17208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17168(%rsp)
	movups	%xmm0, 17152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 17132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 17104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 17048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 17008(%rsp)
	movups	%xmm0, 16992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 16888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16848(%rsp)
	movups	%xmm0, 16832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 16728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16688(%rsp)
	movups	%xmm0, 16672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 16568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16528(%rsp)
	movups	%xmm0, 16512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 16408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16368(%rsp)
	movups	%xmm0, 16352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16304(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 16248(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16208(%rsp)
	movups	%xmm0, 16192(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 16144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 16088(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 16048(%rsp)
	movups	%xmm0, 16032(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 16012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 15984(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 15928(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 15888(%rsp)
	movups	%xmm0, 15872(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 15852(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 15824(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 15768(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 15728(%rsp)
	movups	%xmm0, 15712(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 15692(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 15664(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 15608(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 15568(%rsp)
	movups	%xmm0, 15552(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 15532(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 15504(%rsp)
	movdqu	15504(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	316(%rsp), %ecx
	cmpl	572(%rsp), %ecx
	jg	.LBB13_6
# BB#5:                                 #   in Loop: Header=BB13_3 Depth=2
	movl	572(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 576(%rsp)
	movl	316(%rsp), %ecx
	subl	%ecx, %eax
	movq	616(%rsp), %rdx
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %ecx
	movl	380(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 384(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
.LBB13_6:                               #   in Loop: Header=BB13_3 Depth=2
	jmp	.LBB13_7
.LBB13_7:                               #   in Loop: Header=BB13_3 Depth=2
	movl	380(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 384(%rsp)
	movaps	.LCPI13_2(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 384(%rsp)
	addl	$1, %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB13_3
.LBB13_8:                               #   in Loop: Header=BB13_1 Depth=1
	jmp	.LBB13_9
.LBB13_9:                               #   in Loop: Header=BB13_1 Depth=1
	movl	412(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movaps	.LCPI13_2(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	addl	$1, %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB13_1
.LBB13_10:
	movaps	.LCPI13_1(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, 416(%rsp)
	movl	$4, 412(%rsp)
.LBB13_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_13 Depth 2
	movl	412(%rsp), %eax
	movl	508(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 512(%rsp)
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_105
# BB#12:                                #   in Loop: Header=BB13_11 Depth=1
	movaps	.LCPI13_1(%rip), %xmm0  # xmm0 = [4,4,4,4]
	movaps	%xmm0, 384(%rsp)
	movl	$4, 380(%rsp)
.LBB13_13:                              #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	subl	$4, %ecx
	cmpl	%ecx, %eax
	jge	.LBB13_98
# BB#14:                                #   in Loop: Header=BB13_13 Depth=2
	movq	616(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	cmpl	$0, (%rax,%rsi,4)
	jle	.LBB13_91
# BB#15:                                #   in Loop: Header=BB13_13 Depth=2
	movq	616(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movl	380(%rsp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, 348(%rsp)
	movl	572(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 576(%rsp)
	movl	348(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 352(%rsp)
	movaps	576(%rsp), %xmm1
	psubd	%xmm0, %xmm1
	movaps	%xmm1, 320(%rsp)
	movd	%xmm1, %edi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%edi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	subl	%edx, %ecx
	imull	$3, %ecx, %edx
	movl	%ecx, 21580(%rsp)
	cmpl	%edx, %r10d
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	je	.LBB13_20
# BB#16:                                #   in Loop: Header=BB13_13 Depth=2
	movl	100(%rsp), %eax         # 4-byte Reload
	cltd
	movl	108(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_18
# BB#17:                                #   in Loop: Header=BB13_13 Depth=2
	movl	104(%rsp), %eax         # 4-byte Reload
	movl	%eax, 21580(%rsp)
	jmp	.LBB13_19
.LBB13_18:                              #   in Loop: Header=BB13_13 Depth=2
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 21580(%rsp)
.LBB13_19:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_20
.LBB13_20:                              #   in Loop: Header=BB13_13 Depth=2
	movl	21580(%rsp), %eax
	movl	%eax, 316(%rsp)
	movq	600(%rsp), %rcx
	movq	624(%rsp), %rdx
	movl	412(%rsp), %eax
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%esi, %eax
	addl	380(%rsp), %eax
	movslq	%eax, %rdi
	movzbl	(%rdx,%rdi), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 120(%rsp)
	cmpl	$600, 316(%rsp)         # imm = 0x258
	jle	.LBB13_50
# BB#21:                                #   in Loop: Header=BB13_13 Depth=2
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	movaps	.LCPI13_0(%rip), %xmm1  # xmm1 = [3,3,3,3]
	addl	$-3, %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	xorps	%xmm2, %xmm2
	movaps	%xmm2, 224(%rsp)
	movl	$0, 220(%rsp)
	movaps	%xmm2, 192(%rsp)
	movl	$0, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 15448(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 15408(%rsp)
	movups	%xmm2, 15392(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 224(%rsp)
	movl	%ecx, 15372(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 15344(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 15324(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 15296(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 192(%rsp)
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 15256(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 15216(%rsp)
	movups	%xmm2, 15200(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 15180(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 15152(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 15096(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 15056(%rsp)
	movups	%xmm2, 15040(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 15020(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 14992(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14972(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14944(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 14904(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 14864(%rsp)
	movups	%xmm2, 14848(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14828(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14800(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14780(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14752(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14712(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 14672(%rsp)
	movups	%xmm2, 14656(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 14636(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 14608(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14588(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14560(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14520(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 14480(%rsp)
	movups	%xmm2, 14464(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14444(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14416(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14360(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 14320(%rsp)
	movups	%xmm2, 14304(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 14284(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 14256(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14236(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14208(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14168(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 14128(%rsp)
	movups	%xmm2, 14112(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14092(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14064(%rsp)
	paddd	%xmm2, %xmm2
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 14044(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 14016(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 13976(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13936(%rsp)
	movups	%xmm2, 13920(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 13900(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 13872(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 13852(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13824(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13784(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13744(%rsp)
	movups	%xmm2, 13728(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 13708(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 13680(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 13660(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13632(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13592(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13552(%rsp)
	movups	%xmm2, 13536(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 13516(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13488(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 13468(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13440(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13400(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13360(%rsp)
	movups	%xmm2, 13344(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 13324(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13296(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13240(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13200(%rsp)
	movups	%xmm2, 13184(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 13164(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13136(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 13116(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 13088(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13048(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 13008(%rsp)
	movups	%xmm2, 12992(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 12972(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 12944(%rsp)
	paddd	%xmm2, %xmm2
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 12924(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 12896(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12856(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 12816(%rsp)
	movups	%xmm2, 12800(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 12780(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 12752(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 12732(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 12704(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 12664(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 12624(%rsp)
	movups	%xmm2, 12608(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 12588(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 12560(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12504(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 12464(%rsp)
	movups	%xmm2, 12448(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 12428(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 12400(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12344(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 12304(%rsp)
	movups	%xmm2, 12288(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 12268(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 12240(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movq	%rax, %rdi
	addq	$3, %rdi
	movq	%rdi, 128(%rsp)
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 12184(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 12144(%rsp)
	movups	%xmm2, 12128(%rsp)
	subq	%rax, %rsi
	movb	(%rsi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 12108(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 12080(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12024(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11984(%rsp)
	movups	%xmm2, 11968(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 11948(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 11920(%rsp)
	paddd	%xmm2, %xmm2
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 11864(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11824(%rsp)
	movups	%xmm2, 11808(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 11788(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 11760(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 11704(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11664(%rsp)
	movups	%xmm2, 11648(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 11628(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 11600(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 11580(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 11552(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 11512(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11472(%rsp)
	movups	%xmm2, 11456(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 11436(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 11408(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 11388(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 11360(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 11320(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11280(%rsp)
	movups	%xmm2, 11264(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 11244(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 11216(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 11196(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 11168(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 11128(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 11088(%rsp)
	movups	%xmm2, 11072(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 11052(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 11024(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 10968(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 10928(%rsp)
	movups	%xmm2, 10912(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 10892(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 10864(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 10844(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 10816(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 10776(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 10736(%rsp)
	movups	%xmm2, 10720(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 10700(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 10672(%rsp)
	paddd	%xmm2, %xmm2
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 10652(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 10624(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 10584(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 10544(%rsp)
	movups	%xmm2, 10528(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 10508(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 10480(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	movl	%ecx, 10460(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 10432(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 10392(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 10352(%rsp)
	movups	%xmm2, 10336(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 10316(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 10288(%rsp)
	paddd	%xmm2, %xmm2
	addl	%ecx, %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	psubd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 10268(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 10240(%rsp)
	paddd	%xmm2, %xmm2
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 10200(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 10160(%rsp)
	movups	%xmm2, 10144(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 10124(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 10096(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 10076(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 10048(%rsp)
	paddd	%xmm2, %xmm2
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 10008(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9968(%rsp)
	movups	%xmm2, 9952(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9932(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9904(%rsp)
	paddd	%xmm2, %xmm2
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9848(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9808(%rsp)
	movups	%xmm2, 9792(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 9772(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 9744(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9724(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9696(%rsp)
	paddd	%xmm2, %xmm2
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9656(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9616(%rsp)
	movups	%xmm2, 9600(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9580(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9552(%rsp)
	paddd	%xmm2, %xmm2
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9532(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9504(%rsp)
	paddd	%xmm2, %xmm2
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 9464(%rsp)
	movd	%rax, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9424(%rsp)
	movups	%xmm2, 9408(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 9388(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 9360(%rsp)
	psubd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9340(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9312(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9272(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9232(%rsp)
	movups	%xmm2, 9216(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 9196(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9168(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm2      # xmm2 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9112(%rsp)
	movd	%rsi, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 9072(%rsp)
	movups	%xmm2, 9056(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm2
	movl	%ecx, 9036(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 9008(%rsp)
	paddd	%xmm3, %xmm2
	movaps	%xmm2, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8988(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 8960(%rsp)
	pmuludq	%xmm1, %xmm2
	pshufd	$160, %xmm2, %xmm1      # xmm1 = xmm2[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	220(%rsp), %ecx
	imull	%ecx, %ecx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 476(%rsp)
	movss	476(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	316(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 8936(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 8912(%rsp)
	movsd	88(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB13_48
# BB#22:                                #   in Loop: Header=BB13_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 448(%rsp)
	movl	$0, 444(%rsp)
	cmpl	$0, 220(%rsp)
	jne	.LBB13_24
# BB#23:                                #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI13_5(%rip), %xmm1  # xmm1 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	movaps	%xmm1, 480(%rsp)
	movss	%xmm0, 476(%rsp)
	jmp	.LBB13_25
.LBB13_24:                              #   in Loop: Header=BB13_13 Depth=2
	movl	188(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	220(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm0, 8892(%rsp)
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cvtdq2ps	%xmm2, %xmm2
	movups	%xmm2, 8864(%rsp)
	movss	%xmm1, 8844(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 8816(%rsp)
	movups	8816(%rsp), %xmm3
	divps	%xmm3, %xmm2
	movaps	%xmm2, 480(%rsp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 476(%rsp)
.LBB13_25:                              #   in Loop: Header=BB13_13 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	476(%rsp), %xmm0
	jbe	.LBB13_32
# BB#26:                                #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	476(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	480(%rsp), %xmm2
	movaps	.LCPI13_7(%rip), %xmm3  # xmm3 = [-0.000000e+00,-0.000000e+00,-0.000000e+00,-0.000000e+00]
	xorps	%xmm3, %xmm2
	movaps	%xmm2, 480(%rsp)
	movaps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	shufps	$229, %xmm4, %xmm4      # xmm4 = xmm4[1,1,2,3]
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	movaps	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	%xmm2, %xmm5
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm1, 21548(%rsp)
	ucomiss	%xmm2, %xmm5
	movss	%xmm1, 84(%rsp)         # 4-byte Spill
	movss	%xmm3, 80(%rsp)         # 4-byte Spill
	movss	%xmm5, 76(%rsp)         # 4-byte Spill
	jne	.LBB13_27
	jp	.LBB13_27
	jmp	.LBB13_31
.LBB13_27:                              #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	76(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	80(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB13_28
	jp	.LBB13_28
	jmp	.LBB13_29
.LBB13_28:                              #   in Loop: Header=BB13_13 Depth=2
	movss	84(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 21548(%rsp)
	jmp	.LBB13_30
.LBB13_29:                              #   in Loop: Header=BB13_13 Depth=2
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 21548(%rsp)
.LBB13_30:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_31
.LBB13_31:                              #   in Loop: Header=BB13_13 Depth=2
	movss	21548(%rsp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 476(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movl	$-1, 156(%rsp)
	jmp	.LBB13_33
.LBB13_32:                              #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 160(%rsp)
	movl	$1, 156(%rsp)
.LBB13_33:                              #   in Loop: Header=BB13_13 Depth=2
	movsd	.LCPI13_8(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_35
# BB#34:                                #   in Loop: Header=BB13_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB13_42
.LBB13_35:                              #   in Loop: Header=BB13_13 Depth=2
	movsd	.LCPI13_9(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_37
# BB#36:                                #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movl	$0, 252(%rsp)
	jmp	.LBB13_41
.LBB13_37:                              #   in Loop: Header=BB13_13 Depth=2
	cmpl	$0, 156(%rsp)
	jle	.LBB13_39
# BB#38:                                #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB13_40
.LBB13_39:                              #   in Loop: Header=BB13_13 Depth=2
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$-1, 284(%rsp)
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
.LBB13_40:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_41
.LBB13_41:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_42
.LBB13_42:                              #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB13_47
# BB#43:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB13_47
# BB#44:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	movl	%esi, %edi
	movl	%edx, %r8d
	leal	(%r8,%rdi,2), %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	shll	$1, %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB13_47
# BB#45:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %esi
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	shll	$1, %esi
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB13_47
# BB#46:                                #   in Loop: Header=BB13_13 Depth=2
	movq	608(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	movb	$1, (%rax,%rsi)
.LBB13_47:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_49
.LBB13_48:                              #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 448(%rsp)
	movl	$1, 444(%rsp)
.LBB13_49:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_51
.LBB13_50:                              #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 448(%rsp)
	movl	$1, 444(%rsp)
.LBB13_51:                              #   in Loop: Header=BB13_13 Depth=2
	cmpl	$1, 444(%rsp)
	jne	.LBB13_90
# BB#52:                                #   in Loop: Header=BB13_13 Depth=2
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	movaps	.LCPI13_0(%rip), %xmm0  # xmm0 = [3,3,3,3]
	addl	$-3, %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	xorps	%xmm1, %xmm1
	movaps	%xmm1, 224(%rsp)
	movl	$0, 220(%rsp)
	movaps	%xmm1, 192(%rsp)
	movl	$0, 188(%rsp)
	movaps	%xmm1, 160(%rsp)
	movl	$0, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8760(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8720(%rsp)
	movups	%xmm1, 8704(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 8684(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 8656(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8636(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8608(%rsp)
	movaps	.LCPI13_10(%rip), %xmm2 # xmm2 = [9,9,9,9]
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8588(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8560(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movd	%edx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 160(%rsp)
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8504(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8464(%rsp)
	movups	%xmm1, 8448(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8428(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8400(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8344(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8304(%rsp)
	movups	%xmm1, 8288(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 8268(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 8240(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8220(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8192(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8144(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 8088(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8048(%rsp)
	movups	%xmm1, 8032(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 8012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7984(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7964(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7936(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7916(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7888(%rsp)
	pslld	$2, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7832(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7792(%rsp)
	movups	%xmm1, 7776(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 7756(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 7728(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7708(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7680(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7660(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7632(%rsp)
	paddd	%xmm1, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7576(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7536(%rsp)
	movups	%xmm1, 7520(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7500(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7472(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7416(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7376(%rsp)
	movups	%xmm1, 7360(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 7340(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 7312(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7264(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7244(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7216(%rsp)
	paddd	%xmm1, %xmm1
	addl	%ecx, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7160(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7120(%rsp)
	movups	%xmm1, 7104(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7084(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7056(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 7036(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7008(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 6988(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6960(%rsp)
	pslld	$2, %xmm1
	shll	$2, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 6904(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6864(%rsp)
	movups	%xmm1, 6848(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 6828(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6800(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 6780(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6752(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 6732(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6704(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6648(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6608(%rsp)
	movups	%xmm1, 6592(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 6572(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6544(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 6524(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6496(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 6476(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6448(%rsp)
	paddd	%xmm1, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6392(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6352(%rsp)
	movups	%xmm1, 6336(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 6316(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6288(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 6268(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6240(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	movl	%ecx, 6220(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6192(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6136(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6096(%rsp)
	movups	%xmm1, 6080(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 6060(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 6032(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5976(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5936(%rsp)
	movups	%xmm1, 5920(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 5900(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 5872(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 5852(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 5824(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	movl	%ecx, 5804(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 5776(%rsp)
	psubd	%xmm3, %xmm1
	movaps	%xmm1, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5720(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5680(%rsp)
	movups	%xmm1, 5664(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 5644(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5616(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 5596(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 5568(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 5548(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5520(%rsp)
	paddd	%xmm1, %xmm1
	addl	%ecx, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5464(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5424(%rsp)
	movups	%xmm1, 5408(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 5388(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5360(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 5340(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 5312(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 5292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5264(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 5208(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5168(%rsp)
	movups	%xmm1, 5152(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 5132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5104(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5048(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5008(%rsp)
	movups	%xmm1, 4992(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 4972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4944(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4888(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4848(%rsp)
	movups	%xmm1, 4832(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 4812(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 4784(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movq	%rax, %rdi
	addq	$3, %rdi
	movq	%rdi, 128(%rsp)
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 4728(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4688(%rsp)
	movups	%xmm1, 4672(%rsp)
	subq	%rax, %rsi
	movb	(%rsi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 4652(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 4624(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4568(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4528(%rsp)
	movups	%xmm1, 4512(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 4492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4464(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4408(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4368(%rsp)
	movups	%xmm1, 4352(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 4332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4304(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-6, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 4248(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4208(%rsp)
	movups	%xmm1, 4192(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 4172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4144(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 4124(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 4096(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 4076(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4048(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3992(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3952(%rsp)
	movups	%xmm1, 3936(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 3916(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3888(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3868(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3840(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 3820(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3792(%rsp)
	paddd	%xmm1, %xmm1
	addl	%ecx, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3736(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3696(%rsp)
	movups	%xmm1, 3680(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 3660(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3632(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3612(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3584(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	movl	%ecx, 3564(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3536(%rsp)
	psubd	%xmm3, %xmm1
	movaps	%xmm1, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3480(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3440(%rsp)
	movups	%xmm1, 3424(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3404(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3376(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3320(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3280(%rsp)
	movups	%xmm1, 3264(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 3244(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3216(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3196(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3168(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	movl	%ecx, 3148(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 3120(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3064(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3024(%rsp)
	movups	%xmm1, 3008(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2988(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2960(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 2940(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 2912(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2892(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2864(%rsp)
	paddd	%xmm1, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2808(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2768(%rsp)
	movups	%xmm1, 2752(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2732(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2704(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 2684(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 2656(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2636(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2608(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-5, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 2552(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2512(%rsp)
	movups	%xmm1, 2496(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2476(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2448(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2428(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2400(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2380(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2352(%rsp)
	pslld	$2, %xmm1
	shll	$2, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2296(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2256(%rsp)
	movups	%xmm1, 2240(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 2220(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 2192(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2144(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 2124(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2096(%rsp)
	paddd	%xmm1, %xmm1
	addl	%ecx, %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	psubd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2040(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2000(%rsp)
	movups	%xmm1, 1984(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1964(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1936(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1880(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 1840(%rsp)
	movups	%xmm1, 1824(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 1804(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1776(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1756(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1728(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1708(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1680(%rsp)
	paddd	%xmm1, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,2), %ecx
	movl	%ecx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1624(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 1584(%rsp)
	movups	%xmm1, 1568(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1548(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1520(%rsp)
	pslld	$2, %xmm1
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 224(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1500(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1472(%rsp)
	pslld	$2, %xmm1
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1424(%rsp)
	pslld	$2, %xmm1
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 160(%rsp)
	movl	%ecx, %eax
	movl	%edx, %esi
	leal	(%rsi,%rax,4), %ecx
	movl	%ecx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-3, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 1368(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 1328(%rsp)
	movups	%xmm1, 1312(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 1292(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1264(%rsp)
	paddd	%xmm3, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1244(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1216(%rsp)
	pmuludq	%xmm2, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm3
	paddd	%xmm1, %xmm3
	movaps	%xmm3, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1196(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1168(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm0      # xmm0 = xmm1[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,2), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	psubd	%xmm0, %xmm1
	movaps	%xmm1, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1112(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1072(%rsp)
	movups	%xmm0, 1056(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	%ecx, 1036(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 1008(%rsp)
	pmuludq	%xmm2, %xmm0
	pshufd	$160, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,2]
	movl	%ecx, %eax
	leal	(%rax,%rax,8), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 952(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 912(%rsp)
	movups	%xmm0, 896(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 876(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 848(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	movd	%xmm0, %r10d
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r11d
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ebx
	movl	%r10d, %r14d
	addl	%r11d, %r14d
	addl	%ebx, %r14d
	addl	%ecx, %edx
	imull	$3, %edx, %ecx
	movl	%edx, 21516(%rsp)
	cmpl	%ecx, %r14d
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	%r10d, 68(%rsp)         # 4-byte Spill
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	je	.LBB13_57
# BB#53:                                #   in Loop: Header=BB13_13 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	cltd
	movl	68(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_55
# BB#54:                                #   in Loop: Header=BB13_13 Depth=2
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21516(%rsp)
	jmp	.LBB13_56
.LBB13_55:                              #   in Loop: Header=BB13_13 Depth=2
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21516(%rsp)
.LBB13_56:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_57
.LBB13_57:                              #   in Loop: Header=BB13_13 Depth=2
	movl	21516(%rsp), %eax
	movl	%eax, 220(%rsp)
	movzbl	143(%rsp), %eax
	movl	%eax, 828(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 800(%rsp)
	movaps	.LCPI13_10(%rip), %xmm1 # xmm1 = [9,9,9,9]
	pmuludq	%xmm1, %xmm0
	pshufd	$160, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,2]
	movl	%eax, %ecx
	leal	(%rcx,%rcx,8), %eax
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 192(%rsp)
	movd	%xmm1, %esi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %edi
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	addl	%eax, %edx
	imull	$3, %edx, %eax
	movl	%edx, 21484(%rsp)
	cmpl	%eax, %r9d
	movl	%r9d, 60(%rsp)          # 4-byte Spill
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movl	%esi, 52(%rsp)          # 4-byte Spill
	je	.LBB13_62
# BB#58:                                #   in Loop: Header=BB13_13 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	cltd
	movl	52(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_60
# BB#59:                                #   in Loop: Header=BB13_13 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21484(%rsp)
	jmp	.LBB13_61
.LBB13_60:                              #   in Loop: Header=BB13_13 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21484(%rsp)
.LBB13_61:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_62
.LBB13_62:                              #   in Loop: Header=BB13_13 Depth=2
	movl	21484(%rsp), %eax
	movl	%eax, 188(%rsp)
	movzbl	143(%rsp), %eax
	movl	%eax, 780(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 752(%rsp)
	movaps	.LCPI13_0(%rip), %xmm1  # xmm1 = [3,3,3,3]
	pmuludq	%xmm1, %xmm0
	pshufd	$160, %xmm0, %xmm0      # xmm0 = xmm0[0,0,2,2]
	movl	%eax, %ecx
	leal	(%rcx,%rcx,2), %eax
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 160(%rsp)
	movd	%xmm1, %esi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %edi
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	addl	%eax, %edx
	imull	$3, %edx, %eax
	movl	%edx, 21452(%rsp)
	cmpl	%eax, %r9d
	movl	%r9d, 48(%rsp)          # 4-byte Spill
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movl	%esi, 40(%rsp)          # 4-byte Spill
	je	.LBB13_67
# BB#63:                                #   in Loop: Header=BB13_13 Depth=2
	movl	48(%rsp), %eax          # 4-byte Reload
	cltd
	movl	40(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_65
# BB#64:                                #   in Loop: Header=BB13_13 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21452(%rsp)
	jmp	.LBB13_66
.LBB13_65:                              #   in Loop: Header=BB13_13 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21452(%rsp)
.LBB13_66:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_67
.LBB13_67:                              #   in Loop: Header=BB13_13 Depth=2
	movl	21452(%rsp), %eax
	movl	%eax, 156(%rsp)
	cmpl	$0, 188(%rsp)
	jne	.LBB13_69
# BB#68:                                #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI13_5(%rip), %xmm1  # xmm1 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	movaps	%xmm1, 480(%rsp)
	movss	%xmm0, 476(%rsp)
	jmp	.LBB13_75
.LBB13_69:                              #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	220(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	188(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	movss	%xmm1, 732(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 704(%rsp)
	movss	%xmm2, 684(%rsp)
	movd	%ecx, %xmm4
	pshufd	$0, %xmm4, %xmm4        # xmm4 = xmm4[0,0,0,0]
	cvtdq2ps	%xmm4, %xmm4
	movups	%xmm4, 656(%rsp)
	divps	%xmm4, %xmm3
	movaps	%xmm3, 480(%rsp)
	movaps	%xmm3, %xmm4
	movaps	%xmm3, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm6
	addss	%xmm5, %xmm6
	addss	%xmm3, %xmm6
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm1, 21420(%rsp)
	ucomiss	%xmm2, %xmm6
	movss	%xmm6, 36(%rsp)         # 4-byte Spill
	movss	%xmm1, 32(%rsp)         # 4-byte Spill
	movss	%xmm4, 28(%rsp)         # 4-byte Spill
	jne	.LBB13_70
	jp	.LBB13_70
	jmp	.LBB13_74
.LBB13_70:                              #   in Loop: Header=BB13_13 Depth=2
	movss	.LCPI13_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	36(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	28(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB13_71
	jp	.LBB13_71
	jmp	.LBB13_72
.LBB13_71:                              #   in Loop: Header=BB13_13 Depth=2
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 21420(%rsp)
	jmp	.LBB13_73
.LBB13_72:                              #   in Loop: Header=BB13_13 Depth=2
	movss	28(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 21420(%rsp)
.LBB13_73:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_74
.LBB13_74:                              #   in Loop: Header=BB13_13 Depth=2
	movss	21420(%rsp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 476(%rsp)
.LBB13_75:                              #   in Loop: Header=BB13_13 Depth=2
	movsd	.LCPI13_8(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB13_77
# BB#76:                                #   in Loop: Header=BB13_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB13_84
.LBB13_77:                              #   in Loop: Header=BB13_13 Depth=2
	movsd	.LCPI13_9(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB13_79
# BB#78:                                #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movl	$0, 252(%rsp)
	jmp	.LBB13_83
.LBB13_79:                              #   in Loop: Header=BB13_13 Depth=2
	cmpl	$0, 156(%rsp)
	jle	.LBB13_81
# BB#80:                                #   in Loop: Header=BB13_13 Depth=2
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$-1, 284(%rsp)
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB13_82
.LBB13_81:                              #   in Loop: Header=BB13_13 Depth=2
	movaps	.LCPI13_2(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
.LBB13_82:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_83
.LBB13_83:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_84
.LBB13_84:                              #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB13_89
# BB#85:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB13_89
# BB#86:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	movl	%esi, %edi
	movl	%edx, %r8d
	leal	(%r8,%rdi,2), %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	shll	$1, %esi
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB13_89
# BB#87:                                #   in Loop: Header=BB13_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %esi
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	shll	$1, %esi
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB13_89
# BB#88:                                #   in Loop: Header=BB13_13 Depth=2
	movq	608(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	movb	$2, (%rax,%rsi)
.LBB13_89:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_90
.LBB13_90:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_91
.LBB13_91:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_92
.LBB13_92:                              #   in Loop: Header=BB13_13 Depth=2
	movl	380(%rsp), %eax
	movaps	384(%rsp), %xmm0
	movaps	.LCPI13_2(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 384(%rsp)
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
	movl	%eax, 21388(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	%eax, 16(%rsp)          # 4-byte Spill
	je	.LBB13_97
# BB#93:                                #   in Loop: Header=BB13_13 Depth=2
	movl	20(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_95
# BB#94:                                #   in Loop: Header=BB13_13 Depth=2
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21388(%rsp)
	jmp	.LBB13_96
.LBB13_95:                              #   in Loop: Header=BB13_13 Depth=2
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21388(%rsp)
.LBB13_96:                              #   in Loop: Header=BB13_13 Depth=2
	jmp	.LBB13_97
.LBB13_97:                              #   in Loop: Header=BB13_13 Depth=2
	movl	21388(%rsp), %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB13_13
.LBB13_98:                              #   in Loop: Header=BB13_11 Depth=1
	jmp	.LBB13_99
.LBB13_99:                              #   in Loop: Header=BB13_11 Depth=1
	movl	412(%rsp), %eax
	movaps	416(%rsp), %xmm0
	movaps	.LCPI13_2(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 416(%rsp)
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
	movl	%eax, 21356(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB13_104
# BB#100:                               #   in Loop: Header=BB13_11 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	cltd
	movl	12(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB13_102
# BB#101:                               #   in Loop: Header=BB13_11 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 21356(%rsp)
	jmp	.LBB13_103
.LBB13_102:                             #   in Loop: Header=BB13_11 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 21356(%rsp)
.LBB13_103:                             #   in Loop: Header=BB13_11 Depth=1
	jmp	.LBB13_104
.LBB13_104:                             #   in Loop: Header=BB13_11 Depth=1
	movl	21356(%rsp), %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB13_11
.LBB13_105:
	movl	636(%rsp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI14_0:
	.long	730                     # 0x2da
	.long	730                     # 0x2da
	.long	730                     # 0x2da
	.long	730                     # 0x2da
.LCPI14_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI14_2:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
.LCPI14_5:
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
	.long	1232348160              # float 1.0E+6
.LCPI14_7:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
.LCPI14_10:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI14_3:
	.quad	4600877379321698714     # double 0.40000000000000002
.LCPI14_8:
	.quad	4602678819172646912     # double 0.5
.LCPI14_9:
	.quad	4611686018427387904     # double 2
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI14_4:
	.long	1232348160              # float 1.0E+6
.LCPI14_6:
	.long	1077936128              # float 3
	.text
	.globl	susan_edges_small
	.p2align	4, 0x90
	.type	susan_edges_small,@function
susan_edges_small:                      # @susan_edges_small
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	andq	$-32, %rsp
	subq	$5600, %rsp             # imm = 0x15E0
	movl	16(%rbp), %eax
	movq	%rdi, 624(%rsp)
	movq	%rsi, 616(%rsp)
	movq	%rdx, 608(%rsp)
	movq	%rcx, 600(%rsp)
	movl	%r8d, 572(%rsp)
	movl	%r9d, 540(%rsp)
	movl	%eax, 508(%rsp)
	movq	616(%rsp), %rdi
	movl	540(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	movl	508(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 512(%rsp)
	imull	%r8d, %eax
	movslq	%eax, %rcx
	movq	%rcx, 5304(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5264(%rsp)
	movups	%xmm0, 5248(%rsp)
	shlq	$2, %rcx
	xorl	%esi, %esi
	movq	%rcx, %rdx
	callq	memset
	movaps	.LCPI14_0(%rip), %xmm0  # xmm0 = [730,730,730,730]
	movaps	%xmm0, 576(%rsp)
	movl	$730, 572(%rsp)         # imm = 0x2DA
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 416(%rsp)
	movl	$1, 412(%rsp)
	movq	%rax, 112(%rsp)         # 8-byte Spill
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
	movl	412(%rsp), %eax
	movl	508(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 512(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_10
# BB#2:                                 #   in Loop: Header=BB14_1 Depth=1
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 384(%rsp)
	movl	$1, 380(%rsp)
.LBB14_3:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_8
# BB#4:                                 #   in Loop: Header=BB14_3 Depth=2
	movaps	.LCPI14_10(%rip), %xmm0 # xmm0 = [100,100,100,100]
	movaps	%xmm0, 320(%rsp)
	movl	$100, 316(%rsp)
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	decl	%ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	movq	600(%rsp), %rax
	movq	624(%rsp), %rsi
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movl	380(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 384(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 120(%rsp)
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5168(%rsp)
	movups	%xmm0, 5152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 320(%rsp)
	movl	%ecx, 5132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 5048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5008(%rsp)
	movups	%xmm0, 4992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4848(%rsp)
	movups	%xmm0, 4832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 4728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4688(%rsp)
	movups	%xmm0, 4672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 4568(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4528(%rsp)
	movups	%xmm0, 4512(%rsp)
	subq	%rax, %rsi
	movzbl	(%rsi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 4408(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4368(%rsp)
	movups	%xmm0, 4352(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4304(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4248(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4208(%rsp)
	movups	%xmm0, 4192(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 4088(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4048(%rsp)
	movups	%xmm0, 4032(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	316(%rsp), %edx
	movaps	320(%rsp), %xmm0
	movl	%ecx, 4012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 3984(%rsp)
	movdqu	3984(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 320(%rsp)
	addl	%ecx, %edx
	movl	%edx, 316(%rsp)
	movl	316(%rsp), %ecx
	cmpl	572(%rsp), %ecx
	jg	.LBB14_6
# BB#5:                                 #   in Loop: Header=BB14_3 Depth=2
	movl	572(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 576(%rsp)
	movl	316(%rsp), %ecx
	subl	%ecx, %eax
	movq	616(%rsp), %rdx
	movl	412(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %ecx
	movl	380(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 384(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=2
	jmp	.LBB14_7
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=2
	movl	380(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 384(%rsp)
	movaps	.LCPI14_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 384(%rsp)
	addl	$1, %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB14_3
.LBB14_8:                               #   in Loop: Header=BB14_1 Depth=1
	jmp	.LBB14_9
.LBB14_9:                               #   in Loop: Header=BB14_1 Depth=1
	movl	412(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 416(%rsp)
	movaps	.LCPI14_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 416(%rsp)
	addl	$1, %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB14_1
.LBB14_10:
	movaps	.LCPI14_2(%rip), %xmm0  # xmm0 = [2,2,2,2]
	movaps	%xmm0, 416(%rsp)
	movl	$2, 412(%rsp)
.LBB14_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_13 Depth 2
	movl	412(%rsp), %eax
	movl	508(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 512(%rsp)
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_101
# BB#12:                                #   in Loop: Header=BB14_11 Depth=1
	movaps	.LCPI14_2(%rip), %xmm0  # xmm0 = [2,2,2,2]
	movaps	%xmm0, 384(%rsp)
	movl	$2, 380(%rsp)
.LBB14_13:                              #   Parent Loop BB14_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	380(%rsp), %eax
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jge	.LBB14_94
# BB#14:                                #   in Loop: Header=BB14_13 Depth=2
	movq	616(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	cmpl	$0, (%rax,%rsi,4)
	jle	.LBB14_87
# BB#15:                                #   in Loop: Header=BB14_13 Depth=2
	movq	616(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movl	380(%rsp), %edx
	addl	%edx, %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, 348(%rsp)
	movl	572(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 576(%rsp)
	movl	348(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 352(%rsp)
	movaps	576(%rsp), %xmm1
	psubd	%xmm0, %xmm1
	movaps	%xmm1, 320(%rsp)
	movd	%xmm1, %edi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%edi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	subl	%edx, %ecx
	imull	$3, %ecx, %edx
	movl	%ecx, 5580(%rsp)
	cmpl	%edx, %r10d
	movl	%edi, 108(%rsp)         # 4-byte Spill
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%r10d, 100(%rsp)        # 4-byte Spill
	je	.LBB14_20
# BB#16:                                #   in Loop: Header=BB14_13 Depth=2
	movl	100(%rsp), %eax         # 4-byte Reload
	cltd
	movl	108(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_18
# BB#17:                                #   in Loop: Header=BB14_13 Depth=2
	movl	104(%rsp), %eax         # 4-byte Reload
	movl	%eax, 5580(%rsp)
	jmp	.LBB14_19
.LBB14_18:                              #   in Loop: Header=BB14_13 Depth=2
	movl	108(%rsp), %eax         # 4-byte Reload
	movl	%eax, 5580(%rsp)
.LBB14_19:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_20
.LBB14_20:                              #   in Loop: Header=BB14_13 Depth=2
	movl	5580(%rsp), %eax
	movl	%eax, 316(%rsp)
	movq	600(%rsp), %rcx
	movq	624(%rsp), %rdx
	movl	412(%rsp), %eax
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%esi, %eax
	addl	380(%rsp), %eax
	movslq	%eax, %rdi
	movzbl	(%rdx,%rdi), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, 120(%rsp)
	cmpl	$250, 316(%rsp)
	jle	.LBB14_48
# BB#21:                                #   in Loop: Header=BB14_13 Depth=2
	movsd	.LCPI14_3(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	decl	%ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	xorps	%xmm1, %xmm1
	movaps	%xmm1, 224(%rsp)
	movl	$0, 220(%rsp)
	movaps	%xmm1, 192(%rsp)
	movl	$0, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3928(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3888(%rsp)
	movups	%xmm1, 3872(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 224(%rsp)
	movl	%ecx, 3852(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3824(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 192(%rsp)
	movl	%ecx, 3804(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3776(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3736(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3696(%rsp)
	movups	%xmm1, 3680(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3660(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3632(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 3576(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3536(%rsp)
	movups	%xmm1, 3520(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 3500(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3472(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 3452(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3424(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	subl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 3384(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3344(%rsp)
	movups	%xmm1, 3328(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 3308(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3280(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 3224(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3184(%rsp)
	movups	%xmm1, 3168(%rsp)
	subq	%rax, %rsi
	movb	(%rsi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 3148(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3120(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 3064(%rsp)
	movd	%rax, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3024(%rsp)
	movups	%xmm1, 3008(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 2988(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2960(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	subl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 2940(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2912(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2872(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2832(%rsp)
	movups	%xmm1, 2816(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 2796(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2768(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2712(%rsp)
	movd	%rsi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2672(%rsp)
	movups	%xmm1, 2656(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	movl	%ecx, 2636(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2608(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm1
	movl	%ecx, 2588(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2560(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movl	220(%rsp), %ecx
	imull	%ecx, %ecx
	imull	%edx, %edx
	addl	%edx, %ecx
	cvtsi2ssl	%ecx, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, 88(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sqrt
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 476(%rsp)
	movss	476(%rsp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtsi2ssl	316(%rsp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2536(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2512(%rsp)
	movsd	88(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	mulsd	%xmm1, %xmm2
	ucomisd	%xmm2, %xmm0
	jbe	.LBB14_46
# BB#22:                                #   in Loop: Header=BB14_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 448(%rsp)
	movl	$0, 444(%rsp)
	cmpl	$0, 220(%rsp)
	jne	.LBB14_24
# BB#23:                                #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI14_5(%rip), %xmm1  # xmm1 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	movaps	%xmm1, 480(%rsp)
	movss	%xmm0, 476(%rsp)
	jmp	.LBB14_25
.LBB14_24:                              #   in Loop: Header=BB14_13 Depth=2
	movl	188(%rsp), %eax
	cvtsi2ssl	%eax, %xmm0
	movl	220(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm1
	movss	%xmm0, 2492(%rsp)
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cvtdq2ps	%xmm2, %xmm2
	movups	%xmm2, 2464(%rsp)
	movss	%xmm1, 2444(%rsp)
	movd	%ecx, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 2416(%rsp)
	movups	2416(%rsp), %xmm3
	divps	%xmm3, %xmm2
	movaps	%xmm2, 480(%rsp)
	divss	%xmm1, %xmm0
	movss	%xmm0, 476(%rsp)
.LBB14_25:                              #   in Loop: Header=BB14_13 Depth=2
	xorps	%xmm0, %xmm0
	ucomiss	476(%rsp), %xmm0
	jbe	.LBB14_32
# BB#26:                                #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	476(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movaps	480(%rsp), %xmm2
	movaps	.LCPI14_7(%rip), %xmm3  # xmm3 = [-0.000000e+00,-0.000000e+00,-0.000000e+00,-0.000000e+00]
	xorps	%xmm3, %xmm2
	movaps	%xmm2, 480(%rsp)
	movaps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	shufps	$229, %xmm4, %xmm4      # xmm4 = xmm4[1,1,2,3]
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	movaps	%xmm3, %xmm5
	addss	%xmm4, %xmm5
	addss	%xmm2, %xmm5
	movd	%xmm1, %eax
	xorl	$2147483648, %eax       # imm = 0x80000000
	movd	%eax, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm1, 5548(%rsp)
	ucomiss	%xmm2, %xmm5
	movss	%xmm1, 84(%rsp)         # 4-byte Spill
	movss	%xmm3, 80(%rsp)         # 4-byte Spill
	movss	%xmm5, 76(%rsp)         # 4-byte Spill
	jne	.LBB14_27
	jp	.LBB14_27
	jmp	.LBB14_31
.LBB14_27:                              #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	76(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	80(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB14_28
	jp	.LBB14_28
	jmp	.LBB14_29
.LBB14_28:                              #   in Loop: Header=BB14_13 Depth=2
	movss	84(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 5548(%rsp)
	jmp	.LBB14_30
.LBB14_29:                              #   in Loop: Header=BB14_13 Depth=2
	movss	80(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 5548(%rsp)
.LBB14_30:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_31
.LBB14_31:                              #   in Loop: Header=BB14_13 Depth=2
	movss	5548(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 476(%rsp)
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 160(%rsp)
	movl	$-1, 156(%rsp)
	jmp	.LBB14_33
.LBB14_32:                              #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 160(%rsp)
	movl	$1, 156(%rsp)
.LBB14_33:                              #   in Loop: Header=BB14_13 Depth=2
	movsd	.LCPI14_8(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_35
# BB#34:                                #   in Loop: Header=BB14_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB14_42
.LBB14_35:                              #   in Loop: Header=BB14_13 Depth=2
	movsd	.LCPI14_9(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_37
# BB#36:                                #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movl	$0, 252(%rsp)
	jmp	.LBB14_41
.LBB14_37:                              #   in Loop: Header=BB14_13 Depth=2
	cmpl	$0, 156(%rsp)
	jle	.LBB14_39
# BB#38:                                #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB14_40
.LBB14_39:                              #   in Loop: Header=BB14_13 Depth=2
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$-1, 284(%rsp)
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
.LBB14_40:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_41
.LBB14_41:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_42
.LBB14_42:                              #   in Loop: Header=BB14_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB14_45
# BB#43:                                #   in Loop: Header=BB14_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB14_45
# BB#44:                                #   in Loop: Header=BB14_13 Depth=2
	movq	608(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	movb	$1, (%rax,%rsi)
.LBB14_45:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_47
.LBB14_46:                              #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 448(%rsp)
	movl	$1, 444(%rsp)
.LBB14_47:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_49
.LBB14_48:                              #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 448(%rsp)
	movl	$1, 444(%rsp)
.LBB14_49:                              #   in Loop: Header=BB14_13 Depth=2
	cmpl	$1, 444(%rsp)
	jne	.LBB14_86
# BB#50:                                #   in Loop: Header=BB14_13 Depth=2
	movq	624(%rsp), %rax
	movl	412(%rsp), %ecx
	decl	%ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	380(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 128(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movaps	%xmm0, 192(%rsp)
	movl	$0, 188(%rsp)
	movaps	%xmm0, 160(%rsp)
	movl	$0, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2360(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2320(%rsp)
	movups	%xmm0, 2304(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 2284(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2256(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm0
	movl	%ecx, 2236(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2208(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	movl	%ecx, 2188(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2160(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 160(%rsp)
	addl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 2104(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 2064(%rsp)
	movups	%xmm0, 2048(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm0
	movl	%ecx, 2028(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2000(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1944(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1904(%rsp)
	movups	%xmm0, 1888(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 1868(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1840(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm0
	movl	%ecx, 1820(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1792(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm0
	movl	%ecx, 1772(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1744(%rsp)
	psubd	%xmm1, %xmm0
	movaps	%xmm0, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 1688(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1648(%rsp)
	movups	%xmm0, 1632(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 1612(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1584(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, %rsi
	addq	$2, %rsi
	movq	%rsi, 128(%rsp)
	movq	120(%rsp), %rsi
	movzbl	2(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, 1528(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1488(%rsp)
	movups	%xmm0, 1472(%rsp)
	subq	%rax, %rsi
	movb	(%rsi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 1452(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1424(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	540(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	addl	$-2, %ecx
	movq	128(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 128(%rsp)
	movq	120(%rsp), %rdi
	leaq	1(%rax,%rsi), %r9
	movq	%r9, 128(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 1368(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1328(%rsp)
	movups	%xmm0, 1312(%rsp)
	subq	%rax, %rdi
	movb	(%rdi), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 1292(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1264(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm0
	movl	%ecx, 1244(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1216(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movzbl	143(%rsp), %ecx
	movl	156(%rsp), %edx
	movaps	160(%rsp), %xmm0
	movl	%ecx, 1196(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1168(%rsp)
	psubd	%xmm1, %xmm0
	movaps	%xmm0, 160(%rsp)
	subl	%ecx, %edx
	movl	%edx, 156(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 128(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 1112(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1072(%rsp)
	movups	%xmm0, 1056(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	188(%rsp), %edx
	movaps	192(%rsp), %xmm0
	movl	%ecx, 1036(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1008(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	addl	%ecx, %edx
	movl	%edx, 188(%rsp)
	movq	120(%rsp), %rax
	movq	128(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 952(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 912(%rsp)
	movups	%xmm0, 896(%rsp)
	subq	%rsi, %rax
	movb	(%rax), %r8b
	movb	%r8b, 143(%rsp)
	movzbl	143(%rsp), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 876(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 848(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	movd	%xmm0, %r10d
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r11d
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %ebx
	movl	%r10d, %r14d
	addl	%r11d, %r14d
	addl	%ebx, %r14d
	addl	%ecx, %edx
	imull	$3, %edx, %ecx
	movl	%edx, 5516(%rsp)
	cmpl	%ecx, %r14d
	movl	%edx, 72(%rsp)          # 4-byte Spill
	movl	%r10d, 68(%rsp)         # 4-byte Spill
	movl	%r14d, 64(%rsp)         # 4-byte Spill
	je	.LBB14_55
# BB#51:                                #   in Loop: Header=BB14_13 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	cltd
	movl	68(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_53
# BB#52:                                #   in Loop: Header=BB14_13 Depth=2
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5516(%rsp)
	jmp	.LBB14_54
.LBB14_53:                              #   in Loop: Header=BB14_13 Depth=2
	movl	68(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5516(%rsp)
.LBB14_54:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_55
.LBB14_55:                              #   in Loop: Header=BB14_13 Depth=2
	movl	5516(%rsp), %eax
	movl	%eax, 220(%rsp)
	movzbl	143(%rsp), %eax
	movl	188(%rsp), %ecx
	movaps	192(%rsp), %xmm0
	movl	%eax, 828(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 800(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %edi
	movl	%edx, %r8d
	addl	%esi, %r8d
	addl	%edi, %r8d
	addl	%eax, %ecx
	imull	$3, %ecx, %eax
	movl	%ecx, 5484(%rsp)
	cmpl	%eax, %r8d
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edx, 56(%rsp)          # 4-byte Spill
	movl	%r8d, 52(%rsp)          # 4-byte Spill
	je	.LBB14_60
# BB#56:                                #   in Loop: Header=BB14_13 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	cltd
	movl	56(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_58
# BB#57:                                #   in Loop: Header=BB14_13 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5484(%rsp)
	jmp	.LBB14_59
.LBB14_58:                              #   in Loop: Header=BB14_13 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5484(%rsp)
.LBB14_59:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_60
.LBB14_60:                              #   in Loop: Header=BB14_13 Depth=2
	movl	5484(%rsp), %eax
	movl	%eax, 188(%rsp)
	movzbl	143(%rsp), %eax
	movl	156(%rsp), %ecx
	movaps	160(%rsp), %xmm0
	movl	%eax, 780(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 752(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 160(%rsp)
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %edi
	movl	%edx, %r8d
	addl	%esi, %r8d
	addl	%edi, %r8d
	addl	%eax, %ecx
	imull	$3, %ecx, %eax
	movl	%ecx, 5452(%rsp)
	cmpl	%eax, %r8d
	movl	%ecx, 48(%rsp)          # 4-byte Spill
	movl	%edx, 44(%rsp)          # 4-byte Spill
	movl	%r8d, 40(%rsp)          # 4-byte Spill
	je	.LBB14_65
# BB#61:                                #   in Loop: Header=BB14_13 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_63
# BB#62:                                #   in Loop: Header=BB14_13 Depth=2
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5452(%rsp)
	jmp	.LBB14_64
.LBB14_63:                              #   in Loop: Header=BB14_13 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5452(%rsp)
.LBB14_64:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_65
.LBB14_65:                              #   in Loop: Header=BB14_13 Depth=2
	movl	5452(%rsp), %eax
	movl	%eax, 156(%rsp)
	cmpl	$0, 188(%rsp)
	jne	.LBB14_67
# BB#66:                                #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_4(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movaps	.LCPI14_5(%rip), %xmm1  # xmm1 = [1.000000e+06,1.000000e+06,1.000000e+06,1.000000e+06]
	movaps	%xmm1, 480(%rsp)
	movss	%xmm0, 476(%rsp)
	jmp	.LBB14_73
.LBB14_67:                              #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	220(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	188(%rsp), %ecx
	cvtsi2ssl	%ecx, %xmm2
	movss	%xmm1, 732(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 704(%rsp)
	movss	%xmm2, 684(%rsp)
	movd	%ecx, %xmm4
	pshufd	$0, %xmm4, %xmm4        # xmm4 = xmm4[0,0,0,0]
	cvtdq2ps	%xmm4, %xmm4
	movups	%xmm4, 656(%rsp)
	divps	%xmm4, %xmm3
	movaps	%xmm3, 480(%rsp)
	movaps	%xmm3, %xmm4
	movaps	%xmm3, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm6
	addss	%xmm5, %xmm6
	addss	%xmm3, %xmm6
	divss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm1, 5420(%rsp)
	ucomiss	%xmm2, %xmm6
	movss	%xmm6, 36(%rsp)         # 4-byte Spill
	movss	%xmm1, 32(%rsp)         # 4-byte Spill
	movss	%xmm4, 28(%rsp)         # 4-byte Spill
	jne	.LBB14_68
	jp	.LBB14_68
	jmp	.LBB14_72
.LBB14_68:                              #   in Loop: Header=BB14_13 Depth=2
	movss	.LCPI14_6(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movss	36(%rsp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	28(%rsp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB14_69
	jp	.LBB14_69
	jmp	.LBB14_70
.LBB14_69:                              #   in Loop: Header=BB14_13 Depth=2
	movss	32(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 5420(%rsp)
	jmp	.LBB14_71
.LBB14_70:                              #   in Loop: Header=BB14_13 Depth=2
	movss	28(%rsp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 5420(%rsp)
.LBB14_71:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_72
.LBB14_72:                              #   in Loop: Header=BB14_13 Depth=2
	movss	5420(%rsp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 476(%rsp)
.LBB14_73:                              #   in Loop: Header=BB14_13 Depth=2
	movsd	.LCPI14_8(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB14_75
# BB#74:                                #   in Loop: Header=BB14_13 Depth=2
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$0, 284(%rsp)
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB14_82
.LBB14_75:                              #   in Loop: Header=BB14_13 Depth=2
	movsd	.LCPI14_9(%rip), %xmm0  # xmm0 = mem[0],zero
	cvtss2sd	476(%rsp), %xmm1
	ucomisd	%xmm0, %xmm1
	jbe	.LBB14_77
# BB#76:                                #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 256(%rsp)
	movl	$0, 252(%rsp)
	jmp	.LBB14_81
.LBB14_77:                              #   in Loop: Header=BB14_13 Depth=2
	cmpl	$0, 156(%rsp)
	jle	.LBB14_79
# BB#78:                                #   in Loop: Header=BB14_13 Depth=2
	pcmpeqd	%xmm0, %xmm0
	movaps	%xmm0, 288(%rsp)
	movl	$-1, 284(%rsp)
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
	jmp	.LBB14_80
.LBB14_79:                              #   in Loop: Header=BB14_13 Depth=2
	movaps	.LCPI14_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 288(%rsp)
	movl	$1, 284(%rsp)
	movaps	%xmm0, 256(%rsp)
	movl	$1, 252(%rsp)
.LBB14_80:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_81
.LBB14_81:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_82
.LBB14_82:                              #   in Loop: Header=BB14_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	addl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB14_85
# BB#83:                                #   in Loop: Header=BB14_13 Depth=2
	movl	348(%rsp), %eax
	movq	616(%rsp), %rcx
	movl	412(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	subl	%esi, %edx
	movl	540(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 544(%rsp)
	imull	%esi, %edx
	movl	380(%rsp), %esi
	addl	%esi, %edx
	movl	252(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	%esi, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB14_85
# BB#84:                                #   in Loop: Header=BB14_13 Depth=2
	movq	608(%rsp), %rax
	movl	412(%rsp), %ecx
	movl	540(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 544(%rsp)
	imull	%edx, %ecx
	addl	380(%rsp), %ecx
	movslq	%ecx, %rsi
	movb	$2, (%rax,%rsi)
.LBB14_85:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_86
.LBB14_86:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_87
.LBB14_87:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_88
.LBB14_88:                              #   in Loop: Header=BB14_13 Depth=2
	movl	380(%rsp), %eax
	movaps	384(%rsp), %xmm0
	movaps	.LCPI14_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 384(%rsp)
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
	movl	%eax, 5388(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	%eax, 16(%rsp)          # 4-byte Spill
	je	.LBB14_93
# BB#89:                                #   in Loop: Header=BB14_13 Depth=2
	movl	20(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_91
# BB#90:                                #   in Loop: Header=BB14_13 Depth=2
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5388(%rsp)
	jmp	.LBB14_92
.LBB14_91:                              #   in Loop: Header=BB14_13 Depth=2
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5388(%rsp)
.LBB14_92:                              #   in Loop: Header=BB14_13 Depth=2
	jmp	.LBB14_93
.LBB14_93:                              #   in Loop: Header=BB14_13 Depth=2
	movl	5388(%rsp), %eax
	movl	%eax, 380(%rsp)
	jmp	.LBB14_13
.LBB14_94:                              #   in Loop: Header=BB14_11 Depth=1
	jmp	.LBB14_95
.LBB14_95:                              #   in Loop: Header=BB14_11 Depth=1
	movl	412(%rsp), %eax
	movaps	416(%rsp), %xmm0
	movaps	.LCPI14_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 416(%rsp)
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
	movl	%eax, 5356(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB14_100
# BB#96:                                #   in Loop: Header=BB14_11 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	cltd
	movl	12(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB14_98
# BB#97:                                #   in Loop: Header=BB14_11 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 5356(%rsp)
	jmp	.LBB14_99
.LBB14_98:                              #   in Loop: Header=BB14_11 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 5356(%rsp)
.LBB14_99:                              #   in Loop: Header=BB14_11 Depth=1
	jmp	.LBB14_100
.LBB14_100:                             #   in Loop: Header=BB14_11 Depth=1
	movl	5356(%rsp), %eax
	movl	%eax, 412(%rsp)
	jmp	.LBB14_11
.LBB14_101:
	movl	636(%rsp), %eax
	leaq	-16(%rbp), %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small

	.globl	corner_draw
	.p2align	4, 0x90
	.type	corner_draw,@function
corner_draw:                            # @corner_draw
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movl	%edx, -100(%rbp)
	movl	%ecx, -132(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -160(%rbp)
	movl	$0, -164(%rbp)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	movslq	-164(%rbp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	cmpl	$7, 8(%rax)
	je	.LBB15_6
# BB#2:                                 #   in Loop: Header=BB15_1 Depth=1
	cmpl	$0, -132(%rbp)
	jne	.LBB15_4
# BB#3:                                 #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movl	4(%rcx), %esi
	subl	$1, %esi
	imull	-100(%rbp), %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$-1, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$-1, (%rax)
	movq	-144(%rbp), %rax
	movb	$-1, (%rax)
	movl	-100(%rbp), %esi
	subl	$2, %esi
	movq	-144(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$-1, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$0, (%rax)
	movq	-144(%rbp), %rax
	movb	$-1, (%rax)
	movl	-100(%rbp), %esi
	subl	$2, %esi
	movq	-144(%rbp), %rax
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$-1, (%rax)
	movq	-144(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -144(%rbp)
	movb	$-1, (%rax)
	movq	-144(%rbp), %rax
	movb	$-1, (%rax)
	movl	-164(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -164(%rbp)
	jmp	.LBB15_5
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movl	4(%rcx), %esi
	imull	-100(%rbp), %esi
	movslq	%esi, %rcx
	addq	%rcx, %rax
	movq	-72(%rbp), %rcx
	movslq	-164(%rbp), %rdx
	imulq	$24, %rdx, %rdx
	addq	%rdx, %rcx
	movslq	(%rcx), %rcx
	addq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	movb	$0, (%rax)
	movl	-164(%rbp), %esi
	addl	$1, %esi
	movl	%esi, -164(%rbp)
.LBB15_5:                               #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_1
.LBB15_6:
	movl	-52(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI16_0:
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
.LCPI16_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI16_2:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
.LCPI16_3:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI16_4:
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI16_5:
	.long	1073741824              # float 2
.LCPI16_6:
	.long	1077936128              # float 3
	.text
	.globl	susan_corners
	.p2align	4, 0x90
	.type	susan_corners,@function
susan_corners:                          # @susan_corners
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$15360, %rsp            # imm = 0x3C00
	movl	16(%rbp), %eax
	movq	%rdi, 848(%rsp)
	movq	%rsi, 840(%rsp)
	movq	%rdx, 832(%rsp)
	movl	%ecx, 812(%rsp)
	movq	%r8, 800(%rsp)
	movl	%r9d, 780(%rsp)
	movl	%eax, 748(%rsp)
	movq	840(%rsp), %rdi
	movl	780(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	movl	748(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 752(%rsp)
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, 15160(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 15120(%rsp)
	movups	%xmm0, 15104(%rsp)
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	movl	748(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 752(%rsp)
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	movq	%rdx, 15064(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 15024(%rsp)
	movups	%xmm0, 15008(%rsp)
	shlq	$2, %rdx
	movq	%rdx, %rdi
	movq	%rax, 400(%rsp)         # 8-byte Spill
	callq	malloc
	movq	%rax, 480(%rsp)
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	movl	748(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 752(%rsp)
	imull	%esi, %ecx
	movslq	%ecx, %rax
	movq	%rax, 14968(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14928(%rsp)
	movups	%xmm0, 14912(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 472(%rsp)
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [5,5,5,5]
	movaps	%xmm0, 528(%rsp)
	movl	$5, 524(%rsp)
.LBB16_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	movl	524(%rsp), %eax
	movl	748(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 752(%rsp)
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_76
# BB#2:                                 #   in Loop: Header=BB16_1 Depth=1
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [5,5,5,5]
	movaps	%xmm0, 496(%rsp)
	movl	$5, 492(%rsp)
.LBB16_3:                               #   Parent Loop BB16_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	492(%rsp), %eax
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_74
# BB#4:                                 #   in Loop: Header=BB16_3 Depth=2
	movaps	.LCPI16_2(%rip), %xmm0  # xmm0 = [100,100,100,100]
	movaps	%xmm0, 720(%rsp)
	movl	$100, 716(%rsp)
	movq	848(%rsp), %rax
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	addl	$-3, %ecx
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	492(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 416(%rsp)
	movq	832(%rsp), %rax
	movq	848(%rsp), %rsi
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%edx, %ecx
	movl	492(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 496(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 408(%rsp)
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14872(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14832(%rsp)
	movups	%xmm0, 14816(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 720(%rsp)
	movl	%ecx, 14796(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 14768(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14712(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14672(%rsp)
	movups	%xmm0, 14656(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 14636(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 14608(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14552(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14512(%rsp)
	movups	%xmm0, 14496(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 14476(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 14448(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-3, %ecx
	movq	416(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 416(%rsp)
	movq	408(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 416(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 14392(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14352(%rsp)
	movups	%xmm0, 14336(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 14316(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 14288(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14232(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14192(%rsp)
	movups	%xmm0, 14176(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 14156(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 14128(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 14072(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 14032(%rsp)
	movups	%xmm0, 14016(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13996(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13968(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13912(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13872(%rsp)
	movups	%xmm0, 13856(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13836(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13808(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13752(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13712(%rsp)
	movups	%xmm0, 13696(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13676(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13648(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-5, %ecx
	movq	416(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 416(%rsp)
	movq	408(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 416(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 13592(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13552(%rsp)
	movups	%xmm0, 13536(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13516(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13488(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13432(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13392(%rsp)
	movups	%xmm0, 13376(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13356(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13328(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13272(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13232(%rsp)
	movups	%xmm0, 13216(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13196(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13168(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 13112(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 13072(%rsp)
	movups	%xmm0, 13056(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 13036(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 13008(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12952(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12912(%rsp)
	movups	%xmm0, 12896(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12876(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 12848(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12792(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12752(%rsp)
	movups	%xmm0, 12736(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12716(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 12688(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12632(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12592(%rsp)
	movups	%xmm0, 12576(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12556(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 12528(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-6, %ecx
	movq	416(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 416(%rsp)
	movq	408(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 416(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 12472(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12432(%rsp)
	movups	%xmm0, 12416(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12396(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 12368(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12312(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12272(%rsp)
	movups	%xmm0, 12256(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12236(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 12208(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movq	408(%rsp), %rax
	movq	416(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 12152(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 12112(%rsp)
	movups	%xmm0, 12096(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movl	%ecx, 12076(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 12048(%rsp)
	movdqu	12048(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%ecx, %edx
	movl	%edx, 716(%rsp)
	movl	716(%rsp), %ecx
	cmpl	812(%rsp), %ecx
	jge	.LBB16_72
# BB#5:                                 #   in Loop: Header=BB16_3 Depth=2
	movq	416(%rsp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, 416(%rsp)
	movq	408(%rsp), %rcx
	movq	%rax, %rdx
	addq	$3, %rdx
	movq	%rdx, 416(%rsp)
	movzbl	2(%rax), %esi
	movl	%esi, %eax
	movq	%rax, 11992(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11952(%rsp)
	movups	%xmm0, 11936(%rsp)
	subq	%rax, %rcx
	movzbl	(%rcx), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 11916(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11888(%rsp)
	movdqu	11888(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_71
# BB#6:                                 #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 11832(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11792(%rsp)
	movups	%xmm0, 11776(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 11756(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11728(%rsp)
	movdqu	11728(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_70
# BB#7:                                 #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 11672(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11632(%rsp)
	movups	%xmm0, 11616(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	716(%rsp), %esi
	movaps	720(%rsp), %xmm0
	movl	%edx, 11596(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11568(%rsp)
	movdqu	11568(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%edx, %esi
	movl	%esi, 716(%rsp)
	movl	716(%rsp), %edx
	cmpl	812(%rsp), %edx
	jge	.LBB16_69
# BB#8:                                 #   in Loop: Header=BB16_3 Depth=2
	movl	780(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-6, %eax
	movq	416(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 416(%rsp)
	movq	408(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 11512(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11472(%rsp)
	movups	%xmm0, 11456(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	716(%rsp), %r8d
	movaps	720(%rsp), %xmm0
	movl	%eax, 11436(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11408(%rsp)
	movdqu	11408(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 716(%rsp)
	movl	716(%rsp), %eax
	cmpl	812(%rsp), %eax
	jge	.LBB16_68
# BB#9:                                 #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 11352(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11312(%rsp)
	movups	%xmm0, 11296(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 11276(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11248(%rsp)
	movdqu	11248(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_67
# BB#10:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 11192(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 11152(%rsp)
	movups	%xmm0, 11136(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 11116(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 11088(%rsp)
	movdqu	11088(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_66
# BB#11:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 11032(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10992(%rsp)
	movups	%xmm0, 10976(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 10956(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10928(%rsp)
	movdqu	10928(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_65
# BB#12:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 10872(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10832(%rsp)
	movups	%xmm0, 10816(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 10796(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10768(%rsp)
	movdqu	10768(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_64
# BB#13:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 10712(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10672(%rsp)
	movups	%xmm0, 10656(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 10636(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10608(%rsp)
	movdqu	10608(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_63
# BB#14:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 10552(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10512(%rsp)
	movups	%xmm0, 10496(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	716(%rsp), %esi
	movaps	720(%rsp), %xmm0
	movl	%edx, 10476(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10448(%rsp)
	movdqu	10448(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%edx, %esi
	movl	%esi, 716(%rsp)
	movl	716(%rsp), %edx
	cmpl	812(%rsp), %edx
	jge	.LBB16_62
# BB#15:                                #   in Loop: Header=BB16_3 Depth=2
	movl	780(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-5, %eax
	movq	416(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 416(%rsp)
	movq	408(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 10392(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10352(%rsp)
	movups	%xmm0, 10336(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	716(%rsp), %r8d
	movaps	720(%rsp), %xmm0
	movl	%eax, 10316(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10288(%rsp)
	movdqu	10288(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 716(%rsp)
	movl	716(%rsp), %eax
	cmpl	812(%rsp), %eax
	jge	.LBB16_61
# BB#16:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 10232(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10192(%rsp)
	movups	%xmm0, 10176(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 10156(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 10128(%rsp)
	movdqu	10128(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_60
# BB#17:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 10072(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 10032(%rsp)
	movups	%xmm0, 10016(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 9996(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9968(%rsp)
	movdqu	9968(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_59
# BB#18:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 9912(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9872(%rsp)
	movups	%xmm0, 9856(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 9836(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9808(%rsp)
	movdqu	9808(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_58
# BB#19:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 9752(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9712(%rsp)
	movups	%xmm0, 9696(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	716(%rsp), %esi
	movaps	720(%rsp), %xmm0
	movl	%edx, 9676(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9648(%rsp)
	movdqu	9648(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%edx, %esi
	movl	%esi, 716(%rsp)
	movl	716(%rsp), %edx
	cmpl	812(%rsp), %edx
	jge	.LBB16_57
# BB#20:                                #   in Loop: Header=BB16_3 Depth=2
	movl	780(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	addl	$-3, %eax
	movq	416(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 416(%rsp)
	movq	408(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 416(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 9592(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9552(%rsp)
	movups	%xmm0, 9536(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	716(%rsp), %r8d
	movaps	720(%rsp), %xmm0
	movl	%eax, 9516(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9488(%rsp)
	movdqu	9488(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 716(%rsp)
	movl	716(%rsp), %eax
	cmpl	812(%rsp), %eax
	jge	.LBB16_56
# BB#21:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 416(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 9432(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9392(%rsp)
	movups	%xmm0, 9376(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	716(%rsp), %edi
	movaps	720(%rsp), %xmm0
	movl	%esi, 9356(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9328(%rsp)
	movdqu	9328(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%esi, %edi
	movl	%edi, 716(%rsp)
	movl	716(%rsp), %esi
	cmpl	812(%rsp), %esi
	jge	.LBB16_55
# BB#22:                                #   in Loop: Header=BB16_3 Depth=2
	movq	408(%rsp), %rax
	movq	416(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 9272(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9232(%rsp)
	movups	%xmm0, 9216(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	716(%rsp), %esi
	movaps	720(%rsp), %xmm0
	movl	%edx, 9196(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 9168(%rsp)
	movdqu	9168(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 720(%rsp)
	addl	%edx, %esi
	movl	%esi, 716(%rsp)
	movl	716(%rsp), %edx
	cmpl	812(%rsp), %edx
	jge	.LBB16_54
# BB#23:                                #   in Loop: Header=BB16_3 Depth=2
	movl	$2, %eax
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 688(%rsp)
	movl	$0, 684(%rsp)
	movaps	%xmm0, 656(%rsp)
	movl	$0, 652(%rsp)
	movq	848(%rsp), %rcx
	movl	524(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movaps	.LCPI16_3(%rip), %xmm0  # xmm0 = [3,3,3,3]
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	imull	%esi, %edx
	movslq	%edx, %rdi
	addq	%rdi, %rcx
	movslq	492(%rsp), %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	leaq	-1(%rdi,%rcx), %r9
	movq	%r9, 416(%rsp)
	movq	408(%rsp), %r9
	movq	%r8, 416(%rsp)
	movzbl	-1(%rdi,%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 9112(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 9072(%rsp)
	movups	%xmm1, 9056(%rsp)
	subq	%rcx, %r9
	movb	(%r9), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 688(%rsp)
	movl	%edx, 9036(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 9008(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8988(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8960(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 656(%rsp)
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 8920(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8880(%rsp)
	movups	%xmm1, 8864(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8844(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8816(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 8760(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8720(%rsp)
	movups	%xmm1, 8704(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 8684(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 8656(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8636(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8608(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-3, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 8568(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8528(%rsp)
	movups	%xmm1, 8512(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8492(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8464(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8444(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8416(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 8376(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8336(%rsp)
	movups	%xmm1, 8320(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 8300(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 8272(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8252(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8224(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 8184(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 8144(%rsp)
	movups	%xmm1, 8128(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 8108(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8080(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 8024(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7984(%rsp)
	movups	%xmm1, 7968(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 7948(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 7920(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 7900(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7872(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 7832(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7792(%rsp)
	movups	%xmm1, 7776(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 7756(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7728(%rsp)
	paddd	%xmm1, %xmm1
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 7708(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7680(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-5, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 7640(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7600(%rsp)
	movups	%xmm1, 7584(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 7564(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7536(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 7516(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 7488(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 7448(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7408(%rsp)
	movups	%xmm1, 7392(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 7372(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7344(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 7324(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 7296(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 7256(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7216(%rsp)
	movups	%xmm1, 7200(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 7180(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 7152(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 7132(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 7104(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 7064(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 7024(%rsp)
	movups	%xmm1, 7008(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 6988(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 6960(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 6904(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6864(%rsp)
	movups	%xmm1, 6848(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 6828(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 6800(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 6780(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 6752(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 6712(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6672(%rsp)
	movups	%xmm1, 6656(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 6636(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6608(%rsp)
	paddd	%xmm1, %xmm1
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 6588(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 6560(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 6520(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6480(%rsp)
	movups	%xmm1, 6464(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 6444(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6416(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 6396(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 6368(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	subl	%edx, %esi
	movl	%esi, 652(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-6, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 6328(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6288(%rsp)
	movups	%xmm1, 6272(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 6252(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6224(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 6168(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 6128(%rsp)
	movups	%xmm1, 6112(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 6092(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6064(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 6008(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5968(%rsp)
	movups	%xmm1, 5952(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 5932(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 5904(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movq	416(%rsp), %rcx
	movq	%rcx, %rdi
	addq	$2, %rdi
	movq	%rdi, 416(%rsp)
	movq	408(%rsp), %rdi
	movq	%rcx, %r8
	addq	$3, %r8
	movq	%r8, 416(%rsp)
	movzbl	2(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 5848(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5808(%rsp)
	movups	%xmm1, 5792(%rsp)
	subq	%rcx, %rdi
	movb	(%rdi), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 5772(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 5744(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 5688(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5648(%rsp)
	movups	%xmm1, 5632(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 5612(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5584(%rsp)
	paddd	%xmm1, %xmm1
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 684(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 5528(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5488(%rsp)
	movups	%xmm1, 5472(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 5452(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5424(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-6, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 5368(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5328(%rsp)
	movups	%xmm1, 5312(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 5292(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5264(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 5244(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 5216(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 5176(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 5136(%rsp)
	movups	%xmm1, 5120(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 5100(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 5072(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 5052(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 5024(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 4984(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4944(%rsp)
	movups	%xmm1, 4928(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 4908(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4880(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 4860(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4832(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 4792(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4752(%rsp)
	movups	%xmm1, 4736(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 4716(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4688(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 4632(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4592(%rsp)
	movups	%xmm1, 4576(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 4556(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4528(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 4508(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4480(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 4440(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4400(%rsp)
	movups	%xmm1, 4384(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 4364(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4336(%rsp)
	paddd	%xmm1, %xmm1
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 4316(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4288(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 4248(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4208(%rsp)
	movups	%xmm1, 4192(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 4172(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 4144(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	movl	%edx, 4124(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 4096(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-5, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 4056(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 4016(%rsp)
	movups	%xmm1, 4000(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3980(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3952(%rsp)
	paddd	%xmm1, %xmm1
	addl	%edx, %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	psubd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3932(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3904(%rsp)
	paddd	%xmm1, %xmm1
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 3864(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3824(%rsp)
	movups	%xmm1, 3808(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 3788(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3760(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3740(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3712(%rsp)
	paddd	%xmm1, %xmm1
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 3672(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3632(%rsp)
	movups	%xmm1, 3616(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3596(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3568(%rsp)
	paddd	%xmm1, %xmm1
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 3512(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3472(%rsp)
	movups	%xmm1, 3456(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 3436(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3408(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3388(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3360(%rsp)
	paddd	%xmm1, %xmm1
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 3320(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3280(%rsp)
	movups	%xmm1, 3264(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3244(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3216(%rsp)
	paddd	%xmm1, %xmm1
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 688(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3196(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3168(%rsp)
	paddd	%xmm1, %xmm1
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	(%rdi,%rcx,2), %edx
	movl	%edx, 652(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 784(%rsp)
	addl	$-3, %edx
	movq	416(%rsp), %rcx
	movslq	%edx, %rdi
	movq	%rcx, %r8
	addq	%rdi, %r8
	movq	%r8, 416(%rsp)
	movq	408(%rsp), %r8
	leaq	1(%rcx,%rdi), %r9
	movq	%r9, 416(%rsp)
	movzbl	(%rcx,%rdi), %edx
	movl	%edx, %ecx
	movq	%rcx, 3128(%rsp)
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 3088(%rsp)
	movups	%xmm1, 3072(%rsp)
	subq	%rcx, %r8
	movb	(%r8), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 3052(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3024(%rsp)
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	subl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 3004(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2976(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movq	%rdi, %r8
	incq	%r8
	movq	%r8, 416(%rsp)
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 2936(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2896(%rsp)
	movups	%xmm1, 2880(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 2860(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2832(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm1      # xmm1 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movq	408(%rsp), %rcx
	movq	416(%rsp), %rdi
	movzbl	(%rdi), %edx
	movl	%edx, %edi
	movq	%rdi, 2776(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 2736(%rsp)
	movups	%xmm1, 2720(%rsp)
	subq	%rdi, %rcx
	movb	(%rcx), %r10b
	movb	%r10b, 431(%rsp)
	movzbl	431(%rsp), %edx
	movl	684(%rsp), %esi
	movaps	688(%rsp), %xmm1
	movl	%edx, 2700(%rsp)
	movd	%edx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2672(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 688(%rsp)
	addl	%edx, %esi
	movl	%esi, 684(%rsp)
	movzbl	431(%rsp), %edx
	movl	%edx, 2652(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2624(%rsp)
	pmuludq	%xmm0, %xmm1
	pshufd	$160, %xmm1, %xmm0      # xmm0 = xmm1[0,0,2,2]
	movl	%edx, %ecx
	leal	(%rcx,%rcx,2), %edx
	movl	652(%rsp), %esi
	movaps	656(%rsp), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 656(%rsp)
	addl	%edx, %esi
	movl	%esi, 652(%rsp)
	movl	684(%rsp), %edx
	movaps	688(%rsp), %xmm0
	movaps	%xmm0, %xmm1
	pmuludq	%xmm1, %xmm1
	pshufd	$232, %xmm1, %xmm1      # xmm1 = xmm1[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm0, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 592(%rsp)
	imull	%edx, %edx
	movl	%edx, 588(%rsp)
	movl	652(%rsp), %edx
	movl	%edx, %esi
	movaps	656(%rsp), %xmm0
	movaps	%xmm0, %xmm1
	movaps	%xmm0, %xmm2
	pmuludq	%xmm2, %xmm2
	pshufd	$232, %xmm2, %xmm2      # xmm2 = xmm2[0,2,2,3]
	pshufd	$245, %xmm0, %xmm0      # xmm0 = xmm0[1,1,3,3]
	pmuludq	%xmm0, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm0, %xmm2    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	movdqa	%xmm2, 560(%rsp)
	imull	%edx, %esi
	movl	%esi, 556(%rsp)
	movl	588(%rsp), %edx
	movl	556(%rsp), %esi
	movdqa	592(%rsp), %xmm0
	paddd	560(%rsp), %xmm0
	movdqa	%xmm0, 624(%rsp)
	addl	%esi, %edx
	movl	%edx, 620(%rsp)
	movl	620(%rsp), %edx
	movl	716(%rsp), %esi
	imull	716(%rsp), %esi
	movl	%eax, 396(%rsp)         # 4-byte Spill
	movl	%esi, %eax
	movl	%edx, 392(%rsp)         # 4-byte Spill
	cltd
	movl	396(%rsp), %esi         # 4-byte Reload
	idivl	%esi
	movl	392(%rsp), %r11d        # 4-byte Reload
	cmpl	%eax, %r11d
	movaps	%xmm1, 368(%rsp)        # 16-byte Spill
	jle	.LBB16_53
# BB#24:                                #   in Loop: Header=BB16_3 Depth=2
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB16_35
# BB#25:                                #   in Loop: Header=BB16_3 Depth=2
	xorps	%xmm0, %xmm0
	movl	652(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	684(%rsp), %edi
	movss	%xmm0, 364(%rsp)        # 4-byte Spill
	movl	%eax, 360(%rsp)         # 4-byte Spill
	movss	%xmm1, 356(%rsp)        # 4-byte Spill
	callq	abs
	cvtsi2ssl	%eax, %xmm0
	movss	356(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 2604(%rsp)
	movl	360(%rsp), %edi         # 4-byte Reload
	movd	%edi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cvtdq2ps	%xmm2, %xmm2
	movups	%xmm2, 2576(%rsp)
	movss	%xmm0, 2556(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 2528(%rsp)
	divps	%xmm3, %xmm2
	movaps	%xmm2, 448(%rsp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 444(%rsp)
	movl	684(%rsp), %edi
	callq	abs
	movl	684(%rsp), %edi
	movl	%eax, 956(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 928(%rsp)
	movaps	688(%rsp), %xmm0
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %ecx
	movl	%eax, 352(%rsp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movd	%eax, %xmm1
	pshufd	$229, %xmm0, %xmm2      # xmm2 = xmm0[1,1,2,3]
	movd	%xmm2, %eax
	movl	352(%rsp), %ecx         # 4-byte Reload
	movl	%eax, 348(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	348(%rsp), %esi         # 4-byte Reload
	idivl	%esi
	movd	%eax, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%xmm0, %eax
	movl	%eax, 344(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	344(%rsp), %r8d         # 4-byte Reload
	idivl	%r8d
	movd	%eax, %xmm1
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	movl	%eax, 340(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	340(%rsp), %r9d         # 4-byte Reload
	idivl	%r9d
	movd	%eax, %xmm0
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movaps	%xmm1, 624(%rsp)
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 620(%rsp)
	movq	408(%rsp), %r10
	movq	848(%rsp), %r11
	movl	524(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 528(%rsp)
	movss	364(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	444(%rsp), %xmm0
	movq	%r10, 328(%rsp)         # 8-byte Spill
	movq	%r11, 320(%rsp)         # 8-byte Spill
	movl	%eax, 316(%rsp)         # 4-byte Spill
	jbe	.LBB16_27
# BB#26:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2504(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2480(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
	jmp	.LBB16_28
.LBB16_27:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2456(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2432(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 312(%rsp)         # 4-byte Spill
.LBB16_28:                              #   in Loop: Header=BB16_3 Depth=2
	movl	312(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movss	.LCPI16_5(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	316(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	780(%rsp), %eax
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 784(%rsp)
	imull	%eax, %ecx
	movl	492(%rsp), %eax
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 496(%rsp)
	addl	%eax, %ecx
	movl	620(%rsp), %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	320(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 2392(%rsp)
	movd	%rdx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 2352(%rsp)
	movups	%xmm2, 2336(%rsp)
	movq	328(%rsp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movq	408(%rsp), %rdx
	movq	848(%rsp), %rdi
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movdqa	%xmm2, 528(%rsp)
	mulss	444(%rsp), %xmm1
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 308(%rsp)         # 4-byte Spill
	movq	%rdi, 296(%rsp)         # 8-byte Spill
	movl	%eax, 292(%rsp)         # 4-byte Spill
	movq	%rdx, 280(%rsp)         # 8-byte Spill
	jbe	.LBB16_30
# BB#29:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2312(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2288(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 276(%rsp)         # 4-byte Spill
	jmp	.LBB16_31
.LBB16_30:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2264(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2240(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 276(%rsp)         # 4-byte Spill
.LBB16_31:                              #   in Loop: Header=BB16_3 Depth=2
	movl	276(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movss	.LCPI16_6(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	308(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	780(%rsp), %eax
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 784(%rsp)
	imull	%eax, %ecx
	movl	492(%rsp), %eax
	movd	%eax, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 496(%rsp)
	addl	%eax, %ecx
	movl	620(%rsp), %eax
	movl	%ecx, %edx
	movl	%eax, %esi
	leal	(%rdx,%rsi,2), %eax
	movslq	%eax, %rdx
	movq	296(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 2200(%rsp)
	movd	%rdx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 2160(%rsp)
	movups	%xmm2, 2144(%rsp)
	movq	280(%rsp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movl	292(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 2124(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2096(%rsp)
	movl	%eax, 2076(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 2048(%rsp)
	paddd	%xmm3, %xmm2
	addl	%eax, %ecx
	movq	408(%rsp), %rdx
	movq	848(%rsp), %rdi
	movl	524(%rsp), %eax
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movdqa	%xmm3, 528(%rsp)
	mulss	444(%rsp), %xmm1
	ucomiss	%xmm1, %xmm0
	movl	%eax, 272(%rsp)         # 4-byte Spill
	movq	%rdi, 264(%rsp)         # 8-byte Spill
	movaps	%xmm2, 240(%rsp)        # 16-byte Spill
	movl	%ecx, 236(%rsp)         # 4-byte Spill
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	jbe	.LBB16_33
# BB#32:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI16_6(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 2024(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 2000(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
	jmp	.LBB16_34
.LBB16_33:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI16_6(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1976(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1952(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 220(%rsp)         # 4-byte Spill
.LBB16_34:                              #   in Loop: Header=BB16_3 Depth=2
	movl	220(%rsp), %eax         # 4-byte Reload
	movl	272(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	780(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%eax, %ecx
	movl	492(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 496(%rsp)
	addl	%eax, %ecx
	movl	620(%rsp), %eax
	movl	%eax, %edx
	leal	(%rdx,%rdx,2), %eax
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	264(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 1912(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1872(%rsp)
	movups	%xmm0, 1856(%rsp)
	movq	224(%rsp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movl	%eax, 1836(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 1808(%rsp)
	movdqu	1808(%rsp), %xmm0
	movaps	240(%rsp), %xmm1        # 16-byte Reload
	paddd	%xmm0, %xmm1
	movdqa	%xmm1, 624(%rsp)
	movl	236(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movl	%ecx, 620(%rsp)
	jmp	.LBB16_50
.LBB16_35:                              #   in Loop: Header=BB16_3 Depth=2
	xorps	%xmm0, %xmm0
	movl	684(%rsp), %eax
	cvtsi2ssl	%eax, %xmm1
	movl	652(%rsp), %edi
	movss	%xmm0, 216(%rsp)        # 4-byte Spill
	movl	%eax, 212(%rsp)         # 4-byte Spill
	movss	%xmm1, 208(%rsp)        # 4-byte Spill
	callq	abs
	cvtsi2ssl	%eax, %xmm0
	movss	208(%rsp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	%xmm1, 1788(%rsp)
	movl	212(%rsp), %edi         # 4-byte Reload
	movd	%edi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	cvtdq2ps	%xmm2, %xmm2
	movups	%xmm2, 1760(%rsp)
	movss	%xmm0, 1740(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	cvtdq2ps	%xmm3, %xmm3
	movups	%xmm3, 1712(%rsp)
	divps	%xmm3, %xmm2
	movaps	%xmm2, 448(%rsp)
	divss	%xmm0, %xmm1
	movss	%xmm1, 444(%rsp)
	movl	652(%rsp), %edi
	callq	abs
	movl	652(%rsp), %edi
	movl	%eax, 908(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 880(%rsp)
	movaps	656(%rsp), %xmm0
	pshufd	$231, %xmm0, %xmm1      # xmm1 = xmm0[3,1,2,3]
	movd	%xmm1, %ecx
	movl	%eax, 204(%rsp)         # 4-byte Spill
	cltd
	idivl	%ecx
	movd	%eax, %xmm1
	pshufd	$229, %xmm0, %xmm2      # xmm2 = xmm0[1,1,2,3]
	movd	%xmm2, %eax
	movl	204(%rsp), %ecx         # 4-byte Reload
	movl	%eax, 200(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	200(%rsp), %esi         # 4-byte Reload
	idivl	%esi
	movd	%eax, %xmm2
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movd	%xmm0, %eax
	movl	%eax, 196(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	196(%rsp), %r8d         # 4-byte Reload
	idivl	%r8d
	movd	%eax, %xmm1
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %eax
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	192(%rsp), %r9d         # 4-byte Reload
	idivl	%r9d
	movd	%eax, %xmm0
	punpckldq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	punpckldq	%xmm2, %xmm1    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movaps	%xmm1, 624(%rsp)
	movl	%ecx, %eax
	cltd
	idivl	%edi
	movl	%eax, 620(%rsp)
	movq	408(%rsp), %r10
	movq	848(%rsp), %r11
	movl	524(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movl	620(%rsp), %edx
	addl	%edx, %eax
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%edx, %eax
	movl	492(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 496(%rsp)
	addl	%edx, %eax
	movss	216(%rsp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	444(%rsp), %xmm0
	movq	%r10, 184(%rsp)         # 8-byte Spill
	movq	%r11, 176(%rsp)         # 8-byte Spill
	movl	%eax, 172(%rsp)         # 4-byte Spill
	jbe	.LBB16_37
# BB#36:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1688(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1664(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	jmp	.LBB16_38
.LBB16_37:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1640(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1616(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
.LBB16_38:                              #   in Loop: Header=BB16_3 Depth=2
	movl	168(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movss	.LCPI16_5(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	172(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	176(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 1560(%rsp)
	movd	%rdx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 1520(%rsp)
	movups	%xmm2, 1504(%rsp)
	movq	184(%rsp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movq	408(%rsp), %rdx
	movq	848(%rsp), %rdi
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 528(%rsp)
	movl	620(%rsp), %r8d
	movl	%ecx, %r9d
	movl	%r8d, %r10d
	leal	(%r9,%r10,2), %ecx
	movl	780(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 784(%rsp)
	imull	%r8d, %ecx
	movl	492(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movdqa	%xmm2, 496(%rsp)
	addl	%r8d, %ecx
	mulss	444(%rsp), %xmm1
	ucomiss	%xmm1, %xmm0
	movl	%ecx, 164(%rsp)         # 4-byte Spill
	movq	%rdi, 152(%rsp)         # 8-byte Spill
	movl	%eax, 148(%rsp)         # 4-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	jbe	.LBB16_40
# BB#39:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1480(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1456(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	jmp	.LBB16_41
.LBB16_40:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1432(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1408(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
.LBB16_41:                              #   in Loop: Header=BB16_3 Depth=2
	movl	132(%rsp), %eax         # 4-byte Reload
	xorps	%xmm0, %xmm0
	movss	.LCPI16_6(%rip), %xmm1  # xmm1 = mem[0],zero,zero,zero
	movl	164(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	152(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 1368(%rsp)
	movd	%rdx, %xmm2
	pshufd	$68, %xmm2, %xmm2       # xmm2 = xmm2[0,1,0,1]
	movups	%xmm2, 1328(%rsp)
	movups	%xmm2, 1312(%rsp)
	movq	136(%rsp), %rdi         # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movl	148(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, 1292(%rsp)
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1264(%rsp)
	movl	%eax, 1244(%rsp)
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1216(%rsp)
	paddd	%xmm3, %xmm2
	addl	%eax, %ecx
	movq	408(%rsp), %rdx
	movq	848(%rsp), %rdi
	movl	524(%rsp), %eax
	movd	%eax, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 528(%rsp)
	movl	620(%rsp), %r8d
	movl	%r8d, %r9d
	leal	(%r9,%r9,2), %r8d
	addl	%r8d, %eax
	movl	780(%rsp), %r8d
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 784(%rsp)
	imull	%r8d, %eax
	movl	492(%rsp), %r8d
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movdqa	%xmm3, 496(%rsp)
	addl	%r8d, %eax
	mulss	444(%rsp), %xmm1
	ucomiss	%xmm1, %xmm0
	movl	%eax, 128(%rsp)         # 4-byte Spill
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	movaps	%xmm2, 96(%rsp)         # 16-byte Spill
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	jbe	.LBB16_43
# BB#42:                                #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI16_6(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1192(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1168(%rsp)
	subsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	jmp	.LBB16_44
.LBB16_43:                              #   in Loop: Header=BB16_3 Depth=2
	movsd	.LCPI16_4(%rip), %xmm0  # xmm0 = mem[0],zero
	movss	444(%rsp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI16_6(%rip), %xmm2  # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, 1144(%rsp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, 1120(%rsp)
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
.LBB16_44:                              #   in Loop: Header=BB16_3 Depth=2
	movl	76(%rsp), %eax          # 4-byte Reload
	movl	128(%rsp), %ecx         # 4-byte Reload
	addl	%eax, %ecx
	movslq	%ecx, %rdx
	movq	120(%rsp), %rsi         # 8-byte Reload
	movzbl	(%rsi,%rdx), %eax
	movl	%eax, %edx
	movq	%rdx, 1080(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1040(%rsp)
	movups	%xmm0, 1024(%rsp)
	movq	80(%rsp), %rdi          # 8-byte Reload
	subq	%rdx, %rdi
	movzbl	(%rdi), %eax
	movl	%eax, 1004(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 976(%rsp)
	movaps	96(%rsp), %xmm1         # 16-byte Reload
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 624(%rsp)
	movd	%xmm1, %ecx
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%ecx, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	movl	92(%rsp), %r8d          # 4-byte Reload
	addl	%eax, %r8d
	imull	$3, %r8d, %eax
	movl	%r8d, 15324(%rsp)
	cmpl	%eax, %r10d
	movl	%r8d, 72(%rsp)          # 4-byte Spill
	movl	%r10d, 68(%rsp)         # 4-byte Spill
	movl	%ecx, 64(%rsp)          # 4-byte Spill
	je	.LBB16_49
# BB#45:                                #   in Loop: Header=BB16_3 Depth=2
	movl	68(%rsp), %eax          # 4-byte Reload
	cltd
	movl	64(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB16_47
# BB#46:                                #   in Loop: Header=BB16_3 Depth=2
	movl	72(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15324(%rsp)
	jmp	.LBB16_48
.LBB16_47:                              #   in Loop: Header=BB16_3 Depth=2
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15324(%rsp)
.LBB16_48:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_49
.LBB16_49:                              #   in Loop: Header=BB16_3 Depth=2
	movl	15324(%rsp), %eax
	movl	%eax, 620(%rsp)
.LBB16_50:                              #   in Loop: Header=BB16_3 Depth=2
	cmpl	$290, 620(%rsp)         # imm = 0x122
	jle	.LBB16_52
# BB#51:                                #   in Loop: Header=BB16_3 Depth=2
	movl	812(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 816(%rsp)
	movl	716(%rsp), %ecx
	subl	%ecx, %eax
	movq	840(%rsp), %rdx
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%esi, %ecx
	movl	492(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 496(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
	movl	684(%rsp), %eax
	imull	$51, %eax, %eax
	movl	716(%rsp), %ecx
	cltd
	idivl	%ecx
	movq	480(%rsp), %rdi
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%edx, %ecx
	movl	492(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 496(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %r8
	movl	%eax, (%rdi,%r8,4)
	movl	652(%rsp), %eax
	imull	$51, %eax, %eax
	movl	716(%rsp), %ecx
	cltd
	idivl	%ecx
	movq	472(%rsp), %rdi
	movl	524(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%edx, %ecx
	movl	492(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 496(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %r8
	movl	%eax, (%rdi,%r8,4)
.LBB16_52:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_53
.LBB16_53:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_54
.LBB16_54:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_55
.LBB16_55:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_56
.LBB16_56:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_57
.LBB16_57:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_58
.LBB16_58:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_59
.LBB16_59:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_60
.LBB16_60:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_61
.LBB16_61:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_62
.LBB16_62:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_63
.LBB16_63:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_64
.LBB16_64:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_65
.LBB16_65:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_66
.LBB16_66:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_67
.LBB16_67:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_68
.LBB16_68:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_69
.LBB16_69:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_70
.LBB16_70:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_71
.LBB16_71:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_72
.LBB16_72:                              #   in Loop: Header=BB16_3 Depth=2
	jmp	.LBB16_73
.LBB16_73:                              #   in Loop: Header=BB16_3 Depth=2
	movl	492(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 496(%rsp)
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 496(%rsp)
	addl	$1, %eax
	movl	%eax, 492(%rsp)
	jmp	.LBB16_3
.LBB16_74:                              #   in Loop: Header=BB16_1 Depth=1
	jmp	.LBB16_75
.LBB16_75:                              #   in Loop: Header=BB16_1 Depth=1
	movl	524(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 528(%rsp)
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 528(%rsp)
	addl	$1, %eax
	movl	%eax, 524(%rsp)
	jmp	.LBB16_1
.LBB16_76:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 720(%rsp)
	movl	$0, 716(%rsp)
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [5,5,5,5]
	movaps	%xmm0, 528(%rsp)
	movl	$5, 524(%rsp)
.LBB16_77:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_79 Depth 2
	movl	524(%rsp), %eax
	movl	748(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 752(%rsp)
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_152
# BB#78:                                #   in Loop: Header=BB16_77 Depth=1
	movaps	.LCPI16_0(%rip), %xmm0  # xmm0 = [5,5,5,5]
	movaps	%xmm0, 496(%rsp)
	movl	$5, 492(%rsp)
.LBB16_79:                              #   Parent Loop BB16_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	492(%rsp), %eax
	movl	780(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	subl	$5, %ecx
	cmpl	%ecx, %eax
	jge	.LBB16_145
# BB#80:                                #   in Loop: Header=BB16_79 Depth=2
	movq	840(%rsp), %rax
	movl	524(%rsp), %ecx
	movl	780(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%edx, %ecx
	addl	492(%rsp), %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, 684(%rsp)
	cmpl	$0, 684(%rsp)
	jle	.LBB16_138
# BB#81:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#82:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#83:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#84:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#85:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#86:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#87:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#88:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#89:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#90:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#91:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#92:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#93:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#94:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$-2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#95:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#96:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#97:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#98:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#99:                                #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#100:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#101:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	decl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#102:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#103:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#104:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB16_137
# BB#105:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#106:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#107:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#108:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#109:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#110:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#111:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#112:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#113:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#114:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	incl	%edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#115:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#116:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#117:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#118:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#119:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#120:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#121:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$2, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#122:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#123:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#124:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#125:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#126:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#127:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#128:                               #   in Loop: Header=BB16_79 Depth=2
	movl	684(%rsp), %eax
	movq	840(%rsp), %rcx
	movl	524(%rsp), %edx
	addl	$3, %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 784(%rsp)
	imull	%esi, %edx
	addl	492(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB16_137
# BB#129:                               #   in Loop: Header=BB16_79 Depth=2
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 8(%rax,%rcx,8)
	movl	492(%rsp), %edx
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, (%rax,%rcx,8)
	movl	524(%rsp), %edx
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, 4(%rax,%rcx,8)
	movq	480(%rsp), %rax
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%esi, %edx
	movl	492(%rsp), %esi
	addl	%esi, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, 12(%rax,%rcx,8)
	movq	472(%rsp), %rax
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%esi, %edx
	movl	492(%rsp), %esi
	addl	%esi, %edx
	movslq	%edx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, 16(%rax,%rcx,8)
	movq	848(%rsp), %rax
	movl	524(%rsp), %edx
	movl	780(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 784(%rsp)
	imull	%esi, %edx
	movl	492(%rsp), %esi
	addl	%esi, %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edx
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, 20(%rax,%rcx,8)
	movl	716(%rsp), %edx
	movaps	720(%rsp), %xmm0
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 720(%rsp)
	movd	%xmm0, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%esi, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	addl	$1, %edx
	imull	$3, %edx, %edi
	movl	%edx, 15292(%rsp)
	cmpl	%edi, %r9d
	movl	%esi, 60(%rsp)          # 4-byte Spill
	movl	%r9d, 56(%rsp)          # 4-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	je	.LBB16_134
# BB#130:                               #   in Loop: Header=BB16_79 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	cltd
	movl	60(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB16_132
# BB#131:                               #   in Loop: Header=BB16_79 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15292(%rsp)
	jmp	.LBB16_133
.LBB16_132:                             #   in Loop: Header=BB16_79 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15292(%rsp)
.LBB16_133:                             #   in Loop: Header=BB16_79 Depth=2
	jmp	.LBB16_134
.LBB16_134:                             #   in Loop: Header=BB16_79 Depth=2
	movl	15292(%rsp), %eax
	movl	%eax, 716(%rsp)
	cmpl	$15000, 716(%rsp)       # imm = 0x3A98
	jne	.LBB16_136
# BB#135:
	movabsq	$.L.str.29, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, 48(%rsp)          # 4-byte Spill
	callq	exit
.LBB16_136:                             #   in Loop: Header=BB16_79 Depth=2
	jmp	.LBB16_137
.LBB16_137:                             #   in Loop: Header=BB16_79 Depth=2
	jmp	.LBB16_138
.LBB16_138:                             #   in Loop: Header=BB16_79 Depth=2
	jmp	.LBB16_139
.LBB16_139:                             #   in Loop: Header=BB16_79 Depth=2
	movl	492(%rsp), %eax
	movaps	496(%rsp), %xmm0
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 496(%rsp)
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
	movl	%eax, 15260(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB16_144
# BB#140:                               #   in Loop: Header=BB16_79 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB16_142
# BB#141:                               #   in Loop: Header=BB16_79 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15260(%rsp)
	jmp	.LBB16_143
.LBB16_142:                             #   in Loop: Header=BB16_79 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15260(%rsp)
.LBB16_143:                             #   in Loop: Header=BB16_79 Depth=2
	jmp	.LBB16_144
.LBB16_144:                             #   in Loop: Header=BB16_79 Depth=2
	movl	15260(%rsp), %eax
	movl	%eax, 492(%rsp)
	jmp	.LBB16_79
.LBB16_145:                             #   in Loop: Header=BB16_77 Depth=1
	jmp	.LBB16_146
.LBB16_146:                             #   in Loop: Header=BB16_77 Depth=1
	movl	524(%rsp), %eax
	movaps	528(%rsp), %xmm0
	movaps	.LCPI16_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 528(%rsp)
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
	movl	%eax, 15228(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB16_151
# BB#147:                               #   in Loop: Header=BB16_77 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	32(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB16_149
# BB#148:                               #   in Loop: Header=BB16_77 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15228(%rsp)
	jmp	.LBB16_150
.LBB16_149:                             #   in Loop: Header=BB16_77 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 15228(%rsp)
.LBB16_150:                             #   in Loop: Header=BB16_77 Depth=1
	jmp	.LBB16_151
.LBB16_151:                             #   in Loop: Header=BB16_77 Depth=1
	movl	15228(%rsp), %eax
	movl	%eax, 524(%rsp)
	jmp	.LBB16_77
.LBB16_152:
	movq	800(%rsp), %rax
	movslq	716(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$7, 8(%rax)
	movq	480(%rsp), %rax
	movq	%rax, %rdi
	callq	free
	movq	472(%rsp), %rax
	movq	%rax, %rdi
	callq	free
	movl	860(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_0:
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
.LCPI17_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI17_2:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.text
	.globl	susan_corners_quick
	.p2align	4, 0x90
	.type	susan_corners_quick,@function
susan_corners_quick:                    # @susan_corners_quick
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$9472, %rsp             # imm = 0x2500
	movl	16(%rbp), %eax
	movq	%rdi, 352(%rsp)
	movq	%rsi, 344(%rsp)
	movq	%rdx, 336(%rsp)
	movl	%ecx, 316(%rsp)
	movq	%r8, 304(%rsp)
	movl	%r9d, 284(%rsp)
	movl	%eax, 252(%rsp)
	movq	344(%rsp), %rdi
	movl	284(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	movl	252(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 256(%rsp)
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, 9304(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9264(%rsp)
	movups	%xmm0, 9248(%rsp)
	shlq	$2, %rdx
	xorl	%esi, %esi
	callq	memset
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [7,7,7,7]
	movaps	%xmm0, 128(%rsp)
	movl	$7, 124(%rsp)
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB17_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
	movl	124(%rsp), %eax
	movl	252(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_46
# BB#2:                                 #   in Loop: Header=BB17_1 Depth=1
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [7,7,7,7]
	movaps	%xmm0, 96(%rsp)
	movl	$7, 92(%rsp)
.LBB17_3:                               #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	92(%rsp), %eax
	movl	284(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_44
# BB#4:                                 #   in Loop: Header=BB17_3 Depth=2
	movaps	.LCPI17_2(%rip), %xmm0  # xmm0 = [100,100,100,100]
	movaps	%xmm0, 224(%rsp)
	movl	$100, 220(%rsp)
	movq	352(%rsp), %rax
	movl	124(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 128(%rsp)
	addl	$-3, %ecx
	movl	284(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	imull	%edx, %ecx
	movslq	%ecx, %rsi
	addq	%rsi, %rax
	movslq	92(%rsp), %rsi
	leaq	-1(%rsi,%rax), %rax
	movq	%rax, 80(%rsp)
	movq	336(%rsp), %rax
	movq	352(%rsp), %rsi
	movl	124(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 128(%rsp)
	movl	284(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	imull	%edx, %ecx
	movl	92(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	addl	%edx, %ecx
	movslq	%ecx, %rdi
	movzbl	(%rsi,%rdi), %ecx
	movl	%ecx, %esi
	addq	%rsi, %rax
	movq	%rax, 72(%rsp)
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9208(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9168(%rsp)
	movups	%xmm0, 9152(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 224(%rsp)
	movl	%ecx, 9132(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 9104(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 9048(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 9008(%rsp)
	movups	%xmm0, 8992(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8972(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8944(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8888(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8848(%rsp)
	movups	%xmm0, 8832(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8812(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8784(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	284(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-3, %ecx
	movq	80(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 80(%rsp)
	movq	72(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 80(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 8728(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8688(%rsp)
	movups	%xmm0, 8672(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8652(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8624(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8568(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8528(%rsp)
	movups	%xmm0, 8512(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8492(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8464(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8408(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8368(%rsp)
	movups	%xmm0, 8352(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8332(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8304(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8248(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8208(%rsp)
	movups	%xmm0, 8192(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8172(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 8144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 8088(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 8048(%rsp)
	movups	%xmm0, 8032(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 8012(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7984(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	284(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-5, %ecx
	movq	80(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 80(%rsp)
	movq	72(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 80(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 7928(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7888(%rsp)
	movups	%xmm0, 7872(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7852(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7824(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7768(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7728(%rsp)
	movups	%xmm0, 7712(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7692(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7664(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7608(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7568(%rsp)
	movups	%xmm0, 7552(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7532(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7504(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7448(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7408(%rsp)
	movups	%xmm0, 7392(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7372(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7344(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7288(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7248(%rsp)
	movups	%xmm0, 7232(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7212(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7184(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 7128(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 7088(%rsp)
	movups	%xmm0, 7072(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 7052(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 7024(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6968(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6928(%rsp)
	movups	%xmm0, 6912(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 6892(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6864(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	284(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-6, %ecx
	movq	80(%rsp), %rax
	movslq	%ecx, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, 80(%rsp)
	movq	72(%rsp), %rdi
	leaq	1(%rax,%rsi), %r8
	movq	%r8, 80(%rsp)
	movzbl	(%rax,%rsi), %ecx
	movl	%ecx, %eax
	movq	%rax, 6808(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6768(%rsp)
	movups	%xmm0, 6752(%rsp)
	subq	%rax, %rdi
	movzbl	(%rdi), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 6732(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6704(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	%rsi, %rdi
	incq	%rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6648(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6608(%rsp)
	movups	%xmm0, 6592(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 6572(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 6544(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movzbl	(%rsi), %ecx
	movl	%ecx, %esi
	movq	%rsi, 6488(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6448(%rsp)
	movups	%xmm0, 6432(%rsp)
	subq	%rsi, %rax
	movzbl	(%rax), %ecx
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm0
	movl	%ecx, 6412(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 6384(%rsp)
	movdqu	6384(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%ecx, %edx
	movl	%edx, 220(%rsp)
	movl	220(%rsp), %ecx
	cmpl	316(%rsp), %ecx
	jge	.LBB17_42
# BB#5:                                 #   in Loop: Header=BB17_3 Depth=2
	movq	80(%rsp), %rax
	movq	%rax, %rcx
	addq	$2, %rcx
	movq	%rcx, 80(%rsp)
	movq	72(%rsp), %rcx
	movq	%rax, %rdx
	addq	$3, %rdx
	movq	%rdx, 80(%rsp)
	movzbl	2(%rax), %esi
	movl	%esi, %eax
	movq	%rax, 6328(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6288(%rsp)
	movups	%xmm0, 6272(%rsp)
	subq	%rax, %rcx
	movzbl	(%rcx), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 6252(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 6224(%rsp)
	movdqu	6224(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_41
# BB#6:                                 #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 6168(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 6128(%rsp)
	movups	%xmm0, 6112(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 6092(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 6064(%rsp)
	movdqu	6064(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_40
# BB#7:                                 #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 6008(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5968(%rsp)
	movups	%xmm0, 5952(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	220(%rsp), %esi
	movaps	224(%rsp), %xmm0
	movl	%edx, 5932(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5904(%rsp)
	movdqu	5904(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%edx, %esi
	movl	%esi, 220(%rsp)
	movl	220(%rsp), %edx
	cmpl	316(%rsp), %edx
	jge	.LBB17_39
# BB#8:                                 #   in Loop: Header=BB17_3 Depth=2
	movl	284(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-6, %eax
	movq	80(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 80(%rsp)
	movq	72(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 5848(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5808(%rsp)
	movups	%xmm0, 5792(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	220(%rsp), %r8d
	movaps	224(%rsp), %xmm0
	movl	%eax, 5772(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5744(%rsp)
	movdqu	5744(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 220(%rsp)
	movl	220(%rsp), %eax
	cmpl	316(%rsp), %eax
	jge	.LBB17_38
# BB#9:                                 #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 5688(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5648(%rsp)
	movups	%xmm0, 5632(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 5612(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5584(%rsp)
	movdqu	5584(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_37
# BB#10:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 5528(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5488(%rsp)
	movups	%xmm0, 5472(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 5452(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5424(%rsp)
	movdqu	5424(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_36
# BB#11:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 5368(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5328(%rsp)
	movups	%xmm0, 5312(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 5292(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5264(%rsp)
	movdqu	5264(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_35
# BB#12:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 5208(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5168(%rsp)
	movups	%xmm0, 5152(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 5132(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 5104(%rsp)
	movdqu	5104(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_34
# BB#13:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 5048(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 5008(%rsp)
	movups	%xmm0, 4992(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 4972(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4944(%rsp)
	movdqu	4944(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_33
# BB#14:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 4888(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4848(%rsp)
	movups	%xmm0, 4832(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	220(%rsp), %esi
	movaps	224(%rsp), %xmm0
	movl	%edx, 4812(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4784(%rsp)
	movdqu	4784(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%edx, %esi
	movl	%esi, 220(%rsp)
	movl	220(%rsp), %edx
	cmpl	316(%rsp), %edx
	jge	.LBB17_32
# BB#15:                                #   in Loop: Header=BB17_3 Depth=2
	movl	284(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-5, %eax
	movq	80(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 80(%rsp)
	movq	72(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 4728(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4688(%rsp)
	movups	%xmm0, 4672(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	220(%rsp), %r8d
	movaps	224(%rsp), %xmm0
	movl	%eax, 4652(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4624(%rsp)
	movdqu	4624(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 220(%rsp)
	movl	220(%rsp), %eax
	cmpl	316(%rsp), %eax
	jge	.LBB17_31
# BB#16:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 4568(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4528(%rsp)
	movups	%xmm0, 4512(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 4492(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4464(%rsp)
	movdqu	4464(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_30
# BB#17:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 4408(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4368(%rsp)
	movups	%xmm0, 4352(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 4332(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4304(%rsp)
	movdqu	4304(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_29
# BB#18:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 4248(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4208(%rsp)
	movups	%xmm0, 4192(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 4172(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 4144(%rsp)
	movdqu	4144(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_28
# BB#19:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 4088(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 4048(%rsp)
	movups	%xmm0, 4032(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	220(%rsp), %esi
	movaps	224(%rsp), %xmm0
	movl	%edx, 4012(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 3984(%rsp)
	movdqu	3984(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%edx, %esi
	movl	%esi, 220(%rsp)
	movl	220(%rsp), %edx
	cmpl	316(%rsp), %edx
	jge	.LBB17_27
# BB#20:                                #   in Loop: Header=BB17_3 Depth=2
	movl	284(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	addl	$-3, %eax
	movq	80(%rsp), %rcx
	movslq	%eax, %rdx
	movq	%rcx, %rsi
	addq	%rdx, %rsi
	movq	%rsi, 80(%rsp)
	movq	72(%rsp), %rsi
	leaq	1(%rcx,%rdx), %rdi
	movq	%rdi, 80(%rsp)
	movzbl	(%rcx,%rdx), %eax
	movl	%eax, %ecx
	movq	%rcx, 3928(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3888(%rsp)
	movups	%xmm0, 3872(%rsp)
	subq	%rcx, %rsi
	movzbl	(%rsi), %eax
	movl	220(%rsp), %r8d
	movaps	224(%rsp), %xmm0
	movl	%eax, 3852(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 3824(%rsp)
	movdqu	3824(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%eax, %r8d
	movl	%r8d, 220(%rsp)
	movl	220(%rsp), %eax
	cmpl	316(%rsp), %eax
	jge	.LBB17_26
# BB#21:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movq	%rcx, %rdx
	incq	%rdx
	movq	%rdx, 80(%rsp)
	movzbl	(%rcx), %esi
	movl	%esi, %ecx
	movq	%rcx, 3768(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3728(%rsp)
	movups	%xmm0, 3712(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %esi
	movl	220(%rsp), %edi
	movaps	224(%rsp), %xmm0
	movl	%esi, 3692(%rsp)
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 3664(%rsp)
	movdqu	3664(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%esi, %edi
	movl	%edi, 220(%rsp)
	movl	220(%rsp), %esi
	cmpl	316(%rsp), %esi
	jge	.LBB17_25
# BB#22:                                #   in Loop: Header=BB17_3 Depth=2
	movq	72(%rsp), %rax
	movq	80(%rsp), %rcx
	movzbl	(%rcx), %edx
	movl	%edx, %ecx
	movq	%rcx, 3608(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 3568(%rsp)
	movups	%xmm0, 3552(%rsp)
	subq	%rcx, %rax
	movzbl	(%rax), %edx
	movl	220(%rsp), %esi
	movaps	224(%rsp), %xmm0
	movl	%edx, 3532(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movdqu	%xmm1, 3504(%rsp)
	movdqu	3504(%rsp), %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	%edx, %esi
	movl	%esi, 220(%rsp)
	movl	220(%rsp), %edx
	cmpl	316(%rsp), %edx
	jge	.LBB17_24
# BB#23:                                #   in Loop: Header=BB17_3 Depth=2
	movl	316(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 320(%rsp)
	movl	220(%rsp), %ecx
	subl	%ecx, %eax
	movq	344(%rsp), %rdx
	movl	124(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 128(%rsp)
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	imull	%esi, %ecx
	movl	92(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 96(%rsp)
	addl	%esi, %ecx
	movslq	%ecx, %rdi
	movl	%eax, (%rdx,%rdi,4)
.LBB17_24:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_25
.LBB17_25:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_26
.LBB17_26:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_27
.LBB17_27:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_28
.LBB17_28:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_29
.LBB17_29:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_30
.LBB17_30:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_31
.LBB17_31:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_32
.LBB17_32:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_33
.LBB17_33:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_34
.LBB17_34:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_35
.LBB17_35:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_36
.LBB17_36:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_37
.LBB17_37:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_38
.LBB17_38:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_39
.LBB17_39:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_40
.LBB17_40:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_41
.LBB17_41:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_42
.LBB17_42:                              #   in Loop: Header=BB17_3 Depth=2
	jmp	.LBB17_43
.LBB17_43:                              #   in Loop: Header=BB17_3 Depth=2
	movl	92(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI17_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 96(%rsp)
	addl	$1, %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB17_3
.LBB17_44:                              #   in Loop: Header=BB17_1 Depth=1
	jmp	.LBB17_45
.LBB17_45:                              #   in Loop: Header=BB17_1 Depth=1
	movl	124(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 128(%rsp)
	movaps	.LCPI17_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 128(%rsp)
	addl	$1, %eax
	movl	%eax, 124(%rsp)
	jmp	.LBB17_1
.LBB17_46:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [7,7,7,7]
	movaps	%xmm0, 128(%rsp)
	movl	$7, 124(%rsp)
.LBB17_47:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_49 Depth 2
	movl	124(%rsp), %eax
	movl	252(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 256(%rsp)
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_122
# BB#48:                                #   in Loop: Header=BB17_47 Depth=1
	movaps	.LCPI17_0(%rip), %xmm0  # xmm0 = [7,7,7,7]
	movaps	%xmm0, 96(%rsp)
	movl	$7, 92(%rsp)
.LBB17_49:                              #   Parent Loop BB17_47 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	92(%rsp), %eax
	movl	284(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	subl	$7, %ecx
	cmpl	%ecx, %eax
	jge	.LBB17_115
# BB#50:                                #   in Loop: Header=BB17_49 Depth=2
	movq	344(%rsp), %rax
	movl	124(%rsp), %ecx
	movl	284(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%edx, %ecx
	addl	92(%rsp), %ecx
	movslq	%ecx, %rsi
	movl	(%rax,%rsi,4), %ecx
	movl	%ecx, 188(%rsp)
	cmpl	$0, 188(%rsp)
	jle	.LBB17_108
# BB#51:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#52:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#53:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#54:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#55:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#56:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#57:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#58:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#59:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#60:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#61:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#62:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#63:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#64:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#65:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#66:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#67:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#68:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#69:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#70:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#71:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	decl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#72:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#73:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#74:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jle	.LBB17_107
# BB#75:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#76:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#77:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#78:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#79:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#80:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#81:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#82:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#83:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#84:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	incl	%edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#85:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#86:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#87:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#88:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#89:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#90:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#91:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#92:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#93:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#94:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	subl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#95:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#96:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$1, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#97:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$2, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#98:                                #   in Loop: Header=BB17_49 Depth=2
	movl	188(%rsp), %eax
	movq	344(%rsp), %rcx
	movl	124(%rsp), %edx
	addl	$3, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 288(%rsp)
	imull	%esi, %edx
	addl	92(%rsp), %edx
	addl	$3, %edx
	movslq	%edx, %rdi
	cmpl	(%rcx,%rdi,4), %eax
	jl	.LBB17_107
# BB#99:                                #   in Loop: Header=BB17_49 Depth=2
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	$0, 8(%rax,%rcx,8)
	movl	92(%rsp), %edx
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, (%rax,%rcx,8)
	movl	124(%rsp), %edx
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, 4(%rax,%rcx,8)
	movq	352(%rsp), %rax
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	imull	%esi, %edx
	movl	92(%rsp), %esi
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	-2(%rcx,%rdi), %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movaps	.LCPI17_1(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%edx, 3484(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 3456(%rsp)
	movl	%esi, 3436(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3408(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 3388(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3360(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 3340(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3312(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 3292(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3264(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 3244(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3216(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 3196(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3168(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 3148(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3120(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 3100(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3072(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 3052(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 3024(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 3004(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2976(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2956(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2928(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2908(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2880(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 2860(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2832(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2812(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2784(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2764(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2736(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2716(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2688(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2668(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2640(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 2620(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2592(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2572(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2544(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2524(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2496(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2476(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2448(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 2428(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2400(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 2380(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2352(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2332(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2304(%rsp)
	paddd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	addl	%esi, %edx
	movl	%edx, 188(%rsp)
	movslq	188(%rsp), %rax
	imulq	$1374389535, %rax, %rax # imm = 0x51EB851F
	movq	%rax, %rcx
	shrq	$63, %rcx
	movl	%ecx, %edx
	shrq	$32, %rax
	movl	%eax, %esi
	sarl	$3, %esi
	addl	%edx, %esi
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%esi, 20(%rax,%rcx,8)
	movq	352(%rsp), %rax
	movl	124(%rsp), %edx
	addl	$-2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%esi, %edx
	movl	92(%rsp), %esi
	addl	%esi, %edx
	movslq	%edx, %rcx
	movzbl	2(%rax,%rcx), %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%edx, 2284(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 2256(%rsp)
	movl	%esi, 2236(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2208(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2188(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2160(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2140(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2112(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 2092(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2064(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-2(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%esi, 2044(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 2016(%rsp)
	movl	%r8d, 1996(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1968(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-2(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1948(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1920(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	incl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-2(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1900(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1872(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-2(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1852(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1824(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 192(%rsp)
	subl	%esi, %edx
	movl	%edx, 188(%rsp)
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movaps	192(%rsp), %xmm1
	movl	%esi, 1804(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1776(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 1756(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1728(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 1708(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1680(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 1660(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1632(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 1612(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1584(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%esi, 1564(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1536(%rsp)
	movl	%r8d, 1516(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1488(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1468(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1440(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	incl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1420(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1392(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 1372(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1344(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	psubd	%xmm2, %xmm1
	subl	%esi, %edx
	movl	188(%rsp), %esi
	movaps	192(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 192(%rsp)
	addl	%edx, %esi
	movl	%esi, 188(%rsp)
	movq	352(%rsp), %rax
	movl	124(%rsp), %edx
	addl	$2, %edx
	movl	284(%rsp), %esi
	movd	%esi, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%esi, %edx
	movl	92(%rsp), %esi
	movl	%edx, %ecx
	movl	%esi, %edi
	leal	-2(%rcx,%rdi), %edx
	movslq	%edx, %rcx
	movzbl	(%rax,%rcx), %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%edx, 1324(%rsp)
	movd	%edx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 1296(%rsp)
	movl	%esi, 1276(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1248(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 1228(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1200(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 1180(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1152(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 1132(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1104(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	addl	$-2, %esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$-2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%esi, 1084(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 1056(%rsp)
	movl	%r8d, 1036(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 1008(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$-2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 988(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 960(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$-2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	1(%rax,%rcx), %r8d
	movl	%r8d, 940(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 912(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	addl	$-2, %r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	2(%rax,%rcx), %r8d
	movl	%r8d, 892(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 864(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	psubd	%xmm2, %xmm1
	movaps	%xmm1, 160(%rsp)
	subl	%esi, %edx
	movl	%edx, 156(%rsp)
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movaps	160(%rsp), %xmm1
	movl	%esi, 844(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 816(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-1(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 796(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 768(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, 748(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 720(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	1(%rax,%rcx), %esi
	movl	%esi, 700(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 672(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	incl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	addl	%r8d, %esi
	movslq	%esi, %rcx
	movzbl	2(%rax,%rcx), %esi
	movl	%esi, 652(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 624(%rsp)
	paddd	%xmm2, %xmm1
	addl	%esi, %edx
	movq	352(%rsp), %rax
	movl	124(%rsp), %esi
	decl	%esi
	movl	284(%rsp), %r8d
	movd	%r8d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r8d, %esi
	movl	92(%rsp), %r8d
	movl	%esi, %ecx
	movl	%r8d, %edi
	leal	-2(%rcx,%rdi), %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	movl	%r8d, %ecx
	movl	%r9d, %edi
	leal	-1(%rcx,%rdi), %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%esi, 604(%rsp)
	movd	%esi, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movups	%xmm2, 576(%rsp)
	movl	%r8d, 556(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 528(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	(%rax,%rcx), %r8d
	movl	%r8d, 508(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 480(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	1(%rax,%rcx), %r8d
	movl	%r8d, 460(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 432(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	movq	352(%rsp), %rax
	movl	124(%rsp), %r8d
	decl	%r8d
	movl	284(%rsp), %r9d
	movd	%r9d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, 288(%rsp)
	imull	%r9d, %r8d
	movl	92(%rsp), %r9d
	addl	%r9d, %r8d
	movslq	%r8d, %rcx
	movzbl	2(%rax,%rcx), %r8d
	movl	%r8d, 412(%rsp)
	movd	%r8d, %xmm3
	pshufd	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movups	%xmm3, 384(%rsp)
	paddd	%xmm3, %xmm2
	addl	%r8d, %esi
	psubd	%xmm2, %xmm1
	subl	%esi, %edx
	movl	156(%rsp), %esi
	movaps	160(%rsp), %xmm2
	paddd	%xmm1, %xmm2
	movaps	%xmm2, 160(%rsp)
	addl	%edx, %esi
	movl	%esi, 156(%rsp)
	movslq	188(%rsp), %rax
	movl	%eax, %edx
	imulq	$-2004318071, %rax, %rax # imm = 0x88888889
	shrq	$32, %rax
	movl	%eax, %esi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	sarl	$3, %esi
	addl	%edx, %esi
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%esi, 12(%rax,%rcx,8)
	movslq	156(%rsp), %rax
	movl	%eax, %edx
	imulq	$-2004318071, %rax, %rax # imm = 0x88888889
	shrq	$32, %rax
	movl	%eax, %esi
	addl	%edx, %esi
	movl	%esi, %edx
	shrl	$31, %edx
	sarl	$3, %esi
	addl	%edx, %esi
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%esi, 16(%rax,%rcx,8)
	movl	220(%rsp), %edx
	movaps	224(%rsp), %xmm1
	paddd	%xmm0, %xmm1
	movaps	%xmm1, 224(%rsp)
	movd	%xmm1, %esi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%esi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	addl	$1, %edx
	imull	$3, %edx, %r8d
	movl	%edx, 9436(%rsp)
	cmpl	%r8d, %r10d
	movl	%r10d, 60(%rsp)         # 4-byte Spill
	movl	%esi, 56(%rsp)          # 4-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	je	.LBB17_104
# BB#100:                               #   in Loop: Header=BB17_49 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	cltd
	movl	56(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB17_102
# BB#101:                               #   in Loop: Header=BB17_49 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9436(%rsp)
	jmp	.LBB17_103
.LBB17_102:                             #   in Loop: Header=BB17_49 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9436(%rsp)
.LBB17_103:                             #   in Loop: Header=BB17_49 Depth=2
	jmp	.LBB17_104
.LBB17_104:                             #   in Loop: Header=BB17_49 Depth=2
	movl	9436(%rsp), %eax
	movl	%eax, 220(%rsp)
	cmpl	$15000, 220(%rsp)       # imm = 0x3A98
	jne	.LBB17_106
# BB#105:
	movabsq	$.L.str.29, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, 48(%rsp)          # 4-byte Spill
	callq	exit
.LBB17_106:                             #   in Loop: Header=BB17_49 Depth=2
	jmp	.LBB17_107
.LBB17_107:                             #   in Loop: Header=BB17_49 Depth=2
	jmp	.LBB17_108
.LBB17_108:                             #   in Loop: Header=BB17_49 Depth=2
	jmp	.LBB17_109
.LBB17_109:                             #   in Loop: Header=BB17_49 Depth=2
	movl	92(%rsp), %eax
	movaps	96(%rsp), %xmm0
	movaps	.LCPI17_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
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
	movl	%eax, 9404(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	movl	%edi, 40(%rsp)          # 4-byte Spill
	movl	%eax, 36(%rsp)          # 4-byte Spill
	je	.LBB17_114
# BB#110:                               #   in Loop: Header=BB17_49 Depth=2
	movl	40(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB17_112
# BB#111:                               #   in Loop: Header=BB17_49 Depth=2
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9404(%rsp)
	jmp	.LBB17_113
.LBB17_112:                             #   in Loop: Header=BB17_49 Depth=2
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9404(%rsp)
.LBB17_113:                             #   in Loop: Header=BB17_49 Depth=2
	jmp	.LBB17_114
.LBB17_114:                             #   in Loop: Header=BB17_49 Depth=2
	movl	9404(%rsp), %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB17_49
.LBB17_115:                             #   in Loop: Header=BB17_47 Depth=1
	jmp	.LBB17_116
.LBB17_116:                             #   in Loop: Header=BB17_47 Depth=1
	movl	124(%rsp), %eax
	movaps	128(%rsp), %xmm0
	movaps	.LCPI17_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 128(%rsp)
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
	movl	%eax, 9372(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 32(%rsp)          # 4-byte Spill
	movl	%edi, 28(%rsp)          # 4-byte Spill
	movl	%eax, 24(%rsp)          # 4-byte Spill
	je	.LBB17_121
# BB#117:                               #   in Loop: Header=BB17_47 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	32(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB17_119
# BB#118:                               #   in Loop: Header=BB17_47 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9372(%rsp)
	jmp	.LBB17_120
.LBB17_119:                             #   in Loop: Header=BB17_47 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 9372(%rsp)
.LBB17_120:                             #   in Loop: Header=BB17_47 Depth=1
	jmp	.LBB17_121
.LBB17_121:                             #   in Loop: Header=BB17_47 Depth=1
	movl	9372(%rsp), %eax
	movl	%eax, 124(%rsp)
	jmp	.LBB17_47
.LBB17_122:
	movq	304(%rsp), %rax
	movslq	220(%rsp), %rcx
	imulq	$24, %rcx, %rcx
	addq	%rcx, %rax
	movl	$7, 8(%rax)
	movl	364(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI18_0:
	.long	1082130432              # float 4
	.long	1082130432              # float 4
	.long	1082130432              # float 4
	.long	1082130432              # float 4
.LCPI18_1:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI18_2:
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	20                      # 0x14
	.long	20                      # 0x14
.LCPI18_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI18_4:
	.long	1850                    # 0x73a
	.long	1850                    # 0x73a
	.long	1850                    # 0x73a
	.long	1850                    # 0x73a
.LCPI18_5:
	.long	2650                    # 0xa5a
	.long	2650                    # 0xa5a
	.long	2650                    # 0xa5a
	.long	2650                    # 0xa5a
.LCPI18_6:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$361024, %rsp           # imm = 0x58240
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 360752(%rsp)
	movl	$0, 360748(%rsp)
	movl	%edi, 360716(%rsp)
	movq	%rsi, 360704(%rsp)
	movaps	.LCPI18_0(%rip), %xmm1  # xmm1 = [4.000000e+00,4.000000e+00,4.000000e+00,4.000000e+00]
	movaps	%xmm1, 360560(%rsp)
	movl	$1082130432, 360556(%rsp) # imm = 0x40800000
	movaps	.LCPI18_1(%rip), %xmm1  # xmm1 = [3,3,3,3]
	movaps	%xmm1, 360528(%rsp)
	movl	$3, 360524(%rsp)
	movaps	.LCPI18_2(%rip), %xmm1  # xmm1 = [20,20,20,20]
	movaps	%xmm1, 360496(%rsp)
	movl	$20, 360492(%rsp)
	movaps	%xmm0, 360464(%rsp)
	movl	$0, 360460(%rsp)
	movaps	.LCPI18_3(%rip), %xmm1  # xmm1 = [1,1,1,1]
	movaps	%xmm1, 360432(%rsp)
	movl	$1, 360428(%rsp)
	movaps	%xmm0, 360400(%rsp)
	movl	$0, 360396(%rsp)
	movaps	%xmm0, 360368(%rsp)
	movl	$0, 360364(%rsp)
	movaps	%xmm0, 360336(%rsp)
	movl	$0, 360332(%rsp)
	movaps	.LCPI18_4(%rip), %xmm1  # xmm1 = [1850,1850,1850,1850]
	movaps	%xmm1, 360304(%rsp)
	movl	$1850, 360300(%rsp)     # imm = 0x73A
	movaps	.LCPI18_5(%rip), %xmm1  # xmm1 = [2650,2650,2650,2650]
	movaps	%xmm1, 360272(%rsp)
	movl	$2650, 360268(%rsp)     # imm = 0xA5A
	movaps	%xmm0, 360240(%rsp)
	movl	$0, 360236(%rsp)
	cmpl	$3, 360716(%rsp)
	jge	.LBB18_2
# BB#1:
	callq	usage
	movl	%eax, 124(%rsp)         # 4-byte Spill
.LBB18_2:
	leaq	360592(%rsp), %rsi
	leaq	360172(%rsp), %rdx
	leaq	360140(%rsp), %rcx
	movq	360704(%rsp), %rax
	movq	8(%rax), %rdi
	callq	get_image
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movl	360524(%rsp), %eax
	cmpl	360716(%rsp), %eax
	jge	.LBB18_30
# BB#4:                                 #   in Loop: Header=BB18_3 Depth=1
	movq	360704(%rsp), %rax
	movslq	360524(%rsp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, 360600(%rsp)
	movq	360600(%rsp), %rax
	movsbl	(%rax), %edx
	cmpl	$45, %edx
	jne	.LBB18_23
# BB#5:                                 #   in Loop: Header=BB18_3 Depth=1
	movq	360600(%rsp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, 360600(%rsp)
	movsbl	1(%rax), %edx
	addl	$-51, %edx
	movl	%edx, %eax
	subl	$65, %edx
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movl	%edx, 108(%rsp)         # 4-byte Spill
	ja	.LBB18_22
# BB#57:                                #   in Loop: Header=BB18_3 Depth=1
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_6:                               #   in Loop: Header=BB18_3 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 360240(%rsp)
	movl	$0, 360236(%rsp)
	jmp	.LBB18_22
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360240(%rsp)
	movl	$1, 360236(%rsp)
	jmp	.LBB18_22
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_6(%rip), %xmm0  # xmm0 = [2,2,2,2]
	movaps	%xmm0, 360240(%rsp)
	movl	$2, 360236(%rsp)
	jmp	.LBB18_22
.LBB18_9:                               #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360464(%rsp)
	movl	$1, 360460(%rsp)
	jmp	.LBB18_22
.LBB18_10:                              #   in Loop: Header=BB18_3 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 360432(%rsp)
	movl	$0, 360428(%rsp)
	jmp	.LBB18_22
.LBB18_11:                              #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360368(%rsp)
	movl	$1, 360364(%rsp)
	jmp	.LBB18_22
.LBB18_12:                              #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360400(%rsp)
	movl	$1, 360396(%rsp)
	jmp	.LBB18_22
.LBB18_13:                              #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360336(%rsp)
	movl	$1, 360332(%rsp)
	jmp	.LBB18_22
.LBB18_14:                              #   in Loop: Header=BB18_3 Depth=1
	movl	360524(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360528(%rsp)
	movaps	.LCPI18_3(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 360528(%rsp)
	addl	$1, %eax
	movl	%eax, 360524(%rsp)
	cmpl	360716(%rsp), %eax
	jl	.LBB18_16
# BB#15:
	movabsq	$.L.str.30, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, 104(%rsp)         # 4-byte Spill
	callq	exit
.LBB18_16:                              #   in Loop: Header=BB18_3 Depth=1
	movq	360704(%rsp), %rax
	movslq	360524(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atof
	xorps	%xmm1, %xmm1
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, 360556(%rsp)
	ucomiss	360556(%rsp), %xmm1
	jbe	.LBB18_18
# BB#17:                                #   in Loop: Header=BB18_3 Depth=1
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360400(%rsp)
	movl	$1, 360396(%rsp)
.LBB18_18:                              #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_22
.LBB18_19:                              #   in Loop: Header=BB18_3 Depth=1
	movl	360524(%rsp), %eax
	movaps	360528(%rsp), %xmm0
	movaps	.LCPI18_3(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 360528(%rsp)
	addl	$1, %eax
	movl	%eax, 360524(%rsp)
	cmpl	360716(%rsp), %eax
	jl	.LBB18_21
# BB#20:
	movabsq	$.L.str.31, %rdi
	movb	$0, %al
	callq	printf
	xorl	%edi, %edi
	movl	%eax, 100(%rsp)         # 4-byte Spill
	callq	exit
.LBB18_21:                              #   in Loop: Header=BB18_3 Depth=1
	movq	360704(%rsp), %rax
	movslq	360524(%rsp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	atoi
	movl	%eax, 360492(%rsp)
.LBB18_22:                              #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_24
.LBB18_23:                              #   in Loop: Header=BB18_3 Depth=1
	callq	usage
	movl	%eax, 96(%rsp)          # 4-byte Spill
.LBB18_24:                              #   in Loop: Header=BB18_3 Depth=1
	movl	360524(%rsp), %eax
	movaps	360528(%rsp), %xmm0
	movaps	.LCPI18_3(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 360528(%rsp)
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
	movl	%eax, 360988(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	%edi, 88(%rsp)          # 4-byte Spill
	movl	%eax, 84(%rsp)          # 4-byte Spill
	je	.LBB18_29
# BB#25:                                #   in Loop: Header=BB18_3 Depth=1
	movl	88(%rsp), %eax          # 4-byte Reload
	cltd
	movl	92(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB18_27
# BB#26:                                #   in Loop: Header=BB18_3 Depth=1
	movl	84(%rsp), %eax          # 4-byte Reload
	movl	%eax, 360988(%rsp)
	jmp	.LBB18_28
.LBB18_27:                              #   in Loop: Header=BB18_3 Depth=1
	movl	92(%rsp), %eax          # 4-byte Reload
	movl	%eax, 360988(%rsp)
.LBB18_28:                              #   in Loop: Header=BB18_3 Depth=1
	jmp	.LBB18_29
.LBB18_29:                              #   in Loop: Header=BB18_3 Depth=1
	movl	360988(%rsp), %eax
	movl	%eax, 360524(%rsp)
	jmp	.LBB18_3
.LBB18_30:
	cmpl	$1, 360460(%rsp)
	jne	.LBB18_33
# BB#31:
	cmpl	$0, 360236(%rsp)
	jne	.LBB18_33
# BB#32:
	movaps	.LCPI18_3(%rip), %xmm0  # xmm0 = [1,1,1,1]
	movaps	%xmm0, 360240(%rsp)
	movl	$1, 360236(%rsp)
.LBB18_33:
	movl	360236(%rsp), %eax
	testl	%eax, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	je	.LBB18_34
	jmp	.LBB18_55
.LBB18_55:
	movl	80(%rsp), %eax          # 4-byte Reload
	subl	$1, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	je	.LBB18_35
	jmp	.LBB18_56
.LBB18_56:
	movl	80(%rsp), %eax          # 4-byte Reload
	subl	$2, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	je	.LBB18_47
	jmp	.LBB18_54
.LBB18_34:
	leaq	360584(%rsp), %rdi
	movl	$2, %edx
	movl	360492(%rsp), %esi
	callq	setup_brightness_lut
	movl	360396(%rsp), %edi
	movq	360592(%rsp), %rsi
	cvtss2sd	360556(%rsp), %xmm0
	movl	360172(%rsp), %edx
	movl	360140(%rsp), %ecx
	movq	360584(%rsp), %r8
	callq	susan_smoothing
	jmp	.LBB18_54
.LBB18_35:
	movl	360172(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360144(%rsp)
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, 360920(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 360880(%rsp)
	movups	%xmm0, 360864(%rsp)
	shlq	$2, %rdx
	movq	%rdx, %rdi
	callq	malloc
	leaq	360584(%rsp), %rdi
	movl	$6, %edx
	movq	%rax, 360544(%rsp)
	movl	360492(%rsp), %esi
	callq	setup_brightness_lut
	cmpl	$0, 360460(%rsp)
	je	.LBB18_40
# BB#36:
	cmpl	$0, 360396(%rsp)
	je	.LBB18_38
# BB#37:
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360584(%rsp), %rdx
	movl	360268(%rsp), %ecx
	movl	360172(%rsp), %r8d
	movl	360140(%rsp), %r9d
	callq	susan_principle_small
	movl	%eax, 68(%rsp)          # 4-byte Spill
	jmp	.LBB18_39
.LBB18_38:
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360584(%rsp), %rdx
	movl	360268(%rsp), %ecx
	movl	360172(%rsp), %r8d
	movl	360140(%rsp), %r9d
	callq	susan_principle
	movl	%eax, 64(%rsp)          # 4-byte Spill
.LBB18_39:
	movq	360544(%rsp), %rdi
	movq	360592(%rsp), %rsi
	movl	360172(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 360144(%rsp)
	imull	%ecx, %eax
	movl	%eax, %edx
	callq	int_to_uchar
	movl	%eax, 60(%rsp)          # 4-byte Spill
	jmp	.LBB18_46
.LBB18_40:
	movl	$100, %esi
	movl	360172(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360144(%rsp)
	imull	%ecx, %eax
	movslq	%eax, %rdi
	movl	%esi, 56(%rsp)          # 4-byte Spill
	callq	malloc
	movq	%rax, 360576(%rsp)
	movl	360172(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 360144(%rsp)
	imull	%esi, %ecx
	movslq	%ecx, %rdx
	movq	%rax, %rdi
	movl	56(%rsp), %esi          # 4-byte Reload
	callq	memset
	cmpl	$0, 360396(%rsp)
	je	.LBB18_42
# BB#41:
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360576(%rsp), %rdx
	movq	360584(%rsp), %rcx
	movl	360268(%rsp), %r8d
	movl	360172(%rsp), %r9d
	movl	360140(%rsp), %eax
	movl	%eax, (%rsp)
	callq	susan_edges_small
	movl	%eax, 52(%rsp)          # 4-byte Spill
	jmp	.LBB18_43
.LBB18_42:
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360576(%rsp), %rdx
	movq	360584(%rsp), %rcx
	movl	360268(%rsp), %r8d
	movl	360172(%rsp), %r9d
	movl	360140(%rsp), %eax
	movl	%eax, (%rsp)
	callq	susan_edges
	movl	%eax, 48(%rsp)          # 4-byte Spill
.LBB18_43:
	cmpl	$0, 360428(%rsp)
	je	.LBB18_45
# BB#44:
	movq	360544(%rsp), %rdi
	movq	360576(%rsp), %rsi
	movl	360172(%rsp), %edx
	movl	360140(%rsp), %ecx
	callq	susan_thin
	movl	%eax, 44(%rsp)          # 4-byte Spill
.LBB18_45:
	movq	360592(%rsp), %rdi
	movq	360576(%rsp), %rsi
	movl	360172(%rsp), %edx
	movl	360140(%rsp), %ecx
	movl	360364(%rsp), %r8d
	callq	edge_draw
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB18_46:
	jmp	.LBB18_54
.LBB18_47:
	movl	360172(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360144(%rsp)
	imull	%ecx, %eax
	movslq	%eax, %rdx
	movq	%rdx, 360824(%rsp)
	movd	%rdx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 360784(%rsp)
	movups	%xmm0, 360768(%rsp)
	shlq	$2, %rdx
	movq	%rdx, %rdi
	callq	malloc
	leaq	360584(%rsp), %rdi
	movl	$6, %edx
	movq	%rax, 360544(%rsp)
	movl	360492(%rsp), %esi
	callq	setup_brightness_lut
	cmpl	$0, 360460(%rsp)
	je	.LBB18_49
# BB#48:
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360584(%rsp), %rdx
	movl	360300(%rsp), %ecx
	movl	360172(%rsp), %r8d
	movl	360140(%rsp), %r9d
	callq	susan_principle
	movq	360544(%rsp), %rdi
	movq	360592(%rsp), %rsi
	movl	360172(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 360176(%rsp)
	movl	360140(%rsp), %r8d
	movd	%r8d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 360144(%rsp)
	imull	%r8d, %ecx
	movl	%ecx, %edx
	movl	%eax, 36(%rsp)          # 4-byte Spill
	callq	int_to_uchar
	movl	%eax, 32(%rsp)          # 4-byte Spill
	jmp	.LBB18_53
.LBB18_49:
	cmpl	$0, 360332(%rsp)
	je	.LBB18_51
# BB#50:
	leaq	128(%rsp), %r8
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360584(%rsp), %rdx
	movl	360300(%rsp), %ecx
	movl	360172(%rsp), %r9d
	movl	360140(%rsp), %eax
	movl	%eax, (%rsp)
	callq	susan_corners_quick
	movl	%eax, 28(%rsp)          # 4-byte Spill
	jmp	.LBB18_52
.LBB18_51:
	leaq	128(%rsp), %r8
	movq	360592(%rsp), %rdi
	movq	360544(%rsp), %rsi
	movq	360584(%rsp), %rdx
	movl	360300(%rsp), %ecx
	movl	360172(%rsp), %r9d
	movl	360140(%rsp), %eax
	movl	%eax, (%rsp)
	callq	susan_corners
	movl	%eax, 24(%rsp)          # 4-byte Spill
.LBB18_52:
	leaq	128(%rsp), %rsi
	movq	360592(%rsp), %rdi
	movl	360172(%rsp), %edx
	movl	360364(%rsp), %ecx
	callq	corner_draw
	movl	%eax, 20(%rsp)          # 4-byte Spill
.LBB18_53:
	jmp	.LBB18_54
.LBB18_54:
	movq	360704(%rsp), %rax
	movq	16(%rax), %rdi
	movq	360592(%rsp), %rsi
	movl	360172(%rsp), %edx
	movl	360140(%rsp), %ecx
	callq	put_image
	movl	360748(%rsp), %ecx
	movl	%eax, 16(%rsp)          # 4-byte Spill
	movl	%ecx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI18_0:
	.quad	.LBB18_12
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_11
	.quad	.LBB18_8
	.quad	.LBB18_14
	.quad	.LBB18_7
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_22
	.quad	.LBB18_10
	.quad	.LBB18_22
	.quad	.LBB18_9
	.quad	.LBB18_13
	.quad	.LBB18_22
	.quad	.LBB18_6
	.quad	.LBB18_19

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n\n"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"-s : Smoothing mode (default)\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"-e : Edges mode\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-c : Corners mode\n\n"
	.size	.L.str.3, 20

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"See source code for more information about setting the thresholds\n"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)\n"
	.size	.L.str.5, 60

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\n"
	.size	.L.str.6, 107

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode\n"
	.size	.L.str.7, 49

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode\n"
	.size	.L.str.8, 79

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\n"
	.size	.L.str.9, 111

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\n"
	.size	.L.str.10, 108

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\n"
	.size	.L.str.11, 91

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\n"
	.size	.L.str.12, 77

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str.13, 26

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"is"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"r"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Image %s is wrong size.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Can't output image%s.\n"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"P5\n"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%d %d\n"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"255\n"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Can't write image %s.\n"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str.25, 54

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\"\n"
	.size	.L.str.26, 61

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"as a float: see top \"defines\" section.\n"
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str.28, 65

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Too many corners.\n"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"No argument following -d\n"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"No argument following -t\n"
	.size	.L.str.31, 26


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
