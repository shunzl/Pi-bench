	.text
	.file	"all_t.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI0_1:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.globl	set_key
	.p2align	4, 0x90
	.type	set_key,@function
set_key:                                # @set_key
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$672, %rsp              # imm = 0x2A0
	movq	%rdi, 304(%rsp)
	movq	%rsi, 248(%rsp)
	movl	%edx, 220(%rsp)
	movq	%rcx, 208(%rsp)
	movq	248(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	andq	$7, %rcx
	cmpq	$0, %rcx
	jne	.LBB0_5
# BB#1:
	cmpq	$16, 248(%rsp)
	jb	.LBB0_5
# BB#2:
	cmpq	$32, 248(%rsp)
	ja	.LBB0_5
# BB#3:
	movl	220(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 224(%rsp)
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB0_9
# BB#4:
	movl	220(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, 224(%rsp)
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB0_9
.LBB0_5:
	cmpq	$0, 248(%rsp)
	je	.LBB0_7
# BB#6:
	xorl	%eax, %eax
	movq	208(%rsp), %rcx
	movzbl	1040(%rcx), %edx
	movl	%edx, 508(%rsp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 480(%rsp)
	andl	$-4, %edx
	movb	%dl, %sil
	movb	%sil, 1040(%rcx)
	movl	%eax, 84(%rsp)          # 4-byte Spill
	jmp	.LBB0_8
.LBB0_7:
	movq	208(%rsp), %rax
	movq	(%rax), %rax
	shlq	$2, %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movl	%edx, 84(%rsp)          # 4-byte Spill
.LBB0_8:
	movl	84(%rsp), %eax          # 4-byte Reload
	movw	%ax, %cx
	movw	%cx, 318(%rsp)
	jmp	.LBB0_37
.LBB0_9:
	movq	208(%rsp), %rax
	movzbl	1040(%rax), %ecx
	movl	%ecx, 460(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 432(%rsp)
	andl	$252, %ecx
	movzbl	220(%rsp), %edx
	movl	%edx, 412(%rsp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 384(%rsp)
	andl	$3, %edx
	orl	%edx, %ecx
	movb	%cl, %sil
	movq	208(%rsp), %rax
	movb	%sil, 1040(%rax)
	movq	248(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	shrq	$2, %rax
	movq	208(%rsp), %rdi
	movq	%rax, (%rdi)
	movq	208(%rsp), %rax
	cmpq	$4, (%rax)
	jbe	.LBB0_11
# BB#10:
	movq	208(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	jmp	.LBB0_12
.LBB0_11:
	movl	$4, %eax
	movl	%eax, %ecx
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	jmp	.LBB0_12
.LBB0_12:
	movq	72(%rsp), %rax          # 8-byte Reload
	addq	$6, %rax
	movq	208(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	304(%rsp), %rax
	movq	(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 16(%rcx)
	movq	304(%rsp), %rax
	movq	4(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 24(%rcx)
	movq	304(%rsp), %rax
	movq	8(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movq	304(%rsp), %rax
	movq	12(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 40(%rcx)
	movq	208(%rsp), %rax
	movq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, 200(%rsp)
	movq	208(%rsp), %rcx
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	shlq	$5, %rcx
	leaq	48(%rax,%rcx), %rax
	shlq	$3, %rdx
	subq	%rdx, %rax
	movq	%rax, 192(%rsp)
	movq	$0, 152(%rsp)
	movq	208(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	subq	$4, %rcx
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	je	.LBB0_13
	jmp	.LBB0_38
.LBB0_38:
	movq	64(%rsp), %rax          # 8-byte Reload
	subq	$6, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	je	.LBB0_17
	jmp	.LBB0_39
.LBB0_39:
	movq	64(%rsp), %rax          # 8-byte Reload
	subq	$8, %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	je	.LBB0_21
	jmp	.LBB0_25
.LBB0_13:
	jmp	.LBB0_14
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	movq	200(%rsp), %rcx
	movq	24(%rcx), %rcx
	shrq	$8, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	200(%rsp), %rdi
	movq	24(%rdi), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	24(%rdi), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	24(%rdi), %rdi
	shrq	$0, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	152(%rsp), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, 152(%rsp)
	xorq	rcon_tab(,%rcx,8), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 32(%rcx)
	movq	200(%rsp), %rax
	movq	8(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	32(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 40(%rcx)
	movq	200(%rsp), %rax
	movq	16(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	40(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 48(%rcx)
	movq	200(%rsp), %rax
	movq	24(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	48(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 56(%rcx)
	movq	200(%rsp), %rax
	addq	$32, %rax
	movq	%rax, 200(%rsp)
# BB#15:                                #   in Loop: Header=BB0_14 Depth=1
	movq	200(%rsp), %rax
	cmpq	192(%rsp), %rax
	jb	.LBB0_14
# BB#16:
	jmp	.LBB0_25
.LBB0_17:
	movq	304(%rsp), %rax
	movq	16(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 48(%rcx)
	movq	304(%rsp), %rax
	movq	20(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 56(%rcx)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	movq	200(%rsp), %rcx
	movq	40(%rcx), %rcx
	shrq	$8, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	200(%rsp), %rdi
	movq	40(%rdi), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	40(%rdi), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	40(%rdi), %rdi
	shrq	$0, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	152(%rsp), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, 152(%rsp)
	xorq	rcon_tab(,%rcx,8), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 48(%rcx)
	movq	200(%rsp), %rax
	movq	8(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	48(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 56(%rcx)
	movq	200(%rsp), %rax
	movq	16(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	56(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 64(%rcx)
	movq	200(%rsp), %rax
	movq	24(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	64(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 72(%rcx)
	movq	200(%rsp), %rax
	movq	32(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	72(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 80(%rcx)
	movq	200(%rsp), %rax
	movq	40(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	80(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 88(%rcx)
	movq	200(%rsp), %rax
	addq	$48, %rax
	movq	%rax, 200(%rsp)
# BB#19:                                #   in Loop: Header=BB0_18 Depth=1
	movq	200(%rsp), %rax
	cmpq	192(%rsp), %rax
	jb	.LBB0_18
# BB#20:
	jmp	.LBB0_25
.LBB0_21:
	movq	304(%rsp), %rax
	movq	16(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 48(%rcx)
	movq	304(%rsp), %rax
	movq	20(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 56(%rcx)
	movq	304(%rsp), %rax
	movq	24(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 64(%rcx)
	movq	304(%rsp), %rax
	movq	28(%rax), %rax
	movq	208(%rsp), %rcx
	movq	%rax, 72(%rcx)
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	movq	200(%rsp), %rcx
	movq	56(%rcx), %rcx
	shrq	$8, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	200(%rsp), %rdi
	movq	56(%rdi), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	56(%rdi), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	56(%rdi), %rdi
	shrq	$0, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	152(%rsp), %rcx
	movq	%rcx, %rdi
	addq	$1, %rdi
	movq	%rdi, 152(%rsp)
	xorq	rcon_tab(,%rcx,8), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 64(%rcx)
	movq	200(%rsp), %rax
	movq	8(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	64(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 72(%rcx)
	movq	200(%rsp), %rax
	movq	16(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	72(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 80(%rcx)
	movq	200(%rsp), %rax
	movq	24(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	80(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 88(%rcx)
	movq	200(%rsp), %rax
	movq	32(%rax), %rax
	movq	200(%rsp), %rcx
	movq	88(%rcx), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	200(%rsp), %rdi
	movq	88(%rdi), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	88(%rdi), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	200(%rsp), %rdi
	movq	88(%rdi), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	200(%rsp), %rcx
	movq	%rax, 96(%rcx)
	movq	200(%rsp), %rax
	movq	40(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	96(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 104(%rcx)
	movq	200(%rsp), %rax
	movq	48(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	104(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 112(%rcx)
	movq	200(%rsp), %rax
	movq	56(%rax), %rax
	movq	200(%rsp), %rcx
	xorq	112(%rcx), %rax
	movq	200(%rsp), %rcx
	movq	%rax, 120(%rcx)
	movq	200(%rsp), %rax
	addq	$64, %rax
	movq	%rax, 200(%rsp)
# BB#23:                                #   in Loop: Header=BB0_22 Depth=1
	movq	200(%rsp), %rax
	cmpq	192(%rsp), %rax
	jb	.LBB0_22
# BB#24:
	jmp	.LBB0_25
.LBB0_25:
	movq	208(%rsp), %rax
	movzbl	1040(%rax), %ecx
	movl	%ecx, 364(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 336(%rsp)
	andl	$3, %ecx
	cmpl	$1, %ecx
	je	.LBB0_36
# BB#26:
	movq	208(%rsp), %rax
	addq	$528, %rax              # imm = 0x210
	movq	208(%rsp), %rcx
	movq	8(%rcx), %rcx
	shlq	$2, %rcx
	shlq	$3, %rcx
	addq	%rcx, %rax
	movq	%rax, 192(%rsp)
	movq	208(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	192(%rsp), %rax
	addq	$-64, %rax
	movq	%rax, 192(%rsp)
	movq	$1, 88(%rsp)
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	88(%rsp), %rax
	movq	208(%rsp), %rcx
	cmpq	8(%rcx), %rax
	jae	.LBB0_35
# BB#28:                                #   in Loop: Header=BB0_27 Depth=1
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	shrq	$0, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	im_tab(,%rax,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$8, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+2048(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$16, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+4096(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$24, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+6144(,%rsi,8), %rax
	movq	192(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, 192(%rsp)
	movq	%rax, (%rsi)
	movq	200(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	shrq	$0, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	im_tab(,%rax,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$8, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+2048(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$16, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+4096(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$24, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+6144(,%rsi,8), %rax
	movq	192(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, 192(%rsp)
	movq	%rax, (%rsi)
	movq	200(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	shrq	$0, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	im_tab(,%rax,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$8, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+2048(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$16, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+4096(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$24, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+6144(,%rsi,8), %rax
	movq	192(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, 192(%rsp)
	movq	%rax, (%rsi)
	movq	200(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 200(%rsp)
	movq	200(%rsp), %rax
	movq	(%rax), %rax
	shrq	$0, %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
	movq	im_tab(,%rax,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$8, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+2048(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$16, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+4096(,%rsi,8), %rax
	movq	200(%rsp), %rsi
	movq	(%rsi), %rsi
	shrq	$24, %rsi
	movb	%sil, %cl
	movzbl	%cl, %edx
	movl	%edx, %esi
	xorq	im_tab+6144(,%rsi,8), %rax
	movq	192(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$8, %rdi
	movq	%rdi, 192(%rsp)
	movq	%rax, (%rsi)
	movq	200(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 200(%rsp)
	movq	192(%rsp), %rax
	addq	$-64, %rax
	movq	%rax, 192(%rsp)
# BB#29:                                #   in Loop: Header=BB0_27 Depth=1
	movq	88(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI0_1(%rip), %xmm1   # xmm1 = [1,1]
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movq	%rcx, %rsi
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	%rsi, %rdi
	addq	$1, %rax
	imulq	$3, %rax, %rdx
	movq	%rax, 536(%rsp)
	cmpq	%rdx, %rdi
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	je	.LBB0_34
# BB#30:                                #   in Loop: Header=BB0_27 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	cqto
	movq	24(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB0_32
# BB#31:                                #   in Loop: Header=BB0_27 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 536(%rsp)
	jmp	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_27 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 536(%rsp)
.LBB0_33:                               #   in Loop: Header=BB0_27 Depth=1
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_27 Depth=1
	movq	536(%rsp), %rax
	movq	%rax, 88(%rsp)
	jmp	.LBB0_27
.LBB0_35:
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
	movq	200(%rsp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, 200(%rsp)
	movq	(%rax), %rax
	movq	192(%rsp), %rcx
	movq	%rcx, %rdx
	addq	$8, %rdx
	movq	%rdx, 192(%rsp)
	movq	%rax, (%rcx)
.LBB0_36:
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, 320(%rsp)
	movw	$1, 318(%rsp)
.LBB0_37:
	movswl	318(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	set_key, .Lfunc_end0-set_key

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	encrypt
	.p2align	4, 0x90
	.type	encrypt,@function
encrypt:                                # @encrypt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	addq	$16, %rdx
	movq	%rdx, -168(%rbp)
	movq	-96(%rbp), %rdx
	movzbl	1040(%rdx), %eax
	movl	%eax, -20(%rbp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -48(%rbp)
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB1_2
# BB#1:
	xorps	%xmm0, %xmm0
	movq	%xmm0, -64(%rbp)
	movw	$0, -66(%rbp)
	jmp	.LBB1_7
.LBB1_2:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	4(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	8(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	16(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-80(%rbp), %rax
	movq	12(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	24(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	subq	$10, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	je	.LBB1_5
	jmp	.LBB1_8
.LBB1_8:
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	$12, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB1_4
	jmp	.LBB1_9
.LBB1_9:
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	$14, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB1_6
	jmp	.LBB1_3
.LBB1_3:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -168(%rbp)
.LBB1_4:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -168(%rbp)
.LBB1_5:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	64(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	72(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	88(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	104(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	112(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	120(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	128(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	136(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	144(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	152(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	160(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	168(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	176(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	184(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	192(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	200(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	208(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	216(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	224(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	232(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	240(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	248(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	256(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	264(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	272(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	280(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	ft_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	ft_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	288(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	296(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	fl_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	fl_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
.LBB1_6:
	movq	-160(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 4(%rcx)
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-136(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 12(%rcx)
	movaps	.LCPI1_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -64(%rbp)
	movw	$1, -66(%rbp)
.LBB1_7:
	movswl	-66(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	encrypt, .Lfunc_end1-encrypt

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	decrypt
	.p2align	4, 0x90
	.type	decrypt,@function
decrypt:                                # @decrypt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -80(%rbp)
	movq	%rsi, -88(%rbp)
	movq	%rdx, -96(%rbp)
	addq	$528, %rdx              # imm = 0x210
	movq	%rdx, -168(%rbp)
	movq	-96(%rbp), %rdx
	movzbl	1040(%rdx), %eax
	movl	%eax, -20(%rbp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -48(%rbp)
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB2_2
# BB#1:
	xorps	%xmm0, %xmm0
	movq	%xmm0, -64(%rbp)
	movw	$0, -66(%rbp)
	jmp	.LBB2_7
.LBB2_2:
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-80(%rbp), %rax
	movq	4(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	8(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	16(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-80(%rbp), %rax
	movq	12(%rax), %rax
	movq	-168(%rbp), %rcx
	movq	24(%rcx), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$32, %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rcx
	subq	$10, %rcx
	movq	%rax, -176(%rbp)        # 8-byte Spill
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	je	.LBB2_5
	jmp	.LBB2_8
.LBB2_8:
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	$12, %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	je	.LBB2_4
	jmp	.LBB2_9
.LBB2_9:
	movq	-176(%rbp), %rax        # 8-byte Reload
	subq	$14, %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jne	.LBB2_6
	jmp	.LBB2_3
.LBB2_3:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -168(%rbp)
.LBB2_4:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -168(%rbp)
.LBB2_5:
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	32(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	40(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	48(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	56(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	64(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	72(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	88(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	96(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	104(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	112(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	120(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	128(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	136(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	144(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	152(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	160(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	168(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	176(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	184(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	192(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	200(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	208(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	216(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	224(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	232(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	240(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	248(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
	movq	-168(%rbp), %rax
	movq	256(%rax), %rax
	movq	-160(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -128(%rbp)
	movq	-168(%rbp), %rax
	movq	264(%rax), %rax
	movq	-152(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -120(%rbp)
	movq	-168(%rbp), %rax
	movq	272(%rax), %rax
	movq	-144(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-136(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -112(%rbp)
	movq	-168(%rbp), %rax
	movq	280(%rax), %rax
	movq	-136(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	it_tab(,%rcx,8), %rcx
	movq	-144(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+2048(,%rdi,8), %rcx
	movq	-152(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+4096(,%rdi,8), %rcx
	movq	-160(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	it_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -104(%rbp)
	movq	-168(%rbp), %rax
	movq	288(%rax), %rax
	movq	-128(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	il_tab(,%rcx,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+2048(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+4096(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -160(%rbp)
	movq	-168(%rbp), %rax
	movq	296(%rax), %rax
	movq	-120(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	il_tab(,%rcx,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+2048(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+4096(,%rdi,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -152(%rbp)
	movq	-168(%rbp), %rax
	movq	304(%rax), %rax
	movq	-112(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	il_tab(,%rcx,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+2048(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+4096(,%rdi,8), %rcx
	movq	-104(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -144(%rbp)
	movq	-168(%rbp), %rax
	movq	312(%rax), %rax
	movq	-104(%rbp), %rcx
	shrq	$0, %rcx
	movb	%cl, %dl
	movzbl	%dl, %esi
	movl	%esi, %ecx
	movq	il_tab(,%rcx,8), %rcx
	movq	-112(%rbp), %rdi
	shrq	$8, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+2048(,%rdi,8), %rcx
	movq	-120(%rbp), %rdi
	shrq	$16, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+4096(,%rdi,8), %rcx
	movq	-128(%rbp), %rdi
	shrq	$24, %rdi
	movb	%dil, %dl
	movzbl	%dl, %esi
	movl	%esi, %edi
	xorq	il_tab+6144(,%rdi,8), %rcx
	xorq	%rcx, %rax
	movq	%rax, -136(%rbp)
.LBB2_6:
	movq	-160(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-152(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 4(%rcx)
	movq	-144(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-136(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	%rax, 12(%rcx)
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	pshuflw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3,4,5,6,7]
	pshufhw	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,1,2,3,4,6,6,7]
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	movq	%xmm0, -64(%rbp)
	movw	$1, -66(%rbp)
.LBB2_7:
	movswl	-66(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	decrypt, .Lfunc_end2-decrypt

	.type	s_box,@object           # @s_box
	.section	.rodata,"a",@progbits
	.globl	s_box
	.p2align	4
s_box:
	.ascii	"c|w{\362ko\3050\001g+\376\327\253v\312\202\311}\372YG\360\255\324\242\257\234\244r\300\267\375\223&6?\367\3144\245\345\361q\3301\025\004\307#\303\030\226\005\232\007\022\200\342\353'\262u\t\203,\032\033nZ\240R;\326\263)\343/\204S\321\000\355 \374\261[j\313\2769JLX\317\320\357\252\373CM3\205E\371\002\177P<\237\250Q\243@\217\222\2358\365\274\266\332!\020\377\363\322\315\f\023\354_\227D\027\304\247~=d]\031s`\201O\334\"*\220\210F\356\270\024\336^\013\333\3402:\nI\006$\\\302\323\254b\221\225\344y\347\3107m\215\325N\251lV\364\352ez\256\b\272x%.\034\246\264\306\350\335t\037K\275\213\212p>\265fH\003\366\016a5W\271\206\301\035\236\341\370\230\021i\331\216\224\233\036\207\351\316U(\337\214\241\211\r\277\346BhA\231-\017\260T\273\026"
	.size	s_box, 256

	.type	inv_s_box,@object       # @inv_s_box
	.globl	inv_s_box
	.p2align	4
inv_s_box:
	.ascii	"R\tj\32506\2458\277@\243\236\201\363\327\373|\3439\202\233/\377\2074\216CD\304\336\351\313T{\2242\246\302#=\356L\225\013B\372\303N\b.\241f(\331$\262v[\242Im\213\321%r\370\366d\206h\230\026\324\244\\\314]e\266\222lpHP\375\355\271\332^\025FW\247\215\235\204\220\330\253\000\214\274\323\n\367\344X\005\270\263E\006\320,\036\217\312?\017\002\301\257\275\003\001\023\212k:\221\021AOg\334\352\227\362\317\316\360\264\346s\226\254t\"\347\2555\205\342\3717\350\034u\337nG\361\032q\035)\305\211o\267b\016\252\030\276\033\374V>K\306\322y \232\333\300\376x\315Z\364\037\335\2503\210\007\3071\261\022\020Y'\200\354_`Q\177\251\031\265J\r-\345z\237\223\311\234\357\240\340;M\256*\365\260\310\353\273<\203S\231a\027+\004~\272w\326&\341i\024cU!\f}"
	.size	inv_s_box, 256

	.type	rcon_tab,@object        # @rcon_tab
	.globl	rcon_tab
	.p2align	4
rcon_tab:
	.quad	1                       # 0x1
	.quad	2                       # 0x2
	.quad	4                       # 0x4
	.quad	8                       # 0x8
	.quad	16                      # 0x10
	.quad	32                      # 0x20
	.quad	64                      # 0x40
	.quad	128                     # 0x80
	.quad	27                      # 0x1b
	.quad	54                      # 0x36
	.quad	108                     # 0x6c
	.quad	216                     # 0xd8
	.quad	171                     # 0xab
	.quad	77                      # 0x4d
	.quad	154                     # 0x9a
	.quad	47                      # 0x2f
	.quad	94                      # 0x5e
	.quad	188                     # 0xbc
	.quad	99                      # 0x63
	.quad	198                     # 0xc6
	.quad	151                     # 0x97
	.quad	53                      # 0x35
	.quad	106                     # 0x6a
	.quad	212                     # 0xd4
	.quad	179                     # 0xb3
	.quad	125                     # 0x7d
	.quad	250                     # 0xfa
	.quad	239                     # 0xef
	.quad	197                     # 0xc5
	.size	rcon_tab, 232

	.type	ft_tab,@object          # @ft_tab
	.globl	ft_tab
	.p2align	4
ft_tab:
	.quad	2774754246              # 0xa56363c6
	.quad	2222750968              # 0x847c7cf8
	.quad	2574743534              # 0x997777ee
	.quad	2373680118              # 0x8d7b7bf6
	.quad	234025727               # 0xdf2f2ff
	.quad	3177933782              # 0xbd6b6bd6
	.quad	2976870366              # 0xb16f6fde
	.quad	1422247313              # 0x54c5c591
	.quad	1345335392              # 0x50303060
	.quad	50397442                # 0x3010102
	.quad	2842126286              # 0xa96767ce
	.quad	2099981142              # 0x7d2b2b56
	.quad	436141799               # 0x19fefee7
	.quad	1658312629              # 0x62d7d7b5
	.quad	3870010189              # 0xe6abab4d
	.quad	2591454956              # 0x9a7676ec
	.quad	1170918031              # 0x45caca8f
	.quad	2642575903              # 0x9d82821f
	.quad	1086966153              # 0x40c9c989
	.quad	2273148410              # 0x877d7dfa
	.quad	368769775               # 0x15fafaef
	.quad	3948501426              # 0xeb5959b2
	.quad	3376891790              # 0xc947478e
	.quad	200339707               # 0xbf0f0fb
	.quad	3970805057              # 0xecadad41
	.quad	1742001331              # 0x67d4d4b3
	.quad	4255294047              # 0xfda2a25f
	.quad	3937382213              # 0xeaafaf45
	.quad	3214711843              # 0xbf9c9c23
	.quad	4154762323              # 0xf7a4a453
	.quad	2524082916              # 0x967272e4
	.quad	1539358875              # 0x5bc0c09b
	.quad	3266819957              # 0xc2b7b775
	.quad	486407649               # 0x1cfdfde1
	.quad	2928907069              # 0xae93933d
	.quad	1780885068              # 0x6a26264c
	.quad	1513502316              # 0x5a36366c
	.quad	1094664062              # 0x413f3f7e
	.quad	49805301                # 0x2f7f7f5
	.quad	1338821763              # 0x4fcccc83
	.quad	1546925160              # 0x5c343468
	.quad	4104496465              # 0xf4a5a551
	.quad	887481809               # 0x34e5e5d1
	.quad	150073849               # 0x8f1f1f9
	.quad	2473685474              # 0x937171e2
	.quad	1943591083              # 0x73d8d8ab
	.quad	1395732834              # 0x53313162
	.quad	1058346282              # 0x3f15152a
	.quad	201589768               # 0xc040408
	.quad	1388824469              # 0x52c7c795
	.quad	1696801606              # 0x65232346
	.quad	1589887901              # 0x5ec3c39d
	.quad	672667696               # 0x28181830
	.quad	2711000631              # 0xa1969637
	.quad	251987210               # 0xf05050a
	.quad	3046808111              # 0xb59a9a2f
	.quad	151455502               # 0x907070e
	.quad	907153956               # 0x36121224
	.quad	2608889883              # 0x9b80801b
	.quad	1038279391              # 0x3de2e2df
	.quad	652995533               # 0x26ebebcd
	.quad	1764173646              # 0x6927274e
	.quad	3451040383              # 0xcdb2b27f
	.quad	2675275242              # 0x9f7575ea
	.quad	453576978               # 0x1b090912
	.quad	2659418909              # 0x9e83831d
	.quad	1949051992              # 0x742c2c58
	.quad	773462580               # 0x2e1a1a34
	.quad	756751158               # 0x2d1b1b36
	.quad	2993581788              # 0xb26e6edc
	.quad	3998898868              # 0xee5a5ab4
	.quad	4221608027              # 0xfba0a05b
	.quad	4132590244              # 0xf65252a4
	.quad	1295727478              # 0x4d3b3b76
	.quad	1641469623              # 0x61d6d6b7
	.quad	3467883389              # 0xceb3b37d
	.quad	2066295122              # 0x7b292952
	.quad	1055122397              # 0x3ee3e3dd
	.quad	1898917726              # 0x712f2f5e
	.quad	2542044179              # 0x97848413
	.quad	4115878822              # 0xf55353a6
	.quad	1758581177              # 0x68d1d1b9
	.quad	0                       # 0x0
	.quad	753790401               # 0x2cededc1
	.quad	1612718144              # 0x60202040
	.quad	536673507               # 0x1ffcfce3
	.quad	3367088505              # 0xc8b1b179
	.quad	3982187446              # 0xed5b5bb6
	.quad	3194645204              # 0xbe6a6ad4
	.quad	1187761037              # 0x46cbcb8d
	.quad	3653156455              # 0xd9bebe67
	.quad	1262041458              # 0x4b393972
	.quad	3729410708              # 0xde4a4a94
	.quad	3561770136              # 0xd44c4c98
	.quad	3898103984              # 0xe85858b0
	.quad	1255133061              # 0x4acfcf85
	.quad	1808847035              # 0x6bd0d0bb
	.quad	720367557               # 0x2aefefc5
	.quad	3853167183              # 0xe5aaaa4f
	.quad	385612781               # 0x16fbfbed
	.quad	3309519750              # 0xc5434386
	.quad	3612167578              # 0xd74d4d9a
	.quad	1429418854              # 0x55333366
	.quad	2491778321              # 0x94858511
	.quad	3477423498              # 0xcf45458a
	.quad	284817897               # 0x10f9f9e9
	.quad	100794884               # 0x6020204
	.quad	2172616702              # 0x817f7ffe
	.quad	4031795360              # 0xf05050a0
	.quad	1144798328              # 0x443c3c78
	.quad	3131023141              # 0xba9f9f25
	.quad	3819481163              # 0xe3a8a84b
	.quad	4082192802              # 0xf35151a2
	.quad	4272137053              # 0xfea3a35d
	.quad	3225436288              # 0xc0404080
	.quad	2324664069              # 0x8a8f8f05
	.quad	2912064063              # 0xad92923f
	.quad	3164445985              # 0xbc9d9d21
	.quad	1211644016              # 0x48383870
	.quad	83228145                # 0x4f5f5f1
	.quad	3753688163              # 0xdfbcbc63
	.quad	3249976951              # 0xc1b6b677
	.quad	1977277103              # 0x75dadaaf
	.quad	1663115586              # 0x63212142
	.quad	806359072               # 0x30101020
	.quad	452984805               # 0x1affffe5
	.quad	250868733               # 0xef3f3fd
	.quad	1842533055              # 0x6dd2d2bf
	.quad	1288555905              # 0x4ccdcd81
	.quad	336333848               # 0x140c0c18
	.quad	890442534               # 0x35131326
	.quad	804056259               # 0x2fececc3
	.quad	3781124030              # 0xe15f5fbe
	.quad	2727843637              # 0xa2979735
	.quad	3427026056              # 0xcc444488
	.quad	957814574               # 0x3917172e
	.quad	1472513171              # 0x57c4c493
	.quad	4071073621              # 0xf2a7a755
	.quad	2189328124              # 0x827e7efc
	.quad	1195195770              # 0x473d3d7a
	.quad	2892260552              # 0xac6464c8
	.quad	3881655738              # 0xe75d5dba
	.quad	723065138               # 0x2b191932
	.quad	2507371494              # 0x957373e6
	.quad	2690670784              # 0xa06060c0
	.quad	2558624025              # 0x98818119
	.quad	3511635870              # 0xd14f4f9e
	.quad	2145180835              # 0x7fdcdca3
	.quad	1713513028              # 0x66222244
	.quad	2116692564              # 0x7e2a2a54
	.quad	2878378043              # 0xab90903b
	.quad	2206763019              # 0x8388880b
	.quad	3393603212              # 0xca46468c
	.quad	703524551               # 0x29eeeec7
	.quad	3552098411              # 0xd3b8b86b
	.quad	1007948840              # 0x3c141428
	.quad	2044649127              # 0x79dedea7
	.quad	3797835452              # 0xe25e5ebc
	.quad	487262998               # 0x1d0b0b16
	.quad	1994120109              # 0x76dbdbad
	.quad	1004593371              # 0x3be0e0db
	.quad	1446130276              # 0x56323264
	.quad	1312438900              # 0x4e3a3a74
	.quad	503974420               # 0x1e0a0a14
	.quad	3679013266              # 0xdb494992
	.quad	168166924               # 0xa06060c
	.quad	1814307912              # 0x6c242448
	.quad	3831258296              # 0xe45c5cb8
	.quad	1573044895              # 0x5dc2c29f
	.quad	1859376061              # 0x6ed3d3bd
	.quad	4021070915              # 0xefacac43
	.quad	2791465668              # 0xa66262c4
	.quad	2828112185              # 0xa8919139
	.quad	2761266481              # 0xa4959531
	.quad	937747667               # 0x37e4e4d3
	.quad	2339994098              # 0x8b7979f2
	.quad	854058965               # 0x32e7e7d5
	.quad	1137232011              # 0x43c8c88b
	.quad	1496790894              # 0x5937376e
	.quad	3077402074              # 0xb76d6dda
	.quad	2358086913              # 0x8c8d8d01
	.quad	1691735473              # 0x64d5d5b1
	.quad	3528347292              # 0xd24e4e9c
	.quad	3769215305              # 0xe0a9a949
	.quad	3027004632              # 0xb46c6cd8
	.quad	4199962284              # 0xfa5656ac
	.quad	133494003               # 0x7f4f4f3
	.quad	636152527               # 0x25eaeacf
	.quad	2942657994              # 0xaf6565ca
	.quad	2390391540              # 0x8e7a7af4
	.quad	3920539207              # 0xe9aeae47
	.quad	403179536               # 0x18080810
	.quad	3585784431              # 0xd5baba6f
	.quad	2289596656              # 0x887878f0
	.quad	1864705354              # 0x6f25254a
	.quad	1915629148              # 0x722e2e5c
	.quad	605822008               # 0x241c1c38
	.quad	4054230615              # 0xf1a6a657
	.quad	3350508659              # 0xc7b4b473
	.quad	1371981463              # 0x51c6c697
	.quad	602466507               # 0x23e8e8cb
	.quad	2094914977              # 0x7cdddda1
	.quad	2624877800              # 0x9c7474e8
	.quad	555687742               # 0x211f1f3e
	.quad	3712699286              # 0xdd4b4b96
	.quad	3703422305              # 0xdcbdbd61
	.quad	2257292045              # 0x868b8b0d
	.quad	2240449039              # 0x858a8a0f
	.quad	2423288032              # 0x907070e0
	.quad	1111375484              # 0x423e3e7c
	.quad	3300242801              # 0xc4b5b571
	.quad	2858837708              # 0xaa6666cc
	.quad	3628615824              # 0xd8484890
	.quad	84083462                # 0x5030306
	.quad	32962295                # 0x1f6f6f7
	.quad	302911004               # 0x120e0e1c
	.quad	2741068226              # 0xa36161c2
	.quad	1597322602              # 0x5f35356a
	.quad	4183250862              # 0xf95757ae
	.quad	3501832553              # 0xd0b9b969
	.quad	2441512471              # 0x91868617
	.quad	1489093017              # 0x58c1c199
	.quad	656219450               # 0x271d1d3a
	.quad	3114180135              # 0xb99e9e27
	.quad	954327513               # 0x38e1e1d9
	.quad	335083755               # 0x13f8f8eb
	.quad	3013122091              # 0xb398982b
	.quad	856756514               # 0x33111122
	.quad	3144247762              # 0xbb6969d2
	.quad	1893325225              # 0x70d9d9a9
	.quad	2307821063              # 0x898e8e07
	.quad	2811532339              # 0xa7949433
	.quad	3063651117              # 0xb69b9b2d
	.quad	572399164               # 0x221e1e3c
	.quad	2458355477              # 0x92878715
	.quad	552200649               # 0x20e9e9c9
	.quad	1238290055              # 0x49cece87
	.quad	4283782570              # 0xff5555aa
	.quad	2015897680              # 0x78282850
	.quad	2061492133              # 0x7adfdfa5
	.quad	2408352771              # 0x8f8c8c03
	.quad	4171342169              # 0xf8a1a159
	.quad	2156497161              # 0x80898909
	.quad	386731290               # 0x170d0d1a
	.quad	3669999461              # 0xdabfbf65
	.quad	837215959               # 0x31e6e6d7
	.quad	3326231172              # 0xc6424284
	.quad	3093850320              # 0xb86868d0
	.quad	3275833730              # 0xc3414182
	.quad	2962856233              # 0xb0999929
	.quad	1999449434              # 0x772d2d5a
	.quad	286199582               # 0x110f0f1e
	.quad	3417354363              # 0xcbb0b07b
	.quad	4233385128              # 0xfc5454a8
	.quad	3602627437              # 0xd6bbbb6d
	.quad	974525996               # 0x3a16162c
	.quad	1667483301              # 0x6363c6a5
	.quad	2088564868              # 0x7c7cf884
	.quad	2004348569              # 0x7777ee99
	.quad	2071721613              # 0x7b7bf68d
	.quad	4076011277              # 0xf2f2ff0d
	.quad	1802229437              # 0x6b6bd6bd
	.quad	1869602481              # 0x6f6fdeb1
	.quad	3318059348              # 0xc5c59154
	.quad	808476752               # 0x30306050
	.quad	16843267                # 0x1010203
	.quad	1734856361              # 0x6767cea9
	.quad	724260477               # 0x2b2b567d
	.quad	4278118169              # 0xfefee719
	.quad	3621238114              # 0xd7d7b562
	.quad	2880130534              # 0xabab4de6
	.quad	1987505306              # 0x7676ec9a
	.quad	3402272581              # 0xcaca8f45
	.quad	2189565853              # 0x82821f9d
	.quad	3385428288              # 0xc9c98940
	.quad	2105408135              # 0x7d7dfa87
	.quad	4210749205              # 0xfafaef15
	.quad	1499050731              # 0x5959b2eb
	.quad	1195871945              # 0x47478ec9
	.quad	4042324747              # 0xf0f0fb0b
	.quad	2913812972              # 0xadad41ec
	.quad	3570709351              # 0xd4d4b367
	.quad	2728550397              # 0xa2a25ffd
	.quad	2947499498              # 0xafaf45ea
	.quad	2627478463              # 0x9c9c23bf
	.quad	2762232823              # 0xa4a453f7
	.quad	1920132246              # 0x7272e496
	.quad	3233848155              # 0xc0c09b5b
	.quad	3082253762              # 0xb7b775c2
	.quad	4261273884              # 0xfdfde11c
	.quad	2475900334              # 0x93933dae
	.quad	640044138               # 0x26264c6a
	.quad	909536346               # 0x36366c5a
	.quad	1061125697              # 0x3f3f7e41
	.quad	4160222466              # 0xf7f7f502
	.quad	3435955023              # 0xcccc834f
	.quad	875849820               # 0x3434685c
	.quad	2779075060              # 0xa5a551f4
	.quad	3857043764              # 0xe5e5d134
	.quad	4059166984              # 0xf1f1f908
	.quad	1903288979              # 0x7171e293
	.quad	3638078323              # 0xd8d8ab73
	.quad	825320019               # 0x31316253
	.quad	353708607               # 0x15152a3f
	.quad	67373068                # 0x404080c
	.quad	3351745874              # 0xc7c79552
	.quad	589514341               # 0x23234665
	.quad	3284376926              # 0xc3c39d5e
	.quad	404238376               # 0x18183028
	.quad	2526427041              # 0x969637a1
	.quad	84216335                # 0x5050a0f
	.quad	2593796021              # 0x9a9a2fb5
	.quad	117902857               # 0x7070e09
	.quad	303178806               # 0x12122436
	.quad	2155879323              # 0x80801b9b
	.quad	3806519101              # 0xe2e2df3d
	.quad	3958099238              # 0xebebcd26
	.quad	656887401               # 0x27274e69
	.quad	2998042573              # 0xb2b27fcd
	.quad	1970662047              # 0x7575ea9f
	.quad	151589403               # 0x909121b
	.quad	2206408094              # 0x83831d9e
	.quad	741103732               # 0x2c2c5874
	.quad	437924910               # 0x1a1a342e
	.quad	454768173               # 0x1b1b362d
	.quad	1852759218              # 0x6e6edcb2
	.quad	1515893998              # 0x5a5ab4ee
	.quad	2694863867              # 0xa0a05bfb
	.quad	1381147894              # 0x5252a4f6
	.quad	993752653               # 0x3b3b764d
	.quad	3604395873              # 0xd6d6b761
	.quad	3014884814              # 0xb3b37dce
	.quad	690573947               # 0x2929527b
	.quad	3823361342              # 0xe3e3dd3e
	.quad	791633521               # 0x2f2f5e71
	.quad	2223248279              # 0x84841397
	.quad	1397991157              # 0x5353a6f5
	.quad	3520182632              # 0xd1d1b968
	.quad	0                       # 0x0
	.quad	3991781676              # 0xededc12c
	.quad	538984544               # 0x20204060
	.quad	4244431647              # 0xfcfce31f
	.quad	2981198280              # 0xb1b179c8
	.quad	1532737261              # 0x5b5bb6ed
	.quad	1785386174              # 0x6a6ad4be
	.quad	3419114822              # 0xcbcb8d46
	.quad	3200149465              # 0xbebe67d9
	.quad	960066123               # 0x3939724b
	.quad	1246401758              # 0x4a4a94de
	.quad	1280088276              # 0x4c4c98d4
	.quad	1482207464              # 0x5858b0e8
	.quad	3486483786              # 0xcfcf854a
	.quad	3503340395              # 0xd0d0bb6b
	.quad	4025468202              # 0xefefc52a
	.quad	2863288293              # 0xaaaa4fe5
	.quad	4227591446              # 0xfbfbed16
	.quad	1128498885              # 0x434386c5
	.quad	1296931543              # 0x4d4d9ad7
	.quad	859006549               # 0x33336655
	.quad	2240090516              # 0x85851194
	.quad	1162185423              # 0x45458acf
	.quad	4193904912              # 0xf9f9e910
	.quad	33686534                # 0x2020406
	.quad	2139094657              # 0x7f7ffe81
	.quad	1347461360              # 0x5050a0f0
	.quad	1010595908              # 0x3c3c7844
	.quad	2678007226              # 0x9f9f25ba
	.quad	2829601763              # 0xa8a84be3
	.quad	1364304627              # 0x5151a2f3
	.quad	2745392638              # 0xa3a35dfe
	.quad	1077969088              # 0x404080c0
	.quad	2408514954              # 0x8f8f058a
	.quad	2459058093              # 0x92923fad
	.quad	2644320700              # 0x9d9d21bc
	.quad	943222856               # 0x38387048
	.quad	4126535940              # 0xf5f5f104
	.quad	3166462943              # 0xbcbc63df
	.quad	3065411521              # 0xb6b677c1
	.quad	3671764853              # 0xdadaaf75
	.quad	555827811               # 0x21214263
	.quad	269492272               # 0x10102030
	.quad	4294960410              # 0xffffe51a
	.quad	4092853518              # 0xf3f3fd0e
	.quad	3537026925              # 0xd2d2bf6d
	.quad	3452797260              # 0xcdcd814c
	.quad	202119188               # 0xc0c1814
	.quad	320022069               # 0x13132635
	.quad	3974939439              # 0xececc32f
	.quad	1600110305              # 0x5f5fbee1
	.quad	2543269282              # 0x979735a2
	.quad	1145342156              # 0x444488cc
	.quad	387395129               # 0x17172e39
	.quad	3301217111              # 0xc4c49357
	.quad	2812761586              # 0xa7a755f2
	.quad	2122251394              # 0x7e7efc82
	.quad	1027439175              # 0x3d3d7a47
	.quad	1684326572              # 0x6464c8ac
	.quad	1566423783              # 0x5d5dbae7
	.quad	421081643               # 0x1919322b
	.quad	1936975509              # 0x7373e695
	.quad	1616953504              # 0x6060c0a0
	.quad	2172721560              # 0x81811998
	.quad	1330618065              # 0x4f4f9ed1
	.quad	3705447295              # 0xdcdca37f
	.quad	572671078               # 0x22224466
	.quad	707417214               # 0x2a2a547e
	.quad	2425371563              # 0x90903bab
	.quad	2290617219              # 0x88880b83
	.quad	1179028682              # 0x46468cca
	.quad	4008625961              # 0xeeeec729
	.quad	3099093971              # 0xb8b86bd3
	.quad	336865340               # 0x1414283c
	.quad	3739133817              # 0xdedea779
	.quad	1583267042              # 0x5e5ebce2
	.quad	185275933               # 0xb0b161d
	.quad	3688607094              # 0xdbdbad76
	.quad	3772832571              # 0xe0e0db3b
	.quad	842163286               # 0x32326456
	.quad	976909390               # 0x3a3a744e
	.quad	168432670               # 0xa0a141e
	.quad	1229558491              # 0x494992db
	.quad	101059594               # 0x6060c0a
	.quad	606357612               # 0x2424486c
	.quad	1549580516              # 0x5c5cb8e4
	.quad	3267534685              # 0xc2c29f5d
	.quad	3553869166              # 0xd3d3bd6e
	.quad	2896970735              # 0xacac43ef
	.quad	1650640038              # 0x6262c4a6
	.quad	2442213800              # 0x919139a8
	.quad	2509582756              # 0x959531a4
	.quad	3840201527              # 0xe4e4d337
	.quad	2038035083              # 0x7979f28b
	.quad	3890730290              # 0xe7e7d532
	.quad	3368586051              # 0xc8c88b43
	.quad	926379609               # 0x37376e59
	.quad	1835915959              # 0x6d6ddab7
	.quad	2374828428              # 0x8d8d018c
	.quad	3587551588              # 0xd5d5b164
	.quad	1313774802              # 0x4e4e9cd2
	.quad	2846444000              # 0xa9a949e0
	.quad	1819072692              # 0x6c6cd8b4
	.quad	1448520954              # 0x5656acfa
	.quad	4109693703              # 0xf4f4f307
	.quad	3941256997              # 0xeaeacf25
	.quad	1701169839              # 0x6565caaf
	.quad	2054878350              # 0x7a7af48e
	.quad	2930657257              # 0xaeae47e9
	.quad	134746136               # 0x8081018
	.quad	3132780501              # 0xbaba6fd5
	.quad	2021191816              # 0x7878f088
	.quad	623200879               # 0x25254a6f
	.quad	774790258               # 0x2e2e5c72
	.quad	471611428               # 0x1c1c3824
	.quad	2795919345              # 0xa6a657f1
	.quad	3031724999              # 0xb4b473c7
	.quad	3334903633              # 0xc6c69751
	.quad	3907570467              # 0xe8e8cb23
	.quad	3722289532              # 0xdddda17c
	.quad	1953818780              # 0x7474e89c
	.quad	522141217               # 0x1f1f3e21
	.quad	1263245021              # 0x4b4b96dd
	.quad	3183305180              # 0xbdbd61dc
	.quad	2341145990              # 0x8b8b0d86
	.quad	2324303749              # 0x8a8a0f85
	.quad	1886445712              # 0x7070e090
	.quad	1044282434              # 0x3e3e7c42
	.quad	3048567236              # 0xb5b571c4
	.quad	1718013098              # 0x6666ccaa
	.quad	1212715224              # 0x484890d8
	.quad	50529797                # 0x3030605
	.quad	4143380225              # 0xf6f6f701
	.quad	235805714               # 0xe0e1c12
	.quad	1633796771              # 0x6161c2a3
	.quad	892693087               # 0x35356a5f
	.quad	1465364217              # 0x5757aef9
	.quad	3115936208              # 0xb9b969d0
	.quad	2256934801              # 0x86861791
	.quad	3250690392              # 0xc1c19958
	.quad	488454695               # 0x1d1d3a27
	.quad	2661164985              # 0x9e9e27b9
	.quad	3789674808              # 0xe1e1d938
	.quad	4177062675              # 0xf8f8eb13
	.quad	2560109491              # 0x98982bb3
	.quad	286335539               # 0x11112233
	.quad	1768542907              # 0x6969d2bb
	.quad	3654920560              # 0xd9d9a970
	.quad	2391672713              # 0x8e8e0789
	.quad	2492740519              # 0x949433a7
	.quad	2610638262              # 0x9b9b2db6
	.quad	505297954               # 0x1e1e3c22
	.quad	2273777042              # 0x87871592
	.quad	3924412704              # 0xe9e9c920
	.quad	3469641545              # 0xcece8749
	.quad	1431677695              # 0x5555aaff
	.quad	673730680               # 0x28285078
	.quad	3755976058              # 0xdfdfa57a
	.quad	2357986191              # 0x8c8c038f
	.quad	2711706104              # 0xa1a159f8
	.quad	2307459456              # 0x89890980
	.quad	218962455               # 0xd0d1a17
	.quad	3216991706              # 0xbfbf65da
	.quad	3873888049              # 0xe6e6d731
	.quad	1111655622              # 0x424284c6
	.quad	1751699640              # 0x6868d0b8
	.quad	1094812355              # 0x414182c3
	.quad	2576951728              # 0x999929b0
	.quad	757946999               # 0x2d2d5a77
	.quad	252648977               # 0xf0f1e11
	.quad	2964356043              # 0xb0b07bcb
	.quad	1414834428              # 0x5454a8fc
	.quad	3149622742              # 0xbbbb6dd6
	.quad	370551866               # 0x16162c3a
	.quad	1673962851              # 0x63c6a563
	.quad	2096661628              # 0x7cf8847c
	.quad	2012125559              # 0x77ee9977
	.quad	2079755643              # 0x7bf68d7b
	.quad	4076801522              # 0xf2ff0df2
	.quad	1809235307              # 0x6bd6bd6b
	.quad	1876865391              # 0x6fdeb16f
	.quad	3314635973              # 0xc59154c5
	.quad	811618352               # 0x30605030
	.quad	16909057                # 0x1020301
	.quad	1741597031              # 0x67cea967
	.quad	727088427               # 0x2b567d2b
	.quad	4276558334              # 0xfee719fe
	.quad	3618988759              # 0xd7b562d7
	.quad	2874009259              # 0xab4de6ab
	.quad	1995217526              # 0x76ec9a76
	.quad	3398387146              # 0xca8f45ca
	.quad	2183110018              # 0x821f9d82
	.quad	3381215433              # 0xc98940c9
	.quad	2113570685              # 0x7dfa877d
	.quad	4209972730              # 0xfaef15fa
	.quad	1504897881              # 0x59b2eb59
	.quad	1200539975              # 0x478ec947
	.quad	4042984432              # 0xf0fb0bf0
	.quad	2906778797              # 0xad41ecad
	.quad	3568527316              # 0xd4b367d4
	.quad	2724199842              # 0xa25ffda2
	.quad	2940594863              # 0xaf45eaaf
	.quad	2619588508              # 0x9c23bf9c
	.quad	2756966308              # 0xa453f7a4
	.quad	1927583346              # 0x72e49672
	.quad	3231407040              # 0xc09b5bc0
	.quad	3077948087              # 0xb775c2b7
	.quad	4259388669              # 0xfde11cfd
	.quad	2470293139              # 0x933dae93
	.quad	642542118               # 0x264c6a26
	.quad	913070646               # 0x366c5a36
	.quad	1065238847              # 0x3f7e413f
	.quad	4160029431              # 0xf7f502f7
	.quad	3431157708              # 0xcc834fcc
	.quad	879254580               # 0x34685c34
	.quad	2773611685              # 0xa551f4a5
	.quad	3855693029              # 0xe5d134e5
	.quad	4059629809              # 0xf1f908f1
	.quad	1910674289              # 0x71e29371
	.quad	3635114968              # 0xd8ab73d8
	.quad	828527409               # 0x31625331
	.quad	355090197               # 0x152a3f15
	.quad	67636228                # 0x4080c04
	.quad	3348452039              # 0xc79552c7
	.quad	591815971               # 0x23466523
	.quad	3281870531              # 0xc39d5ec3
	.quad	405809176               # 0x18302818
	.quad	2520228246              # 0x9637a196
	.quad	84545285                # 0x50a0f05
	.quad	2586817946              # 0x9a2fb59a
	.quad	118360327               # 0x70e0907
	.quad	304363026               # 0x12243612
	.quad	2149292928              # 0x801b9b80
	.quad	3806281186              # 0xe2df3de2
	.quad	3956090603              # 0xebcd26eb
	.quad	659450151               # 0x274e6927
	.quad	2994720178              # 0xb27fcdb2
	.quad	1978310517              # 0x75ea9f75
	.quad	152181513               # 0x9121b09
	.quad	2199756419              # 0x831d9e83
	.quad	743994412               # 0x2c58742c
	.quad	439627290               # 0x1a342e1a
	.quad	456535323               # 0x1b362d1b
	.quad	1859957358              # 0x6edcb26e
	.quad	1521806938              # 0x5ab4ee5a
	.quad	2690382752              # 0xa05bfba0
	.quad	1386542674              # 0x52a4f652
	.quad	997608763               # 0x3b764d3b
	.quad	3602342358              # 0xd6b761d6
	.quad	3011366579              # 0xb37dceb3
	.quad	693271337               # 0x29527b29
	.quad	3822927587              # 0xe3dd3ee3
	.quad	794718511               # 0x2f5e712f
	.quad	2215876484              # 0x84139784
	.quad	1403450707              # 0x53a6f553
	.quad	3518589137              # 0xd1b968d1
	.quad	0                       # 0x0
	.quad	3988860141              # 0xedc12ced
	.quad	541089824               # 0x20406020
	.quad	4242743292              # 0xfce31ffc
	.quad	2977548465              # 0xb179c8b1
	.quad	1538714971              # 0x5bb6ed5b
	.quad	1792327274              # 0x6ad4be6a
	.quad	3415033547              # 0xcb8d46cb
	.quad	3194476990              # 0xbe67d9be
	.quad	963791673               # 0x39724b39
	.quad	1251270218              # 0x4a94de4a
	.quad	1285084236              # 0x4c98d44c
	.quad	1487988824              # 0x58b0e858
	.quad	3481619151              # 0xcf854acf
	.quad	3501943760              # 0xd0bb6bd0
	.quad	4022676207              # 0xefc52aef
	.quad	2857362858              # 0xaa4fe5aa
	.quad	4226619131              # 0xfbed16fb
	.quad	1132905795              # 0x4386c543
	.quad	1301993293              # 0x4d9ad74d
	.quad	862344499               # 0x33665533
	.quad	2232521861              # 0x85119485
	.quad	1166724933              # 0x458acf45
	.quad	4192801017              # 0xf9e910f9
	.quad	33818114                # 0x2040602
	.quad	2147385727              # 0x7ffe817f
	.quad	1352724560              # 0x50a0f050
	.quad	1014514748              # 0x3c78443c
	.quad	2670049951              # 0x9f25ba9f
	.quad	2823545768              # 0xa84be3a8
	.quad	1369633617              # 0x51a2f351
	.quad	2740846243              # 0xa35dfea3
	.quad	1082179648              # 0x4080c040
	.quad	2399505039              # 0x8f058a8f
	.quad	2453646738              # 0x923fad92
	.quad	2636233885              # 0x9d21bc9d
	.quad	946882616               # 0x38704838
	.quad	4126213365              # 0xf5f104f5
	.quad	3160661948              # 0xbc63dfbc
	.quad	3061301686              # 0xb677c1b6
	.quad	3668932058              # 0xdaaf75da
	.quad	557998881               # 0x21426321
	.quad	270544912               # 0x10203010
	.quad	4293204735              # 0xffe51aff
	.quad	4093447923              # 0xf3fd0ef3
	.quad	3535760850              # 0xd2bf6dd2
	.quad	3447803085              # 0xcd814ccd
	.quad	202904588               # 0xc18140c
	.quad	321271059               # 0x13263513
	.quad	3972214764              # 0xecc32fec
	.quad	1606345055              # 0x5fbee15f
	.quad	2536874647              # 0x9735a297
	.quad	1149815876              # 0x4488cc44
	.quad	388905239               # 0x172e3917
	.quad	3297990596              # 0xc49357c4
	.quad	2807427751              # 0xa755f2a7
	.quad	2130477694              # 0x7efc827e
	.quad	1031423805              # 0x3d7a473d
	.quad	1690872932              # 0x64c8ac64
	.quad	1572530013              # 0x5dbae75d
	.quad	422718233               # 0x19322b19
	.quad	1944491379              # 0x73e69573
	.quad	1623236704              # 0x60c0a060
	.quad	2165938305              # 0x81199881
	.quad	1335808335              # 0x4f9ed14f
	.quad	3701702620              # 0xdca37fdc
	.quad	574907938               # 0x22446622
	.quad	710180394               # 0x2a547e2a
	.quad	2419829648              # 0x903bab90
	.quad	2282455944              # 0x880b8388
	.quad	1183631942              # 0x468cca46
	.quad	4006029806              # 0xeec729ee
	.quad	3094074296              # 0xb86bd3b8
	.quad	338181140               # 0x14283c14
	.quad	3735517662              # 0xdea779de
	.quad	1589437022              # 0x5ebce25e
	.quad	185998603               # 0xb161d0b
	.quad	3685578459              # 0xdbad76db
	.quad	3772464096              # 0xe0db3be0
	.quad	845436466               # 0x32645632
	.quad	980700730               # 0x3a744e3a
	.quad	169090570               # 0xa141e0a
	.quad	1234361161              # 0x4992db49
	.quad	101452294               # 0x60c0a06
	.quad	608726052               # 0x24486c24
	.quad	1555620956              # 0x5cb8e45c
	.quad	3265224130              # 0xc29f5dc2
	.quad	3552407251              # 0xd3bd6ed3
	.quad	2890133420              # 0xac43efac
	.quad	1657054818              # 0x62c4a662
	.quad	2436475025              # 0x9139a891
	.quad	2503058581              # 0x9531a495
	.quad	3839047652              # 0xe4d337e4
	.quad	2045938553              # 0x79f28b79
	.quad	3889509095              # 0xe7d532e7
	.quad	3364570056              # 0xc88b43c8
	.quad	929978679               # 0x376e5937
	.quad	1843050349              # 0x6ddab76d
	.quad	2365688973              # 0x8d018c8d
	.quad	3585172693              # 0xd5b164d5
	.quad	1318900302              # 0x4e9cd24e
	.quad	2840191145              # 0xa949e0a9
	.quad	1826141292              # 0x6cd8b46c
	.quad	1454176854              # 0x56acfa56
	.quad	4109567988              # 0xf4f307f4
	.quad	3939444202              # 0xeacf25ea
	.quad	1707781989              # 0x65caaf65
	.quad	2062847610              # 0x7af48e7a
	.quad	2923948462              # 0xae47e9ae
	.quad	135272456               # 0x8101808
	.quad	3127891386              # 0xba6fd5ba
	.quad	2029029496              # 0x78f08878
	.quad	625635109               # 0x254a6f25
	.quad	777810478               # 0x2e5c722e
	.quad	473441308               # 0x1c38241c
	.quad	2790781350              # 0xa657f1a6
	.quad	3027486644              # 0xb473c7b4
	.quad	3331805638              # 0xc69751c6
	.quad	3905627112              # 0xe8cb23e8
	.quad	3718347997              # 0xdda17cdd
	.quad	1961401460              # 0x74e89c74
	.quad	524165407               # 0x1f3e211f
	.quad	1268178251              # 0x4b96dd4b
	.quad	3177307325              # 0xbd61dcbd
	.quad	2332919435              # 0x8b0d868b
	.quad	2316273034              # 0x8a0f858a
	.quad	1893765232              # 0x70e09070
	.quad	1048330814              # 0x3e7c423e
	.quad	3044132021              # 0xb571c4b5
	.quad	1724688998              # 0x66ccaa66
	.quad	1217452104              # 0x4890d848
	.quad	50726147                # 0x3060503
	.quad	4143383030              # 0xf6f701f6
	.quad	236720654               # 0xe1c120e
	.quad	1640145761              # 0x61c2a361
	.quad	896163637               # 0x356a5f35
	.quad	1471084887              # 0x57aef957
	.quad	3110719673              # 0xb969d0b9
	.quad	2249691526              # 0x86179186
	.quad	3248052417              # 0xc19958c1
	.quad	490350365               # 0x1d3a271d
	.quad	2653403550              # 0x9e27b99e
	.quad	3789109473              # 0xe1d938e1
	.quad	4176155640              # 0xf8eb13f8
	.quad	2553000856              # 0x982bb398
	.quad	287453969               # 0x11223311
	.quad	1775418217              # 0x69d2bb69
	.quad	3651760345              # 0xd9a970d9
	.quad	2382858638              # 0x8e07898e
	.quad	2486413204              # 0x9433a794
	.quad	2603464347              # 0x9b2db69b
	.quad	507257374               # 0x1e3c221e
	.quad	2266337927              # 0x87159287
	.quad	3922272489              # 0xe9c920e9
	.quad	3464972750              # 0xce8749ce
	.quad	1437269845              # 0x55aaff55
	.quad	676362280               # 0x28507828
	.quad	3752164063              # 0xdfa57adf
	.quad	2349043596              # 0x8c038f8c
	.quad	2707028129              # 0xa159f8a1
	.quad	2299101321              # 0x89098089
	.quad	219813645               # 0xd1a170d
	.quad	3211123391              # 0xbf65dabf
	.quad	3872862694              # 0xe6d731e6
	.quad	1115997762              # 0x4284c642
	.quad	1758509160              # 0x68d0b868
	.quad	1099088705              # 0x4182c341
	.quad	2569646233              # 0x9929b099
	.quad	760903469               # 0x2d5a772d
	.quad	253628687               # 0xf1e110f
	.quad	2960903088              # 0xb07bcbb0
	.quad	1420360788              # 0x54a8fc54
	.quad	3144537787              # 0xbb6dd6bb
	.quad	371997206               # 0x162c3a16
	.quad	3332727651              # 0xc6a56363
	.quad	4169432188              # 0xf8847c7c
	.quad	4003034999              # 0xee997777
	.quad	4136467323              # 0xf68d7b7b
	.quad	4279104242              # 0xff0df2f2
	.quad	3602738027              # 0xd6bd6b6b
	.quad	3736170351              # 0xdeb16f6f
	.quad	2438251973              # 0x9154c5c5
	.quad	1615867952              # 0x60503030
	.quad	33751297                # 0x2030101
	.quad	3467208551              # 0xcea96767
	.quad	1451043627              # 0x567d2b2b
	.quad	3877240574              # 0xe719fefe
	.quad	3043153879              # 0xb562d7d7
	.quad	1306962859              # 0x4de6abab
	.quad	3969545846              # 0xec9a7676
	.quad	2403715786              # 0x8f45caca
	.quad	530416258               # 0x1f9d8282
	.quad	2302724553              # 0x8940c9c9
	.quad	4203183485              # 0xfa877d7d
	.quad	4011195130              # 0xef15fafa
	.quad	3001768281              # 0xb2eb5959
	.quad	2395555655              # 0x8ec94747
	.quad	4211863792              # 0xfb0bf0f0
	.quad	1106029997              # 0x41ecadad
	.quad	3009926356              # 0xb367d4d4
	.quad	1610457762              # 0x5ffda2a2
	.quad	1173008303              # 0x45eaafaf
	.quad	599760028               # 0x23bf9c9c
	.quad	1408738468              # 0x53f7a4a4
	.quad	3835064946              # 0xe4967272
	.quad	2606481600              # 0x9b5bc0c0
	.quad	1975695287              # 0x75c2b7b7
	.quad	3776773629              # 0xe11cfdfd
	.quad	1034851219              # 0x3dae9393
	.quad	1282024998              # 0x4c6a2626
	.quad	1817851446              # 0x6c5a3636
	.quad	2118205247              # 0x7e413f3f
	.quad	4110612471              # 0xf502f7f7
	.quad	2203045068              # 0x834fcccc
	.quad	1750873140              # 0x685c3434
	.quad	1374987685              # 0x51f4a5a5
	.quad	3509904869              # 0xd134e5e5
	.quad	4178113009              # 0xf908f1f1
	.quad	3801313649              # 0xe2937171
	.quad	2876496088              # 0xab73d8d8
	.quad	1649619249              # 0x62533131
	.quad	708777237               # 0x2a3f1515
	.quad	135005188               # 0x80c0404
	.quad	2505230279              # 0x9552c7c7
	.quad	1181033251              # 0x46652323
	.quad	2640233411              # 0x9d5ec3c3
	.quad	807933976               # 0x30281818
	.quad	933336726               # 0x37a19696
	.quad	168756485               # 0xa0f0505
	.quad	800430746               # 0x2fb59a9a
	.quad	235472647               # 0xe090707
	.quad	607523346               # 0x24361212
	.quad	463175808               # 0x1b9b8080
	.quad	3745374946              # 0xdf3de2e2
	.quad	3441880043              # 0xcd26ebeb
	.quad	1315514151              # 0x4e692727
	.quad	2144187058              # 0x7fcdb2b2
	.quad	3936318837              # 0xea9f7575
	.quad	303761673               # 0x121b0909
	.quad	496927619               # 0x1d9e8383
	.quad	1484008492              # 0x58742c2c
	.quad	875436570               # 0x342e1a1a
	.quad	908925723               # 0x362d1b1b
	.quad	3702681198              # 0xdcb26e6e
	.quad	3035519578              # 0xb4ee5a5a
	.quad	1543217312              # 0x5bfba0a0
	.quad	2767606354              # 0xa4f65252
	.quad	1984772923              # 0x764d3b3b
	.quad	3076642518              # 0xb761d6d6
	.quad	2110698419              # 0x7dceb3b3
	.quad	1383803177              # 0x527b2929
	.quad	3711886307              # 0xdd3ee3e3
	.quad	1584475951              # 0x5e712f2f
	.quad	328696964               # 0x13978484
	.quad	2801095507              # 0xa6f55353
	.quad	3110654417              # 0xb968d1d1
	.quad	0                       # 0x0
	.quad	3240947181              # 0xc12ceded
	.quad	1080041504              # 0x40602020
	.quad	3810524412              # 0xe31ffcfc
	.quad	2043195825              # 0x79c8b1b1
	.quad	3069008731              # 0xb6ed5b5b
	.quad	3569248874              # 0xd4be6a6a
	.quad	2370227147              # 0x8d46cbcb
	.quad	1742323390              # 0x67d9bebe
	.quad	1917532473              # 0x724b3939
	.quad	2497595978              # 0x94de4a4a
	.quad	2564049996              # 0x98d44c4c
	.quad	2968016984              # 0xb0e85858
	.quad	2236272591              # 0x854acfcf
	.quad	3144405200              # 0xbb6bd0d0
	.quad	3307925487              # 0xc52aefef
	.quad	1340451498              # 0x4fe5aaaa
	.quad	3977706491              # 0xed16fbfb
	.quad	2261074755              # 0x86c54343
	.quad	2597801293              # 0x9ad74d4d
	.quad	1716859699              # 0x66553333
	.quad	294946181               # 0x11948585
	.quad	2328839493              # 0x8acf4545
	.quad	3910203897              # 0xe910f9f9
	.quad	67502594                # 0x4060202
	.quad	4269899647              # 0xfe817f7f
	.quad	2700103760              # 0xa0f05050
	.quad	2017737788              # 0x78443c3c
	.quad	632987551               # 0x25ba9f9f
	.quad	1273211048              # 0x4be3a8a8
	.quad	2733855057              # 0xa2f35151
	.quad	1576969123              # 0x5dfea3a3
	.quad	2160083008              # 0x80c04040
	.quad	92966799                # 0x58a8f8f
	.quad	1068339858              # 0x3fad9292
	.quad	566009245               # 0x21bc9d9d
	.quad	1883781176              # 0x70483838
	.quad	4043634165              # 0xf104f5f5
	.quad	1675607228              # 0x63dfbcbc
	.quad	2009183926              # 0x77c1b6b6
	.quad	2943736538              # 0xaf75dada
	.quad	1113792801              # 0x42632121
	.quad	540020752               # 0x20301010
	.quad	3843751935              # 0xe51affff
	.quad	4245615603              # 0xfd0ef3f3
	.quad	3211645650              # 0xbf6dd2d2
	.quad	2169294285              # 0x814ccdcd
	.quad	403966988               # 0x18140c0c
	.quad	641012499               # 0x26351313
	.quad	3274697964              # 0xc32fecec
	.quad	3202441055              # 0xbee15f5f
	.quad	899848087               # 0x35a29797
	.quad	2295088196              # 0x88cc4444
	.quad	775493399               # 0x2e391717
	.quad	2472002756              # 0x9357c4c4
	.quad	1441965991              # 0x55f2a7a7
	.quad	4236410494              # 0xfc827e7e
	.quad	2051489085              # 0x7a473d3d
	.quad	3366741092              # 0xc8ac6464
	.quad	3135724893              # 0xbae75d5d
	.quad	841685273               # 0x322b1919
	.quad	3868554099              # 0xe6957373
	.quad	3231735904              # 0xc0a06060
	.quad	429425025               # 0x19988181
	.quad	2664517455              # 0x9ed14f4f
	.quad	2743065820              # 0xa37fdcdc
	.quad	1147544098              # 0x44662222
	.quad	1417554474              # 0x547e2a2a
	.quad	1001099408              # 0x3bab9090
	.quad	193169544               # 0xb838888
	.quad	2362066502              # 0x8cca4646
	.quad	3341414126              # 0xc729eeee
	.quad	1809037496              # 0x6bd3b8b8
	.quad	675025940               # 0x283c1414
	.quad	2809781982              # 0xa779dede
	.quad	3168951902              # 0xbce25e5e
	.quad	371002123               # 0x161d0b0b
	.quad	2910247899              # 0xad76dbdb
	.quad	3678134496              # 0xdb3be0e0
	.quad	1683370546              # 0x64563232
	.quad	1951283770              # 0x744e3a3a
	.quad	337512970               # 0x141e0a0a
	.quad	2463844681              # 0x92db4949
	.quad	201983494               # 0xc0a0606
	.quad	1215046692              # 0x486c2424
	.quad	3101973596              # 0xb8e45c5c
	.quad	2673722050              # 0x9f5dc2c2
	.quad	3178157011              # 0xbd6ed3d3
	.quad	1139780780              # 0x43efacac
	.quad	3299238498              # 0xc4a66262
	.quad	967348625               # 0x39a89191
	.quad	832869781               # 0x31a49595
	.quad	3543655652              # 0xd337e4e4
	.quad	4069226873              # 0xf28b7979
	.quad	3576883175              # 0xd532e7e7
	.quad	2336475336              # 0x8b43c8c8
	.quad	1851340599              # 0x6e593737
	.quad	3669454189              # 0xdab76d6d
	.quad	25988493                # 0x18c8d8d
	.quad	2976175573              # 0xb164d5d5
	.quad	2631028302              # 0x9cd24e4e
	.quad	1239460265              # 0x49e0a9a9
	.quad	3635702892              # 0xd8b46c6c
	.quad	2902087254              # 0xacfa5656
	.quad	4077384948              # 0xf307f4f4
	.quad	3475368682              # 0xcf25eaea
	.quad	3400492389              # 0xcaaf6565
	.quad	4102978170              # 0xf48e7a7a
	.quad	1206496942              # 0x47e9aeae
	.quad	270010376               # 0x10180808
	.quad	1876277946              # 0x6fd5baba
	.quad	4035475576              # 0xf0887878
	.quad	1248797989              # 0x4a6f2525
	.quad	1550986798              # 0x5c722e2e
	.quad	941890588               # 0x38241c1c
	.quad	1475454630              # 0x57f1a6a6
	.quad	1942467764              # 0x73c7b4b4
	.quad	2538718918              # 0x9751c6c6
	.quad	3408128232              # 0xcb23e8e8
	.quad	2709315037              # 0xa17cdddd
	.quad	3902567540              # 0xe89c7474
	.quad	1042358047              # 0x3e211f1f
	.quad	2531085131              # 0x96dd4b4b
	.quad	1641856445              # 0x61dcbdbd
	.quad	226921355               # 0xd868b8b
	.quad	260409994               # 0xf858a8a
	.quad	3767562352              # 0xe0907070
	.quad	2084716094              # 0x7c423e3e
	.quad	1908716981              # 0x71c4b5b5
	.quad	3433719398              # 0xccaa6666
	.quad	2430093384              # 0x90d84848
	.quad	100991747               # 0x6050303
	.quad	4144101110              # 0xf701f6f6
	.quad	470945294               # 0x1c120e0e
	.quad	3265487201              # 0xc2a36161
	.quad	1784624437              # 0x6a5f3535
	.quad	2935576407              # 0xaef95757
	.quad	1775286713              # 0x69d0b9b9
	.quad	395413126               # 0x17918686
	.quad	2572730817              # 0x9958c1c1
	.quad	975641885               # 0x3a271d1d
	.quad	666476190               # 0x27b99e9e
	.quad	3644383713              # 0xd938e1e1
	.quad	3943954680              # 0xeb13f8f8
	.quad	733190296               # 0x2bb39898
	.quad	573772049               # 0x22331111
	.quad	3535497577              # 0xd2bb6969
	.quad	2842745305              # 0xa970d9d9
	.quad	126455438               # 0x7898e8e
	.quad	866620564               # 0x33a79494
	.quad	766942107               # 0x2db69b9b
	.quad	1008868894              # 0x3c221e1e
	.quad	361924487               # 0x15928787
	.quad	3374377449              # 0xc920e9e9
	.quad	2269761230              # 0x8749cece
	.quad	2868860245              # 0xaaff5555
	.quad	1350051880              # 0x50782828
	.quad	2776293343              # 0xa57adfdf
	.quad	59739276                # 0x38f8c8c
	.quad	1509466529              # 0x59f8a1a1
	.quad	159418761               # 0x9808989
	.quad	437718285               # 0x1a170d0d
	.quad	1708834751              # 0x65dabfbf
	.quad	3610371814              # 0xd731e6e6
	.quad	2227585602              # 0x84c64242
	.quad	3501746280              # 0xd0b86868
	.quad	2193834305              # 0x82c34141
	.quad	699439513               # 0x29b09999
	.quad	1517759789              # 0x5a772d2d
	.quad	504434447               # 0x1e110f0f
	.quad	2076946608              # 0x7bcbb0b0
	.quad	2835108948              # 0xa8fc5454
	.quad	1842789307              # 0x6dd6bbbb
	.quad	742004246               # 0x2c3a1616
	.size	ft_tab, 8192

	.type	it_tab,@object          # @it_tab
	.globl	it_tab
	.p2align	4
it_tab:
	.quad	1353184337              # 0x50a7f451
	.quad	1399144830              # 0x5365417e
	.quad	3282310938              # 0xc3a4171a
	.quad	2522752826              # 0x965e273a
	.quad	3412831035              # 0xcb6bab3b
	.quad	4047871263              # 0xf1459d1f
	.quad	2874735276              # 0xab58faac
	.quad	2466505547              # 0x9303e34b
	.quad	1442459680              # 0x55fa3020
	.quad	4134368941              # 0xf66d76ad
	.quad	2440481928              # 0x9176cc88
	.quad	625738485               # 0x254c02f5
	.quad	4242007375              # 0xfcd7e54f
	.quad	3620416197              # 0xd7cb2ac5
	.quad	2151953702              # 0x80443526
	.quad	2409849525              # 0x8fa362b5
	.quad	1230680542              # 0x495ab1de
	.quad	1729870373              # 0x671bba25
	.quad	2551114309              # 0x980eea45
	.quad	3787521629              # 0xe1c0fe5d
	.quad	41234371                # 0x2752fc3
	.quad	317738113               # 0x12f04c81
	.quad	2744600205              # 0xa397468d
	.quad	3338261355              # 0xc6f9d36b
	.quad	3881799427              # 0xe75f8f03
	.quad	2510066197              # 0x959c9215
	.quad	3950669247              # 0xeb7a6dbf
	.quad	3663286933              # 0xda595295
	.quad	763608788               # 0x2d83bed4
	.quad	3542185048              # 0xd3217458
	.quad	694804553               # 0x2969e049
	.quad	1154009486              # 0x44c8c98e
	.quad	1787413109              # 0x6a89c275
	.quad	2021232372              # 0x78798ef4
	.quad	1799248025              # 0x6b3e5899
	.quad	3715217703              # 0xdd71b927
	.quad	3058688446              # 0xb64fe1be
	.quad	397248752               # 0x17ad88f0
	.quad	1722556617              # 0x66ac20c9
	.quad	3023752829              # 0xb43ace7d
	.quad	407560035               # 0x184adf63
	.quad	2184256229              # 0x82311ae5
	.quad	1613975959              # 0x60335197
	.quad	1165972322              # 0x457f5362
	.quad	3765920945              # 0xe07764b1
	.quad	2226023355              # 0x84ae6bbb
	.quad	480281086               # 0x1ca081fe
	.quad	2485848313              # 0x942b08f9
	.quad	1483229296              # 0x58684870
	.quad	436028815               # 0x19fd458f
	.quad	2272059028              # 0x876cde94
	.quad	3086515026              # 0xb7f87b52
	.quad	601060267               # 0x23d373ab
	.quad	3791801202              # 0xe2024b72
	.quad	1468997603              # 0x578f1fe3
	.quad	715871590               # 0x2aab5566
	.quad	120122290               # 0x728ebb2
	.quad	63092015                # 0x3c2b52f
	.quad	2591802758              # 0x9a7bc586
	.quad	2768779219              # 0xa50837d3
	.quad	4068943920              # 0xf2872830
	.quad	2997206819              # 0xb2a5bf23
	.quad	3127509762              # 0xba6a0302
	.quad	1552029421              # 0x5c8216ed
	.quad	723308426               # 0x2b1ccf8a
	.quad	2461301159              # 0x92b479a7
	.quad	4042393587              # 0xf0f207f3
	.quad	2715969870              # 0xa1e2694e
	.quad	3455375973              # 0xcdf4da65
	.quad	3586000134              # 0xd5be0506
	.quad	526529745               # 0x1f6234d1
	.quad	2331944644              # 0x8afea6c4
	.quad	2639474228              # 0x9d532e34
	.quad	2689987490              # 0xa055f3a2
	.quad	853641733               # 0x32e18a05
	.quad	1978398372              # 0x75ebf6a4
	.quad	971801355               # 0x39ec830b
	.quad	2867814464              # 0xaaef6040
	.quad	111112542               # 0x69f715e
	.quad	1360031421              # 0x51106ebd
	.quad	4186579262              # 0xf98a213e
	.quad	1023860118              # 0x3d06dd96
	.quad	2919579357              # 0xae053edd
	.quad	1186850381              # 0x46bde64d
	.quad	3045938321              # 0xb58d5491
	.quad	90031217                # 0x55dc471
	.quad	1876166148              # 0x6fd40604
	.quad	4279586912              # 0xff155060
	.quad	620468249               # 0x24fb9819
	.quad	2548678102              # 0x97e9bdd6
	.quad	3426959497              # 0xcc434089
	.quad	2006899047              # 0x779ed967
	.quad	3175278768              # 0xbd42e8b0
	.quad	2290845959              # 0x888b8907
	.quad	945494503               # 0x385b19e7
	.quad	3689859193              # 0xdbeec879
	.quad	1191869601              # 0x470a7ca1
	.quad	3910091388              # 0xe90f427c
	.quad	3374220536              # 0xc91e84f8
	.quad	0                       # 0x0
	.quad	2206629897              # 0x83868009
	.quad	1223502642              # 0x48ed2b32
	.quad	2893025566              # 0xac70111e
	.quad	1316117100              # 0x4e725a6c
	.quad	4227796733              # 0xfbff0efd
	.quad	1446544655              # 0x5638850f
	.quad	517320253               # 0x1ed5ae3d
	.quad	658058550               # 0x27392d36
	.quad	1691946762              # 0x64d90f0a
	.quad	564550760               # 0x21a65c68
	.quad	3511966619              # 0xd1545b9b
	.quad	976107044               # 0x3a2e3624
	.quad	2976320012              # 0xb1670a0c
	.quad	266819475               # 0xfe75793
	.quad	3533106868              # 0xd296eeb4
	.quad	2660342555              # 0x9e919b1b
	.quad	1338359936              # 0x4fc5c080
	.quad	2720062561              # 0xa220dc61
	.quad	1766553434              # 0x694b775a
	.quad	370807324               # 0x161a121c
	.quad	179999714               # 0xaba93e2
	.quad	3844776128              # 0xe52aa0c0
	.quad	1138762300              # 0x43e0223c
	.quad	488053522               # 0x1d171b12
	.quad	185403662               # 0xb0d090e
	.quad	2915535858              # 0xadc78bf2
	.quad	3114841645              # 0xb9a8b62d
	.quad	3366526484              # 0xc8a91e14
	.quad	2233069911              # 0x8519f157
	.quad	1275557295              # 0x4c0775af
	.quad	3151862254              # 0xbbdd99ee
	.quad	4250959779              # 0xfd607fa3
	.quad	2670068215              # 0x9f2601f7
	.quad	3170202204              # 0xbcf5725c
	.quad	3309004356              # 0xc53b6644
	.quad	880737115               # 0x347efb5b
	.quad	1982415755              # 0x7629438b
	.quad	3703972811              # 0xdcc623cb
	.quad	1761406390              # 0x68fcedb6
	.quad	1676797112              # 0x63f1e4b8
	.quad	3403428311              # 0xcadc31d7
	.quad	277177154               # 0x10856342
	.quad	1076008723              # 0x40229713
	.quad	538035844               # 0x2011c684
	.quad	2099530373              # 0x7d244a85
	.quad	4164795346              # 0xf83dbbd2
	.quad	288553390               # 0x1132f9ae
	.quad	1839278535              # 0x6da129c7
	.quad	1261411869              # 0x4b2f9e1d
	.quad	4080055004              # 0xf330b2dc
	.quad	3964831245              # 0xec52860d
	.quad	3504587127              # 0xd0e3c177
	.quad	1813426987              # 0x6c16b32b
	.quad	2579067049              # 0x99b970a9
	.quad	4199060497              # 0xfa489411
	.quad	577038663               # 0x2264e947
	.quad	3297574056              # 0xc48cfca8
	.quad	440397984               # 0x1a3ff0a0
	.quad	3626794326              # 0xd82c7d56
	.quad	4019204898              # 0xef903322
	.quad	3343796615              # 0xc74e4987
	.quad	3251714265              # 0xc1d138d9
	.quad	4272081548              # 0xfea2ca8c
	.quad	906744984               # 0x360bd498
	.quad	3481400742              # 0xcf81f5a6
	.quad	685669029               # 0x28de7aa5
	.quad	646887386               # 0x268eb7da
	.quad	2764025151              # 0xa4bfad3f
	.quad	3835509292              # 0xe49d3a2c
	.quad	227702864               # 0xd927850
	.quad	2613862250              # 0x9bcc5f6a
	.quad	1648787028              # 0x62467e54
	.quad	3256061430              # 0xc2138df6
	.quad	3904428176              # 0xe8b8d890
	.quad	1593260334              # 0x5ef7392e
	.quad	4121936770              # 0xf5afc382
	.quad	3196083615              # 0xbe805d9f
	.quad	2090061929              # 0x7c93d069
	.quad	2838353263              # 0xa92dd56f
	.quad	3004310991              # 0xb31225cf
	.quad	999926984               # 0x3b99acc8
	.quad	2809993232              # 0xa77d1810
	.quad	1852021992              # 0x6e639ce8
	.quad	2075868123              # 0x7bbb3bdb
	.quad	158869197               # 0x97826cd
	.quad	4095236462              # 0xf418596e
	.quad	28809964                # 0x1b79aec
	.quad	2828685187              # 0xa89a4f83
	.quad	1701746150              # 0x656e95e6
	.quad	2129067946              # 0x7ee6ffaa
	.quad	147831841               # 0x8cfbc21
	.quad	3873969647              # 0xe6e815ef
	.quad	3650873274              # 0xd99be7ba
	.quad	3459673930              # 0xce366f4a
	.quad	3557400554              # 0xd4099fea
	.quad	3598495785              # 0xd67cb029
	.quad	2947720241              # 0xafb2a431
	.quad	824393514               # 0x31233f2a
	.quad	815048134               # 0x3094a5c6
	.quad	3227951669              # 0xc066a235
	.quad	935087732               # 0x37bc4e74
	.quad	2798289660              # 0xa6ca82fc
	.quad	2966458592              # 0xb0d090e0
	.quad	366520115               # 0x15d8a733
	.quad	1251476721              # 0x4a9804f1
	.quad	4158319681              # 0xf7daec41
	.quad	240176511               # 0xe50cd7f
	.quad	804688151               # 0x2ff69117
	.quad	2379631990              # 0x8dd64d76
	.quad	1303441219              # 0x4db0ef43
	.quad	1414376140              # 0x544daacc
	.quad	3741619940              # 0xdf0496e4
	.quad	3820343710              # 0xe3b5d19e
	.quad	461924940               # 0x1b886a4c
	.quad	3089050817              # 0xb81f2cc1
	.quad	2136040774              # 0x7f516546
	.quad	82468509                # 0x4ea5e9d
	.quad	1563790337              # 0x5d358c01
	.quad	1937016826              # 0x737487fa
	.quad	776014843               # 0x2e410bfb
	.quad	1511876531              # 0x5a1d67b3
	.quad	1389550482              # 0x52d2db92
	.quad	861278441               # 0x335610e9
	.quad	323475053               # 0x1347d66d
	.quad	2355222426              # 0x8c61d79a
	.quad	2047648055              # 0x7a0ca137
	.quad	2383738969              # 0x8e14f859
	.quad	2302415851              # 0x893c13eb
	.quad	3995576782              # 0xee27a9ce
	.quad	902390199               # 0x35c961b7
	.quad	3991215329              # 0xede51ce1
	.quad	1018251130              # 0x3cb1477a
	.quad	1507840668              # 0x59dfd29c
	.quad	1064563285              # 0x3f73f255
	.quad	2043548696              # 0x79ce1418
	.quad	3208103795              # 0xbf37c773
	.quad	3939366739              # 0xeacdf753
	.quad	1537932639              # 0x5baafd5f
	.quad	342834655               # 0x146f3ddf
	.quad	2262516856              # 0x86db4478
	.quad	2180231114              # 0x81f3afca
	.quad	1053059257              # 0x3ec468b9
	.quad	741614648               # 0x2c342438
	.quad	1598071746              # 0x5f40a3c2
	.quad	1925389590              # 0x72c31d16
	.quad	203809468               # 0xc25e2bc
	.quad	2336832552              # 0x8b493c28
	.quad	1100287487              # 0x41950dff
	.quad	1895934009              # 0x7101a839
	.quad	3736275976              # 0xdeb30c08
	.quad	2632234200              # 0x9ce4b4d8
	.quad	2428589668              # 0x90c15664
	.quad	1636092795              # 0x6184cb7b
	.quad	1890988757              # 0x70b632d5
	.quad	1952214088              # 0x745c6c48
	.quad	1113045200              # 0x4257b8d0
	.quad	2817806672              # 0xa7f45150
	.quad	1698790995              # 0x65417e53
	.quad	2752977603              # 0xa4171ac3
	.quad	1579629206              # 0x5e273a96
	.quad	1806384075              # 0x6bab3bcb
	.quad	1167925233              # 0x459d1ff1
	.quad	1492823211              # 0x58faacab
	.quad	65227667                # 0x3e34b93
	.quad	4197458005              # 0xfa302055
	.quad	1836494326              # 0x6d76adf6
	.quad	1993115793              # 0x76cc8891
	.quad	1275262245              # 0x4c02f525
	.quad	3622129660              # 0xd7e54ffc
	.quad	3408578007              # 0xcb2ac5d7
	.quad	1144333952              # 0x44352680
	.quad	2741155215              # 0xa362b58f
	.quad	1521606217              # 0x5ab1de49
	.quad	465184103               # 0x1bba2567
	.quad	250234264               # 0xeea4598
	.quad	3237895649              # 0xc0fe5de1
	.quad	1966064386              # 0x752fc302
	.quad	4031545618              # 0xf04c8112
	.quad	2537983395              # 0x97468da3
	.quad	4191382470              # 0xf9d36bc6
	.quad	1603208167              # 0x5f8f03e7
	.quad	2626819477              # 0x9c921595
	.quad	2054012907              # 0x7a6dbfeb
	.quad	1498584538              # 0x595295da
	.quad	2210321453              # 0x83bed42d
	.quad	561273043               # 0x217458d3
	.quad	1776306473              # 0x69e04929
	.quad	3368652356              # 0xc8c98e44
	.quad	2311222634              # 0x89c2756a
	.quad	2039411832              # 0x798ef478
	.quad	1045993835              # 0x3e58996b
	.quad	1907959773              # 0x71b927dd
	.quad	1340194486              # 0x4fe1beb6
	.quad	2911432727              # 0xad88f017
	.quad	2887829862              # 0xac20c966
	.quad	986611124               # 0x3ace7db4
	.quad	1256153880              # 0x4adf6318
	.quad	823846274               # 0x311ae582
	.quad	860985184               # 0x33519760
	.quad	2136171077              # 0x7f536245
	.quad	2003087840              # 0x7764b1e0
	.quad	2926295940              # 0xae6bbb84
	.quad	2692873756              # 0xa081fe1c
	.quad	722008468               # 0x2b08f994
	.quad	1749577816              # 0x68487058
	.quad	4249194265              # 0xfd458f19
	.quad	1826526343              # 0x6cde9487
	.quad	4168831671              # 0xf87b52b7
	.quad	3547573027              # 0xd373ab23
	.quad	38499042                # 0x24b72e2
	.quad	2401231703              # 0x8f1fe357
	.quad	2874500650              # 0xab55662a
	.quad	686535175               # 0x28ebb207
	.quad	3266653955              # 0xc2b52f03
	.quad	2076542618              # 0x7bc5869a
	.quad	137876389               # 0x837d3a5
	.quad	2267558130              # 0x872830f2
	.quad	2780767154              # 0xa5bf23b2
	.quad	1778582202              # 0x6a0302ba
	.quad	2182540636              # 0x8216ed5c
	.quad	483363371               # 0x1ccf8a2b
	.quad	3027871634              # 0xb479a792
	.quad	4060607472              # 0xf207f3f0
	.quad	3798552225              # 0xe2694ea1
	.quad	4107953613              # 0xf4da65cd
	.quad	3188000469              # 0xbe0506d5
	.quad	1647628575              # 0x6234d11f
	.quad	4272342154              # 0xfea6c48a
	.quad	1395537053              # 0x532e349d
	.quad	1442030240              # 0x55f3a2a0
	.quad	3783918898              # 0xe18a0532
	.quad	3958809717              # 0xebf6a475
	.quad	3968011065              # 0xec830b39
	.quad	4016062634              # 0xef6040aa
	.quad	2675006982              # 0x9f715e06
	.quad	275692881               # 0x106ebd51
	.quad	2317434617              # 0x8a213ef9
	.quad	115185213               # 0x6dd963d
	.quad	88006062                # 0x53eddae
	.quad	3185986886              # 0xbde64d46
	.quad	2371129781              # 0x8d5491b5
	.quad	1573155077              # 0x5dc47105
	.quad	3557164143              # 0xd406046f
	.quad	357589247               # 0x155060ff
	.quad	4221049124              # 0xfb981924
	.quad	3921532567              # 0xe9bdd697
	.quad	1128303052              # 0x434089cc
	.quad	2665047927              # 0x9ed96777
	.quad	1122545853              # 0x42e8b0bd
	.quad	2341013384              # 0x8b890788
	.quad	1528424248              # 0x5b19e738
	.quad	4006115803              # 0xeec879db
	.quad	175939911               # 0xa7ca147
	.quad	256015593               # 0xf427ce9
	.quad	512030921               # 0x1e84f8c9
	.quad	0                       # 0x0
	.quad	2256537987              # 0x86800983
	.quad	3979031112              # 0xed2b3248
	.quad	1880170156              # 0x70111eac
	.quad	1918528590              # 0x725a6c4e
	.quad	4279172603              # 0xff0efdfb
	.quad	948244310               # 0x38850f56
	.quad	3584965918              # 0xd5ae3d1e
	.quad	959264295               # 0x392d3627
	.quad	3641641572              # 0xd90f0a64
	.quad	2791073825              # 0xa65c6821
	.quad	1415289809              # 0x545b9bd1
	.quad	775300154               # 0x2e36243a
	.quad	1728711857              # 0x670a0cb1
	.quad	3881276175              # 0xe757930f
	.quad	2532226258              # 0x96eeb4d2
	.quad	2442861470              # 0x919b1b9e
	.quad	3317727311              # 0xc5c0804f
	.quad	551313826               # 0x20dc61a2
	.quad	1266113129              # 0x4b775a69
	.quad	437394454               # 0x1a121c16
	.quad	3130253834              # 0xba93e20a
	.quad	715178213               # 0x2aa0c0e5
	.quad	3760340035              # 0xe0223c43
	.quad	387650077               # 0x171b121d
	.quad	218697227               # 0xd090e0b
	.quad	3347837613              # 0xc78bf2ad
	.quad	2830511545              # 0xa8b62db9
	.quad	2837320904              # 0xa91e14c8
	.quad	435246981               # 0x19f15785
	.quad	125153100               # 0x775af4c
	.quad	3717852859              # 0xdd99eebb
	.quad	1618977789              # 0x607fa3fd
	.quad	637663135               # 0x2601f79f
	.quad	4117912764              # 0xf5725cbc
	.quad	996558021               # 0x3b6644c5
	.quad	2130402100              # 0x7efb5b34
	.quad	692292470               # 0x29438b76
	.quad	3324234716              # 0xc623cbdc
	.quad	4243437160              # 0xfcedb668
	.quad	4058298467              # 0xf1e4b863
	.quad	3694254026              # 0xdc31d7ca
	.quad	2237874704              # 0x85634210
	.quad	580326208               # 0x22971340
	.quad	298222624               # 0x11c68420
	.quad	608863613               # 0x244a857d
	.quad	1035719416              # 0x3dbbd2f8
	.quad	855223825               # 0x32f9ae11
	.quad	2703869805              # 0xa129c76d
	.quad	798891339               # 0x2f9e1d4b
	.quad	817028339               # 0x30b2dcf3
	.quad	1384517100              # 0x52860dec
	.quad	3821107152              # 0xe3c177d0
	.quad	380840812               # 0x16b32b6c
	.quad	3111168409              # 0xb970a999
	.quad	1217663482              # 0x489411fa
	.quad	1693009698              # 0x64e94722
	.quad	2365368516              # 0x8cfca8c4
	.quad	1072734234              # 0x3ff0a01a
	.quad	746411736               # 0x2c7d56d8
	.quad	2419270383              # 0x903322ef
	.quad	1313441735              # 0x4e4987c7
	.quad	3510163905              # 0xd138d9c1
	.quad	2731183358              # 0xa2ca8cfe
	.quad	198481974               # 0xbd49836
	.quad	2180359887              # 0x81f5a6cf
	.quad	3732579624              # 0xde7aa528
	.quad	2394413606              # 0x8eb7da26
	.quad	3215802276              # 0xbfad3fa4
	.quad	2637835492              # 0x9d3a2ce4
	.quad	2457358349              # 0x9278500d
	.quad	3428805275              # 0xcc5f6a9b
	.quad	1182684258              # 0x467e5462
	.quad	328070850               # 0x138df6c2
	.quad	3101200616              # 0xb8d890e8
	.quad	4147719774              # 0xf7392e5e
	.quad	2948825845              # 0xafc382f5
	.quad	2153619390              # 0x805d9fbe
	.quad	2479909244              # 0x93d0697c
	.quad	768962473               # 0x2dd56fa9
	.quad	304467891               # 0x1225cfb3
	.quad	2578237499              # 0x99acc83b
	.quad	2098729127              # 0x7d1810a7
	.quad	1671227502              # 0x639ce86e
	.quad	3141262203              # 0xbb3bdb7b
	.quad	2015808777              # 0x7826cd09
	.quad	408514292               # 0x18596ef4
	.quad	3080383489              # 0xb79aec01
	.quad	2588902312              # 0x9a4f83a8
	.quad	1855317605              # 0x6e95e665
	.quad	3875515006              # 0xe6ffaa7e
	.quad	3485212936              # 0xcfbc2108
	.quad	3893751782              # 0xe815efe6
	.quad	2615655129              # 0x9be7bad9
	.quad	913263310               # 0x366f4ace
	.quad	161475284               # 0x99fead4
	.quad	2091919830              # 0x7cb029d6
	.quad	2997105071              # 0xb2a431af
	.quad	591342129               # 0x233f2a31
	.quad	2493892144              # 0x94a5c630
	.quad	1721906624              # 0x66a235c0
	.quad	3159258167              # 0xbc4e7437
	.quad	3397581990              # 0xca82fca6
	.quad	3499155632              # 0xd090e0b0
	.quad	3634836245              # 0xd8a73315
	.quad	2550460746              # 0x9804f14a
	.quad	3672916471              # 0xdaec41f7
	.quad	1355644686              # 0x50cd7f0e
	.quad	4136703791              # 0xf691172f
	.quad	3595400845              # 0xd64d768d
	.quad	2968470349              # 0xb0ef434d
	.quad	1303039060              # 0x4daacc54
	.quad	76997855                # 0x496e4df
	.quad	3050413795              # 0xb5d19ee3
	.quad	2288667675              # 0x886a4c1b
	.quad	523026872               # 0x1f2cc1b8
	.quad	1365591679              # 0x5165467f
	.quad	3932069124              # 0xea5e9d04
	.quad	898367837               # 0x358c015d
	.quad	1955068531              # 0x7487fa73
	.quad	1091304238              # 0x410bfb2e
	.quad	493335386               # 0x1d67b35a
	.quad	3537605202              # 0xd2db9252
	.quad	1443948851              # 0x5610e933
	.quad	1205234963              # 0x47d66d13
	.quad	1641519756              # 0x61d79a8c
	.quad	211892090               # 0xca1377a
	.quad	351820174               # 0x14f8598e
	.quad	1007938441              # 0x3c13eb89
	.quad	665439982               # 0x27a9ceee
	.quad	3378624309              # 0xc961b735
	.quad	3843875309              # 0xe51ce1ed
	.quad	2974251580              # 0xb1477a3c
	.quad	3755121753              # 0xdfd29c59
	.quad	1945261375              # 0x73f2553f
	.quad	3457423481              # 0xce141879
	.quad	935818175               # 0x37c773bf
	.quad	3455538154              # 0xcdf753ea
	.quad	2868731739              # 0xaafd5f5b
	.quad	1866325780              # 0x6f3ddf14
	.quad	3678697606              # 0xdb447886
	.quad	4088384129              # 0xf3afca81
	.quad	3295197502              # 0xc468b93e
	.quad	874788908               # 0x3424382c
	.quad	1084473951              # 0x40a3c25f
	.quad	3273463410              # 0xc31d1672
	.quad	635616268               # 0x25e2bc0c
	.quad	1228679307              # 0x493c288b
	.quad	2500722497              # 0x950dff41
	.quad	27801969                # 0x1a83971
	.quad	3003910366              # 0xb30c08de
	.quad	3837057180              # 0xe4b4d89c
	.quad	3243664528              # 0xc1566490
	.quad	2227927905              # 0x84cb7b61
	.quad	3056784752              # 0xb632d570
	.quad	1550600308              # 0x5c6c4874
	.quad	1471729730              # 0x57b8d042
	.quad	4098969767              # 0xf45150a7
	.quad	1098797925              # 0x417e5365
	.quad	387629988               # 0x171ac3a4
	.quad	658151006               # 0x273a965e
	.quad	2872822635              # 0xab3bcb6b
	.quad	2636116293              # 0x9d1ff145
	.quad	4205620056              # 0xfaacab58
	.quad	3813380867              # 0xe34b9303
	.quad	807425530               # 0x302055fa
	.quad	1991112301              # 0x76adf66d
	.quad	3431502198              # 0xcc889176
	.quad	49620300                # 0x2f5254c
	.quad	3847224535              # 0xe54ffcd7
	.quad	717608907               # 0x2ac5d7cb
	.quad	891715652               # 0x35268044
	.quad	1656065955              # 0x62b58fa3
	.quad	2984135002              # 0xb1de495a
	.quad	3123013403              # 0xba25671b
	.quad	3930429454              # 0xea45980e
	.quad	4267565504              # 0xfe5de1c0
	.quad	801309301               # 0x2fc30275
	.quad	1283527408              # 0x4c8112f0
	.quad	1183687575              # 0x468da397
	.quad	3547055865              # 0xd36bc6f9
	.quad	2399397727              # 0x8f03e75f
	.quad	2450888092              # 0x9215959c
	.quad	1841294202              # 0x6dbfeb7a
	.quad	1385552473              # 0x5295da59
	.quad	3201576323              # 0xbed42d83
	.quad	1951978273              # 0x7458d321
	.quad	3762891113              # 0xe0492969
	.quad	3381544136              # 0xc98e44c8
	.quad	3262474889              # 0xc2756a89
	.quad	2398386297              # 0x8ef47879
	.quad	1486449470              # 0x58996b3e
	.quad	3106397553              # 0xb927dd71
	.quad	3787372111              # 0xe1beb64f
	.quad	2297436077              # 0x88f017ad
	.quad	550069932               # 0x20c966ac
	.quad	3464344634              # 0xce7db43a
	.quad	3747813450              # 0xdf63184a
	.quad	451248689               # 0x1ae58231
	.quad	1368875059              # 0x51976033
	.quad	1398949247              # 0x5362457f
	.quad	1689378935              # 0x64b1e077
	.quad	1807451310              # 0x6bbb84ae
	.quad	2180914336              # 0x81fe1ca0
	.quad	150574123               # 0x8f9942b
	.quad	1215322216              # 0x48705868
	.quad	1167006205              # 0x458f19fd
	.quad	3734275948              # 0xde94876c
	.quad	2069018616              # 0x7b52b7f8
	.quad	1940595667              # 0x73ab23d3
	.quad	1265820162              # 0x4b72e202
	.quad	534992783               # 0x1fe3578f
	.quad	1432758955              # 0x55662aab
	.quad	3954313000              # 0xebb20728
	.quad	3039757250              # 0xb52f03c2
	.quad	3313932923              # 0xc5869a7b
	.quad	936617224               # 0x37d3a508
	.quad	674296455               # 0x2830f287
	.quad	3206787749              # 0xbf23b2a5
	.quad	50510442                # 0x302ba6a
	.quad	384654466               # 0x16ed5c82
	.quad	3481938716              # 0xcf8a2b1c
	.quad	2041025204              # 0x79a792b4
	.quad	133427442               # 0x7f3f0f2
	.quad	1766760930              # 0x694ea1e2
	.quad	3664104948              # 0xda65cdf4
	.quad	84334014                # 0x506d5be
	.quad	886120290               # 0x34d11f62
	.quad	2797898494              # 0xa6c48afe
	.quad	775200083               # 0x2e349d53
	.quad	4087521365              # 0xf3a2a055
	.quad	2315596513              # 0x8a0532e1
	.quad	4137973227              # 0xf6a475eb
	.quad	2198551020              # 0x830b39ec
	.quad	1614850799              # 0x6040aaef
	.quad	1901987487              # 0x715e069f
	.quad	1857900816              # 0x6ebd5110
	.quad	557775242               # 0x213ef98a
	.quad	3717610758              # 0xdd963d06
	.quad	1054715397              # 0x3eddae05
	.quad	3863824061              # 0xe64d46bd
	.quad	1418835341              # 0x5491b58d
	.quad	3295741277              # 0xc471055d
	.quad	100954068               # 0x6046fd4
	.quad	1348534037              # 0x5060ff15
	.quad	2551784699              # 0x981924fb
	.quad	3184957417              # 0xbdd697e9
	.quad	1082772547              # 0x4089cc43
	.quad	3647436702              # 0xd967779e
	.quad	3903896898              # 0xe8b0bd42
	.quad	2298972299              # 0x8907888b
	.quad	434583643               # 0x19e7385b
	.quad	3363429358              # 0xc879dbee
	.quad	2090944266              # 0x7ca1470a
	.quad	1115482383              # 0x427ce90f
	.quad	2230896926              # 0x84f8c91e
	.quad	0                       # 0x0
	.quad	2148107142              # 0x80098386
	.quad	724715757               # 0x2b3248ed
	.quad	287222896               # 0x111eac70
	.quad	1517047410              # 0x5a6c4e72
	.quad	251526143               # 0xefdfbff
	.quad	2232374840              # 0x850f5638
	.quad	2923241173              # 0xae3d1ed5
	.quad	758523705               # 0x2d362739
	.quad	252339417               # 0xf0a64d9
	.quad	1550328230              # 0x5c6821a6
	.quad	1536938324              # 0x5b9bd154
	.quad	908343854               # 0x36243a2e
	.quad	168604007               # 0xa0cb167
	.quad	1469255655              # 0x57930fe7
	.quad	4004827798              # 0xeeb4d296
	.quad	2602278545              # 0x9b1b9e91
	.quad	3229634501              # 0xc0804fc5
	.quad	3697386016              # 0xdc61a220
	.quad	2002413899              # 0x775a694b
	.quad	303830554               # 0x121c161a
	.quad	2481064634              # 0x93e20aba
	.quad	2696996138              # 0xa0c0e52a
	.quad	574374880               # 0x223c43e0
	.quad	454171927               # 0x1b121d17
	.quad	151915277               # 0x90e0b0d
	.quad	2347937223              # 0x8bf2adc7
	.quad	3056449960              # 0xb62db9a8
	.quad	504678569               # 0x1e14c8a9
	.quad	4049044761              # 0xf1578519
	.quad	1974422535              # 0x75af4c07
	.quad	2582559709              # 0x99eebbdd
	.quad	2141453664              # 0x7fa3fd60
	.quad	33005350                # 0x1f79f26
	.quad	1918680309              # 0x725cbcf5
	.quad	1715782971              # 0x6644c53b
	.quad	4217058430              # 0xfb5b347e
	.quad	1133213225              # 0x438b7629
	.quad	600562886               # 0x23cbdcc6
	.quad	3988154620              # 0xedb668fc
	.quad	3837289457              # 0xe4b863f1
	.quad	836225756               # 0x31d7cadc
	.quad	1665273989              # 0x63421085
	.quad	2534621218              # 0x97134022
	.quad	3330547729              # 0xc6842011
	.quad	1250262308              # 0x4a857d24
	.quad	3151165501              # 0xbbd2f83d
	.quad	4188934450              # 0xf9ae1132
	.quad	700935585               # 0x29c76da1
	.quad	2652719919              # 0x9e1d4b2f
	.quad	3000824624              # 0xb2dcf330
	.quad	2249059410              # 0x860dec52
	.quad	3245854947              # 0xc177d0e3
	.quad	3005967382              # 0xb32b6c16
	.quad	1890163129              # 0x70a999b9
	.quad	2484206152              # 0x9411fa48
	.quad	3913753188              # 0xe9472264
	.quad	4238918796              # 0xfca8c48c
	.quad	4037024319              # 0xf0a01a3f
	.quad	2102843436              # 0x7d56d82c
	.quad	857927568               # 0x3322ef90
	.quad	1233635150              # 0x4987c74e
	.quad	953795025               # 0x38d9c1d1
	.quad	3398237858              # 0xca8cfea2
	.quad	3566745099              # 0xd498360b
	.quad	4121350017              # 0xf5a6cf81
	.quad	2057644254              # 0x7aa528de
	.quad	3084527246              # 0xb7da268e
	.quad	2906629311              # 0xad3fa4bf
	.quad	976020637               # 0x3a2ce49d
	.quad	2018512274              # 0x78500d92
	.quad	1600822220              # 0x5f6a9bcc
	.quad	2119459398              # 0x7e546246
	.quad	2381758995              # 0x8df6c213
	.quad	3633375416              # 0xd890e8b8
	.quad	959340279               # 0x392e5ef7
	.quad	3280139695              # 0xc382f5af
	.quad	1570750080              # 0x5d9fbe80
	.quad	3496574099              # 0xd0697c93
	.quad	3580864813              # 0xd56fa92d
	.quad	634368786               # 0x25cfb312
	.quad	2898803609              # 0xacc83b99
	.quad	403744637               # 0x1810a77d
	.quad	2632478307              # 0x9ce86e63
	.quad	1004239803              # 0x3bdb7bbb
	.quad	650971512               # 0x26cd0978
	.quad	1500443672              # 0x596ef418
	.quad	2599158199              # 0x9aec01b7
	.quad	1334028442              # 0x4f83a89a
	.quad	2514904430              # 0x95e6656e
	.quad	4289363686              # 0xffaa7ee6
	.quad	3156281551              # 0xbc2108cf
	.quad	368043752               # 0x15efe6e8
	.quad	3887782299              # 0xe7bad99b
	.quad	1867173430              # 0x6f4ace36
	.quad	2682967049              # 0x9fead409
	.quad	2955531900              # 0xb029d67c
	.quad	2754719666              # 0xa431afb2
	.quad	1059729699              # 0x3f2a3123
	.quad	2781229204              # 0xa5c63094
	.quad	2721431654              # 0xa235c066
	.quad	1316239292              # 0x4e7437bc
	.quad	2197595850              # 0x82fca6ca
	.quad	2430644432              # 0x90e0b0d0
	.quad	2805143000              # 0xa73315d8
	.quad	82922136                # 0x4f14a98
	.quad	3963746266              # 0xec41f7da
	.quad	3447656016              # 0xcd7f0e50
	.quad	2434215926              # 0x91172ff6
	.quad	1299615190              # 0x4d768dd6
	.quad	4014165424              # 0xef434db0
	.quad	2865517645              # 0xaacc544d
	.quad	2531581700              # 0x96e4df04
	.quad	3516851125              # 0xd19ee3b5
	.quad	1783372680              # 0x6a4c1b88
	.quad	750893087               # 0x2cc1b81f
	.quad	1699118929              # 0x65467f51
	.quad	1587348714              # 0x5e9d04ea
	.quad	2348899637              # 0x8c015d35
	.quad	2281337716              # 0x87fa7374
	.quad	201010753               # 0xbfb2e41
	.quad	1739807261              # 0x67b35a1d
	.quad	3683799762              # 0xdb9252d2
	.quad	283718486               # 0x10e93356
	.quad	3597472583              # 0xd66d1347
	.quad	3617229921              # 0xd79a8c61
	.quad	2704767500              # 0xa1377a0c
	.quad	4166618644              # 0xf8598e14
	.quad	334203196               # 0x13eb893c
	.quad	2848910887              # 0xa9ceee27
	.quad	1639396809              # 0x61b735c9
	.quad	484568549               # 0x1ce1ede5
	.quad	1199193265              # 0x477a3cb1
	.quad	3533461983              # 0xd29c59df
	.quad	4065673075              # 0xf2553f73
	.quad	337148366               # 0x141879ce
	.quad	3346251575              # 0xc773bf37
	.quad	4149471949              # 0xf753eacd
	.quad	4250885034              # 0xfd5f5baa
	.quad	1038029935              # 0x3ddf146f
	.quad	1148749531              # 0x447886db
	.quad	2949284339              # 0xafca81f3
	.quad	1756970692              # 0x68b93ec4
	.quad	607661108               # 0x24382c34
	.quad	2747424576              # 0xa3c25f40
	.quad	488010435               # 0x1d1672c3
	.quad	3803974693              # 0xe2bc0c25
	.quad	1009290057              # 0x3c288b49
	.quad	234832277               # 0xdff4195
	.quad	2822336769              # 0xa8397101
	.quad	201907891               # 0xc08deb3
	.quad	3034094820              # 0xb4d89ce4
	.quad	1449431233              # 0x566490c1
	.quad	3413860740              # 0xcb7b6184
	.quad	852848822               # 0x32d570b6
	.quad	1816687708              # 0x6c48745c
	.quad	3100656215              # 0xb8d04257
	.quad	1364240372              # 0x5150a7f4
	.quad	2119394625              # 0x7e536541
	.quad	449029143               # 0x1ac3a417
	.quad	982933031               # 0x3a965e27
	.quad	1003187115              # 0x3bcb6bab
	.quad	535905693               # 0x1ff1459d
	.quad	2896910586              # 0xacab58fa
	.quad	1267925987              # 0x4b9303e3
	.quad	542505520               # 0x2055fa30
	.quad	2918608246              # 0xadf66d76
	.quad	2291234508              # 0x889176cc
	.quad	4112862210              # 0xf5254c02
	.quad	1341970405              # 0x4ffcd7e5
	.quad	3319253802              # 0xc5d7cb2a
	.quad	645940277               # 0x26804435
	.quad	3046089570              # 0xb58fa362
	.quad	3729349297              # 0xde495ab1
	.quad	627514298               # 0x25671bba
	.quad	1167593194              # 0x45980eea
	.quad	1575076094              # 0x5de1c0fe
	.quad	3271718191              # 0xc302752f
	.quad	2165502028              # 0x8112f04c
	.quad	2376308550              # 0x8da39746
	.quad	1808202195              # 0x6bc6f9d3
	.quad	65494927                # 0x3e75f8f
	.quad	362126482               # 0x15959c92
	.quad	3219880557              # 0xbfeb7a6d
	.quad	2514114898              # 0x95da5952
	.quad	3559752638              # 0xd42d83be
	.quad	1490231668              # 0x58d32174
	.quad	1227450848              # 0x492969e0
	.quad	2386872521              # 0x8e44c8c9
	.quad	1969916354              # 0x756a89c2
	.quad	4101536142              # 0xf478798e
	.quad	2573942360              # 0x996b3e58
	.quad	668823993               # 0x27dd71b9
	.quad	3199619041              # 0xbeb64fe1
	.quad	4028083592              # 0xf017ad88
	.quad	3378949152              # 0xc966ac20
	.quad	2108963534              # 0x7db43ace
	.quad	1662536415              # 0x63184adf
	.quad	3850514714              # 0xe582311a
	.quad	2539664209              # 0x97603351
	.quad	1648721747              # 0x62457f53
	.quad	2984277860              # 0xb1e07764
	.quad	3146034795              # 0xbb84ae6b
	.quad	4263288961              # 0xfe1ca081
	.quad	4187237128              # 0xf9942b08
	.quad	1884842056              # 0x70586848
	.quad	2400845125              # 0x8f19fd45
	.quad	2491903198              # 0x94876cde
	.quad	1387788411              # 0x52b7f87b
	.quad	2871251827              # 0xab23d373
	.quad	1927414347              # 0x72e2024b
	.quad	3814166303              # 0xe3578f1f
	.quad	1714072405              # 0x662aab55
	.quad	2986813675              # 0xb20728eb
	.quad	788775605               # 0x2f03c2b5
	.quad	2258271173              # 0x869a7bc5
	.quad	3550808119              # 0xd3a50837
	.quad	821200680               # 0x30f28728
	.quad	598910399               # 0x23b2a5bf
	.quad	45771267                # 0x2ba6a03
	.quad	3982262806              # 0xed5c8216
	.quad	2318081231              # 0x8a2b1ccf
	.quad	2811409529              # 0xa792b479
	.quad	4092654087              # 0xf3f0f207
	.quad	1319232105              # 0x4ea1e269
	.quad	1707996378              # 0x65cdf4da
	.quad	114671109               # 0x6d5be05
	.quad	3508494900              # 0xd11f6234
	.quad	3297443494              # 0xc48afea6
	.quad	882725678               # 0x349d532e
	.quad	2728416755              # 0xa2a055f3
	.quad	87220618                # 0x532e18a
	.quad	2759191542              # 0xa475ebf6
	.quad	188345475               # 0xb39ec83
	.quad	1084944224              # 0x40aaef60
	.quad	1577492337              # 0x5e069f71
	.quad	3176206446              # 0xbd51106e
	.quad	1056541217              # 0x3ef98a21
	.quad	2520581853              # 0x963d06dd
	.quad	3719169342              # 0xddae053e
	.quad	1296481766              # 0x4d46bde6
	.quad	2444594516              # 0x91b58d54
	.quad	1896177092              # 0x71055dc4
	.quad	74437638                # 0x46fd406
	.quad	1627329872              # 0x60ff1550
	.quad	421854104               # 0x1924fb98
	.quad	3600279997              # 0xd697e9bd
	.quad	2311865152              # 0x89cc4340
	.quad	1735892697              # 0x67779ed9
	.quad	2965193448              # 0xb0bd42e8
	.quad	126389129               # 0x7888b89
	.quad	3879230233              # 0xe7385b19
	.quad	2044456648              # 0x79dbeec8
	.quad	2705787516              # 0xa1470a7c
	.quad	2095648578              # 0x7ce90f42
	.quad	4173930116              # 0xf8c91e84
	.quad	0                       # 0x0
	.quad	159614592               # 0x9838680
	.quad	843640107               # 0x3248ed2b
	.quad	514617361               # 0x1eac7011
	.quad	1817080410              # 0x6c4e725a
	.quad	4261150478              # 0xfdfbff0e
	.quad	257308805               # 0xf563885
	.quad	1025430958              # 0x3d1ed5ae
	.quad	908540205               # 0x3627392d
	.quad	174381327               # 0xa64d90f
	.quad	1747035740              # 0x6821a65c
	.quad	2614187099              # 0x9bd1545b
	.quad	607792694               # 0x243a2e36
	.quad	212952842               # 0xcb1670a
	.quad	2467293015              # 0x930fe757
	.quad	3033700078              # 0xb4d296ee
	.quad	463376795               # 0x1b9e919b
	.quad	2152711616              # 0x804fc5c0
	.quad	1638015196              # 0x61a220dc
	.quad	1516850039              # 0x5a694b77
	.quad	471210514               # 0x1c161a12
	.quad	3792353939              # 0xe20aba93
	.quad	3236244128              # 0xc0e52aa0
	.quad	1011081250              # 0x3c43e022
	.quad	303896347               # 0x121d171b
	.quad	235605257               # 0xe0b0d09
	.quad	4071475083              # 0xf2adc78b
	.quad	767142070               # 0x2db9a8b6
	.quad	348694814               # 0x14c8a91e
	.quad	1468340721              # 0x578519f1
	.quad	2940995445              # 0xaf4c0775
	.quad	4005289369              # 0xeebbdd99
	.quad	2751291519              # 0xa3fd607f
	.quad	4154402305              # 0xf79f2601
	.quad	1555887474              # 0x5cbcf572
	.quad	1153776486              # 0x44c53b66
	.quad	1530167035              # 0x5b347efb
	.quad	2339776835              # 0x8b762943
	.quad	3420243491              # 0xcbdcc623
	.quad	3060333805              # 0xb668fced
	.quad	3093557732              # 0xb863f1e4
	.quad	3620396081              # 0xd7cadc31
	.quad	1108378979              # 0x42108563
	.quad	322970263               # 0x13402297
	.quad	2216694214              # 0x842011c6
	.quad	2239571018              # 0x857d244a
	.quad	3539484091              # 0xd2f83dbb
	.quad	2920362745              # 0xae1132f9
	.quad	3345850665              # 0xc76da129
	.quad	491466654               # 0x1d4b2f9e
	.quad	3706925234              # 0xdcf330b2
	.quad	233591430               # 0xdec5286
	.quad	2010178497              # 0x77d0e3c1
	.quad	728503987               # 0x2b6c16b3
	.quad	2845423984              # 0xa999b970
	.quad	301615252               # 0x11fa4894
	.quad	1193436393              # 0x472264e9
	.quad	2831453436              # 0xa8c48cfc
	.quad	2686074864              # 0xa01a3ff0
	.quad	1457007741              # 0x56d82c7d
	.quad	586125363               # 0x22ef9033
	.quad	2277985865              # 0x87c74e49
	.quad	3653357880              # 0xd9c1d138
	.quad	2365498058              # 0x8cfea2ca
	.quad	2553678804              # 0x98360bd4
	.quad	2798617077              # 0xa6cf81f5
	.quad	2770919034              # 0xa528de7a
	.quad	3659959991              # 0xda268eb7
	.quad	1067761581              # 0x3fa4bfad
	.quad	753179962               # 0x2ce49d3a
	.quad	1343066744              # 0x500d9278
	.quad	1788595295              # 0x6a9bcc5f
	.quad	1415726718              # 0x5462467e
	.quad	4139914125              # 0xf6c2138d
	.quad	2431170776              # 0x90e8b8d8
	.quad	777975609               # 0x2e5ef739
	.quad	2197139395              # 0x82f5afc3
	.quad	2680062045              # 0x9fbe805d
	.quad	1769771984              # 0x697c93d0
	.quad	1873358293              # 0x6fa92dd5
	.quad	3484619301              # 0xcfb31225
	.quad	3359349164              # 0xc83b99ac
	.quad	279411992               # 0x10a77d18
	.quad	3899548572              # 0xe86e639c
	.quad	3682319163              # 0xdb7bbb3b
	.quad	3439949862              # 0xcd097826
	.quad	1861490777              # 0x6ef41859
	.quad	3959535514              # 0xec01b79a
	.quad	2208864847              # 0x83a89a4f
	.quad	3865407125              # 0xe6656e95
	.quad	2860443391              # 0xaa7ee6ff
	.quad	554225596               # 0x2108cfbc
	.quad	4024887317              # 0xefe6e815
	.quad	3134823399              # 0xbad99be7
	.quad	1255028335              # 0x4ace366f
	.quad	3939764639              # 0xead4099f
	.quad	701922480               # 0x29d67cb0
	.quad	833598116               # 0x31afb2a4
	.quad	707863359               # 0x2a31233f
	.quad	3325072549              # 0xc63094a5
	.quad	901801634               # 0x35c066a2
	.quad	1949809742              # 0x7437bc4e
	.quad	4238789250              # 0xfca6ca82
	.quad	3769684112              # 0xe0b0d090
	.quad	857069735               # 0x3315d8a7
	.quad	4048197636              # 0xf14a9804
	.quad	1106762476              # 0x41f7daec
	.quad	2131644621              # 0x7f0e50cd
	.quad	389019281               # 0x172ff691
	.quad	1989006925              # 0x768dd64d
	.quad	1129165039              # 0x434db0ef
	.quad	3428076970              # 0xcc544daa
	.quad	3839820950              # 0xe4df0496
	.quad	2665723345              # 0x9ee3b5d1
	.quad	1276872810              # 0x4c1b886a
	.quad	3250069292              # 0xc1b81f2c
	.quad	1182749029              # 0x467f5165
	.quad	2634345054              # 0x9d04ea5e
	.quad	22885772                # 0x15d358c
	.quad	4201870471              # 0xfa737487
	.quad	4214112523              # 0xfb2e410b
	.quad	3009027431              # 0xb35a1d67
	.quad	2454901467              # 0x9252d2db
	.quad	3912455696              # 0xe9335610
	.quad	1829980118              # 0x6d1347d6
	.quad	2592891351              # 0x9a8c61d7
	.quad	930745505               # 0x377a0ca1
	.quad	1502483704              # 0x598e14f8
	.quad	3951639571              # 0xeb893c13
	.quad	3471714217              # 0xceee27a9
	.quad	3073755489              # 0xb735c961
	.quad	3790464284              # 0xe1ede51c
	.quad	2050797895              # 0x7a3cb147
	.quad	2623135698              # 0x9c59dfd2
	.quad	1430221810              # 0x553f73f2
	.quad	410635796               # 0x1879ce14
	.quad	1941911495              # 0x73bf37c7
	.quad	1407897079              # 0x53eacdf7
	.quad	1599843069              # 0x5f5baafd
	.quad	3742658365              # 0xdf146f3d
	.quad	2022103876              # 0x7886db44
	.quad	3397514159              # 0xca81f3af
	.quad	3107898472              # 0xb93ec468
	.quad	942421028               # 0x382c3424
	.quad	3261022371              # 0xc25f40a3
	.quad	376619805               # 0x1672c31d
	.quad	3154912738              # 0xbc0c25e2
	.quad	680216892               # 0x288b493c
	.quad	4282488077              # 0xff41950d
	.quad	963707304               # 0x397101a8
	.quad	148812556               # 0x8deb30c
	.quad	3634160820              # 0xd89ce4b4
	.quad	1687208278              # 0x6490c156
	.quad	2069988555              # 0x7b6184cb
	.quad	3580933682              # 0xd570b632
	.quad	1215585388              # 0x48745c6c
	.quad	3494008760              # 0xd04257b8
	.size	it_tab, 8192

	.type	fl_tab,@object          # @fl_tab
	.globl	fl_tab
	.p2align	4
fl_tab:
	.quad	99                      # 0x63
	.quad	124                     # 0x7c
	.quad	119                     # 0x77
	.quad	123                     # 0x7b
	.quad	242                     # 0xf2
	.quad	107                     # 0x6b
	.quad	111                     # 0x6f
	.quad	197                     # 0xc5
	.quad	48                      # 0x30
	.quad	1                       # 0x1
	.quad	103                     # 0x67
	.quad	43                      # 0x2b
	.quad	254                     # 0xfe
	.quad	215                     # 0xd7
	.quad	171                     # 0xab
	.quad	118                     # 0x76
	.quad	202                     # 0xca
	.quad	130                     # 0x82
	.quad	201                     # 0xc9
	.quad	125                     # 0x7d
	.quad	250                     # 0xfa
	.quad	89                      # 0x59
	.quad	71                      # 0x47
	.quad	240                     # 0xf0
	.quad	173                     # 0xad
	.quad	212                     # 0xd4
	.quad	162                     # 0xa2
	.quad	175                     # 0xaf
	.quad	156                     # 0x9c
	.quad	164                     # 0xa4
	.quad	114                     # 0x72
	.quad	192                     # 0xc0
	.quad	183                     # 0xb7
	.quad	253                     # 0xfd
	.quad	147                     # 0x93
	.quad	38                      # 0x26
	.quad	54                      # 0x36
	.quad	63                      # 0x3f
	.quad	247                     # 0xf7
	.quad	204                     # 0xcc
	.quad	52                      # 0x34
	.quad	165                     # 0xa5
	.quad	229                     # 0xe5
	.quad	241                     # 0xf1
	.quad	113                     # 0x71
	.quad	216                     # 0xd8
	.quad	49                      # 0x31
	.quad	21                      # 0x15
	.quad	4                       # 0x4
	.quad	199                     # 0xc7
	.quad	35                      # 0x23
	.quad	195                     # 0xc3
	.quad	24                      # 0x18
	.quad	150                     # 0x96
	.quad	5                       # 0x5
	.quad	154                     # 0x9a
	.quad	7                       # 0x7
	.quad	18                      # 0x12
	.quad	128                     # 0x80
	.quad	226                     # 0xe2
	.quad	235                     # 0xeb
	.quad	39                      # 0x27
	.quad	178                     # 0xb2
	.quad	117                     # 0x75
	.quad	9                       # 0x9
	.quad	131                     # 0x83
	.quad	44                      # 0x2c
	.quad	26                      # 0x1a
	.quad	27                      # 0x1b
	.quad	110                     # 0x6e
	.quad	90                      # 0x5a
	.quad	160                     # 0xa0
	.quad	82                      # 0x52
	.quad	59                      # 0x3b
	.quad	214                     # 0xd6
	.quad	179                     # 0xb3
	.quad	41                      # 0x29
	.quad	227                     # 0xe3
	.quad	47                      # 0x2f
	.quad	132                     # 0x84
	.quad	83                      # 0x53
	.quad	209                     # 0xd1
	.quad	0                       # 0x0
	.quad	237                     # 0xed
	.quad	32                      # 0x20
	.quad	252                     # 0xfc
	.quad	177                     # 0xb1
	.quad	91                      # 0x5b
	.quad	106                     # 0x6a
	.quad	203                     # 0xcb
	.quad	190                     # 0xbe
	.quad	57                      # 0x39
	.quad	74                      # 0x4a
	.quad	76                      # 0x4c
	.quad	88                      # 0x58
	.quad	207                     # 0xcf
	.quad	208                     # 0xd0
	.quad	239                     # 0xef
	.quad	170                     # 0xaa
	.quad	251                     # 0xfb
	.quad	67                      # 0x43
	.quad	77                      # 0x4d
	.quad	51                      # 0x33
	.quad	133                     # 0x85
	.quad	69                      # 0x45
	.quad	249                     # 0xf9
	.quad	2                       # 0x2
	.quad	127                     # 0x7f
	.quad	80                      # 0x50
	.quad	60                      # 0x3c
	.quad	159                     # 0x9f
	.quad	168                     # 0xa8
	.quad	81                      # 0x51
	.quad	163                     # 0xa3
	.quad	64                      # 0x40
	.quad	143                     # 0x8f
	.quad	146                     # 0x92
	.quad	157                     # 0x9d
	.quad	56                      # 0x38
	.quad	245                     # 0xf5
	.quad	188                     # 0xbc
	.quad	182                     # 0xb6
	.quad	218                     # 0xda
	.quad	33                      # 0x21
	.quad	16                      # 0x10
	.quad	255                     # 0xff
	.quad	243                     # 0xf3
	.quad	210                     # 0xd2
	.quad	205                     # 0xcd
	.quad	12                      # 0xc
	.quad	19                      # 0x13
	.quad	236                     # 0xec
	.quad	95                      # 0x5f
	.quad	151                     # 0x97
	.quad	68                      # 0x44
	.quad	23                      # 0x17
	.quad	196                     # 0xc4
	.quad	167                     # 0xa7
	.quad	126                     # 0x7e
	.quad	61                      # 0x3d
	.quad	100                     # 0x64
	.quad	93                      # 0x5d
	.quad	25                      # 0x19
	.quad	115                     # 0x73
	.quad	96                      # 0x60
	.quad	129                     # 0x81
	.quad	79                      # 0x4f
	.quad	220                     # 0xdc
	.quad	34                      # 0x22
	.quad	42                      # 0x2a
	.quad	144                     # 0x90
	.quad	136                     # 0x88
	.quad	70                      # 0x46
	.quad	238                     # 0xee
	.quad	184                     # 0xb8
	.quad	20                      # 0x14
	.quad	222                     # 0xde
	.quad	94                      # 0x5e
	.quad	11                      # 0xb
	.quad	219                     # 0xdb
	.quad	224                     # 0xe0
	.quad	50                      # 0x32
	.quad	58                      # 0x3a
	.quad	10                      # 0xa
	.quad	73                      # 0x49
	.quad	6                       # 0x6
	.quad	36                      # 0x24
	.quad	92                      # 0x5c
	.quad	194                     # 0xc2
	.quad	211                     # 0xd3
	.quad	172                     # 0xac
	.quad	98                      # 0x62
	.quad	145                     # 0x91
	.quad	149                     # 0x95
	.quad	228                     # 0xe4
	.quad	121                     # 0x79
	.quad	231                     # 0xe7
	.quad	200                     # 0xc8
	.quad	55                      # 0x37
	.quad	109                     # 0x6d
	.quad	141                     # 0x8d
	.quad	213                     # 0xd5
	.quad	78                      # 0x4e
	.quad	169                     # 0xa9
	.quad	108                     # 0x6c
	.quad	86                      # 0x56
	.quad	244                     # 0xf4
	.quad	234                     # 0xea
	.quad	101                     # 0x65
	.quad	122                     # 0x7a
	.quad	174                     # 0xae
	.quad	8                       # 0x8
	.quad	186                     # 0xba
	.quad	120                     # 0x78
	.quad	37                      # 0x25
	.quad	46                      # 0x2e
	.quad	28                      # 0x1c
	.quad	166                     # 0xa6
	.quad	180                     # 0xb4
	.quad	198                     # 0xc6
	.quad	232                     # 0xe8
	.quad	221                     # 0xdd
	.quad	116                     # 0x74
	.quad	31                      # 0x1f
	.quad	75                      # 0x4b
	.quad	189                     # 0xbd
	.quad	139                     # 0x8b
	.quad	138                     # 0x8a
	.quad	112                     # 0x70
	.quad	62                      # 0x3e
	.quad	181                     # 0xb5
	.quad	102                     # 0x66
	.quad	72                      # 0x48
	.quad	3                       # 0x3
	.quad	246                     # 0xf6
	.quad	14                      # 0xe
	.quad	97                      # 0x61
	.quad	53                      # 0x35
	.quad	87                      # 0x57
	.quad	185                     # 0xb9
	.quad	134                     # 0x86
	.quad	193                     # 0xc1
	.quad	29                      # 0x1d
	.quad	158                     # 0x9e
	.quad	225                     # 0xe1
	.quad	248                     # 0xf8
	.quad	152                     # 0x98
	.quad	17                      # 0x11
	.quad	105                     # 0x69
	.quad	217                     # 0xd9
	.quad	142                     # 0x8e
	.quad	148                     # 0x94
	.quad	155                     # 0x9b
	.quad	30                      # 0x1e
	.quad	135                     # 0x87
	.quad	233                     # 0xe9
	.quad	206                     # 0xce
	.quad	85                      # 0x55
	.quad	40                      # 0x28
	.quad	223                     # 0xdf
	.quad	140                     # 0x8c
	.quad	161                     # 0xa1
	.quad	137                     # 0x89
	.quad	13                      # 0xd
	.quad	191                     # 0xbf
	.quad	230                     # 0xe6
	.quad	66                      # 0x42
	.quad	104                     # 0x68
	.quad	65                      # 0x41
	.quad	153                     # 0x99
	.quad	45                      # 0x2d
	.quad	15                      # 0xf
	.quad	176                     # 0xb0
	.quad	84                      # 0x54
	.quad	187                     # 0xbb
	.quad	22                      # 0x16
	.quad	25344                   # 0x6300
	.quad	31744                   # 0x7c00
	.quad	30464                   # 0x7700
	.quad	31488                   # 0x7b00
	.quad	61952                   # 0xf200
	.quad	27392                   # 0x6b00
	.quad	28416                   # 0x6f00
	.quad	50432                   # 0xc500
	.quad	12288                   # 0x3000
	.quad	256                     # 0x100
	.quad	26368                   # 0x6700
	.quad	11008                   # 0x2b00
	.quad	65024                   # 0xfe00
	.quad	55040                   # 0xd700
	.quad	43776                   # 0xab00
	.quad	30208                   # 0x7600
	.quad	51712                   # 0xca00
	.quad	33280                   # 0x8200
	.quad	51456                   # 0xc900
	.quad	32000                   # 0x7d00
	.quad	64000                   # 0xfa00
	.quad	22784                   # 0x5900
	.quad	18176                   # 0x4700
	.quad	61440                   # 0xf000
	.quad	44288                   # 0xad00
	.quad	54272                   # 0xd400
	.quad	41472                   # 0xa200
	.quad	44800                   # 0xaf00
	.quad	39936                   # 0x9c00
	.quad	41984                   # 0xa400
	.quad	29184                   # 0x7200
	.quad	49152                   # 0xc000
	.quad	46848                   # 0xb700
	.quad	64768                   # 0xfd00
	.quad	37632                   # 0x9300
	.quad	9728                    # 0x2600
	.quad	13824                   # 0x3600
	.quad	16128                   # 0x3f00
	.quad	63232                   # 0xf700
	.quad	52224                   # 0xcc00
	.quad	13312                   # 0x3400
	.quad	42240                   # 0xa500
	.quad	58624                   # 0xe500
	.quad	61696                   # 0xf100
	.quad	28928                   # 0x7100
	.quad	55296                   # 0xd800
	.quad	12544                   # 0x3100
	.quad	5376                    # 0x1500
	.quad	1024                    # 0x400
	.quad	50944                   # 0xc700
	.quad	8960                    # 0x2300
	.quad	49920                   # 0xc300
	.quad	6144                    # 0x1800
	.quad	38400                   # 0x9600
	.quad	1280                    # 0x500
	.quad	39424                   # 0x9a00
	.quad	1792                    # 0x700
	.quad	4608                    # 0x1200
	.quad	32768                   # 0x8000
	.quad	57856                   # 0xe200
	.quad	60160                   # 0xeb00
	.quad	9984                    # 0x2700
	.quad	45568                   # 0xb200
	.quad	29952                   # 0x7500
	.quad	2304                    # 0x900
	.quad	33536                   # 0x8300
	.quad	11264                   # 0x2c00
	.quad	6656                    # 0x1a00
	.quad	6912                    # 0x1b00
	.quad	28160                   # 0x6e00
	.quad	23040                   # 0x5a00
	.quad	40960                   # 0xa000
	.quad	20992                   # 0x5200
	.quad	15104                   # 0x3b00
	.quad	54784                   # 0xd600
	.quad	45824                   # 0xb300
	.quad	10496                   # 0x2900
	.quad	58112                   # 0xe300
	.quad	12032                   # 0x2f00
	.quad	33792                   # 0x8400
	.quad	21248                   # 0x5300
	.quad	53504                   # 0xd100
	.quad	0                       # 0x0
	.quad	60672                   # 0xed00
	.quad	8192                    # 0x2000
	.quad	64512                   # 0xfc00
	.quad	45312                   # 0xb100
	.quad	23296                   # 0x5b00
	.quad	27136                   # 0x6a00
	.quad	51968                   # 0xcb00
	.quad	48640                   # 0xbe00
	.quad	14592                   # 0x3900
	.quad	18944                   # 0x4a00
	.quad	19456                   # 0x4c00
	.quad	22528                   # 0x5800
	.quad	52992                   # 0xcf00
	.quad	53248                   # 0xd000
	.quad	61184                   # 0xef00
	.quad	43520                   # 0xaa00
	.quad	64256                   # 0xfb00
	.quad	17152                   # 0x4300
	.quad	19712                   # 0x4d00
	.quad	13056                   # 0x3300
	.quad	34048                   # 0x8500
	.quad	17664                   # 0x4500
	.quad	63744                   # 0xf900
	.quad	512                     # 0x200
	.quad	32512                   # 0x7f00
	.quad	20480                   # 0x5000
	.quad	15360                   # 0x3c00
	.quad	40704                   # 0x9f00
	.quad	43008                   # 0xa800
	.quad	20736                   # 0x5100
	.quad	41728                   # 0xa300
	.quad	16384                   # 0x4000
	.quad	36608                   # 0x8f00
	.quad	37376                   # 0x9200
	.quad	40192                   # 0x9d00
	.quad	14336                   # 0x3800
	.quad	62720                   # 0xf500
	.quad	48128                   # 0xbc00
	.quad	46592                   # 0xb600
	.quad	55808                   # 0xda00
	.quad	8448                    # 0x2100
	.quad	4096                    # 0x1000
	.quad	65280                   # 0xff00
	.quad	62208                   # 0xf300
	.quad	53760                   # 0xd200
	.quad	52480                   # 0xcd00
	.quad	3072                    # 0xc00
	.quad	4864                    # 0x1300
	.quad	60416                   # 0xec00
	.quad	24320                   # 0x5f00
	.quad	38656                   # 0x9700
	.quad	17408                   # 0x4400
	.quad	5888                    # 0x1700
	.quad	50176                   # 0xc400
	.quad	42752                   # 0xa700
	.quad	32256                   # 0x7e00
	.quad	15616                   # 0x3d00
	.quad	25600                   # 0x6400
	.quad	23808                   # 0x5d00
	.quad	6400                    # 0x1900
	.quad	29440                   # 0x7300
	.quad	24576                   # 0x6000
	.quad	33024                   # 0x8100
	.quad	20224                   # 0x4f00
	.quad	56320                   # 0xdc00
	.quad	8704                    # 0x2200
	.quad	10752                   # 0x2a00
	.quad	36864                   # 0x9000
	.quad	34816                   # 0x8800
	.quad	17920                   # 0x4600
	.quad	60928                   # 0xee00
	.quad	47104                   # 0xb800
	.quad	5120                    # 0x1400
	.quad	56832                   # 0xde00
	.quad	24064                   # 0x5e00
	.quad	2816                    # 0xb00
	.quad	56064                   # 0xdb00
	.quad	57344                   # 0xe000
	.quad	12800                   # 0x3200
	.quad	14848                   # 0x3a00
	.quad	2560                    # 0xa00
	.quad	18688                   # 0x4900
	.quad	1536                    # 0x600
	.quad	9216                    # 0x2400
	.quad	23552                   # 0x5c00
	.quad	49664                   # 0xc200
	.quad	54016                   # 0xd300
	.quad	44032                   # 0xac00
	.quad	25088                   # 0x6200
	.quad	37120                   # 0x9100
	.quad	38144                   # 0x9500
	.quad	58368                   # 0xe400
	.quad	30976                   # 0x7900
	.quad	59136                   # 0xe700
	.quad	51200                   # 0xc800
	.quad	14080                   # 0x3700
	.quad	27904                   # 0x6d00
	.quad	36096                   # 0x8d00
	.quad	54528                   # 0xd500
	.quad	19968                   # 0x4e00
	.quad	43264                   # 0xa900
	.quad	27648                   # 0x6c00
	.quad	22016                   # 0x5600
	.quad	62464                   # 0xf400
	.quad	59904                   # 0xea00
	.quad	25856                   # 0x6500
	.quad	31232                   # 0x7a00
	.quad	44544                   # 0xae00
	.quad	2048                    # 0x800
	.quad	47616                   # 0xba00
	.quad	30720                   # 0x7800
	.quad	9472                    # 0x2500
	.quad	11776                   # 0x2e00
	.quad	7168                    # 0x1c00
	.quad	42496                   # 0xa600
	.quad	46080                   # 0xb400
	.quad	50688                   # 0xc600
	.quad	59392                   # 0xe800
	.quad	56576                   # 0xdd00
	.quad	29696                   # 0x7400
	.quad	7936                    # 0x1f00
	.quad	19200                   # 0x4b00
	.quad	48384                   # 0xbd00
	.quad	35584                   # 0x8b00
	.quad	35328                   # 0x8a00
	.quad	28672                   # 0x7000
	.quad	15872                   # 0x3e00
	.quad	46336                   # 0xb500
	.quad	26112                   # 0x6600
	.quad	18432                   # 0x4800
	.quad	768                     # 0x300
	.quad	62976                   # 0xf600
	.quad	3584                    # 0xe00
	.quad	24832                   # 0x6100
	.quad	13568                   # 0x3500
	.quad	22272                   # 0x5700
	.quad	47360                   # 0xb900
	.quad	34304                   # 0x8600
	.quad	49408                   # 0xc100
	.quad	7424                    # 0x1d00
	.quad	40448                   # 0x9e00
	.quad	57600                   # 0xe100
	.quad	63488                   # 0xf800
	.quad	38912                   # 0x9800
	.quad	4352                    # 0x1100
	.quad	26880                   # 0x6900
	.quad	55552                   # 0xd900
	.quad	36352                   # 0x8e00
	.quad	37888                   # 0x9400
	.quad	39680                   # 0x9b00
	.quad	7680                    # 0x1e00
	.quad	34560                   # 0x8700
	.quad	59648                   # 0xe900
	.quad	52736                   # 0xce00
	.quad	21760                   # 0x5500
	.quad	10240                   # 0x2800
	.quad	57088                   # 0xdf00
	.quad	35840                   # 0x8c00
	.quad	41216                   # 0xa100
	.quad	35072                   # 0x8900
	.quad	3328                    # 0xd00
	.quad	48896                   # 0xbf00
	.quad	58880                   # 0xe600
	.quad	16896                   # 0x4200
	.quad	26624                   # 0x6800
	.quad	16640                   # 0x4100
	.quad	39168                   # 0x9900
	.quad	11520                   # 0x2d00
	.quad	3840                    # 0xf00
	.quad	45056                   # 0xb000
	.quad	21504                   # 0x5400
	.quad	47872                   # 0xbb00
	.quad	5632                    # 0x1600
	.quad	6488064                 # 0x630000
	.quad	8126464                 # 0x7c0000
	.quad	7798784                 # 0x770000
	.quad	8060928                 # 0x7b0000
	.quad	15859712                # 0xf20000
	.quad	7012352                 # 0x6b0000
	.quad	7274496                 # 0x6f0000
	.quad	12910592                # 0xc50000
	.quad	3145728                 # 0x300000
	.quad	65536                   # 0x10000
	.quad	6750208                 # 0x670000
	.quad	2818048                 # 0x2b0000
	.quad	16646144                # 0xfe0000
	.quad	14090240                # 0xd70000
	.quad	11206656                # 0xab0000
	.quad	7733248                 # 0x760000
	.quad	13238272                # 0xca0000
	.quad	8519680                 # 0x820000
	.quad	13172736                # 0xc90000
	.quad	8192000                 # 0x7d0000
	.quad	16384000                # 0xfa0000
	.quad	5832704                 # 0x590000
	.quad	4653056                 # 0x470000
	.quad	15728640                # 0xf00000
	.quad	11337728                # 0xad0000
	.quad	13893632                # 0xd40000
	.quad	10616832                # 0xa20000
	.quad	11468800                # 0xaf0000
	.quad	10223616                # 0x9c0000
	.quad	10747904                # 0xa40000
	.quad	7471104                 # 0x720000
	.quad	12582912                # 0xc00000
	.quad	11993088                # 0xb70000
	.quad	16580608                # 0xfd0000
	.quad	9633792                 # 0x930000
	.quad	2490368                 # 0x260000
	.quad	3538944                 # 0x360000
	.quad	4128768                 # 0x3f0000
	.quad	16187392                # 0xf70000
	.quad	13369344                # 0xcc0000
	.quad	3407872                 # 0x340000
	.quad	10813440                # 0xa50000
	.quad	15007744                # 0xe50000
	.quad	15794176                # 0xf10000
	.quad	7405568                 # 0x710000
	.quad	14155776                # 0xd80000
	.quad	3211264                 # 0x310000
	.quad	1376256                 # 0x150000
	.quad	262144                  # 0x40000
	.quad	13041664                # 0xc70000
	.quad	2293760                 # 0x230000
	.quad	12779520                # 0xc30000
	.quad	1572864                 # 0x180000
	.quad	9830400                 # 0x960000
	.quad	327680                  # 0x50000
	.quad	10092544                # 0x9a0000
	.quad	458752                  # 0x70000
	.quad	1179648                 # 0x120000
	.quad	8388608                 # 0x800000
	.quad	14811136                # 0xe20000
	.quad	15400960                # 0xeb0000
	.quad	2555904                 # 0x270000
	.quad	11665408                # 0xb20000
	.quad	7667712                 # 0x750000
	.quad	589824                  # 0x90000
	.quad	8585216                 # 0x830000
	.quad	2883584                 # 0x2c0000
	.quad	1703936                 # 0x1a0000
	.quad	1769472                 # 0x1b0000
	.quad	7208960                 # 0x6e0000
	.quad	5898240                 # 0x5a0000
	.quad	10485760                # 0xa00000
	.quad	5373952                 # 0x520000
	.quad	3866624                 # 0x3b0000
	.quad	14024704                # 0xd60000
	.quad	11730944                # 0xb30000
	.quad	2686976                 # 0x290000
	.quad	14876672                # 0xe30000
	.quad	3080192                 # 0x2f0000
	.quad	8650752                 # 0x840000
	.quad	5439488                 # 0x530000
	.quad	13697024                # 0xd10000
	.quad	0                       # 0x0
	.quad	15532032                # 0xed0000
	.quad	2097152                 # 0x200000
	.quad	16515072                # 0xfc0000
	.quad	11599872                # 0xb10000
	.quad	5963776                 # 0x5b0000
	.quad	6946816                 # 0x6a0000
	.quad	13303808                # 0xcb0000
	.quad	12451840                # 0xbe0000
	.quad	3735552                 # 0x390000
	.quad	4849664                 # 0x4a0000
	.quad	4980736                 # 0x4c0000
	.quad	5767168                 # 0x580000
	.quad	13565952                # 0xcf0000
	.quad	13631488                # 0xd00000
	.quad	15663104                # 0xef0000
	.quad	11141120                # 0xaa0000
	.quad	16449536                # 0xfb0000
	.quad	4390912                 # 0x430000
	.quad	5046272                 # 0x4d0000
	.quad	3342336                 # 0x330000
	.quad	8716288                 # 0x850000
	.quad	4521984                 # 0x450000
	.quad	16318464                # 0xf90000
	.quad	131072                  # 0x20000
	.quad	8323072                 # 0x7f0000
	.quad	5242880                 # 0x500000
	.quad	3932160                 # 0x3c0000
	.quad	10420224                # 0x9f0000
	.quad	11010048                # 0xa80000
	.quad	5308416                 # 0x510000
	.quad	10682368                # 0xa30000
	.quad	4194304                 # 0x400000
	.quad	9371648                 # 0x8f0000
	.quad	9568256                 # 0x920000
	.quad	10289152                # 0x9d0000
	.quad	3670016                 # 0x380000
	.quad	16056320                # 0xf50000
	.quad	12320768                # 0xbc0000
	.quad	11927552                # 0xb60000
	.quad	14286848                # 0xda0000
	.quad	2162688                 # 0x210000
	.quad	1048576                 # 0x100000
	.quad	16711680                # 0xff0000
	.quad	15925248                # 0xf30000
	.quad	13762560                # 0xd20000
	.quad	13434880                # 0xcd0000
	.quad	786432                  # 0xc0000
	.quad	1245184                 # 0x130000
	.quad	15466496                # 0xec0000
	.quad	6225920                 # 0x5f0000
	.quad	9895936                 # 0x970000
	.quad	4456448                 # 0x440000
	.quad	1507328                 # 0x170000
	.quad	12845056                # 0xc40000
	.quad	10944512                # 0xa70000
	.quad	8257536                 # 0x7e0000
	.quad	3997696                 # 0x3d0000
	.quad	6553600                 # 0x640000
	.quad	6094848                 # 0x5d0000
	.quad	1638400                 # 0x190000
	.quad	7536640                 # 0x730000
	.quad	6291456                 # 0x600000
	.quad	8454144                 # 0x810000
	.quad	5177344                 # 0x4f0000
	.quad	14417920                # 0xdc0000
	.quad	2228224                 # 0x220000
	.quad	2752512                 # 0x2a0000
	.quad	9437184                 # 0x900000
	.quad	8912896                 # 0x880000
	.quad	4587520                 # 0x460000
	.quad	15597568                # 0xee0000
	.quad	12058624                # 0xb80000
	.quad	1310720                 # 0x140000
	.quad	14548992                # 0xde0000
	.quad	6160384                 # 0x5e0000
	.quad	720896                  # 0xb0000
	.quad	14352384                # 0xdb0000
	.quad	14680064                # 0xe00000
	.quad	3276800                 # 0x320000
	.quad	3801088                 # 0x3a0000
	.quad	655360                  # 0xa0000
	.quad	4784128                 # 0x490000
	.quad	393216                  # 0x60000
	.quad	2359296                 # 0x240000
	.quad	6029312                 # 0x5c0000
	.quad	12713984                # 0xc20000
	.quad	13828096                # 0xd30000
	.quad	11272192                # 0xac0000
	.quad	6422528                 # 0x620000
	.quad	9502720                 # 0x910000
	.quad	9764864                 # 0x950000
	.quad	14942208                # 0xe40000
	.quad	7929856                 # 0x790000
	.quad	15138816                # 0xe70000
	.quad	13107200                # 0xc80000
	.quad	3604480                 # 0x370000
	.quad	7143424                 # 0x6d0000
	.quad	9240576                 # 0x8d0000
	.quad	13959168                # 0xd50000
	.quad	5111808                 # 0x4e0000
	.quad	11075584                # 0xa90000
	.quad	7077888                 # 0x6c0000
	.quad	5636096                 # 0x560000
	.quad	15990784                # 0xf40000
	.quad	15335424                # 0xea0000
	.quad	6619136                 # 0x650000
	.quad	7995392                 # 0x7a0000
	.quad	11403264                # 0xae0000
	.quad	524288                  # 0x80000
	.quad	12189696                # 0xba0000
	.quad	7864320                 # 0x780000
	.quad	2424832                 # 0x250000
	.quad	3014656                 # 0x2e0000
	.quad	1835008                 # 0x1c0000
	.quad	10878976                # 0xa60000
	.quad	11796480                # 0xb40000
	.quad	12976128                # 0xc60000
	.quad	15204352                # 0xe80000
	.quad	14483456                # 0xdd0000
	.quad	7602176                 # 0x740000
	.quad	2031616                 # 0x1f0000
	.quad	4915200                 # 0x4b0000
	.quad	12386304                # 0xbd0000
	.quad	9109504                 # 0x8b0000
	.quad	9043968                 # 0x8a0000
	.quad	7340032                 # 0x700000
	.quad	4063232                 # 0x3e0000
	.quad	11862016                # 0xb50000
	.quad	6684672                 # 0x660000
	.quad	4718592                 # 0x480000
	.quad	196608                  # 0x30000
	.quad	16121856                # 0xf60000
	.quad	917504                  # 0xe0000
	.quad	6356992                 # 0x610000
	.quad	3473408                 # 0x350000
	.quad	5701632                 # 0x570000
	.quad	12124160                # 0xb90000
	.quad	8781824                 # 0x860000
	.quad	12648448                # 0xc10000
	.quad	1900544                 # 0x1d0000
	.quad	10354688                # 0x9e0000
	.quad	14745600                # 0xe10000
	.quad	16252928                # 0xf80000
	.quad	9961472                 # 0x980000
	.quad	1114112                 # 0x110000
	.quad	6881280                 # 0x690000
	.quad	14221312                # 0xd90000
	.quad	9306112                 # 0x8e0000
	.quad	9699328                 # 0x940000
	.quad	10158080                # 0x9b0000
	.quad	1966080                 # 0x1e0000
	.quad	8847360                 # 0x870000
	.quad	15269888                # 0xe90000
	.quad	13500416                # 0xce0000
	.quad	5570560                 # 0x550000
	.quad	2621440                 # 0x280000
	.quad	14614528                # 0xdf0000
	.quad	9175040                 # 0x8c0000
	.quad	10551296                # 0xa10000
	.quad	8978432                 # 0x890000
	.quad	851968                  # 0xd0000
	.quad	12517376                # 0xbf0000
	.quad	15073280                # 0xe60000
	.quad	4325376                 # 0x420000
	.quad	6815744                 # 0x680000
	.quad	4259840                 # 0x410000
	.quad	10027008                # 0x990000
	.quad	2949120                 # 0x2d0000
	.quad	983040                  # 0xf0000
	.quad	11534336                # 0xb00000
	.quad	5505024                 # 0x540000
	.quad	12255232                # 0xbb0000
	.quad	1441792                 # 0x160000
	.quad	1660944384              # 0x63000000
	.quad	2080374784              # 0x7c000000
	.quad	1996488704              # 0x77000000
	.quad	2063597568              # 0x7b000000
	.quad	4060086272              # 0xf2000000
	.quad	1795162112              # 0x6b000000
	.quad	1862270976              # 0x6f000000
	.quad	3305111552              # 0xc5000000
	.quad	805306368               # 0x30000000
	.quad	16777216                # 0x1000000
	.quad	1728053248              # 0x67000000
	.quad	721420288               # 0x2b000000
	.quad	4261412864              # 0xfe000000
	.quad	3607101440              # 0xd7000000
	.quad	2868903936              # 0xab000000
	.quad	1979711488              # 0x76000000
	.quad	3388997632              # 0xca000000
	.quad	2181038080              # 0x82000000
	.quad	3372220416              # 0xc9000000
	.quad	2097152000              # 0x7d000000
	.quad	4194304000              # 0xfa000000
	.quad	1493172224              # 0x59000000
	.quad	1191182336              # 0x47000000
	.quad	4026531840              # 0xf0000000
	.quad	2902458368              # 0xad000000
	.quad	3556769792              # 0xd4000000
	.quad	2717908992              # 0xa2000000
	.quad	2936012800              # 0xaf000000
	.quad	2617245696              # 0x9c000000
	.quad	2751463424              # 0xa4000000
	.quad	1912602624              # 0x72000000
	.quad	3221225472              # 0xc0000000
	.quad	3070230528              # 0xb7000000
	.quad	4244635648              # 0xfd000000
	.quad	2466250752              # 0x93000000
	.quad	637534208               # 0x26000000
	.quad	905969664               # 0x36000000
	.quad	1056964608              # 0x3f000000
	.quad	4143972352              # 0xf7000000
	.quad	3422552064              # 0xcc000000
	.quad	872415232               # 0x34000000
	.quad	2768240640              # 0xa5000000
	.quad	3841982464              # 0xe5000000
	.quad	4043309056              # 0xf1000000
	.quad	1895825408              # 0x71000000
	.quad	3623878656              # 0xd8000000
	.quad	822083584               # 0x31000000
	.quad	352321536               # 0x15000000
	.quad	67108864                # 0x4000000
	.quad	3338665984              # 0xc7000000
	.quad	587202560               # 0x23000000
	.quad	3271557120              # 0xc3000000
	.quad	402653184               # 0x18000000
	.quad	2516582400              # 0x96000000
	.quad	83886080                # 0x5000000
	.quad	2583691264              # 0x9a000000
	.quad	117440512               # 0x7000000
	.quad	301989888               # 0x12000000
	.quad	2147483648              # 0x80000000
	.quad	3791650816              # 0xe2000000
	.quad	3942645760              # 0xeb000000
	.quad	654311424               # 0x27000000
	.quad	2986344448              # 0xb2000000
	.quad	1962934272              # 0x75000000
	.quad	150994944               # 0x9000000
	.quad	2197815296              # 0x83000000
	.quad	738197504               # 0x2c000000
	.quad	436207616               # 0x1a000000
	.quad	452984832               # 0x1b000000
	.quad	1845493760              # 0x6e000000
	.quad	1509949440              # 0x5a000000
	.quad	2684354560              # 0xa0000000
	.quad	1375731712              # 0x52000000
	.quad	989855744               # 0x3b000000
	.quad	3590324224              # 0xd6000000
	.quad	3003121664              # 0xb3000000
	.quad	687865856               # 0x29000000
	.quad	3808428032              # 0xe3000000
	.quad	788529152               # 0x2f000000
	.quad	2214592512              # 0x84000000
	.quad	1392508928              # 0x53000000
	.quad	3506438144              # 0xd1000000
	.quad	0                       # 0x0
	.quad	3976200192              # 0xed000000
	.quad	536870912               # 0x20000000
	.quad	4227858432              # 0xfc000000
	.quad	2969567232              # 0xb1000000
	.quad	1526726656              # 0x5b000000
	.quad	1778384896              # 0x6a000000
	.quad	3405774848              # 0xcb000000
	.quad	3187671040              # 0xbe000000
	.quad	956301312               # 0x39000000
	.quad	1241513984              # 0x4a000000
	.quad	1275068416              # 0x4c000000
	.quad	1476395008              # 0x58000000
	.quad	3472883712              # 0xcf000000
	.quad	3489660928              # 0xd0000000
	.quad	4009754624              # 0xef000000
	.quad	2852126720              # 0xaa000000
	.quad	4211081216              # 0xfb000000
	.quad	1124073472              # 0x43000000
	.quad	1291845632              # 0x4d000000
	.quad	855638016               # 0x33000000
	.quad	2231369728              # 0x85000000
	.quad	1157627904              # 0x45000000
	.quad	4177526784              # 0xf9000000
	.quad	33554432                # 0x2000000
	.quad	2130706432              # 0x7f000000
	.quad	1342177280              # 0x50000000
	.quad	1006632960              # 0x3c000000
	.quad	2667577344              # 0x9f000000
	.quad	2818572288              # 0xa8000000
	.quad	1358954496              # 0x51000000
	.quad	2734686208              # 0xa3000000
	.quad	1073741824              # 0x40000000
	.quad	2399141888              # 0x8f000000
	.quad	2449473536              # 0x92000000
	.quad	2634022912              # 0x9d000000
	.quad	939524096               # 0x38000000
	.quad	4110417920              # 0xf5000000
	.quad	3154116608              # 0xbc000000
	.quad	3053453312              # 0xb6000000
	.quad	3657433088              # 0xda000000
	.quad	553648128               # 0x21000000
	.quad	268435456               # 0x10000000
	.quad	4278190080              # 0xff000000
	.quad	4076863488              # 0xf3000000
	.quad	3523215360              # 0xd2000000
	.quad	3439329280              # 0xcd000000
	.quad	201326592               # 0xc000000
	.quad	318767104               # 0x13000000
	.quad	3959422976              # 0xec000000
	.quad	1593835520              # 0x5f000000
	.quad	2533359616              # 0x97000000
	.quad	1140850688              # 0x44000000
	.quad	385875968               # 0x17000000
	.quad	3288334336              # 0xc4000000
	.quad	2801795072              # 0xa7000000
	.quad	2113929216              # 0x7e000000
	.quad	1023410176              # 0x3d000000
	.quad	1677721600              # 0x64000000
	.quad	1560281088              # 0x5d000000
	.quad	419430400               # 0x19000000
	.quad	1929379840              # 0x73000000
	.quad	1610612736              # 0x60000000
	.quad	2164260864              # 0x81000000
	.quad	1325400064              # 0x4f000000
	.quad	3690987520              # 0xdc000000
	.quad	570425344               # 0x22000000
	.quad	704643072               # 0x2a000000
	.quad	2415919104              # 0x90000000
	.quad	2281701376              # 0x88000000
	.quad	1174405120              # 0x46000000
	.quad	3992977408              # 0xee000000
	.quad	3087007744              # 0xb8000000
	.quad	335544320               # 0x14000000
	.quad	3724541952              # 0xde000000
	.quad	1577058304              # 0x5e000000
	.quad	184549376               # 0xb000000
	.quad	3674210304              # 0xdb000000
	.quad	3758096384              # 0xe0000000
	.quad	838860800               # 0x32000000
	.quad	973078528               # 0x3a000000
	.quad	167772160               # 0xa000000
	.quad	1224736768              # 0x49000000
	.quad	100663296               # 0x6000000
	.quad	603979776               # 0x24000000
	.quad	1543503872              # 0x5c000000
	.quad	3254779904              # 0xc2000000
	.quad	3539992576              # 0xd3000000
	.quad	2885681152              # 0xac000000
	.quad	1644167168              # 0x62000000
	.quad	2432696320              # 0x91000000
	.quad	2499805184              # 0x95000000
	.quad	3825205248              # 0xe4000000
	.quad	2030043136              # 0x79000000
	.quad	3875536896              # 0xe7000000
	.quad	3355443200              # 0xc8000000
	.quad	922746880               # 0x37000000
	.quad	1828716544              # 0x6d000000
	.quad	2365587456              # 0x8d000000
	.quad	3573547008              # 0xd5000000
	.quad	1308622848              # 0x4e000000
	.quad	2835349504              # 0xa9000000
	.quad	1811939328              # 0x6c000000
	.quad	1442840576              # 0x56000000
	.quad	4093640704              # 0xf4000000
	.quad	3925868544              # 0xea000000
	.quad	1694498816              # 0x65000000
	.quad	2046820352              # 0x7a000000
	.quad	2919235584              # 0xae000000
	.quad	134217728               # 0x8000000
	.quad	3120562176              # 0xba000000
	.quad	2013265920              # 0x78000000
	.quad	620756992               # 0x25000000
	.quad	771751936               # 0x2e000000
	.quad	469762048               # 0x1c000000
	.quad	2785017856              # 0xa6000000
	.quad	3019898880              # 0xb4000000
	.quad	3321888768              # 0xc6000000
	.quad	3892314112              # 0xe8000000
	.quad	3707764736              # 0xdd000000
	.quad	1946157056              # 0x74000000
	.quad	520093696               # 0x1f000000
	.quad	1258291200              # 0x4b000000
	.quad	3170893824              # 0xbd000000
	.quad	2332033024              # 0x8b000000
	.quad	2315255808              # 0x8a000000
	.quad	1879048192              # 0x70000000
	.quad	1040187392              # 0x3e000000
	.quad	3036676096              # 0xb5000000
	.quad	1711276032              # 0x66000000
	.quad	1207959552              # 0x48000000
	.quad	50331648                # 0x3000000
	.quad	4127195136              # 0xf6000000
	.quad	234881024               # 0xe000000
	.quad	1627389952              # 0x61000000
	.quad	889192448               # 0x35000000
	.quad	1459617792              # 0x57000000
	.quad	3103784960              # 0xb9000000
	.quad	2248146944              # 0x86000000
	.quad	3238002688              # 0xc1000000
	.quad	486539264               # 0x1d000000
	.quad	2650800128              # 0x9e000000
	.quad	3774873600              # 0xe1000000
	.quad	4160749568              # 0xf8000000
	.quad	2550136832              # 0x98000000
	.quad	285212672               # 0x11000000
	.quad	1761607680              # 0x69000000
	.quad	3640655872              # 0xd9000000
	.quad	2382364672              # 0x8e000000
	.quad	2483027968              # 0x94000000
	.quad	2600468480              # 0x9b000000
	.quad	503316480               # 0x1e000000
	.quad	2264924160              # 0x87000000
	.quad	3909091328              # 0xe9000000
	.quad	3456106496              # 0xce000000
	.quad	1426063360              # 0x55000000
	.quad	671088640               # 0x28000000
	.quad	3741319168              # 0xdf000000
	.quad	2348810240              # 0x8c000000
	.quad	2701131776              # 0xa1000000
	.quad	2298478592              # 0x89000000
	.quad	218103808               # 0xd000000
	.quad	3204448256              # 0xbf000000
	.quad	3858759680              # 0xe6000000
	.quad	1107296256              # 0x42000000
	.quad	1744830464              # 0x68000000
	.quad	1090519040              # 0x41000000
	.quad	2566914048              # 0x99000000
	.quad	754974720               # 0x2d000000
	.quad	251658240               # 0xf000000
	.quad	2952790016              # 0xb0000000
	.quad	1409286144              # 0x54000000
	.quad	3137339392              # 0xbb000000
	.quad	369098752               # 0x16000000
	.size	fl_tab, 8192

	.type	il_tab,@object          # @il_tab
	.globl	il_tab
	.p2align	4
il_tab:
	.quad	82                      # 0x52
	.quad	9                       # 0x9
	.quad	106                     # 0x6a
	.quad	213                     # 0xd5
	.quad	48                      # 0x30
	.quad	54                      # 0x36
	.quad	165                     # 0xa5
	.quad	56                      # 0x38
	.quad	191                     # 0xbf
	.quad	64                      # 0x40
	.quad	163                     # 0xa3
	.quad	158                     # 0x9e
	.quad	129                     # 0x81
	.quad	243                     # 0xf3
	.quad	215                     # 0xd7
	.quad	251                     # 0xfb
	.quad	124                     # 0x7c
	.quad	227                     # 0xe3
	.quad	57                      # 0x39
	.quad	130                     # 0x82
	.quad	155                     # 0x9b
	.quad	47                      # 0x2f
	.quad	255                     # 0xff
	.quad	135                     # 0x87
	.quad	52                      # 0x34
	.quad	142                     # 0x8e
	.quad	67                      # 0x43
	.quad	68                      # 0x44
	.quad	196                     # 0xc4
	.quad	222                     # 0xde
	.quad	233                     # 0xe9
	.quad	203                     # 0xcb
	.quad	84                      # 0x54
	.quad	123                     # 0x7b
	.quad	148                     # 0x94
	.quad	50                      # 0x32
	.quad	166                     # 0xa6
	.quad	194                     # 0xc2
	.quad	35                      # 0x23
	.quad	61                      # 0x3d
	.quad	238                     # 0xee
	.quad	76                      # 0x4c
	.quad	149                     # 0x95
	.quad	11                      # 0xb
	.quad	66                      # 0x42
	.quad	250                     # 0xfa
	.quad	195                     # 0xc3
	.quad	78                      # 0x4e
	.quad	8                       # 0x8
	.quad	46                      # 0x2e
	.quad	161                     # 0xa1
	.quad	102                     # 0x66
	.quad	40                      # 0x28
	.quad	217                     # 0xd9
	.quad	36                      # 0x24
	.quad	178                     # 0xb2
	.quad	118                     # 0x76
	.quad	91                      # 0x5b
	.quad	162                     # 0xa2
	.quad	73                      # 0x49
	.quad	109                     # 0x6d
	.quad	139                     # 0x8b
	.quad	209                     # 0xd1
	.quad	37                      # 0x25
	.quad	114                     # 0x72
	.quad	248                     # 0xf8
	.quad	246                     # 0xf6
	.quad	100                     # 0x64
	.quad	134                     # 0x86
	.quad	104                     # 0x68
	.quad	152                     # 0x98
	.quad	22                      # 0x16
	.quad	212                     # 0xd4
	.quad	164                     # 0xa4
	.quad	92                      # 0x5c
	.quad	204                     # 0xcc
	.quad	93                      # 0x5d
	.quad	101                     # 0x65
	.quad	182                     # 0xb6
	.quad	146                     # 0x92
	.quad	108                     # 0x6c
	.quad	112                     # 0x70
	.quad	72                      # 0x48
	.quad	80                      # 0x50
	.quad	253                     # 0xfd
	.quad	237                     # 0xed
	.quad	185                     # 0xb9
	.quad	218                     # 0xda
	.quad	94                      # 0x5e
	.quad	21                      # 0x15
	.quad	70                      # 0x46
	.quad	87                      # 0x57
	.quad	167                     # 0xa7
	.quad	141                     # 0x8d
	.quad	157                     # 0x9d
	.quad	132                     # 0x84
	.quad	144                     # 0x90
	.quad	216                     # 0xd8
	.quad	171                     # 0xab
	.quad	0                       # 0x0
	.quad	140                     # 0x8c
	.quad	188                     # 0xbc
	.quad	211                     # 0xd3
	.quad	10                      # 0xa
	.quad	247                     # 0xf7
	.quad	228                     # 0xe4
	.quad	88                      # 0x58
	.quad	5                       # 0x5
	.quad	184                     # 0xb8
	.quad	179                     # 0xb3
	.quad	69                      # 0x45
	.quad	6                       # 0x6
	.quad	208                     # 0xd0
	.quad	44                      # 0x2c
	.quad	30                      # 0x1e
	.quad	143                     # 0x8f
	.quad	202                     # 0xca
	.quad	63                      # 0x3f
	.quad	15                      # 0xf
	.quad	2                       # 0x2
	.quad	193                     # 0xc1
	.quad	175                     # 0xaf
	.quad	189                     # 0xbd
	.quad	3                       # 0x3
	.quad	1                       # 0x1
	.quad	19                      # 0x13
	.quad	138                     # 0x8a
	.quad	107                     # 0x6b
	.quad	58                      # 0x3a
	.quad	145                     # 0x91
	.quad	17                      # 0x11
	.quad	65                      # 0x41
	.quad	79                      # 0x4f
	.quad	103                     # 0x67
	.quad	220                     # 0xdc
	.quad	234                     # 0xea
	.quad	151                     # 0x97
	.quad	242                     # 0xf2
	.quad	207                     # 0xcf
	.quad	206                     # 0xce
	.quad	240                     # 0xf0
	.quad	180                     # 0xb4
	.quad	230                     # 0xe6
	.quad	115                     # 0x73
	.quad	150                     # 0x96
	.quad	172                     # 0xac
	.quad	116                     # 0x74
	.quad	34                      # 0x22
	.quad	231                     # 0xe7
	.quad	173                     # 0xad
	.quad	53                      # 0x35
	.quad	133                     # 0x85
	.quad	226                     # 0xe2
	.quad	249                     # 0xf9
	.quad	55                      # 0x37
	.quad	232                     # 0xe8
	.quad	28                      # 0x1c
	.quad	117                     # 0x75
	.quad	223                     # 0xdf
	.quad	110                     # 0x6e
	.quad	71                      # 0x47
	.quad	241                     # 0xf1
	.quad	26                      # 0x1a
	.quad	113                     # 0x71
	.quad	29                      # 0x1d
	.quad	41                      # 0x29
	.quad	197                     # 0xc5
	.quad	137                     # 0x89
	.quad	111                     # 0x6f
	.quad	183                     # 0xb7
	.quad	98                      # 0x62
	.quad	14                      # 0xe
	.quad	170                     # 0xaa
	.quad	24                      # 0x18
	.quad	190                     # 0xbe
	.quad	27                      # 0x1b
	.quad	252                     # 0xfc
	.quad	86                      # 0x56
	.quad	62                      # 0x3e
	.quad	75                      # 0x4b
	.quad	198                     # 0xc6
	.quad	210                     # 0xd2
	.quad	121                     # 0x79
	.quad	32                      # 0x20
	.quad	154                     # 0x9a
	.quad	219                     # 0xdb
	.quad	192                     # 0xc0
	.quad	254                     # 0xfe
	.quad	120                     # 0x78
	.quad	205                     # 0xcd
	.quad	90                      # 0x5a
	.quad	244                     # 0xf4
	.quad	31                      # 0x1f
	.quad	221                     # 0xdd
	.quad	168                     # 0xa8
	.quad	51                      # 0x33
	.quad	136                     # 0x88
	.quad	7                       # 0x7
	.quad	199                     # 0xc7
	.quad	49                      # 0x31
	.quad	177                     # 0xb1
	.quad	18                      # 0x12
	.quad	16                      # 0x10
	.quad	89                      # 0x59
	.quad	39                      # 0x27
	.quad	128                     # 0x80
	.quad	236                     # 0xec
	.quad	95                      # 0x5f
	.quad	96                      # 0x60
	.quad	81                      # 0x51
	.quad	127                     # 0x7f
	.quad	169                     # 0xa9
	.quad	25                      # 0x19
	.quad	181                     # 0xb5
	.quad	74                      # 0x4a
	.quad	13                      # 0xd
	.quad	45                      # 0x2d
	.quad	229                     # 0xe5
	.quad	122                     # 0x7a
	.quad	159                     # 0x9f
	.quad	147                     # 0x93
	.quad	201                     # 0xc9
	.quad	156                     # 0x9c
	.quad	239                     # 0xef
	.quad	160                     # 0xa0
	.quad	224                     # 0xe0
	.quad	59                      # 0x3b
	.quad	77                      # 0x4d
	.quad	174                     # 0xae
	.quad	42                      # 0x2a
	.quad	245                     # 0xf5
	.quad	176                     # 0xb0
	.quad	200                     # 0xc8
	.quad	235                     # 0xeb
	.quad	187                     # 0xbb
	.quad	60                      # 0x3c
	.quad	131                     # 0x83
	.quad	83                      # 0x53
	.quad	153                     # 0x99
	.quad	97                      # 0x61
	.quad	23                      # 0x17
	.quad	43                      # 0x2b
	.quad	4                       # 0x4
	.quad	126                     # 0x7e
	.quad	186                     # 0xba
	.quad	119                     # 0x77
	.quad	214                     # 0xd6
	.quad	38                      # 0x26
	.quad	225                     # 0xe1
	.quad	105                     # 0x69
	.quad	20                      # 0x14
	.quad	99                      # 0x63
	.quad	85                      # 0x55
	.quad	33                      # 0x21
	.quad	12                      # 0xc
	.quad	125                     # 0x7d
	.quad	20992                   # 0x5200
	.quad	2304                    # 0x900
	.quad	27136                   # 0x6a00
	.quad	54528                   # 0xd500
	.quad	12288                   # 0x3000
	.quad	13824                   # 0x3600
	.quad	42240                   # 0xa500
	.quad	14336                   # 0x3800
	.quad	48896                   # 0xbf00
	.quad	16384                   # 0x4000
	.quad	41728                   # 0xa300
	.quad	40448                   # 0x9e00
	.quad	33024                   # 0x8100
	.quad	62208                   # 0xf300
	.quad	55040                   # 0xd700
	.quad	64256                   # 0xfb00
	.quad	31744                   # 0x7c00
	.quad	58112                   # 0xe300
	.quad	14592                   # 0x3900
	.quad	33280                   # 0x8200
	.quad	39680                   # 0x9b00
	.quad	12032                   # 0x2f00
	.quad	65280                   # 0xff00
	.quad	34560                   # 0x8700
	.quad	13312                   # 0x3400
	.quad	36352                   # 0x8e00
	.quad	17152                   # 0x4300
	.quad	17408                   # 0x4400
	.quad	50176                   # 0xc400
	.quad	56832                   # 0xde00
	.quad	59648                   # 0xe900
	.quad	51968                   # 0xcb00
	.quad	21504                   # 0x5400
	.quad	31488                   # 0x7b00
	.quad	37888                   # 0x9400
	.quad	12800                   # 0x3200
	.quad	42496                   # 0xa600
	.quad	49664                   # 0xc200
	.quad	8960                    # 0x2300
	.quad	15616                   # 0x3d00
	.quad	60928                   # 0xee00
	.quad	19456                   # 0x4c00
	.quad	38144                   # 0x9500
	.quad	2816                    # 0xb00
	.quad	16896                   # 0x4200
	.quad	64000                   # 0xfa00
	.quad	49920                   # 0xc300
	.quad	19968                   # 0x4e00
	.quad	2048                    # 0x800
	.quad	11776                   # 0x2e00
	.quad	41216                   # 0xa100
	.quad	26112                   # 0x6600
	.quad	10240                   # 0x2800
	.quad	55552                   # 0xd900
	.quad	9216                    # 0x2400
	.quad	45568                   # 0xb200
	.quad	30208                   # 0x7600
	.quad	23296                   # 0x5b00
	.quad	41472                   # 0xa200
	.quad	18688                   # 0x4900
	.quad	27904                   # 0x6d00
	.quad	35584                   # 0x8b00
	.quad	53504                   # 0xd100
	.quad	9472                    # 0x2500
	.quad	29184                   # 0x7200
	.quad	63488                   # 0xf800
	.quad	62976                   # 0xf600
	.quad	25600                   # 0x6400
	.quad	34304                   # 0x8600
	.quad	26624                   # 0x6800
	.quad	38912                   # 0x9800
	.quad	5632                    # 0x1600
	.quad	54272                   # 0xd400
	.quad	41984                   # 0xa400
	.quad	23552                   # 0x5c00
	.quad	52224                   # 0xcc00
	.quad	23808                   # 0x5d00
	.quad	25856                   # 0x6500
	.quad	46592                   # 0xb600
	.quad	37376                   # 0x9200
	.quad	27648                   # 0x6c00
	.quad	28672                   # 0x7000
	.quad	18432                   # 0x4800
	.quad	20480                   # 0x5000
	.quad	64768                   # 0xfd00
	.quad	60672                   # 0xed00
	.quad	47360                   # 0xb900
	.quad	55808                   # 0xda00
	.quad	24064                   # 0x5e00
	.quad	5376                    # 0x1500
	.quad	17920                   # 0x4600
	.quad	22272                   # 0x5700
	.quad	42752                   # 0xa700
	.quad	36096                   # 0x8d00
	.quad	40192                   # 0x9d00
	.quad	33792                   # 0x8400
	.quad	36864                   # 0x9000
	.quad	55296                   # 0xd800
	.quad	43776                   # 0xab00
	.quad	0                       # 0x0
	.quad	35840                   # 0x8c00
	.quad	48128                   # 0xbc00
	.quad	54016                   # 0xd300
	.quad	2560                    # 0xa00
	.quad	63232                   # 0xf700
	.quad	58368                   # 0xe400
	.quad	22528                   # 0x5800
	.quad	1280                    # 0x500
	.quad	47104                   # 0xb800
	.quad	45824                   # 0xb300
	.quad	17664                   # 0x4500
	.quad	1536                    # 0x600
	.quad	53248                   # 0xd000
	.quad	11264                   # 0x2c00
	.quad	7680                    # 0x1e00
	.quad	36608                   # 0x8f00
	.quad	51712                   # 0xca00
	.quad	16128                   # 0x3f00
	.quad	3840                    # 0xf00
	.quad	512                     # 0x200
	.quad	49408                   # 0xc100
	.quad	44800                   # 0xaf00
	.quad	48384                   # 0xbd00
	.quad	768                     # 0x300
	.quad	256                     # 0x100
	.quad	4864                    # 0x1300
	.quad	35328                   # 0x8a00
	.quad	27392                   # 0x6b00
	.quad	14848                   # 0x3a00
	.quad	37120                   # 0x9100
	.quad	4352                    # 0x1100
	.quad	16640                   # 0x4100
	.quad	20224                   # 0x4f00
	.quad	26368                   # 0x6700
	.quad	56320                   # 0xdc00
	.quad	59904                   # 0xea00
	.quad	38656                   # 0x9700
	.quad	61952                   # 0xf200
	.quad	52992                   # 0xcf00
	.quad	52736                   # 0xce00
	.quad	61440                   # 0xf000
	.quad	46080                   # 0xb400
	.quad	58880                   # 0xe600
	.quad	29440                   # 0x7300
	.quad	38400                   # 0x9600
	.quad	44032                   # 0xac00
	.quad	29696                   # 0x7400
	.quad	8704                    # 0x2200
	.quad	59136                   # 0xe700
	.quad	44288                   # 0xad00
	.quad	13568                   # 0x3500
	.quad	34048                   # 0x8500
	.quad	57856                   # 0xe200
	.quad	63744                   # 0xf900
	.quad	14080                   # 0x3700
	.quad	59392                   # 0xe800
	.quad	7168                    # 0x1c00
	.quad	29952                   # 0x7500
	.quad	57088                   # 0xdf00
	.quad	28160                   # 0x6e00
	.quad	18176                   # 0x4700
	.quad	61696                   # 0xf100
	.quad	6656                    # 0x1a00
	.quad	28928                   # 0x7100
	.quad	7424                    # 0x1d00
	.quad	10496                   # 0x2900
	.quad	50432                   # 0xc500
	.quad	35072                   # 0x8900
	.quad	28416                   # 0x6f00
	.quad	46848                   # 0xb700
	.quad	25088                   # 0x6200
	.quad	3584                    # 0xe00
	.quad	43520                   # 0xaa00
	.quad	6144                    # 0x1800
	.quad	48640                   # 0xbe00
	.quad	6912                    # 0x1b00
	.quad	64512                   # 0xfc00
	.quad	22016                   # 0x5600
	.quad	15872                   # 0x3e00
	.quad	19200                   # 0x4b00
	.quad	50688                   # 0xc600
	.quad	53760                   # 0xd200
	.quad	30976                   # 0x7900
	.quad	8192                    # 0x2000
	.quad	39424                   # 0x9a00
	.quad	56064                   # 0xdb00
	.quad	49152                   # 0xc000
	.quad	65024                   # 0xfe00
	.quad	30720                   # 0x7800
	.quad	52480                   # 0xcd00
	.quad	23040                   # 0x5a00
	.quad	62464                   # 0xf400
	.quad	7936                    # 0x1f00
	.quad	56576                   # 0xdd00
	.quad	43008                   # 0xa800
	.quad	13056                   # 0x3300
	.quad	34816                   # 0x8800
	.quad	1792                    # 0x700
	.quad	50944                   # 0xc700
	.quad	12544                   # 0x3100
	.quad	45312                   # 0xb100
	.quad	4608                    # 0x1200
	.quad	4096                    # 0x1000
	.quad	22784                   # 0x5900
	.quad	9984                    # 0x2700
	.quad	32768                   # 0x8000
	.quad	60416                   # 0xec00
	.quad	24320                   # 0x5f00
	.quad	24576                   # 0x6000
	.quad	20736                   # 0x5100
	.quad	32512                   # 0x7f00
	.quad	43264                   # 0xa900
	.quad	6400                    # 0x1900
	.quad	46336                   # 0xb500
	.quad	18944                   # 0x4a00
	.quad	3328                    # 0xd00
	.quad	11520                   # 0x2d00
	.quad	58624                   # 0xe500
	.quad	31232                   # 0x7a00
	.quad	40704                   # 0x9f00
	.quad	37632                   # 0x9300
	.quad	51456                   # 0xc900
	.quad	39936                   # 0x9c00
	.quad	61184                   # 0xef00
	.quad	40960                   # 0xa000
	.quad	57344                   # 0xe000
	.quad	15104                   # 0x3b00
	.quad	19712                   # 0x4d00
	.quad	44544                   # 0xae00
	.quad	10752                   # 0x2a00
	.quad	62720                   # 0xf500
	.quad	45056                   # 0xb000
	.quad	51200                   # 0xc800
	.quad	60160                   # 0xeb00
	.quad	47872                   # 0xbb00
	.quad	15360                   # 0x3c00
	.quad	33536                   # 0x8300
	.quad	21248                   # 0x5300
	.quad	39168                   # 0x9900
	.quad	24832                   # 0x6100
	.quad	5888                    # 0x1700
	.quad	11008                   # 0x2b00
	.quad	1024                    # 0x400
	.quad	32256                   # 0x7e00
	.quad	47616                   # 0xba00
	.quad	30464                   # 0x7700
	.quad	54784                   # 0xd600
	.quad	9728                    # 0x2600
	.quad	57600                   # 0xe100
	.quad	26880                   # 0x6900
	.quad	5120                    # 0x1400
	.quad	25344                   # 0x6300
	.quad	21760                   # 0x5500
	.quad	8448                    # 0x2100
	.quad	3072                    # 0xc00
	.quad	32000                   # 0x7d00
	.quad	5373952                 # 0x520000
	.quad	589824                  # 0x90000
	.quad	6946816                 # 0x6a0000
	.quad	13959168                # 0xd50000
	.quad	3145728                 # 0x300000
	.quad	3538944                 # 0x360000
	.quad	10813440                # 0xa50000
	.quad	3670016                 # 0x380000
	.quad	12517376                # 0xbf0000
	.quad	4194304                 # 0x400000
	.quad	10682368                # 0xa30000
	.quad	10354688                # 0x9e0000
	.quad	8454144                 # 0x810000
	.quad	15925248                # 0xf30000
	.quad	14090240                # 0xd70000
	.quad	16449536                # 0xfb0000
	.quad	8126464                 # 0x7c0000
	.quad	14876672                # 0xe30000
	.quad	3735552                 # 0x390000
	.quad	8519680                 # 0x820000
	.quad	10158080                # 0x9b0000
	.quad	3080192                 # 0x2f0000
	.quad	16711680                # 0xff0000
	.quad	8847360                 # 0x870000
	.quad	3407872                 # 0x340000
	.quad	9306112                 # 0x8e0000
	.quad	4390912                 # 0x430000
	.quad	4456448                 # 0x440000
	.quad	12845056                # 0xc40000
	.quad	14548992                # 0xde0000
	.quad	15269888                # 0xe90000
	.quad	13303808                # 0xcb0000
	.quad	5505024                 # 0x540000
	.quad	8060928                 # 0x7b0000
	.quad	9699328                 # 0x940000
	.quad	3276800                 # 0x320000
	.quad	10878976                # 0xa60000
	.quad	12713984                # 0xc20000
	.quad	2293760                 # 0x230000
	.quad	3997696                 # 0x3d0000
	.quad	15597568                # 0xee0000
	.quad	4980736                 # 0x4c0000
	.quad	9764864                 # 0x950000
	.quad	720896                  # 0xb0000
	.quad	4325376                 # 0x420000
	.quad	16384000                # 0xfa0000
	.quad	12779520                # 0xc30000
	.quad	5111808                 # 0x4e0000
	.quad	524288                  # 0x80000
	.quad	3014656                 # 0x2e0000
	.quad	10551296                # 0xa10000
	.quad	6684672                 # 0x660000
	.quad	2621440                 # 0x280000
	.quad	14221312                # 0xd90000
	.quad	2359296                 # 0x240000
	.quad	11665408                # 0xb20000
	.quad	7733248                 # 0x760000
	.quad	5963776                 # 0x5b0000
	.quad	10616832                # 0xa20000
	.quad	4784128                 # 0x490000
	.quad	7143424                 # 0x6d0000
	.quad	9109504                 # 0x8b0000
	.quad	13697024                # 0xd10000
	.quad	2424832                 # 0x250000
	.quad	7471104                 # 0x720000
	.quad	16252928                # 0xf80000
	.quad	16121856                # 0xf60000
	.quad	6553600                 # 0x640000
	.quad	8781824                 # 0x860000
	.quad	6815744                 # 0x680000
	.quad	9961472                 # 0x980000
	.quad	1441792                 # 0x160000
	.quad	13893632                # 0xd40000
	.quad	10747904                # 0xa40000
	.quad	6029312                 # 0x5c0000
	.quad	13369344                # 0xcc0000
	.quad	6094848                 # 0x5d0000
	.quad	6619136                 # 0x650000
	.quad	11927552                # 0xb60000
	.quad	9568256                 # 0x920000
	.quad	7077888                 # 0x6c0000
	.quad	7340032                 # 0x700000
	.quad	4718592                 # 0x480000
	.quad	5242880                 # 0x500000
	.quad	16580608                # 0xfd0000
	.quad	15532032                # 0xed0000
	.quad	12124160                # 0xb90000
	.quad	14286848                # 0xda0000
	.quad	6160384                 # 0x5e0000
	.quad	1376256                 # 0x150000
	.quad	4587520                 # 0x460000
	.quad	5701632                 # 0x570000
	.quad	10944512                # 0xa70000
	.quad	9240576                 # 0x8d0000
	.quad	10289152                # 0x9d0000
	.quad	8650752                 # 0x840000
	.quad	9437184                 # 0x900000
	.quad	14155776                # 0xd80000
	.quad	11206656                # 0xab0000
	.quad	0                       # 0x0
	.quad	9175040                 # 0x8c0000
	.quad	12320768                # 0xbc0000
	.quad	13828096                # 0xd30000
	.quad	655360                  # 0xa0000
	.quad	16187392                # 0xf70000
	.quad	14942208                # 0xe40000
	.quad	5767168                 # 0x580000
	.quad	327680                  # 0x50000
	.quad	12058624                # 0xb80000
	.quad	11730944                # 0xb30000
	.quad	4521984                 # 0x450000
	.quad	393216                  # 0x60000
	.quad	13631488                # 0xd00000
	.quad	2883584                 # 0x2c0000
	.quad	1966080                 # 0x1e0000
	.quad	9371648                 # 0x8f0000
	.quad	13238272                # 0xca0000
	.quad	4128768                 # 0x3f0000
	.quad	983040                  # 0xf0000
	.quad	131072                  # 0x20000
	.quad	12648448                # 0xc10000
	.quad	11468800                # 0xaf0000
	.quad	12386304                # 0xbd0000
	.quad	196608                  # 0x30000
	.quad	65536                   # 0x10000
	.quad	1245184                 # 0x130000
	.quad	9043968                 # 0x8a0000
	.quad	7012352                 # 0x6b0000
	.quad	3801088                 # 0x3a0000
	.quad	9502720                 # 0x910000
	.quad	1114112                 # 0x110000
	.quad	4259840                 # 0x410000
	.quad	5177344                 # 0x4f0000
	.quad	6750208                 # 0x670000
	.quad	14417920                # 0xdc0000
	.quad	15335424                # 0xea0000
	.quad	9895936                 # 0x970000
	.quad	15859712                # 0xf20000
	.quad	13565952                # 0xcf0000
	.quad	13500416                # 0xce0000
	.quad	15728640                # 0xf00000
	.quad	11796480                # 0xb40000
	.quad	15073280                # 0xe60000
	.quad	7536640                 # 0x730000
	.quad	9830400                 # 0x960000
	.quad	11272192                # 0xac0000
	.quad	7602176                 # 0x740000
	.quad	2228224                 # 0x220000
	.quad	15138816                # 0xe70000
	.quad	11337728                # 0xad0000
	.quad	3473408                 # 0x350000
	.quad	8716288                 # 0x850000
	.quad	14811136                # 0xe20000
	.quad	16318464                # 0xf90000
	.quad	3604480                 # 0x370000
	.quad	15204352                # 0xe80000
	.quad	1835008                 # 0x1c0000
	.quad	7667712                 # 0x750000
	.quad	14614528                # 0xdf0000
	.quad	7208960                 # 0x6e0000
	.quad	4653056                 # 0x470000
	.quad	15794176                # 0xf10000
	.quad	1703936                 # 0x1a0000
	.quad	7405568                 # 0x710000
	.quad	1900544                 # 0x1d0000
	.quad	2686976                 # 0x290000
	.quad	12910592                # 0xc50000
	.quad	8978432                 # 0x890000
	.quad	7274496                 # 0x6f0000
	.quad	11993088                # 0xb70000
	.quad	6422528                 # 0x620000
	.quad	917504                  # 0xe0000
	.quad	11141120                # 0xaa0000
	.quad	1572864                 # 0x180000
	.quad	12451840                # 0xbe0000
	.quad	1769472                 # 0x1b0000
	.quad	16515072                # 0xfc0000
	.quad	5636096                 # 0x560000
	.quad	4063232                 # 0x3e0000
	.quad	4915200                 # 0x4b0000
	.quad	12976128                # 0xc60000
	.quad	13762560                # 0xd20000
	.quad	7929856                 # 0x790000
	.quad	2097152                 # 0x200000
	.quad	10092544                # 0x9a0000
	.quad	14352384                # 0xdb0000
	.quad	12582912                # 0xc00000
	.quad	16646144                # 0xfe0000
	.quad	7864320                 # 0x780000
	.quad	13434880                # 0xcd0000
	.quad	5898240                 # 0x5a0000
	.quad	15990784                # 0xf40000
	.quad	2031616                 # 0x1f0000
	.quad	14483456                # 0xdd0000
	.quad	11010048                # 0xa80000
	.quad	3342336                 # 0x330000
	.quad	8912896                 # 0x880000
	.quad	458752                  # 0x70000
	.quad	13041664                # 0xc70000
	.quad	3211264                 # 0x310000
	.quad	11599872                # 0xb10000
	.quad	1179648                 # 0x120000
	.quad	1048576                 # 0x100000
	.quad	5832704                 # 0x590000
	.quad	2555904                 # 0x270000
	.quad	8388608                 # 0x800000
	.quad	15466496                # 0xec0000
	.quad	6225920                 # 0x5f0000
	.quad	6291456                 # 0x600000
	.quad	5308416                 # 0x510000
	.quad	8323072                 # 0x7f0000
	.quad	11075584                # 0xa90000
	.quad	1638400                 # 0x190000
	.quad	11862016                # 0xb50000
	.quad	4849664                 # 0x4a0000
	.quad	851968                  # 0xd0000
	.quad	2949120                 # 0x2d0000
	.quad	15007744                # 0xe50000
	.quad	7995392                 # 0x7a0000
	.quad	10420224                # 0x9f0000
	.quad	9633792                 # 0x930000
	.quad	13172736                # 0xc90000
	.quad	10223616                # 0x9c0000
	.quad	15663104                # 0xef0000
	.quad	10485760                # 0xa00000
	.quad	14680064                # 0xe00000
	.quad	3866624                 # 0x3b0000
	.quad	5046272                 # 0x4d0000
	.quad	11403264                # 0xae0000
	.quad	2752512                 # 0x2a0000
	.quad	16056320                # 0xf50000
	.quad	11534336                # 0xb00000
	.quad	13107200                # 0xc80000
	.quad	15400960                # 0xeb0000
	.quad	12255232                # 0xbb0000
	.quad	3932160                 # 0x3c0000
	.quad	8585216                 # 0x830000
	.quad	5439488                 # 0x530000
	.quad	10027008                # 0x990000
	.quad	6356992                 # 0x610000
	.quad	1507328                 # 0x170000
	.quad	2818048                 # 0x2b0000
	.quad	262144                  # 0x40000
	.quad	8257536                 # 0x7e0000
	.quad	12189696                # 0xba0000
	.quad	7798784                 # 0x770000
	.quad	14024704                # 0xd60000
	.quad	2490368                 # 0x260000
	.quad	14745600                # 0xe10000
	.quad	6881280                 # 0x690000
	.quad	1310720                 # 0x140000
	.quad	6488064                 # 0x630000
	.quad	5570560                 # 0x550000
	.quad	2162688                 # 0x210000
	.quad	786432                  # 0xc0000
	.quad	8192000                 # 0x7d0000
	.quad	1375731712              # 0x52000000
	.quad	150994944               # 0x9000000
	.quad	1778384896              # 0x6a000000
	.quad	3573547008              # 0xd5000000
	.quad	805306368               # 0x30000000
	.quad	905969664               # 0x36000000
	.quad	2768240640              # 0xa5000000
	.quad	939524096               # 0x38000000
	.quad	3204448256              # 0xbf000000
	.quad	1073741824              # 0x40000000
	.quad	2734686208              # 0xa3000000
	.quad	2650800128              # 0x9e000000
	.quad	2164260864              # 0x81000000
	.quad	4076863488              # 0xf3000000
	.quad	3607101440              # 0xd7000000
	.quad	4211081216              # 0xfb000000
	.quad	2080374784              # 0x7c000000
	.quad	3808428032              # 0xe3000000
	.quad	956301312               # 0x39000000
	.quad	2181038080              # 0x82000000
	.quad	2600468480              # 0x9b000000
	.quad	788529152               # 0x2f000000
	.quad	4278190080              # 0xff000000
	.quad	2264924160              # 0x87000000
	.quad	872415232               # 0x34000000
	.quad	2382364672              # 0x8e000000
	.quad	1124073472              # 0x43000000
	.quad	1140850688              # 0x44000000
	.quad	3288334336              # 0xc4000000
	.quad	3724541952              # 0xde000000
	.quad	3909091328              # 0xe9000000
	.quad	3405774848              # 0xcb000000
	.quad	1409286144              # 0x54000000
	.quad	2063597568              # 0x7b000000
	.quad	2483027968              # 0x94000000
	.quad	838860800               # 0x32000000
	.quad	2785017856              # 0xa6000000
	.quad	3254779904              # 0xc2000000
	.quad	587202560               # 0x23000000
	.quad	1023410176              # 0x3d000000
	.quad	3992977408              # 0xee000000
	.quad	1275068416              # 0x4c000000
	.quad	2499805184              # 0x95000000
	.quad	184549376               # 0xb000000
	.quad	1107296256              # 0x42000000
	.quad	4194304000              # 0xfa000000
	.quad	3271557120              # 0xc3000000
	.quad	1308622848              # 0x4e000000
	.quad	134217728               # 0x8000000
	.quad	771751936               # 0x2e000000
	.quad	2701131776              # 0xa1000000
	.quad	1711276032              # 0x66000000
	.quad	671088640               # 0x28000000
	.quad	3640655872              # 0xd9000000
	.quad	603979776               # 0x24000000
	.quad	2986344448              # 0xb2000000
	.quad	1979711488              # 0x76000000
	.quad	1526726656              # 0x5b000000
	.quad	2717908992              # 0xa2000000
	.quad	1224736768              # 0x49000000
	.quad	1828716544              # 0x6d000000
	.quad	2332033024              # 0x8b000000
	.quad	3506438144              # 0xd1000000
	.quad	620756992               # 0x25000000
	.quad	1912602624              # 0x72000000
	.quad	4160749568              # 0xf8000000
	.quad	4127195136              # 0xf6000000
	.quad	1677721600              # 0x64000000
	.quad	2248146944              # 0x86000000
	.quad	1744830464              # 0x68000000
	.quad	2550136832              # 0x98000000
	.quad	369098752               # 0x16000000
	.quad	3556769792              # 0xd4000000
	.quad	2751463424              # 0xa4000000
	.quad	1543503872              # 0x5c000000
	.quad	3422552064              # 0xcc000000
	.quad	1560281088              # 0x5d000000
	.quad	1694498816              # 0x65000000
	.quad	3053453312              # 0xb6000000
	.quad	2449473536              # 0x92000000
	.quad	1811939328              # 0x6c000000
	.quad	1879048192              # 0x70000000
	.quad	1207959552              # 0x48000000
	.quad	1342177280              # 0x50000000
	.quad	4244635648              # 0xfd000000
	.quad	3976200192              # 0xed000000
	.quad	3103784960              # 0xb9000000
	.quad	3657433088              # 0xda000000
	.quad	1577058304              # 0x5e000000
	.quad	352321536               # 0x15000000
	.quad	1174405120              # 0x46000000
	.quad	1459617792              # 0x57000000
	.quad	2801795072              # 0xa7000000
	.quad	2365587456              # 0x8d000000
	.quad	2634022912              # 0x9d000000
	.quad	2214592512              # 0x84000000
	.quad	2415919104              # 0x90000000
	.quad	3623878656              # 0xd8000000
	.quad	2868903936              # 0xab000000
	.quad	0                       # 0x0
	.quad	2348810240              # 0x8c000000
	.quad	3154116608              # 0xbc000000
	.quad	3539992576              # 0xd3000000
	.quad	167772160               # 0xa000000
	.quad	4143972352              # 0xf7000000
	.quad	3825205248              # 0xe4000000
	.quad	1476395008              # 0x58000000
	.quad	83886080                # 0x5000000
	.quad	3087007744              # 0xb8000000
	.quad	3003121664              # 0xb3000000
	.quad	1157627904              # 0x45000000
	.quad	100663296               # 0x6000000
	.quad	3489660928              # 0xd0000000
	.quad	738197504               # 0x2c000000
	.quad	503316480               # 0x1e000000
	.quad	2399141888              # 0x8f000000
	.quad	3388997632              # 0xca000000
	.quad	1056964608              # 0x3f000000
	.quad	251658240               # 0xf000000
	.quad	33554432                # 0x2000000
	.quad	3238002688              # 0xc1000000
	.quad	2936012800              # 0xaf000000
	.quad	3170893824              # 0xbd000000
	.quad	50331648                # 0x3000000
	.quad	16777216                # 0x1000000
	.quad	318767104               # 0x13000000
	.quad	2315255808              # 0x8a000000
	.quad	1795162112              # 0x6b000000
	.quad	973078528               # 0x3a000000
	.quad	2432696320              # 0x91000000
	.quad	285212672               # 0x11000000
	.quad	1090519040              # 0x41000000
	.quad	1325400064              # 0x4f000000
	.quad	1728053248              # 0x67000000
	.quad	3690987520              # 0xdc000000
	.quad	3925868544              # 0xea000000
	.quad	2533359616              # 0x97000000
	.quad	4060086272              # 0xf2000000
	.quad	3472883712              # 0xcf000000
	.quad	3456106496              # 0xce000000
	.quad	4026531840              # 0xf0000000
	.quad	3019898880              # 0xb4000000
	.quad	3858759680              # 0xe6000000
	.quad	1929379840              # 0x73000000
	.quad	2516582400              # 0x96000000
	.quad	2885681152              # 0xac000000
	.quad	1946157056              # 0x74000000
	.quad	570425344               # 0x22000000
	.quad	3875536896              # 0xe7000000
	.quad	2902458368              # 0xad000000
	.quad	889192448               # 0x35000000
	.quad	2231369728              # 0x85000000
	.quad	3791650816              # 0xe2000000
	.quad	4177526784              # 0xf9000000
	.quad	922746880               # 0x37000000
	.quad	3892314112              # 0xe8000000
	.quad	469762048               # 0x1c000000
	.quad	1962934272              # 0x75000000
	.quad	3741319168              # 0xdf000000
	.quad	1845493760              # 0x6e000000
	.quad	1191182336              # 0x47000000
	.quad	4043309056              # 0xf1000000
	.quad	436207616               # 0x1a000000
	.quad	1895825408              # 0x71000000
	.quad	486539264               # 0x1d000000
	.quad	687865856               # 0x29000000
	.quad	3305111552              # 0xc5000000
	.quad	2298478592              # 0x89000000
	.quad	1862270976              # 0x6f000000
	.quad	3070230528              # 0xb7000000
	.quad	1644167168              # 0x62000000
	.quad	234881024               # 0xe000000
	.quad	2852126720              # 0xaa000000
	.quad	402653184               # 0x18000000
	.quad	3187671040              # 0xbe000000
	.quad	452984832               # 0x1b000000
	.quad	4227858432              # 0xfc000000
	.quad	1442840576              # 0x56000000
	.quad	1040187392              # 0x3e000000
	.quad	1258291200              # 0x4b000000
	.quad	3321888768              # 0xc6000000
	.quad	3523215360              # 0xd2000000
	.quad	2030043136              # 0x79000000
	.quad	536870912               # 0x20000000
	.quad	2583691264              # 0x9a000000
	.quad	3674210304              # 0xdb000000
	.quad	3221225472              # 0xc0000000
	.quad	4261412864              # 0xfe000000
	.quad	2013265920              # 0x78000000
	.quad	3439329280              # 0xcd000000
	.quad	1509949440              # 0x5a000000
	.quad	4093640704              # 0xf4000000
	.quad	520093696               # 0x1f000000
	.quad	3707764736              # 0xdd000000
	.quad	2818572288              # 0xa8000000
	.quad	855638016               # 0x33000000
	.quad	2281701376              # 0x88000000
	.quad	117440512               # 0x7000000
	.quad	3338665984              # 0xc7000000
	.quad	822083584               # 0x31000000
	.quad	2969567232              # 0xb1000000
	.quad	301989888               # 0x12000000
	.quad	268435456               # 0x10000000
	.quad	1493172224              # 0x59000000
	.quad	654311424               # 0x27000000
	.quad	2147483648              # 0x80000000
	.quad	3959422976              # 0xec000000
	.quad	1593835520              # 0x5f000000
	.quad	1610612736              # 0x60000000
	.quad	1358954496              # 0x51000000
	.quad	2130706432              # 0x7f000000
	.quad	2835349504              # 0xa9000000
	.quad	419430400               # 0x19000000
	.quad	3036676096              # 0xb5000000
	.quad	1241513984              # 0x4a000000
	.quad	218103808               # 0xd000000
	.quad	754974720               # 0x2d000000
	.quad	3841982464              # 0xe5000000
	.quad	2046820352              # 0x7a000000
	.quad	2667577344              # 0x9f000000
	.quad	2466250752              # 0x93000000
	.quad	3372220416              # 0xc9000000
	.quad	2617245696              # 0x9c000000
	.quad	4009754624              # 0xef000000
	.quad	2684354560              # 0xa0000000
	.quad	3758096384              # 0xe0000000
	.quad	989855744               # 0x3b000000
	.quad	1291845632              # 0x4d000000
	.quad	2919235584              # 0xae000000
	.quad	704643072               # 0x2a000000
	.quad	4110417920              # 0xf5000000
	.quad	2952790016              # 0xb0000000
	.quad	3355443200              # 0xc8000000
	.quad	3942645760              # 0xeb000000
	.quad	3137339392              # 0xbb000000
	.quad	1006632960              # 0x3c000000
	.quad	2197815296              # 0x83000000
	.quad	1392508928              # 0x53000000
	.quad	2566914048              # 0x99000000
	.quad	1627389952              # 0x61000000
	.quad	385875968               # 0x17000000
	.quad	721420288               # 0x2b000000
	.quad	67108864                # 0x4000000
	.quad	2113929216              # 0x7e000000
	.quad	3120562176              # 0xba000000
	.quad	1996488704              # 0x77000000
	.quad	3590324224              # 0xd6000000
	.quad	637534208               # 0x26000000
	.quad	3774873600              # 0xe1000000
	.quad	1761607680              # 0x69000000
	.quad	335544320               # 0x14000000
	.quad	1660944384              # 0x63000000
	.quad	1426063360              # 0x55000000
	.quad	553648128               # 0x21000000
	.quad	201326592               # 0xc000000
	.quad	2097152000              # 0x7d000000
	.size	il_tab, 8192

	.type	im_tab,@object          # @im_tab
	.globl	im_tab
	.p2align	4
im_tab:
	.quad	0                       # 0x0
	.quad	185403662               # 0xb0d090e
	.quad	370807324               # 0x161a121c
	.quad	488053522               # 0x1d171b12
	.quad	741614648               # 0x2c342438
	.quad	658058550               # 0x27392d36
	.quad	976107044               # 0x3a2e3624
	.quad	824393514               # 0x31233f2a
	.quad	1483229296              # 0x58684870
	.quad	1399144830              # 0x5365417e
	.quad	1316117100              # 0x4e725a6c
	.quad	1165972322              # 0x457f5362
	.quad	1952214088              # 0x745c6c48
	.quad	2136040774              # 0x7f516546
	.quad	1648787028              # 0x62467e54
	.quad	1766553434              # 0x694b775a
	.quad	2966458592              # 0xb0d090e0
	.quad	3151862254              # 0xbbdd99ee
	.quad	2798289660              # 0xa6ca82fc
	.quad	2915535858              # 0xadc78bf2
	.quad	2632234200              # 0x9ce4b4d8
	.quad	2548678102              # 0x97e9bdd6
	.quad	2331944644              # 0x8afea6c4
	.quad	2180231114              # 0x81f3afca
	.quad	3904428176              # 0xe8b8d890
	.quad	3820343710              # 0xe3b5d19e
	.quad	4272081548              # 0xfea2ca8c
	.quad	4121936770              # 0xf5afc382
	.quad	3297574056              # 0xc48cfca8
	.quad	3481400742              # 0xcf81f5a6
	.quad	3533106868              # 0xd296eeb4
	.quad	3650873274              # 0xd99be7ba
	.quad	2075868123              # 0x7bbb3bdb
	.quad	1890988757              # 0x70b632d5
	.quad	1839278535              # 0x6da129c7
	.quad	1722556617              # 0x66ac20c9
	.quad	1468997603              # 0x578f1fe3
	.quad	1552029421              # 0x5c8216ed
	.quad	1100287487              # 0x41950dff
	.quad	1251476721              # 0x4a9804f1
	.quad	601060267               # 0x23d373ab
	.quad	685669029               # 0x28de7aa5
	.quad	902390199               # 0x35c961b7
	.quad	1053059257              # 0x3ec468b9
	.quad	266819475               # 0xfe75793
	.quad	82468509                # 0x4ea5e9d
	.quad	436028815               # 0x19fd458f
	.quad	317738113               # 0x12f04c81
	.quad	3412831035              # 0xcb6bab3b
	.quad	3227951669              # 0xc066a235
	.quad	3715217703              # 0xdd71b927
	.quad	3598495785              # 0xd67cb029
	.quad	3881799427              # 0xe75f8f03
	.quad	3964831245              # 0xec52860d
	.quad	4047871263              # 0xf1459d1f
	.quad	4199060497              # 0xfa489411
	.quad	2466505547              # 0x9303e34b
	.quad	2551114309              # 0x980eea45
	.quad	2233069911              # 0x8519f157
	.quad	2383738969              # 0x8e14f859
	.quad	3208103795              # 0xbf37c773
	.quad	3023752829              # 0xb43ace7d
	.quad	2838353263              # 0xa92dd56f
	.quad	2720062561              # 0xa220dc61
	.quad	4134368941              # 0xf66d76ad
	.quad	4250959779              # 0xfd607fa3
	.quad	3765920945              # 0xe07764b1
	.quad	3950669247              # 0xeb7a6dbf
	.quad	3663286933              # 0xda595295
	.quad	3511966619              # 0xd1545b9b
	.quad	3426959497              # 0xcc434089
	.quad	3343796615              # 0xc74e4987
	.quad	2919579357              # 0xae053edd
	.quad	2768779219              # 0xa50837d3
	.quad	3089050817              # 0xb81f2cc1
	.quad	3004310991              # 0xb31225cf
	.quad	2184256229              # 0x82311ae5
	.quad	2302415851              # 0x893c13eb
	.quad	2485848313              # 0x942b08f9
	.quad	2670068215              # 0x9f2601f7
	.quad	1186850381              # 0x46bde64d
	.quad	1303441219              # 0x4db0ef43
	.quad	1353184337              # 0x50a7f451
	.quad	1537932639              # 0x5baafd5f
	.quad	1787413109              # 0x6a89c275
	.quad	1636092795              # 0x6184cb7b
	.quad	2090061929              # 0x7c93d069
	.quad	2006899047              # 0x779ed967
	.quad	517320253               # 0x1ed5ae3d
	.quad	366520115               # 0x15d8a733
	.quad	147831841               # 0x8cfbc21
	.quad	63092015                # 0x3c2b52f
	.quad	853641733               # 0x32e18a05
	.quad	971801355               # 0x39ec830b
	.quad	620468249               # 0x24fb9819
	.quad	804688151               # 0x2ff69117
	.quad	2379631990              # 0x8dd64d76
	.quad	2262516856              # 0x86db4478
	.quad	2613862250              # 0x9bcc5f6a
	.quad	2428589668              # 0x90c15664
	.quad	2715969870              # 0xa1e2694e
	.quad	2867814464              # 0xaaef6040
	.quad	3086515026              # 0xb7f87b52
	.quad	3170202204              # 0xbcf5725c
	.quad	3586000134              # 0xd5be0506
	.quad	3736275976              # 0xdeb30c08
	.quad	3282310938              # 0xc3a4171a
	.quad	3366526484              # 0xc8a91e14
	.quad	4186579262              # 0xf98a213e
	.quad	4068943920              # 0xf2872830
	.quad	4019204898              # 0xef903322
	.quad	3835509292              # 0xe49d3a2c
	.quad	1023860118              # 0x3d06dd96
	.quad	906744984               # 0x360bd498
	.quad	723308426               # 0x2b1ccf8a
	.quad	538035844               # 0x2011c684
	.quad	288553390               # 0x1132f9ae
	.quad	440397984               # 0x1a3ff0a0
	.quad	120122290               # 0x728ebb2
	.quad	203809468               # 0xc25e2bc
	.quad	1701746150              # 0x656e95e6
	.quad	1852021992              # 0x6e639ce8
	.quad	1937016826              # 0x737487fa
	.quad	2021232372              # 0x78798ef4
	.quad	1230680542              # 0x495ab1de
	.quad	1113045200              # 0x4257b8d0
	.quad	1598071746              # 0x5f40a3c2
	.quad	1414376140              # 0x544daacc
	.quad	4158319681              # 0xf7daec41
	.quad	4242007375              # 0xfcd7e54f
	.quad	3787521629              # 0xe1c0fe5d
	.quad	3939366739              # 0xeacdf753
	.quad	3689859193              # 0xdbeec879
	.quad	3504587127              # 0xd0e3c177
	.quad	3455375973              # 0xcdf4da65
	.quad	3338261355              # 0xc6f9d36b
	.quad	2947720241              # 0xafb2a431
	.quad	2764025151              # 0xa4bfad3f
	.quad	3114841645              # 0xb9a8b62d
	.quad	2997206819              # 0xb2a5bf23
	.quad	2206629897              # 0x83868009
	.quad	2290845959              # 0x888b8907
	.quad	2510066197              # 0x959c9215
	.quad	2660342555              # 0x9e919b1b
	.quad	1191869601              # 0x470a7ca1
	.quad	1275557295              # 0x4c0775af
	.quad	1360031421              # 0x51106ebd
	.quad	1511876531              # 0x5a1d67b3
	.quad	1799248025              # 0x6b3e5899
	.quad	1613975959              # 0x60335197
	.quad	2099530373              # 0x7d244a85
	.quad	1982415755              # 0x7629438b
	.quad	526529745               # 0x1f6234d1
	.quad	342834655               # 0x146f3ddf
	.quad	158869197               # 0x97826cd
	.quad	41234371                # 0x2752fc3
	.quad	861278441               # 0x335610e9
	.quad	945494503               # 0x385b19e7
	.quad	625738485               # 0x254c02f5
	.quad	776014843               # 0x2e410bfb
	.quad	2355222426              # 0x8c61d79a
	.quad	2272059028              # 0x876cde94
	.quad	2591802758              # 0x9a7bc586
	.quad	2440481928              # 0x9176cc88
	.quad	2689987490              # 0xa055f3a2
	.quad	2874735276              # 0xab58faac
	.quad	3058688446              # 0xb64fe1be
	.quad	3175278768              # 0xbd42e8b0
	.quad	3557400554              # 0xd4099fea
	.quad	3741619940              # 0xdf0496e4
	.quad	3256061430              # 0xc2138df6
	.quad	3374220536              # 0xc91e84f8
	.quad	4164795346              # 0xf83dbbd2
	.quad	4080055004              # 0xf330b2dc
	.quad	3995576782              # 0xee27a9ce
	.quad	3844776128              # 0xe52aa0c0
	.quad	1018251130              # 0x3cb1477a
	.quad	935087732               # 0x37bc4e74
	.quad	715871590               # 0x2aab5566
	.quad	564550760               # 0x21a65c68
	.quad	277177154               # 0x10856342
	.quad	461924940               # 0x1b886a4c
	.quad	111112542               # 0x69f715e
	.quad	227702864               # 0xd927850
	.quad	1691946762              # 0x64d90f0a
	.quad	1876166148              # 0x6fd40604
	.quad	1925389590              # 0x72c31d16
	.quad	2043548696              # 0x79ce1418
	.quad	1223502642              # 0x48ed2b32
	.quad	1138762300              # 0x43e0223c
	.quad	1593260334              # 0x5ef7392e
	.quad	1442459680              # 0x55fa3020
	.quad	28809964                # 0x1b79aec
	.quad	179999714               # 0xaba93e2
	.quad	397248752               # 0x17ad88f0
	.quad	480281086               # 0x1ca081fe
	.quad	763608788               # 0x2d83bed4
	.quad	646887386               # 0x268eb7da
	.quad	999926984               # 0x3b99acc8
	.quad	815048134               # 0x3094a5c6
	.quad	1507840668              # 0x59dfd29c
	.quad	1389550482              # 0x52d2db92
	.quad	1338359936              # 0x4fc5c080
	.quad	1154009486              # 0x44c8c98e
	.quad	1978398372              # 0x75ebf6a4
	.quad	2129067946              # 0x7ee6ffaa
	.quad	1676797112              # 0x63f1e4b8
	.quad	1761406390              # 0x68fcedb6
	.quad	2976320012              # 0xb1670a0c
	.quad	3127509762              # 0xba6a0302
	.quad	2809993232              # 0xa77d1810
	.quad	2893025566              # 0xac70111e
	.quad	2639474228              # 0x9d532e34
	.quad	2522752826              # 0x965e273a
	.quad	2336832552              # 0x8b493c28
	.quad	2151953702              # 0x80443526
	.quad	3910091388              # 0xe90f427c
	.quad	3791801202              # 0xe2024b72
	.quad	4279586912              # 0xff155060
	.quad	4095236462              # 0xf418596e
	.quad	3309004356              # 0xc53b6644
	.quad	3459673930              # 0xce366f4a
	.quad	3542185048              # 0xd3217458
	.quad	3626794326              # 0xd82c7d56
	.quad	2047648055              # 0x7a0ca137
	.quad	1895934009              # 0x7101a839
	.quad	1813426987              # 0x6c16b32b
	.quad	1729870373              # 0x671bba25
	.quad	1446544655              # 0x5638850f
	.quad	1563790337              # 0x5d358c01
	.quad	1076008723              # 0x40229713
	.quad	1261411869              # 0x4b2f9e1d
	.quad	577038663               # 0x2264e947
	.quad	694804553               # 0x2969e049
	.quad	880737115               # 0x347efb5b
	.quad	1064563285              # 0x3f73f255
	.quad	240176511               # 0xe50cd7f
	.quad	90031217                # 0x55dc471
	.quad	407560035               # 0x184adf63
	.quad	323475053               # 0x1347d66d
	.quad	3403428311              # 0xcadc31d7
	.quad	3251714265              # 0xc1d138d9
	.quad	3703972811              # 0xdcc623cb
	.quad	3620416197              # 0xd7cb2ac5
	.quad	3873969647              # 0xe6e815ef
	.quad	3991215329              # 0xede51ce1
	.quad	4042393587              # 0xf0f207f3
	.quad	4227796733              # 0xfbff0efd
	.quad	2461301159              # 0x92b479a7
	.quad	2579067049              # 0x99b970a9
	.quad	2226023355              # 0x84ae6bbb
	.quad	2409849525              # 0x8fa362b5
	.quad	3196083615              # 0xbe805d9f
	.quad	3045938321              # 0xb58d5491
	.quad	2828685187              # 0xa89a4f83
	.quad	2744600205              # 0xa397468d
	.quad	0                       # 0x0
	.quad	218697227               # 0xd090e0b
	.quad	437394454               # 0x1a121c16
	.quad	387650077               # 0x171b121d
	.quad	874788908               # 0x3424382c
	.quad	959264295               # 0x392d3627
	.quad	775300154               # 0x2e36243a
	.quad	591342129               # 0x233f2a31
	.quad	1749577816              # 0x68487058
	.quad	1698790995              # 0x65417e53
	.quad	1918528590              # 0x725a6c4e
	.quad	2136171077              # 0x7f536245
	.quad	1550600308              # 0x5c6c4874
	.quad	1365591679              # 0x5165467f
	.quad	1182684258              # 0x467e5462
	.quad	1266113129              # 0x4b775a69
	.quad	3499155632              # 0xd090e0b0
	.quad	3717852859              # 0xdd99eebb
	.quad	3397581990              # 0xca82fca6
	.quad	3347837613              # 0xc78bf2ad
	.quad	3837057180              # 0xe4b4d89c
	.quad	3921532567              # 0xe9bdd697
	.quad	4272342154              # 0xfea6c48a
	.quad	4088384129              # 0xf3afca81
	.quad	3101200616              # 0xb8d890e8
	.quad	3050413795              # 0xb5d19ee3
	.quad	2731183358              # 0xa2ca8cfe
	.quad	2948825845              # 0xafc382f5
	.quad	2365368516              # 0x8cfca8c4
	.quad	2180359887              # 0x81f5a6cf
	.quad	2532226258              # 0x96eeb4d2
	.quad	2615655129              # 0x9be7bad9
	.quad	3141262203              # 0xbb3bdb7b
	.quad	3056784752              # 0xb632d570
	.quad	2703869805              # 0xa129c76d
	.quad	2887829862              # 0xac20c966
	.quad	2401231703              # 0x8f1fe357
	.quad	2182540636              # 0x8216ed5c
	.quad	2500722497              # 0x950dff41
	.quad	2550460746              # 0x9804f14a
	.quad	3547573027              # 0xd373ab23
	.quad	3732579624              # 0xde7aa528
	.quad	3378624309              # 0xc961b735
	.quad	3295197502              # 0xc468b93e
	.quad	3881276175              # 0xe757930f
	.quad	3932069124              # 0xea5e9d04
	.quad	4249194265              # 0xfd458f19
	.quad	4031545618              # 0xf04c8112
	.quad	1806384075              # 0x6bab3bcb
	.quad	1721906624              # 0x66a235c0
	.quad	1907959773              # 0x71b927dd
	.quad	2091919830              # 0x7cb029d6
	.quad	1603208167              # 0x5f8f03e7
	.quad	1384517100              # 0x52860dec
	.quad	1167925233              # 0x459d1ff1
	.quad	1217663482              # 0x489411fa
	.quad	65227667                # 0x3e34b93
	.quad	250234264               # 0xeea4598
	.quad	435246981               # 0x19f15785
	.quad	351820174               # 0x14f8598e
	.quad	935818175               # 0x37c773bf
	.quad	986611124               # 0x3ace7db4
	.quad	768962473               # 0x2dd56fa9
	.quad	551313826               # 0x20dc61a2
	.quad	1836494326              # 0x6d76adf6
	.quad	1618977789              # 0x607fa3fd
	.quad	2003087840              # 0x7764b1e0
	.quad	2054012907              # 0x7a6dbfeb
	.quad	1498584538              # 0x595295da
	.quad	1415289809              # 0x545b9bd1
	.quad	1128303052              # 0x434089cc
	.quad	1313441735              # 0x4e4987c7
	.quad	88006062                # 0x53eddae
	.quad	137876389               # 0x837d3a5
	.quad	523026872               # 0x1f2cc1b8
	.quad	304467891               # 0x1225cfb3
	.quad	823846274               # 0x311ae582
	.quad	1007938441              # 0x3c13eb89
	.quad	722008468               # 0x2b08f994
	.quad	637663135               # 0x2601f79f
	.quad	3185986886              # 0xbde64d46
	.quad	2968470349              # 0xb0ef434d
	.quad	2817806672              # 0xa7f45150
	.quad	2868731739              # 0xaafd5f5b
	.quad	2311222634              # 0x89c2756a
	.quad	2227927905              # 0x84cb7b61
	.quad	2479909244              # 0x93d0697c
	.quad	2665047927              # 0x9ed96777
	.quad	3584965918              # 0xd5ae3d1e
	.quad	3634836245              # 0xd8a73315
	.quad	3485212936              # 0xcfbc2108
	.quad	3266653955              # 0xc2b52f03
	.quad	3783918898              # 0xe18a0532
	.quad	3968011065              # 0xec830b39
	.quad	4221049124              # 0xfb981924
	.quad	4136703791              # 0xf691172f
	.quad	3595400845              # 0xd64d768d
	.quad	3678697606              # 0xdb447886
	.quad	3428805275              # 0xcc5f6a9b
	.quad	3243664528              # 0xc1566490
	.quad	3798552225              # 0xe2694ea1
	.quad	4016062634              # 0xef6040aa
	.quad	4168831671              # 0xf87b52b7
	.quad	4117912764              # 0xf5725cbc
	.quad	3188000469              # 0xbe0506d5
	.quad	3003910366              # 0xb30c08de
	.quad	2752977603              # 0xa4171ac3
	.quad	2837320904              # 0xa91e14c8
	.quad	2317434617              # 0x8a213ef9
	.quad	2267558130              # 0x872830f2
	.quad	2419270383              # 0x903322ef
	.quad	2637835492              # 0x9d3a2ce4
	.quad	115185213               # 0x6dd963d
	.quad	198481974               # 0xbd49836
	.quad	483363371               # 0x1ccf8a2b
	.quad	298222624               # 0x11c68420
	.quad	855223825               # 0x32f9ae11
	.quad	1072734234              # 0x3ff0a01a
	.quad	686535175               # 0x28ebb207
	.quad	635616268               # 0x25e2bc0c
	.quad	1855317605              # 0x6e95e665
	.quad	1671227502              # 0x639ce86e
	.quad	1955068531              # 0x7487fa73
	.quad	2039411832              # 0x798ef478
	.quad	1521606217              # 0x5ab1de49
	.quad	1471729730              # 0x57b8d042
	.quad	1084473951              # 0x40a3c25f
	.quad	1303039060              # 0x4daacc54
	.quad	3672916471              # 0xdaec41f7
	.quad	3622129660              # 0xd7e54ffc
	.quad	3237895649              # 0xc0fe5de1
	.quad	3455538154              # 0xcdf753ea
	.quad	4006115803              # 0xeec879db
	.quad	3821107152              # 0xe3c177d0
	.quad	4107953613              # 0xf4da65cd
	.quad	4191382470              # 0xf9d36bc6
	.quad	2997105071              # 0xb2a431af
	.quad	3215802276              # 0xbfad3fa4
	.quad	2830511545              # 0xa8b62db9
	.quad	2780767154              # 0xa5bf23b2
	.quad	2256537987              # 0x86800983
	.quad	2341013384              # 0x8b890788
	.quad	2626819477              # 0x9c921595
	.quad	2442861470              # 0x919b1b9e
	.quad	175939911               # 0xa7ca147
	.quad	125153100               # 0x775af4c
	.quad	275692881               # 0x106ebd51
	.quad	493335386               # 0x1d67b35a
	.quad	1045993835              # 0x3e58996b
	.quad	860985184               # 0x33519760
	.quad	608863613               # 0x244a857d
	.quad	692292470               # 0x29438b76
	.quad	1647628575              # 0x6234d11f
	.quad	1866325780              # 0x6f3ddf14
	.quad	2015808777              # 0x7826cd09
	.quad	1966064386              # 0x752fc302
	.quad	1443948851              # 0x5610e933
	.quad	1528424248              # 0x5b19e738
	.quad	1275262245              # 0x4c02f525
	.quad	1091304238              # 0x410bfb2e
	.quad	1641519756              # 0x61d79a8c
	.quad	1826526343              # 0x6cde9487
	.quad	2076542618              # 0x7bc5869a
	.quad	1993115793              # 0x76cc8891
	.quad	1442030240              # 0x55f3a2a0
	.quad	1492823211              # 0x58faacab
	.quad	1340194486              # 0x4fe1beb6
	.quad	1122545853              # 0x42e8b0bd
	.quad	161475284               # 0x99fead4
	.quad	76997855                # 0x496e4df
	.quad	328070850               # 0x138df6c2
	.quad	512030921               # 0x1e84f8c9
	.quad	1035719416              # 0x3dbbd2f8
	.quad	817028339               # 0x30b2dcf3
	.quad	665439982               # 0x27a9ceee
	.quad	715178213               # 0x2aa0c0e5
	.quad	2974251580              # 0xb1477a3c
	.quad	3159258167              # 0xbc4e7437
	.quad	2874500650              # 0xab55662a
	.quad	2791073825              # 0xa65c6821
	.quad	2237874704              # 0x85634210
	.quad	2288667675              # 0x886a4c1b
	.quad	2675006982              # 0x9f715e06
	.quad	2457358349              # 0x9278500d
	.quad	3641641572              # 0xd90f0a64
	.quad	3557164143              # 0xd406046f
	.quad	3273463410              # 0xc31d1672
	.quad	3457423481              # 0xce141879
	.quad	3979031112              # 0xed2b3248
	.quad	3760340035              # 0xe0223c43
	.quad	4147719774              # 0xf7392e5e
	.quad	4197458005              # 0xfa302055
	.quad	3080383489              # 0xb79aec01
	.quad	3130253834              # 0xba93e20a
	.quad	2911432727              # 0xad88f017
	.quad	2692873756              # 0xa081fe1c
	.quad	2210321453              # 0x83bed42d
	.quad	2394413606              # 0x8eb7da26
	.quad	2578237499              # 0x99acc83b
	.quad	2493892144              # 0x94a5c630
	.quad	3755121753              # 0xdfd29c59
	.quad	3537605202              # 0xd2db9252
	.quad	3317727311              # 0xc5c0804f
	.quad	3368652356              # 0xc8c98e44
	.quad	3958809717              # 0xebf6a475
	.quad	3875515006              # 0xe6ffaa7e
	.quad	4058298467              # 0xf1e4b863
	.quad	4243437160              # 0xfcedb668
	.quad	1728711857              # 0x670a0cb1
	.quad	1778582202              # 0x6a0302ba
	.quad	2098729127              # 0x7d1810a7
	.quad	1880170156              # 0x70111eac
	.quad	1395537053              # 0x532e349d
	.quad	1579629206              # 0x5e273a96
	.quad	1228679307              # 0x493c288b
	.quad	1144333952              # 0x44352680
	.quad	256015593               # 0xf427ce9
	.quad	38499042                # 0x24b72e2
	.quad	357589247               # 0x155060ff
	.quad	408514292               # 0x18596ef4
	.quad	996558021               # 0x3b6644c5
	.quad	913263310               # 0x366f4ace
	.quad	561273043               # 0x217458d3
	.quad	746411736               # 0x2c7d56d8
	.quad	211892090               # 0xca1377a
	.quad	27801969                # 0x1a83971
	.quad	380840812               # 0x16b32b6c
	.quad	465184103               # 0x1bba2567
	.quad	948244310               # 0x38850f56
	.quad	898367837               # 0x358c015d
	.quad	580326208               # 0x22971340
	.quad	798891339               # 0x2f9e1d4b
	.quad	1693009698              # 0x64e94722
	.quad	1776306473              # 0x69e04929
	.quad	2130402100              # 0x7efb5b34
	.quad	1945261375              # 0x73f2553f
	.quad	1355644686              # 0x50cd7f0e
	.quad	1573155077              # 0x5dc47105
	.quad	1256153880              # 0x4adf6318
	.quad	1205234963              # 0x47d66d13
	.quad	3694254026              # 0xdc31d7ca
	.quad	3510163905              # 0xd138d9c1
	.quad	3324234716              # 0xc623cbdc
	.quad	3408578007              # 0xcb2ac5d7
	.quad	3893751782              # 0xe815efe6
	.quad	3843875309              # 0xe51ce1ed
	.quad	4060607472              # 0xf207f3f0
	.quad	4279172603              # 0xff0efdfb
	.quad	3027871634              # 0xb479a792
	.quad	3111168409              # 0xb970a999
	.quad	2926295940              # 0xae6bbb84
	.quad	2741155215              # 0xa362b58f
	.quad	2153619390              # 0x805d9fbe
	.quad	2371129781              # 0x8d5491b5
	.quad	2588902312              # 0x9a4f83a8
	.quad	2537983395              # 0x97468da3
	.quad	0                       # 0x0
	.quad	151915277               # 0x90e0b0d
	.quad	303830554               # 0x121c161a
	.quad	454171927               # 0x1b121d17
	.quad	607661108               # 0x24382c34
	.quad	758523705               # 0x2d362739
	.quad	908343854               # 0x36243a2e
	.quad	1059729699              # 0x3f2a3123
	.quad	1215322216              # 0x48705868
	.quad	1098797925              # 0x417e5365
	.quad	1517047410              # 0x5a6c4e72
	.quad	1398949247              # 0x5362457f
	.quad	1816687708              # 0x6c48745c
	.quad	1699118929              # 0x65467f51
	.quad	2119459398              # 0x7e546246
	.quad	2002413899              # 0x775a694b
	.quad	2430644432              # 0x90e0b0d0
	.quad	2582559709              # 0x99eebbdd
	.quad	2197595850              # 0x82fca6ca
	.quad	2347937223              # 0x8bf2adc7
	.quad	3034094820              # 0xb4d89ce4
	.quad	3184957417              # 0xbdd697e9
	.quad	2797898494              # 0xa6c48afe
	.quad	2949284339              # 0xafca81f3
	.quad	3633375416              # 0xd890e8b8
	.quad	3516851125              # 0xd19ee3b5
	.quad	3398237858              # 0xca8cfea2
	.quad	3280139695              # 0xc382f5af
	.quad	4238918796              # 0xfca8c48c
	.quad	4121350017              # 0xf5a6cf81
	.quad	4004827798              # 0xeeb4d296
	.quad	3887782299              # 0xe7bad99b
	.quad	1004239803              # 0x3bdb7bbb
	.quad	852848822               # 0x32d570b6
	.quad	700935585               # 0x29c76da1
	.quad	550069932               # 0x20c966ac
	.quad	534992783               # 0x1fe3578f
	.quad	384654466               # 0x16ed5c82
	.quad	234832277               # 0xdff4195
	.quad	82922136                # 0x4f14a98
	.quad	1940595667              # 0x73ab23d3
	.quad	2057644254              # 0x7aa528de
	.quad	1639396809              # 0x61b735c9
	.quad	1756970692              # 0x68b93ec4
	.quad	1469255655              # 0x57930fe7
	.quad	1587348714              # 0x5e9d04ea
	.quad	1167006205              # 0x458f19fd
	.quad	1283527408              # 0x4c8112f0
	.quad	2872822635              # 0xab3bcb6b
	.quad	2721431654              # 0xa235c066
	.quad	3106397553              # 0xb927dd71
	.quad	2955531900              # 0xb029d67c
	.quad	2399397727              # 0x8f03e75f
	.quad	2249059410              # 0x860dec52
	.quad	2636116293              # 0x9d1ff145
	.quad	2484206152              # 0x9411fa48
	.quad	3813380867              # 0xe34b9303
	.quad	3930429454              # 0xea45980e
	.quad	4049044761              # 0xf1578519
	.quad	4166618644              # 0xf8598e14
	.quad	3346251575              # 0xc773bf37
	.quad	3464344634              # 0xce7db43a
	.quad	3580864813              # 0xd56fa92d
	.quad	3697386016              # 0xdc61a220
	.quad	1991112301              # 0x76adf66d
	.quad	2141453664              # 0x7fa3fd60
	.quad	1689378935              # 0x64b1e077
	.quad	1841294202              # 0x6dbfeb7a
	.quad	1385552473              # 0x5295da59
	.quad	1536938324              # 0x5b9bd154
	.quad	1082772547              # 0x4089cc43
	.quad	1233635150              # 0x4987c74e
	.quad	1054715397              # 0x3eddae05
	.quad	936617224               # 0x37d3a508
	.quad	750893087               # 0x2cc1b81f
	.quad	634368786               # 0x25cfb312
	.quad	451248689               # 0x1ae58231
	.quad	334203196               # 0x13eb893c
	.quad	150574123               # 0x8f9942b
	.quad	33005350                # 0x1f79f26
	.quad	3863824061              # 0xe64d46bd
	.quad	4014165424              # 0xef434db0
	.quad	4098969767              # 0xf45150a7
	.quad	4250885034              # 0xfd5f5baa
	.quad	3262474889              # 0xc2756a89
	.quad	3413860740              # 0xcb7b6184
	.quad	3496574099              # 0xd0697c93
	.quad	3647436702              # 0xd967779e
	.quad	2923241173              # 0xae3d1ed5
	.quad	2805143000              # 0xa73315d8
	.quad	3156281551              # 0xbc2108cf
	.quad	3039757250              # 0xb52f03c2
	.quad	2315596513              # 0x8a0532e1
	.quad	2198551020              # 0x830b39ec
	.quad	2551784699              # 0x981924fb
	.quad	2434215926              # 0x91172ff6
	.quad	1299615190              # 0x4d768dd6
	.quad	1148749531              # 0x447886db
	.quad	1600822220              # 0x5f6a9bcc
	.quad	1449431233              # 0x566490c1
	.quad	1766760930              # 0x694ea1e2
	.quad	1614850799              # 0x6040aaef
	.quad	2069018616              # 0x7b52b7f8
	.quad	1918680309              # 0x725cbcf5
	.quad	84334014                # 0x506d5be
	.quad	201907891               # 0xc08deb3
	.quad	387629988               # 0x171ac3a4
	.quad	504678569               # 0x1e14c8a9
	.quad	557775242               # 0x213ef98a
	.quad	674296455               # 0x2830f287
	.quad	857927568               # 0x3322ef90
	.quad	976020637               # 0x3a2ce49d
	.quad	3717610758              # 0xdd963d06
	.quad	3566745099              # 0xd498360b
	.quad	3481938716              # 0xcf8a2b1c
	.quad	3330547729              # 0xc6842011
	.quad	4188934450              # 0xf9ae1132
	.quad	4037024319              # 0xf0a01a3f
	.quad	3954313000              # 0xebb20728
	.quad	3803974693              # 0xe2bc0c25
	.quad	2514904430              # 0x95e6656e
	.quad	2632478307              # 0x9ce86e63
	.quad	2281337716              # 0x87fa7374
	.quad	2398386297              # 0x8ef47879
	.quad	2984135002              # 0xb1de495a
	.quad	3100656215              # 0xb8d04257
	.quad	2747424576              # 0xa3c25f40
	.quad	2865517645              # 0xaacc544d
	.quad	3963746266              # 0xec41f7da
	.quad	3847224535              # 0xe54ffcd7
	.quad	4267565504              # 0xfe5de1c0
	.quad	4149471949              # 0xf753eacd
	.quad	3363429358              # 0xc879dbee
	.quad	3245854947              # 0xc177d0e3
	.quad	3664104948              # 0xda65cdf4
	.quad	3547055865              # 0xd36bc6f9
	.quad	2754719666              # 0xa431afb2
	.quad	2906629311              # 0xad3fa4bf
	.quad	3056449960              # 0xb62db9a8
	.quad	3206787749              # 0xbf23b2a5
	.quad	2148107142              # 0x80098386
	.quad	2298972299              # 0x8907888b
	.quad	2450888092              # 0x9215959c
	.quad	2602278545              # 0x9b1b9e91
	.quad	2090944266              # 0x7ca1470a
	.quad	1974422535              # 0x75af4c07
	.quad	1857900816              # 0x6ebd5110
	.quad	1739807261              # 0x67b35a1d
	.quad	1486449470              # 0x58996b3e
	.quad	1368875059              # 0x51976033
	.quad	1250262308              # 0x4a857d24
	.quad	1133213225              # 0x438b7629
	.quad	886120290               # 0x34d11f62
	.quad	1038029935              # 0x3ddf146f
	.quad	650971512               # 0x26cd0978
	.quad	801309301               # 0x2fc30275
	.quad	283718486               # 0x10e93356
	.quad	434583643               # 0x19e7385b
	.quad	49620300                # 0x2f5254c
	.quad	201010753               # 0xbfb2e41
	.quad	3617229921              # 0xd79a8c61
	.quad	3734275948              # 0xde94876c
	.quad	3313932923              # 0xc5869a7b
	.quad	3431502198              # 0xcc889176
	.quad	4087521365              # 0xf3a2a055
	.quad	4205620056              # 0xfaacab58
	.quad	3787372111              # 0xe1beb64f
	.quad	3903896898              # 0xe8b0bd42
	.quad	2682967049              # 0x9fead409
	.quad	2531581700              # 0x96e4df04
	.quad	2381758995              # 0x8df6c213
	.quad	2230896926              # 0x84f8c91e
	.quad	3151165501              # 0xbbd2f83d
	.quad	3000824624              # 0xb2dcf330
	.quad	2848910887              # 0xa9ceee27
	.quad	2696996138              # 0xa0c0e52a
	.quad	1199193265              # 0x477a3cb1
	.quad	1316239292              # 0x4e7437bc
	.quad	1432758955              # 0x55662aab
	.quad	1550328230              # 0x5c6821a6
	.quad	1665273989              # 0x63421085
	.quad	1783372680              # 0x6a4c1b88
	.quad	1901987487              # 0x715e069f
	.quad	2018512274              # 0x78500d92
	.quad	252339417               # 0xf0a64d9
	.quad	100954068               # 0x6046fd4
	.quad	488010435               # 0x1d1672c3
	.quad	337148366               # 0x141879ce
	.quad	724715757               # 0x2b3248ed
	.quad	574374880               # 0x223c43e0
	.quad	959340279               # 0x392e5ef7
	.quad	807425530               # 0x302055fa
	.quad	2599158199              # 0x9aec01b7
	.quad	2481064634              # 0x93e20aba
	.quad	2297436077              # 0x88f017ad
	.quad	2180914336              # 0x81fe1ca0
	.quad	3201576323              # 0xbed42d83
	.quad	3084527246              # 0xb7da268e
	.quad	2898803609              # 0xacc83b99
	.quad	2781229204              # 0xa5c63094
	.quad	3533461983              # 0xd29c59df
	.quad	3683799762              # 0xdb9252d2
	.quad	3229634501              # 0xc0804fc5
	.quad	3381544136              # 0xc98e44c8
	.quad	4137973227              # 0xf6a475eb
	.quad	4289363686              # 0xffaa7ee6
	.quad	3837289457              # 0xe4b863f1
	.quad	3988154620              # 0xedb668fc
	.quad	168604007               # 0xa0cb167
	.quad	50510442                # 0x302ba6a
	.quad	403744637               # 0x1810a77d
	.quad	287222896               # 0x111eac70
	.quad	775200083               # 0x2e349d53
	.quad	658151006               # 0x273a965e
	.quad	1009290057              # 0x3c288b49
	.quad	891715652               # 0x35268044
	.quad	1115482383              # 0x427ce90f
	.quad	1265820162              # 0x4b72e202
	.quad	1348534037              # 0x5060ff15
	.quad	1500443672              # 0x596ef418
	.quad	1715782971              # 0x6644c53b
	.quad	1867173430              # 0x6f4ace36
	.quad	1951978273              # 0x7458d321
	.quad	2102843436              # 0x7d56d82c
	.quad	2704767500              # 0xa1377a0c
	.quad	2822336769              # 0xa8397101
	.quad	3005967382              # 0xb32b6c16
	.quad	3123013403              # 0xba25671b
	.quad	2232374840              # 0x850f5638
	.quad	2348899637              # 0x8c015d35
	.quad	2534621218              # 0x97134022
	.quad	2652719919              # 0x9e1d4b2f
	.quad	3913753188              # 0xe9472264
	.quad	3762891113              # 0xe0492969
	.quad	4217058430              # 0xfb5b347e
	.quad	4065673075              # 0xf2553f73
	.quad	3447656016              # 0xcd7f0e50
	.quad	3295741277              # 0xc471055d
	.quad	3747813450              # 0xdf63184a
	.quad	3597472583              # 0xd66d1347
	.quad	836225756               # 0x31d7cadc
	.quad	953795025               # 0x38d9c1d1
	.quad	600562886               # 0x23cbdcc6
	.quad	717608907               # 0x2ac5d7cb
	.quad	368043752               # 0x15efe6e8
	.quad	484568549               # 0x1ce1ede5
	.quad	133427442               # 0x7f3f0f2
	.quad	251526143               # 0xefdfbff
	.quad	2041025204              # 0x79a792b4
	.quad	1890163129              # 0x70a999b9
	.quad	1807451310              # 0x6bbb84ae
	.quad	1656065955              # 0x62b58fa3
	.quad	1570750080              # 0x5d9fbe80
	.quad	1418835341              # 0x5491b58d
	.quad	1334028442              # 0x4f83a89a
	.quad	1183687575              # 0x468da397
	.quad	0                       # 0x0
	.quad	235605257               # 0xe0b0d09
	.quad	471210514               # 0x1c161a12
	.quad	303896347               # 0x121d171b
	.quad	942421028               # 0x382c3424
	.quad	908540205               # 0x3627392d
	.quad	607792694               # 0x243a2e36
	.quad	707863359               # 0x2a31233f
	.quad	1884842056              # 0x70586848
	.quad	2119394625              # 0x7e536541
	.quad	1817080410              # 0x6c4e725a
	.quad	1648721747              # 0x62457f53
	.quad	1215585388              # 0x48745c6c
	.quad	1182749029              # 0x467f5165
	.quad	1415726718              # 0x5462467e
	.quad	1516850039              # 0x5a694b77
	.quad	3769684112              # 0xe0b0d090
	.quad	4005289369              # 0xeebbdd99
	.quad	4238789250              # 0xfca6ca82
	.quad	4071475083              # 0xf2adc78b
	.quad	3634160820              # 0xd89ce4b4
	.quad	3600279997              # 0xd697e9bd
	.quad	3297443494              # 0xc48afea6
	.quad	3397514159              # 0xca81f3af
	.quad	2431170776              # 0x90e8b8d8
	.quad	2665723345              # 0x9ee3b5d1
	.quad	2365498058              # 0x8cfea2ca
	.quad	2197139395              # 0x82f5afc3
	.quad	2831453436              # 0xa8c48cfc
	.quad	2798617077              # 0xa6cf81f5
	.quad	3033700078              # 0xb4d296ee
	.quad	3134823399              # 0xbad99be7
	.quad	3682319163              # 0xdb7bbb3b
	.quad	3580933682              # 0xd570b632
	.quad	3345850665              # 0xc76da129
	.quad	3378949152              # 0xc966ac20
	.quad	3814166303              # 0xe3578f1f
	.quad	3982262806              # 0xed5c8216
	.quad	4282488077              # 0xff41950d
	.quad	4048197636              # 0xf14a9804
	.quad	2871251827              # 0xab23d373
	.quad	2770919034              # 0xa528de7a
	.quad	3073755489              # 0xb735c961
	.quad	3107898472              # 0xb93ec468
	.quad	2467293015              # 0x930fe757
	.quad	2634345054              # 0x9d04ea5e
	.quad	2400845125              # 0x8f19fd45
	.quad	2165502028              # 0x8112f04c
	.quad	1003187115              # 0x3bcb6bab
	.quad	901801634               # 0x35c066a2
	.quad	668823993               # 0x27dd71b9
	.quad	701922480               # 0x29d67cb0
	.quad	65494927                # 0x3e75f8f
	.quad	233591430               # 0xdec5286
	.quad	535905693               # 0x1ff1459d
	.quad	301615252               # 0x11fa4894
	.quad	1267925987              # 0x4b9303e3
	.quad	1167593194              # 0x45980eea
	.quad	1468340721              # 0x578519f1
	.quad	1502483704              # 0x598e14f8
	.quad	1941911495              # 0x73bf37c7
	.quad	2108963534              # 0x7db43ace
	.quad	1873358293              # 0x6fa92dd5
	.quad	1638015196              # 0x61a220dc
	.quad	2918608246              # 0xadf66d76
	.quad	2751291519              # 0xa3fd607f
	.quad	2984277860              # 0xb1e07764
	.quad	3219880557              # 0xbfeb7a6d
	.quad	2514114898              # 0x95da5952
	.quad	2614187099              # 0x9bd1545b
	.quad	2311865152              # 0x89cc4340
	.quad	2277985865              # 0x87c74e49
	.quad	3719169342              # 0xddae053e
	.quad	3550808119              # 0xd3a50837
	.quad	3250069292              # 0xc1b81f2c
	.quad	3484619301              # 0xcfb31225
	.quad	3850514714              # 0xe582311a
	.quad	3951639571              # 0xeb893c13
	.quad	4187237128              # 0xf9942b08
	.quad	4154402305              # 0xf79f2601
	.quad	1296481766              # 0x4d46bde6
	.quad	1129165039              # 0x434db0ef
	.quad	1364240372              # 0x5150a7f4
	.quad	1599843069              # 0x5f5baafd
	.quad	1969916354              # 0x756a89c2
	.quad	2069988555              # 0x7b6184cb
	.quad	1769771984              # 0x697c93d0
	.quad	1735892697              # 0x67779ed9
	.quad	1025430958              # 0x3d1ed5ae
	.quad	857069735               # 0x3315d8a7
	.quad	554225596               # 0x2108cfbc
	.quad	788775605               # 0x2f03c2b5
	.quad	87220618                # 0x532e18a
	.quad	188345475               # 0xb39ec83
	.quad	421854104               # 0x1924fb98
	.quad	389019281               # 0x172ff691
	.quad	1989006925              # 0x768dd64d
	.quad	2022103876              # 0x7886db44
	.quad	1788595295              # 0x6a9bcc5f
	.quad	1687208278              # 0x6490c156
	.quad	1319232105              # 0x4ea1e269
	.quad	1084944224              # 0x40aaef60
	.quad	1387788411              # 0x52b7f87b
	.quad	1555887474              # 0x5cbcf572
	.quad	114671109               # 0x6d5be05
	.quad	148812556               # 0x8deb30c
	.quad	449029143               # 0x1ac3a417
	.quad	348694814               # 0x14c8a91e
	.quad	1056541217              # 0x3ef98a21
	.quad	821200680               # 0x30f28728
	.quad	586125363               # 0x22ef9033
	.quad	753179962               # 0x2ce49d3a
	.quad	2520581853              # 0x963d06dd
	.quad	2553678804              # 0x98360bd4
	.quad	2318081231              # 0x8a2b1ccf
	.quad	2216694214              # 0x842011c6
	.quad	2920362745              # 0xae1132f9
	.quad	2686074864              # 0xa01a3ff0
	.quad	2986813675              # 0xb20728eb
	.quad	3154912738              # 0xbc0c25e2
	.quad	3865407125              # 0xe6656e95
	.quad	3899548572              # 0xe86e639c
	.quad	4201870471              # 0xfa737487
	.quad	4101536142              # 0xf478798e
	.quad	3729349297              # 0xde495ab1
	.quad	3494008760              # 0xd04257b8
	.quad	3261022371              # 0xc25f40a3
	.quad	3428076970              # 0xcc544daa
	.quad	1106762476              # 0x41f7daec
	.quad	1341970405              # 0x4ffcd7e5
	.quad	1575076094              # 0x5de1c0fe
	.quad	1407897079              # 0x53eacdf7
	.quad	2044456648              # 0x79dbeec8
	.quad	2010178497              # 0x77d0e3c1
	.quad	1707996378              # 0x65cdf4da
	.quad	1808202195              # 0x6bc6f9d3
	.quad	833598116               # 0x31afb2a4
	.quad	1067761581              # 0x3fa4bfad
	.quad	767142070               # 0x2db9a8b6
	.quad	598910399               # 0x23b2a5bf
	.quad	159614592               # 0x9838680
	.quad	126389129               # 0x7888b89
	.quad	362126482               # 0x15959c92
	.quad	463376795               # 0x1b9e919b
	.quad	2705787516              # 0xa1470a7c
	.quad	2940995445              # 0xaf4c0775
	.quad	3176206446              # 0xbd51106e
	.quad	3009027431              # 0xb35a1d67
	.quad	2573942360              # 0x996b3e58
	.quad	2539664209              # 0x97603351
	.quad	2239571018              # 0x857d244a
	.quad	2339776835              # 0x8b762943
	.quad	3508494900              # 0xd11f6234
	.quad	3742658365              # 0xdf146f3d
	.quad	3439949862              # 0xcd097826
	.quad	3271718191              # 0xc302752f
	.quad	3912455696              # 0xe9335610
	.quad	3879230233              # 0xe7385b19
	.quad	4112862210              # 0xf5254c02
	.quad	4214112523              # 0xfb2e410b
	.quad	2592891351              # 0x9a8c61d7
	.quad	2491903198              # 0x94876cde
	.quad	2258271173              # 0x869a7bc5
	.quad	2291234508              # 0x889176cc
	.quad	2728416755              # 0xa2a055f3
	.quad	2896910586              # 0xacab58fa
	.quad	3199619041              # 0xbeb64fe1
	.quad	2965193448              # 0xb0bd42e8
	.quad	3939764639              # 0xead4099f
	.quad	3839820950              # 0xe4df0496
	.quad	4139914125              # 0xf6c2138d
	.quad	4173930116              # 0xf8c91e84
	.quad	3539484091              # 0xd2f83dbb
	.quad	3706925234              # 0xdcf330b2
	.quad	3471714217              # 0xceee27a9
	.quad	3236244128              # 0xc0e52aa0
	.quad	2050797895              # 0x7a3cb147
	.quad	1949809742              # 0x7437bc4e
	.quad	1714072405              # 0x662aab55
	.quad	1747035740              # 0x6821a65c
	.quad	1108378979              # 0x42108563
	.quad	1276872810              # 0x4c1b886a
	.quad	1577492337              # 0x5e069f71
	.quad	1343066744              # 0x500d9278
	.quad	174381327               # 0xa64d90f
	.quad	74437638                # 0x46fd406
	.quad	376619805               # 0x1672c31d
	.quad	410635796               # 0x1879ce14
	.quad	843640107               # 0x3248ed2b
	.quad	1011081250              # 0x3c43e022
	.quad	777975609               # 0x2e5ef739
	.quad	542505520               # 0x2055fa30
	.quad	3959535514              # 0xec01b79a
	.quad	3792353939              # 0xe20aba93
	.quad	4028083592              # 0xf017ad88
	.quad	4263288961              # 0xfe1ca081
	.quad	3559752638              # 0xd42d83be
	.quad	3659959991              # 0xda268eb7
	.quad	3359349164              # 0xc83b99ac
	.quad	3325072549              # 0xc63094a5
	.quad	2623135698              # 0x9c59dfd2
	.quad	2454901467              # 0x9252d2db
	.quad	2152711616              # 0x804fc5c0
	.quad	2386872521              # 0x8e44c8c9
	.quad	2759191542              # 0xa475ebf6
	.quad	2860443391              # 0xaa7ee6ff
	.quad	3093557732              # 0xb863f1e4
	.quad	3060333805              # 0xb668fced
	.quad	212952842               # 0xcb1670a
	.quad	45771267                # 0x2ba6a03
	.quad	279411992               # 0x10a77d18
	.quad	514617361               # 0x1eac7011
	.quad	882725678               # 0x349d532e
	.quad	982933031               # 0x3a965e27
	.quad	680216892               # 0x288b493c
	.quad	645940277               # 0x26804435
	.quad	2095648578              # 0x7ce90f42
	.quad	1927414347              # 0x72e2024b
	.quad	1627329872              # 0x60ff1550
	.quad	1861490777              # 0x6ef41859
	.quad	1153776486              # 0x44c53b66
	.quad	1255028335              # 0x4ace366f
	.quad	1490231668              # 0x58d32174
	.quad	1457007741              # 0x56d82c7d
	.quad	930745505               # 0x377a0ca1
	.quad	963707304               # 0x397101a8
	.quad	728503987               # 0x2b6c16b3
	.quad	627514298               # 0x25671bba
	.quad	257308805               # 0xf563885
	.quad	22885772                # 0x15d358c
	.quad	322970263               # 0x13402297
	.quad	491466654               # 0x1d4b2f9e
	.quad	1193436393              # 0x472264e9
	.quad	1227450848              # 0x492969e0
	.quad	1530167035              # 0x5b347efb
	.quad	1430221810              # 0x553f73f2
	.quad	2131644621              # 0x7f0e50cd
	.quad	1896177092              # 0x71055dc4
	.quad	1662536415              # 0x63184adf
	.quad	1829980118              # 0x6d1347d6
	.quad	3620396081              # 0xd7cadc31
	.quad	3653357880              # 0xd9c1d138
	.quad	3420243491              # 0xcbdcc623
	.quad	3319253802              # 0xc5d7cb2a
	.quad	4024887317              # 0xefe6e815
	.quad	3790464284              # 0xe1ede51c
	.quad	4092654087              # 0xf3f0f207
	.quad	4261150478              # 0xfdfbff0e
	.quad	2811409529              # 0xa792b479
	.quad	2845423984              # 0xa999b970
	.quad	3146034795              # 0xbb84ae6b
	.quad	3046089570              # 0xb58fa362
	.quad	2680062045              # 0x9fbe805d
	.quad	2444594516              # 0x91b58d54
	.quad	2208864847              # 0x83a89a4f
	.quad	2376308550              # 0x8da39746
	.size	im_tab, 8192


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
