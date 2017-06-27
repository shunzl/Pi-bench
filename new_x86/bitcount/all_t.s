	.text
	.file	"all_t.bc"
	.globl	alloc_bit_array
	.p2align	4, 0x90
	.type	alloc_bit_array,@function
alloc_bit_array:                        # @alloc_bit_array
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$96, %rsp
	movl	$1, %eax
	movl	%eax, %esi
	movq	%rdi, 24(%rsp)
	movq	%rdi, %rcx
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	addq	$8, %rcx
	subq	$1, %rcx
	shrq	$3, %rcx
	movq	%rcx, %rdi
	callq	calloc
	movq	%rax, 16(%rsp)
	movq	16(%rsp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	alloc_bit_array, .Lfunc_end0-alloc_bit_array

	.globl	getbit
	.p2align	4, 0x90
	.type	getbit,@function
getbit:                                 # @getbit
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -56(%rbp)
	movl	%esi, -84(%rbp)
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %esi
	sarl	$3, %esi
	movq	-56(%rbp), %rdi
	movslq	%esi, %rcx
	movq	%rdi, %rdx
	addq	%rcx, %rdx
	movq	%rdx, -56(%rbp)
	movsbl	(%rdi,%rcx), %eax
	movl	-84(%rbp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	%esi, %r8d
	sarl	$31, %r8d
	shrl	$29, %r8d
	movl	%esi, %r9d
	addl	%r8d, %r9d
	andl	$248, %r9d
	subl	%r9d, %esi
	movb	%sil, %r10b
	movl	$1, %esi
	movb	%r10b, %cl
	shll	%cl, %esi
	movl	%eax, -20(%rbp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -48(%rbp)
	andl	%esi, %eax
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	getbit, .Lfunc_end1-getbit

	.globl	setbit
	.p2align	4, 0x90
	.type	setbit,@function
setbit:                                 # @setbit
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movl	$8, %eax
	movq	%rdi, -104(%rbp)
	movl	%esi, -132(%rbp)
	movl	%edx, -164(%rbp)
	movl	-132(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -128(%rbp)
	movl	%eax, -168(%rbp)        # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-168(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	movq	-104(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -104(%rbp)
	cmpl	$0, -164(%rbp)
	je	.LBB2_2
# BB#1:
	movl	-132(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$248, %edx
	subl	%edx, %eax
	movb	%al, %sil
	movl	$1, %eax
	movb	%sil, %cl
	shll	%cl, %eax
	movq	-104(%rbp), %rdi
	movsbl	(%rdi), %edx
	movl	%edx, -20(%rbp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -48(%rbp)
	orl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi)
	jmp	.LBB2_3
.LBB2_2:
	movl	-132(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -128(%rbp)
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$248, %edx
	subl	%edx, %eax
	movb	%al, %sil
	movl	$-2, %eax
	movb	%sil, %cl
	roll	%cl, %eax
	movq	-104(%rbp), %rdi
	movsbl	(%rdi), %edx
	movl	%edx, -68(%rbp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -96(%rbp)
	andl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi)
.LBB2_3:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	setbit, .Lfunc_end2-setbit

	.globl	flipbit
	.p2align	4, 0x90
	.type	flipbit,@function
flipbit:                                # @flipbit
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -56(%rbp)
	movl	%esi, -84(%rbp)
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	%esi, %eax
	sarl	$31, %eax
	shrl	$29, %eax
	addl	%eax, %esi
	sarl	$3, %esi
	movq	-56(%rbp), %rdi
	movslq	%esi, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -56(%rbp)
	movl	-84(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movl	%eax, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	movl	%eax, %edx
	addl	%esi, %edx
	andl	$248, %edx
	subl	%edx, %eax
	movb	%al, %r8b
	movl	$1, %eax
	movb	%r8b, %cl
	shll	%cl, %eax
	movq	-56(%rbp), %rdi
	movsbl	(%rdi), %edx
	movl	%edx, -20(%rbp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, -48(%rbp)
	xorl	%eax, %edx
	movb	%dl, %cl
	movb	%cl, (%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI4_1:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
	.text
	.globl	bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, 88(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$0, 60(%rsp)
	cmpq	$0, 88(%rsp)
	je	.LBB4_15
# BB#1:
	jmp	.LBB4_2
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	60(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 64(%rsp)
	movaps	.LCPI4_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
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
	movl	%eax, 220(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 56(%rsp)          # 4-byte Spill
	movl	%edi, 52(%rsp)          # 4-byte Spill
	movl	%eax, 48(%rsp)          # 4-byte Spill
	je	.LBB4_7
# BB#3:                                 #   in Loop: Header=BB4_2 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	cltd
	movl	56(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_2 Depth=1
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 220(%rsp)
	jmp	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_2 Depth=1
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 220(%rsp)
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	movl	220(%rsp), %eax
	movl	%eax, 60(%rsp)
# BB#8:                                 #   in Loop: Header=BB4_2 Depth=1
	movq	88(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	88(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1,1]
	movaps	%xmm0, %xmm2
	psubq	%xmm1, %xmm2
	decq	%rcx
	pand	%xmm2, %xmm0
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %rdx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movq	%rdx, %rdi
	movq	%rdx, %r8
	addq	%rsi, %r8
	addq	%rdi, %r8
	andq	%rcx, %rax
	imulq	$3, %rax, %rcx
	movq	%rax, 152(%rsp)
	cmpq	%rcx, %r8
	movq	%r8, 40(%rsp)           # 8-byte Spill
	movq	%rdx, 32(%rsp)          # 8-byte Spill
	movq	%rax, 24(%rsp)          # 8-byte Spill
	je	.LBB4_13
# BB#9:                                 #   in Loop: Header=BB4_2 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	cqto
	movq	32(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB4_11
# BB#10:                                #   in Loop: Header=BB4_2 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 152(%rsp)
	jmp	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_2 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 152(%rsp)
.LBB4_12:                               #   in Loop: Header=BB4_2 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               #   in Loop: Header=BB4_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	152(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	24(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, %rcx
	jne	.LBB4_2
# BB#14:
	jmp	.LBB4_15
.LBB4_15:
	movl	60(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bit_count, .Lfunc_end4-bit_count

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI5_0:
	.quad	2863311530              # 0xaaaaaaaa
	.quad	2863311530              # 0xaaaaaaaa
.LCPI5_1:
	.quad	1431655765              # 0x55555555
	.quad	1431655765              # 0x55555555
.LCPI5_2:
	.quad	3435973836              # 0xcccccccc
	.quad	3435973836              # 0xcccccccc
.LCPI5_3:
	.quad	858993459               # 0x33333333
	.quad	858993459               # 0x33333333
.LCPI5_4:
	.quad	4042322160              # 0xf0f0f0f0
	.quad	4042322160              # 0xf0f0f0f0
.LCPI5_5:
	.quad	252645135               # 0xf0f0f0f
	.quad	252645135               # 0xf0f0f0f
.LCPI5_6:
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI5_7:
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	255                     # 0xff
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI5_8:
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
.LCPI5_9:
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	65535                   # 0xffff
	.short	0                       # 0x0
	.short	0                       # 0x0
	.short	0                       # 0x0
	.text
	.globl	bitcount
	.p2align	4, 0x90
	.type	bitcount,@function
bitcount:                               # @bitcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rdi, 24(%rsp)
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movaps	.LCPI5_0(%rip), %xmm1   # xmm1 = [2863311530,2863311530]
	pand	%xmm1, %xmm0
	movl	%edi, %eax
	andl	$-1431655766, %eax      # imm = 0xAAAAAAAA
	movl	%eax, %edi
	psrlq	$1, %xmm0
	shrq	%rdi
	movq	24(%rsp), %rcx
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movaps	%xmm1, 48(%rsp)
	movaps	%xmm1, 32(%rsp)
	movaps	.LCPI5_1(%rip), %xmm2   # xmm2 = [1431655765,1431655765]
	pand	%xmm2, %xmm1
	movl	%ecx, %eax
	andl	$1431655765, %eax       # imm = 0x55555555
	movl	%eax, %ecx
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	addq	%rcx, %rdi
	movq	%rdi, 24(%rsp)
	movaps	32(%rsp), %xmm0
	movaps	48(%rsp), %xmm1
	movaps	.LCPI5_2(%rip), %xmm2   # xmm2 = [3435973836,3435973836]
	movaps	%xmm0, %xmm3
	pand	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	pand	%xmm2, %xmm4
	movl	%edi, %eax
	movl	%eax, %edx
	andl	$-858993460, %edx       # imm = 0xCCCCCCCC
	movl	%edx, %ecx
	psrlq	$2, %xmm4
	psrlq	$2, %xmm3
	shrq	$2, %rcx
	movaps	.LCPI5_3(%rip), %xmm2   # xmm2 = [858993459,858993459]
	pand	%xmm2, %xmm1
	pand	%xmm2, %xmm0
	andl	$858993459, %eax        # imm = 0x33333333
	movl	%eax, %edi
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm4
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm3, 32(%rsp)
	addq	%rdi, %rcx
	movq	%rcx, 24(%rsp)
	movaps	32(%rsp), %xmm0
	movaps	48(%rsp), %xmm1
	movaps	.LCPI5_4(%rip), %xmm2   # xmm2 = [4042322160,4042322160]
	movaps	%xmm0, %xmm3
	pand	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	pand	%xmm2, %xmm4
	movl	%ecx, %eax
	movl	%eax, %edx
	andl	$1894838512, %edx       # imm = 0x70F0F0F0
	movl	%edx, %ecx
	psrlq	$4, %xmm4
	psrlq	$4, %xmm3
	shrq	$4, %rcx
	movaps	.LCPI5_5(%rip), %xmm2   # xmm2 = [252645135,252645135]
	pand	%xmm2, %xmm1
	pand	%xmm2, %xmm0
	andl	$252645135, %eax        # imm = 0xF0F0F0F
	movl	%eax, %edi
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm4
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm3, 32(%rsp)
	addq	%rdi, %rcx
	movq	%rcx, 24(%rsp)
	movaps	32(%rsp), %xmm0
	movaps	48(%rsp), %xmm1
	movaps	.LCPI5_6(%rip), %xmm2   # xmm2 = [0,255,0,255,0,0,0,0,0,255,0,255,0,0,0,0]
	movaps	%xmm0, %xmm3
	pand	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	pand	%xmm2, %xmm4
	movl	%ecx, %eax
	movl	%eax, %edx
	andl	$520158976, %edx        # imm = 0x1F00FF00
	movl	%edx, %ecx
	psrlq	$8, %xmm4
	psrlq	$8, %xmm3
	shrq	$8, %rcx
	movaps	.LCPI5_7(%rip), %xmm2   # xmm2 = [255,0,255,0,0,0,0,0,255,0,255,0,0,0,0,0]
	pand	%xmm2, %xmm1
	pand	%xmm2, %xmm0
	andl	$16711935, %eax         # imm = 0xFF00FF
	movl	%eax, %edi
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm4
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm3, 32(%rsp)
	addq	%rdi, %rcx
	movq	%rcx, 24(%rsp)
	movaps	32(%rsp), %xmm0
	movaps	48(%rsp), %xmm1
	movaps	.LCPI5_8(%rip), %xmm2   # xmm2 = [0,65535,0,0,0,65535,0,0]
	movaps	%xmm0, %xmm3
	pand	%xmm2, %xmm3
	movaps	%xmm1, %xmm4
	pand	%xmm2, %xmm4
	psrlq	$16, %xmm4
	psrlq	$16, %xmm3
	movq	%rcx, %rdi
	shrq	$16, %rdi
	movaps	.LCPI5_9(%rip), %xmm2   # xmm2 = [65535,0,0,0,65535,0,0,0]
	pand	%xmm2, %xmm1
	pand	%xmm2, %xmm0
	movw	%cx, %si
	movzwl	%si, %eax
	movl	%eax, %ecx
	paddq	%xmm0, %xmm3
	paddq	%xmm1, %xmm4
	movaps	%xmm4, 48(%rsp)
	movaps	%xmm3, 32(%rsp)
	movd	%xmm3, %r8
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	movd	%xmm0, %r9
	movd	%xmm4, %r10
	movq	%r8, %r11
	addq	%r9, %r11
	addq	%r10, %r11
	addq	%rcx, %rdi
	imulq	$3, %rdi, %rcx
	movq	%rdi, 88(%rsp)
	cmpq	%rcx, %r11
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%r11, 8(%rsp)           # 8-byte Spill
	movq	%r8, (%rsp)             # 8-byte Spill
	je	.LBB5_5
# BB#1:
	movq	8(%rsp), %rax           # 8-byte Reload
	cqto
	movq	(%rsp), %rcx            # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB5_3
# BB#2:
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 88(%rsp)
	jmp	.LBB5_4
.LBB5_3:
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 88(%rsp)
.LBB5_4:
	jmp	.LBB5_5
.LBB5_5:
	movq	88(%rsp), %rax
	movq	%rax, 24(%rsp)
	movq	24(%rsp), %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bitcount, .Lfunc_end5-bitcount

	.globl	ntbl_bitcount
	.p2align	4, 0x90
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$480, %rsp              # imm = 0x1E0
	movq	%rdi, 24(%rsp)
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %eax
	andl	$15, %eax
	movl	%eax, %edi
	movsbl	bits(%rdi), %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$240, %ecx
	movl	%ecx, %edi
	shrq	$4, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%eax, 444(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 416(%rsp)
	movl	%ecx, 396(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 368(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$3840, %ecx             # imm = 0xF00
	movl	%ecx, %edi
	shrq	$8, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 348(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 320(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$61440, %ecx            # imm = 0xF000
	movl	%ecx, %edi
	shrq	$12, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 300(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 272(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$983040, %ecx           # imm = 0xF0000
	movl	%ecx, %edi
	shrq	$16, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 252(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 224(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$15728640, %ecx         # imm = 0xF00000
	movl	%ecx, %edi
	shrq	$20, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 204(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 176(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$251658240, %ecx        # imm = 0xF000000
	movl	%ecx, %edi
	shrq	$24, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 156(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 128(%rsp)
	addl	%ecx, %eax
	movq	24(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	%edi, %ecx
	andl	$-268435456, %ecx       # imm = 0xF0000000
	movl	%ecx, %edi
	shrq	$28, %rdi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 108(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 80(%rsp)
	addl	%ecx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ntbl_bitcount, .Lfunc_end6-ntbl_bitcount

	.globl	BW_btbl_bitcount
	.p2align	4, 0x90
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, 24(%rsp)
	movq	%rdi, 16(%rsp)
	movzbl	16(%rsp), %eax
	movl	%eax, %edi
	movsbl	bits(%rdi), %eax
	movzbl	17(%rsp), %ecx
	movl	%ecx, %edi
	movsbl	bits(%rdi), %ecx
	movl	%eax, 252(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 224(%rsp)
	movl	%ecx, 204(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 176(%rsp)
	addl	%ecx, %eax
	movzbl	19(%rsp), %ecx
	movl	%ecx, %edi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 156(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 128(%rsp)
	addl	%ecx, %eax
	movzbl	18(%rsp), %ecx
	movl	%ecx, %edi
	movsbl	bits(%rdi), %ecx
	movl	%ecx, 108(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 80(%rsp)
	addl	%ecx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	BW_btbl_bitcount, .Lfunc_end7-BW_btbl_bitcount

	.globl	AR_btbl_bitcount
	.p2align	4, 0x90
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, 56(%rsp)
	leaq	56(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	leaq	57(%rsp), %rdi
	movq	%rdi, 48(%rsp)
	movzbl	56(%rsp), %eax
	movl	%eax, %edi
	movsbl	bits(%rdi), %eax
	movl	%eax, 28(%rsp)
	movq	48(%rsp), %rdi
	movq	%rdi, %rcx
	incq	%rcx
	movq	%rcx, 48(%rsp)
	movzbl	(%rdi), %eax
	movl	%eax, %ecx
	movsbl	bits(%rcx), %eax
	movl	28(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 32(%rsp)
	movl	%eax, 220(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 192(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 32(%rsp)
	addl	%eax, %edx
	movl	%edx, 28(%rsp)
	movq	48(%rsp), %rcx
	movq	%rcx, %rdi
	incq	%rdi
	movq	%rdi, 48(%rsp)
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movsbl	bits(%rcx), %eax
	movl	28(%rsp), %edx
	movaps	32(%rsp), %xmm0
	movl	%eax, 172(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 32(%rsp)
	addl	%eax, %edx
	movl	%edx, 28(%rsp)
	movq	48(%rsp), %rcx
	movzbl	(%rcx), %eax
	movl	%eax, %ecx
	movsbl	bits(%rcx), %eax
	movaps	32(%rsp), %xmm0
	movl	%eax, 124(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 96(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 32(%rsp)
	movd	%xmm0, %esi
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r8d
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%esi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	addl	%eax, %edx
	imull	$3, %edx, %eax
	movl	%edx, 252(%rsp)
	cmpl	%eax, %r10d
	movl	%esi, 24(%rsp)          # 4-byte Spill
	movl	%edx, 20(%rsp)          # 4-byte Spill
	movl	%r10d, 16(%rsp)         # 4-byte Spill
	je	.LBB8_5
# BB#1:
	movl	16(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB8_3
# BB#2:
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 252(%rsp)
	jmp	.LBB8_4
.LBB8_3:
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 252(%rsp)
.LBB8_4:
	jmp	.LBB8_5
.LBB8_5:
	movl	252(%rsp), %eax
	movl	%eax, 28(%rsp)
	movl	28(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	AR_btbl_bitcount, .Lfunc_end8-AR_btbl_bitcount

	.globl	ntbl_bitcnt
	.p2align	4, 0x90
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, 88(%rsp)
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	%edi, %eax
	andl	$15, %eax
	movl	%eax, %edi
	movsbl	bits.1(%rdi), %eax
	movl	%eax, 60(%rsp)
	movq	88(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, %xmm1
	psrad	$4, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$4, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movq	%rcx, %rsi
	movq	%rcx, %r8
	addq	%rdx, %r8
	addq	%rsi, %r8
	sarq	$4, %rdi
	imulq	$3, %rdi, %rdx
	movq	%rdi, 216(%rsp)
	cmpq	%rdx, %r8
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	je	.LBB9_5
# BB#1:
	movq	48(%rsp), %rax          # 8-byte Reload
	cqto
	movq	40(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB9_3
# BB#2:
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 216(%rsp)
	jmp	.LBB9_4
.LBB9_3:
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 216(%rsp)
.LBB9_4:
	jmp	.LBB9_5
.LBB9_5:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	216(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, %rcx
	je	.LBB9_12
# BB#6:
	movq	88(%rsp), %rdi
	callq	ntbl_bitcnt
	movl	%eax, %ecx
	movl	60(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 64(%rsp)
	movl	%eax, 156(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 128(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 64(%rsp)
	movd	%xmm0, %eax
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%eax, %r9d
	addl	%esi, %r9d
	addl	%r8d, %r9d
	addl	%ecx, %edx
	imull	$3, %edx, %ecx
	movl	%edx, 188(%rsp)
	cmpl	%ecx, %r9d
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	je	.LBB9_11
# BB#7:
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	20(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB9_9
# BB#8:
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 188(%rsp)
	jmp	.LBB9_10
.LBB9_9:
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 188(%rsp)
.LBB9_10:
	jmp	.LBB9_11
.LBB9_11:
	movl	188(%rsp), %eax
	movl	%eax, 60(%rsp)
.LBB9_12:
	movl	60(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ntbl_bitcnt, .Lfunc_end9-ntbl_bitcnt

	.globl	btbl_bitcnt
	.p2align	4, 0x90
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, 88(%rsp)
	movsbl	88(%rsp), %eax
	movl	%eax, 220(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 192(%rsp)
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edi
	movsbl	bits.1(%rdi), %eax
	movl	%eax, 60(%rsp)
	movq	88(%rsp), %rdi
	movd	%rdi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movaps	%xmm0, %xmm1
	psrad	$8, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$8, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %rdx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movq	%rdx, %r8
	movq	%rdx, %r9
	addq	%rsi, %r9
	addq	%r8, %r9
	sarq	$8, %rdi
	imulq	$3, %rdi, %rsi
	movq	%rdi, 280(%rsp)
	cmpq	%rsi, %r9
	movq	%r9, 48(%rsp)           # 8-byte Spill
	movq	%rdx, 40(%rsp)          # 8-byte Spill
	movq	%rdi, 32(%rsp)          # 8-byte Spill
	je	.LBB10_5
# BB#1:
	movq	48(%rsp), %rax          # 8-byte Reload
	cqto
	movq	40(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB10_3
# BB#2:
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 280(%rsp)
	jmp	.LBB10_4
.LBB10_3:
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	%rax, 280(%rsp)
.LBB10_4:
	jmp	.LBB10_5
.LBB10_5:
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	280(%rsp), %rdx
	movq	%rdx, 88(%rsp)
	movq	32(%rsp), %rdx          # 8-byte Reload
	cmpq	%rdx, %rcx
	je	.LBB10_12
# BB#6:
	movq	88(%rsp), %rdi
	callq	btbl_bitcnt
	movl	%eax, %ecx
	movl	60(%rsp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 64(%rsp)
	movl	%eax, 172(%rsp)
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movups	%xmm1, 144(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 64(%rsp)
	movd	%xmm0, %eax
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%eax, %r9d
	addl	%esi, %r9d
	addl	%r8d, %r9d
	addl	%ecx, %edx
	imull	$3, %edx, %ecx
	movl	%edx, 252(%rsp)
	cmpl	%ecx, %r9d
	movl	%r9d, 28(%rsp)          # 4-byte Spill
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	je	.LBB10_11
# BB#7:
	movl	28(%rsp), %eax          # 4-byte Reload
	cltd
	movl	20(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB10_9
# BB#8:
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 252(%rsp)
	jmp	.LBB10_10
.LBB10_9:
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 252(%rsp)
.LBB10_10:
	jmp	.LBB10_11
.LBB10_11:
	movl	252(%rsp), %eax
	movl	%eax, 60(%rsp)
.LBB10_12:
	movl	60(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	btbl_bitcnt, .Lfunc_end10-btbl_bitcnt

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI11_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI11_3:
	.quad	4696837146684686336     # double 1.0E+6
	.quad	4696837146684686336     # double 1.0E+6
.LCPI11_4:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI11_5:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
.LCPI11_6:
	.quad	13                      # 0xd
	.quad	13                      # 0xd
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_1:
	.quad	4613937818241073152     # double 3
.LCPI11_2:
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
	subq	$1184, %rsp             # imm = 0x4A0
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movaps	%xmm1, 736(%rsp)
	movl	$0, 732(%rsp)
	movl	%edi, 700(%rsp)
	movq	%rsi, 688(%rsp)
	movapd	.LCPI11_0(%rip), %xmm2  # xmm2 = [1.797693e+308,1.797693e+308]
	movapd	%xmm2, 512(%rsp)
	movabsq	$9218868437227405311, %rsi # imm = 0x7FEFFFFFFFFFFFFF
	movq	%rsi, 504(%rsp)
	movaps	%xmm1, 480(%rsp)
	movsd	%xmm0, 472(%rsp)
	cmpl	$2, 700(%rsp)
	jge	.LBB11_2
# BB#1:
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, 152(%rsp)         # 4-byte Spill
	callq	exit
.LBB11_2:
	movq	688(%rsp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	%eax, 156(%rsp)
	movl	$.L.str.8, %eax
	movl	%eax, %edi
	callq	puts
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 448(%rsp)
	movl	$0, 444(%rsp)
	movl	%eax, 148(%rsp)         # 4-byte Spill
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	cmpl	$7, 444(%rsp)
	jge	.LBB11_39
# BB#4:                                 #   in Loop: Header=BB11_3 Depth=1
	callq	clock
	movq	%rax, 632(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	$0, 248(%rsp)
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movq	$0, 312(%rsp)
	callq	rand
	movslq	%eax, %rcx
	movq	%rcx, 184(%rsp)
.LBB11_5:                               #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	312(%rsp), %rax
	movslq	156(%rsp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB11_23
# BB#6:                                 #   in Loop: Header=BB11_5 Depth=2
	movslq	444(%rsp), %rax
	movq	main.pBitCntFunc(,%rax,8), %rax
	movq	184(%rsp), %rdi
	callq	*%rax
	movslq	%eax, %rdi
	movq	248(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	%rdi, 856(%rsp)
	movd	%rdi, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movups	%xmm1, 816(%rsp)
	movups	%xmm1, 800(%rsp)
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movd	%xmm0, %rdx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movq	%rdx, %r8
	movq	%rdx, %r9
	addq	%rsi, %r9
	addq	%r8, %r9
	addq	%rdi, %rcx
	imulq	$3, %rcx, %rsi
	movq	%rcx, 1112(%rsp)
	cmpq	%rsi, %r9
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%r9, 128(%rsp)          # 8-byte Spill
	movq	%rdx, 120(%rsp)         # 8-byte Spill
	je	.LBB11_11
# BB#7:                                 #   in Loop: Header=BB11_5 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	cqto
	movq	120(%rsp), %rcx         # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB11_9
# BB#8:                                 #   in Loop: Header=BB11_5 Depth=2
	movq	136(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1112(%rsp)
	jmp	.LBB11_10
.LBB11_9:                               #   in Loop: Header=BB11_5 Depth=2
	movq	120(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1112(%rsp)
.LBB11_10:                              #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_11
.LBB11_11:                              #   in Loop: Header=BB11_5 Depth=2
	movq	1112(%rsp), %rax
	movq	%rax, 248(%rsp)
# BB#12:                                #   in Loop: Header=BB11_5 Depth=2
	movq	312(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movaps	.LCPI11_5(%rip), %xmm1  # xmm1 = [1,1]
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movq	%rcx, %rsi
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	%rsi, %rdi
	addq	$1, %rax
	imulq	$3, %rax, %rdx
	movq	%rax, 1048(%rsp)
	cmpq	%rdx, %rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%rcx, 104(%rsp)         # 8-byte Spill
	movq	%rax, 96(%rsp)          # 8-byte Spill
	je	.LBB11_17
# BB#13:                                #   in Loop: Header=BB11_5 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	cqto
	movq	104(%rsp), %rcx         # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB11_15
# BB#14:                                #   in Loop: Header=BB11_5 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1048(%rsp)
	jmp	.LBB11_16
.LBB11_15:                              #   in Loop: Header=BB11_5 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	%rax, 1048(%rsp)
.LBB11_16:                              #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_17
.LBB11_17:                              #   in Loop: Header=BB11_5 Depth=2
	movq	1048(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	184(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movaps	.LCPI11_6(%rip), %xmm1  # xmm1 = [13,13]
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movq	%rcx, %rsi
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	%rsi, %rdi
	addq	$13, %rax
	imulq	$3, %rax, %rdx
	movq	%rax, 984(%rsp)
	cmpq	%rdx, %rdi
	movq	%rdi, 88(%rsp)          # 8-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 72(%rsp)          # 8-byte Spill
	je	.LBB11_22
# BB#18:                                #   in Loop: Header=BB11_5 Depth=2
	movq	88(%rsp), %rax          # 8-byte Reload
	cqto
	movq	80(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB11_20
# BB#19:                                #   in Loop: Header=BB11_5 Depth=2
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 984(%rsp)
	jmp	.LBB11_21
.LBB11_20:                              #   in Loop: Header=BB11_5 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	%rax, 984(%rsp)
.LBB11_21:                              #   in Loop: Header=BB11_5 Depth=2
	jmp	.LBB11_22
.LBB11_22:                              #   in Loop: Header=BB11_5 Depth=2
	movq	984(%rsp), %rax
	movq	%rax, 184(%rsp)
	jmp	.LBB11_5
.LBB11_23:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI11_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	callq	clock
	movq	%rax, 568(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 592(%rsp)
	movaps	%xmm0, 576(%rsp)
	movq	632(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 656(%rsp)
	movaps	%xmm0, 640(%rsp)
	subq	%rcx, %rax
	cvtsi2sdq	%rax, %xmm0
	movsd	%xmm0, 776(%rsp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, 752(%rsp)
	movapd	.LCPI11_3(%rip), %xmm2  # xmm2 = [1.000000e+06,1.000000e+06]
	divpd	%xmm2, %xmm1
	movapd	%xmm1, 544(%rsp)
	movaps	%xmm1, %xmm2
	movhlps	%xmm1, %xmm1            # xmm1 = xmm1[1,1]
	movaps	%xmm2, %xmm3
	addsd	%xmm1, %xmm3
	addsd	%xmm1, %xmm3
	movsd	56(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movaps	%xmm0, %xmm4
	movsd	64(%rsp), %xmm5         # 8-byte Reload
                                        # xmm5 = mem[0],zero
	mulsd	%xmm5, %xmm4
	movsd	%xmm0, 952(%rsp)
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 48(%rsp)         # 8-byte Spill
	movsd	%xmm2, 40(%rsp)         # 8-byte Spill
	movsd	%xmm0, 32(%rsp)         # 8-byte Spill
	jne	.LBB11_24
	jp	.LBB11_24
	jmp	.LBB11_28
.LBB11_24:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	40(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB11_25
	jp	.LBB11_25
	jmp	.LBB11_26
.LBB11_25:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 952(%rsp)
	jmp	.LBB11_27
.LBB11_26:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 952(%rsp)
.LBB11_27:                              #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_28
.LBB11_28:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	952(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 536(%rsp)
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	504(%rsp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_30
# BB#29:                                #   in Loop: Header=BB11_3 Depth=1
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 504(%rsp)
	movl	444(%rsp), %eax
	movl	%eax, 412(%rsp)
.LBB11_30:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	472(%rsp), %xmm0
	jbe	.LBB11_32
# BB#31:                                #   in Loop: Header=BB11_3 Depth=1
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 472(%rsp)
	movl	444(%rsp), %eax
	movl	%eax, 380(%rsp)
.LBB11_32:                              #   in Loop: Header=BB11_3 Depth=1
	movabsq	$.L.str.9, %rdi
	movslq	444(%rsp), %rax
	movq	main.text(,%rax,8), %rsi
	movsd	536(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	248(%rsp), %rdx
	movb	$1, %al
	callq	printf
	movl	%eax, 28(%rsp)          # 4-byte Spill
# BB#33:                                #   in Loop: Header=BB11_3 Depth=1
	movl	444(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 448(%rsp)
	movaps	.LCPI11_4(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 448(%rsp)
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
	movl	%eax, 924(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%edi, 20(%rsp)          # 4-byte Spill
	movl	%eax, 16(%rsp)          # 4-byte Spill
	je	.LBB11_38
# BB#34:                                #   in Loop: Header=BB11_3 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	cltd
	movl	24(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB11_36
# BB#35:                                #   in Loop: Header=BB11_3 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 924(%rsp)
	jmp	.LBB11_37
.LBB11_36:                              #   in Loop: Header=BB11_3 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	movl	%eax, 924(%rsp)
.LBB11_37:                              #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_38
.LBB11_38:                              #   in Loop: Header=BB11_3 Depth=1
	movl	924(%rsp), %eax
	movl	%eax, 444(%rsp)
	jmp	.LBB11_3
.LBB11_39:
	movabsq	$.L.str.10, %rdi
	movslq	412(%rsp), %rax
	movq	main.text(,%rax,8), %rsi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movslq	380(%rsp), %rsi
	movq	main.text(,%rsi,8), %rsi
	movl	%eax, 12(%rsp)          # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, 8(%rsp)           # 4-byte Spill
	movl	%ecx, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	main, .Lfunc_end11-main

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI12_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.p2align	4, 0x90
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$352, %rsp              # imm = 0x160
	movq	%rdi, 120(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$0, 60(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$0, 92(%rsp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, 120(%rsp)
	movb	%cl, 59(%rsp)           # 1-byte Spill
	je	.LBB12_3
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movslq	92(%rsp), %rax
	cmpq	$64, %rax
	setb	%cl
	movb	%cl, 59(%rsp)           # 1-byte Spill
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movb	59(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_21
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	movq	120(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movl	%eax, %ecx
	movl	%ecx, %edx
	andl	$1, %edx
	movl	60(%rsp), %esi
	movd	%esi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 64(%rsp)
	movl	%edx, 188(%rsp)
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	.LCPI12_0(%rip), %xmm2  # xmm2 = [1,1,1,1]
	pand	%xmm2, %xmm1
	movups	%xmm1, 160(%rsp)
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 64(%rsp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r8d
	movl	%ecx, %r9d
	addl	%edi, %r9d
	addl	%r8d, %r9d
	addl	%edx, %esi
	imull	$3, %esi, %edx
	movl	%esi, 316(%rsp)
	cmpl	%edx, %r9d
	movl	%r9d, 52(%rsp)          # 4-byte Spill
	movl	%esi, 48(%rsp)          # 4-byte Spill
	movl	%ecx, 44(%rsp)          # 4-byte Spill
	je	.LBB12_9
# BB#5:                                 #   in Loop: Header=BB12_1 Depth=1
	movl	52(%rsp), %eax          # 4-byte Reload
	cltd
	movl	44(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB12_7
# BB#6:                                 #   in Loop: Header=BB12_1 Depth=1
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, 316(%rsp)
	jmp	.LBB12_8
.LBB12_7:                               #   in Loop: Header=BB12_1 Depth=1
	movl	44(%rsp), %eax          # 4-byte Reload
	movl	%eax, 316(%rsp)
.LBB12_8:                               #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_9
.LBB12_9:                               #   in Loop: Header=BB12_1 Depth=1
	movl	316(%rsp), %eax
	movl	%eax, 60(%rsp)
# BB#10:                                #   in Loop: Header=BB12_1 Depth=1
	movl	92(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI12_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
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
	movl	%eax, 284(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	%eax, 32(%rsp)          # 4-byte Spill
	je	.LBB12_15
# BB#11:                                #   in Loop: Header=BB12_1 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	cltd
	movl	40(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB12_13
# BB#12:                                #   in Loop: Header=BB12_1 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 284(%rsp)
	jmp	.LBB12_14
.LBB12_13:                              #   in Loop: Header=BB12_1 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 284(%rsp)
.LBB12_14:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_15
.LBB12_15:                              #   in Loop: Header=BB12_1 Depth=1
	movl	284(%rsp), %eax
	movl	%eax, 92(%rsp)
	movq	120(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movaps	%xmm0, %xmm1
	psrad	$1, %xmm1
	pshufd	$237, %xmm1, %xmm1      # xmm1 = xmm1[1,3,2,3]
	psrlq	$1, %xmm0
	pshufd	$232, %xmm0, %xmm0      # xmm0 = xmm0[0,2,2,3]
	punpckldq	%xmm1, %xmm0    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movd	%xmm0, %rdx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movq	%rdx, %rdi
	movq	%rdx, %r8
	addq	%rsi, %r8
	addq	%rdi, %r8
	sarq	$1, %rcx
	imulq	$3, %rcx, %rsi
	movq	%rcx, 216(%rsp)
	cmpq	%rsi, %r8
	movq	%r8, 24(%rsp)           # 8-byte Spill
	movq	%rdx, 16(%rsp)          # 8-byte Spill
	movq	%rcx, 8(%rsp)           # 8-byte Spill
	je	.LBB12_20
# BB#16:                                #   in Loop: Header=BB12_1 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	cqto
	movq	16(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB12_18
# BB#17:                                #   in Loop: Header=BB12_1 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 216(%rsp)
	jmp	.LBB12_19
.LBB12_18:                              #   in Loop: Header=BB12_1 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 216(%rsp)
.LBB12_19:                              #   in Loop: Header=BB12_1 Depth=1
	jmp	.LBB12_20
.LBB12_20:                              #   in Loop: Header=BB12_1 Depth=1
	movq	216(%rsp), %rax
	movq	%rax, 120(%rsp)
	jmp	.LBB12_1
.LBB12_21:
	movl	60(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	bit_shifter, .Lfunc_end12-bit_shifter

	.globl	bfopen
	.p2align	4, 0x90
	.type	bfopen,@function
bfopen:                                 # @bfopen
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	xorl	%edx, %edx
	movl	%edx, %ecx
	movq	%rax, -32(%rbp)
	cmpq	-32(%rbp), %rcx
	jne	.LBB13_2
# BB#1:
	movq	$0, -8(%rbp)
	jmp	.LBB13_5
.LBB13_2:
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	fopen
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	cmpq	(%rax), %rsi
	jne	.LBB13_4
# BB#3:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -8(%rbp)
	jmp	.LBB13_5
.LBB13_4:
	movq	-32(%rbp), %rax
	movb	$0, 9(%rax)
	movq	-32(%rbp), %rax
	movb	$0, 11(%rax)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	bfopen, .Lfunc_end13-bfopen

	.globl	bfread
	.p2align	4, 0x90
	.type	bfread,@function
bfread:                                 # @bfread
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$144, %rsp
	xorl	%eax, %eax
	movq	%rdi, -136(%rbp)
	movq	-136(%rbp), %rdi
	movsbl	9(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB14_2
# BB#1:
	movq	-136(%rbp), %rax
	movq	(%rax), %rdi
	callq	fgetc
	movb	%al, %cl
	movq	-136(%rbp), %rdi
	movb	%cl, 8(%rdi)
	movq	-136(%rbp), %rdi
	movb	$8, 9(%rdi)
.LBB14_2:
	movl	$1, %eax
	movq	-136(%rbp), %rcx
	movb	9(%rcx), %dl
	addb	$-1, %dl
	movb	%dl, 9(%rcx)
	movq	-136(%rbp), %rcx
	movsbl	8(%rcx), %esi
	movq	-136(%rbp), %rcx
	movsbl	9(%rcx), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	andl	%eax, %esi
	cmpl	$0, %esi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	bfread, .Lfunc_end14-bfread

	.globl	bfwrite
	.p2align	4, 0x90
	.type	bfwrite,@function
bfwrite:                                # @bfwrite
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movl	$8, %eax
	movl	%edi, -148(%rbp)
	movq	%rsi, -160(%rbp)
	movq	-160(%rbp), %rsi
	movsbl	11(%rsi), %edi
	cmpl	%edi, %eax
	jne	.LBB15_2
# BB#1:
	movq	-160(%rbp), %rax
	movsbl	10(%rax), %edi
	movq	-160(%rbp), %rax
	movq	(%rax), %rsi
	callq	fputc
	movq	-160(%rbp), %rsi
	movb	$0, 11(%rsi)
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB15_2:
	movq	-160(%rbp), %rax
	movb	11(%rax), %cl
	addb	$1, %cl
	movb	%cl, 11(%rax)
	movq	-160(%rbp), %rax
	movsbl	10(%rax), %edx
	shll	$1, %edx
	movb	%dl, %cl
	movb	%cl, 10(%rax)
	movl	-148(%rbp), %edx
	andl	$1, %edx
	movq	-160(%rbp), %rax
	movsbl	10(%rax), %esi
	orl	%edx, %esi
	movb	%sil, %cl
	movb	%cl, 10(%rax)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	bfwrite, .Lfunc_end15-bfwrite

	.globl	bfclose
	.p2align	4, 0x90
	.type	bfclose,@function
bfclose:                                # @bfclose
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	fclose
	movq	-8(%rbp), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	bfclose, .Lfunc_end16-bfclose

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	bitstring
	.p2align	4, 0x90
	.type	bitstring,@function
bitstring:                              # @bitstring
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	andq	$-32, %rsp
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, 248(%rsp)
	movq	%rsi, 184(%rsp)
	movl	%edx, 156(%rsp)
	movl	%ecx, 124(%rsp)
	movl	%ecx, %edx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 128(%rsp)
	movl	156(%rsp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	movl	156(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	movaps	%xmm0, %xmm1
	psrad	$2, %xmm1
	sarl	$2, %eax
	paddd	%xmm1, %xmm0
	addl	%eax, %ecx
	movl	156(%rsp), %eax
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 160(%rsp)
	movl	%eax, %r8d
	sarl	$31, %r8d
	shrl	$30, %r8d
	movl	%eax, %r9d
	addl	%r8d, %r9d
	andl	$-4, %r9d
	subl	%r9d, %eax
	sete	%r10b
	movzbl	%r10b, %r8d
	subl	%r8d, %ecx
	movaps	%xmm0, 64(%rsp)
	movd	%xmm0, %r8d
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %r9d
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %r11d
	movl	%r8d, %ebx
	addl	%r9d, %ebx
	addl	%r11d, %ebx
	subl	%ecx, %edx
	imull	$3, %edx, %ecx
	movl	%edx, 396(%rsp)
	cmpl	%ecx, %ebx
	movl	%r8d, 56(%rsp)          # 4-byte Spill
	movl	%edx, 52(%rsp)          # 4-byte Spill
	movl	%ebx, 48(%rsp)          # 4-byte Spill
	movl	%eax, 44(%rsp)          # 4-byte Spill
	je	.LBB17_5
# BB#1:
	movl	48(%rsp), %eax          # 4-byte Reload
	cltd
	movl	56(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB17_3
# BB#2:
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 396(%rsp)
	jmp	.LBB17_4
.LBB17_3:
	movl	56(%rsp), %eax          # 4-byte Reload
	movl	%eax, 396(%rsp)
.LBB17_4:
	jmp	.LBB17_5
.LBB17_5:
	movl	396(%rsp), %eax
	movl	%eax, 60(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	$0, 92(%rsp)
.LBB17_6:                               # =>This Inner Loop Header: Depth=1
	movl	92(%rsp), %eax
	cmpl	60(%rsp), %eax
	jge	.LBB17_14
# BB#7:                                 #   in Loop: Header=BB17_6 Depth=1
	movq	248(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 248(%rsp)
	movb	$32, (%rax)
# BB#8:                                 #   in Loop: Header=BB17_6 Depth=1
	movl	92(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI17_0(%rip), %xmm1  # xmm1 = [1,1,1,1]
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
	movl	%eax, 364(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 40(%rsp)          # 4-byte Spill
	movl	%edi, 36(%rsp)          # 4-byte Spill
	movl	%eax, 32(%rsp)          # 4-byte Spill
	je	.LBB17_13
# BB#9:                                 #   in Loop: Header=BB17_6 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	cltd
	movl	40(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB17_11
# BB#10:                                #   in Loop: Header=BB17_6 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	movl	%eax, 364(%rsp)
	jmp	.LBB17_12
.LBB17_11:                              #   in Loop: Header=BB17_6 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	movl	%eax, 364(%rsp)
.LBB17_12:                              #   in Loop: Header=BB17_6 Depth=1
	jmp	.LBB17_13
.LBB17_13:                              #   in Loop: Header=BB17_6 Depth=1
	movl	364(%rsp), %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB17_6
.LBB17_14:
	jmp	.LBB17_15
.LBB17_15:                              # =>This Inner Loop Header: Depth=1
	movl	156(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 160(%rsp)
	pcmpeqd	%xmm1, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 160(%rsp)
	addl	$-1, %eax
	movl	%eax, 156(%rsp)
	cmpl	$0, %eax
	jl	.LBB17_20
# BB#16:                                #   in Loop: Header=BB17_15 Depth=1
	movl	$4, %eax
	movq	184(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movl	156(%rsp), %edx
	movl	%edx, %esi
	movq	%rsi, 312(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 272(%rsp)
	movups	%xmm0, 256(%rsp)
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: %CL<def> %RCX<kill>
	movq	24(%rsp), %rsi          # 8-byte Reload
	sarq	%cl, %rsi
	andq	$1, %rsi
	addq	$48, %rsi
	movb	%sil, %cl
	movq	248(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, 248(%rsp)
	movb	%cl, (%rsi)
	movl	156(%rsp), %edx
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	20(%rsp), %r8d          # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB17_19
# BB#17:                                #   in Loop: Header=BB17_15 Depth=1
	cmpl	$0, 156(%rsp)
	je	.LBB17_19
# BB#18:                                #   in Loop: Header=BB17_15 Depth=1
	movq	248(%rsp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 248(%rsp)
	movb	$32, (%rax)
.LBB17_19:                              #   in Loop: Header=BB17_15 Depth=1
	jmp	.LBB17_15
.LBB17_20:
	movq	248(%rsp), %rax
	movb	$0, (%rax)
	leaq	-8(%rbp), %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bitstring, .Lfunc_end17-bitstring

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI18_0:
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
	.long	48                      # 0x30
.LCPI18_1:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	bstr_i
	.p2align	4, 0x90
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movq	%rdi, -88(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movl	$0, -148(%rbp)
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -88(%rbp)
	movb	%cl, -149(%rbp)         # 1-byte Spill
	je	.LBB18_4
# BB#2:                                 #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-88(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -149(%rbp)         # 1-byte Spill
	je	.LBB18_4
# BB#3:                                 #   in Loop: Header=BB18_1 Depth=1
	movabsq	$.L.str.12, %rdi
	movq	-88(%rbp), %rax
	movsbl	(%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -149(%rbp)         # 1-byte Spill
.LBB18_4:                               #   in Loop: Header=BB18_1 Depth=1
	movb	-149(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_5
	jmp	.LBB18_11
.LBB18_5:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, %rcx
	incq	%rcx
	movq	%rcx, -88(%rbp)
	movsbl	(%rax), %edx
	movl	%edx, -52(%rbp)
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, -80(%rbp)
	movaps	.LCPI18_0(%rip), %xmm1  # xmm1 = [48,48,48,48]
	psubd	%xmm1, %xmm0
	movaps	%xmm0, -112(%rbp)
	addl	$-48, %edx
	movl	%edx, -116(%rbp)
	movl	-148(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	paddd	%xmm0, %xmm0
	movaps	.LCPI18_1(%rip), %xmm1  # xmm1 = [1,1,1,1]
	movaps	%xmm0, -144(%rbp)
	addl	%edx, %edx
	movl	%edx, -148(%rbp)
	movl	-116(%rbp), %esi
	movaps	-112(%rbp), %xmm0
	pand	%xmm1, %xmm0
	andl	$1, %esi
	movaps	-144(%rbp), %xmm1
	por	%xmm0, %xmm1
	movaps	%xmm1, -144(%rbp)
	movd	%xmm1, %edi
	pshufd	$229, %xmm1, %xmm0      # xmm0 = xmm1[1,1,2,3]
	movd	%xmm0, %r8d
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	movd	%xmm0, %r9d
	movl	%edi, %r10d
	addl	%r8d, %r10d
	addl	%r9d, %r10d
	orl	%esi, %edx
	imull	$3, %edx, %esi
	movl	%edx, -20(%rbp)
	cmpl	%esi, %r10d
	movl	%r10d, -156(%rbp)       # 4-byte Spill
	movl	%edi, -160(%rbp)        # 4-byte Spill
	movl	%edx, -164(%rbp)        # 4-byte Spill
	je	.LBB18_10
# BB#6:                                 #   in Loop: Header=BB18_1 Depth=1
	movl	-156(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-160(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB18_8
# BB#7:                                 #   in Loop: Header=BB18_1 Depth=1
	movl	-164(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB18_9
.LBB18_8:                               #   in Loop: Header=BB18_1 Depth=1
	movl	-160(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB18_9:                               #   in Loop: Header=BB18_1 Depth=1
	jmp	.LBB18_10
.LBB18_10:                              #   in Loop: Header=BB18_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB18_1
.LBB18_11:
	movl	-148(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	bstr_i, .Lfunc_end18-bstr_i

	.type	bits,@object            # @bits
	.data
	.p2align	4
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,@object          # @bits.1
	.p2align	4
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	main.pBitCntFunc,@object # @main.pBitCntFunc
	.data
	.p2align	4
main.pBitCntFunc:
	.quad	bit_count
	.quad	bitcount
	.quad	ntbl_bitcnt
	.quad	ntbl_bitcount
	.quad	BW_btbl_bitcount
	.quad	AR_btbl_bitcount
	.quad	bit_shifter
	.size	main.pBitCntFunc, 56

	.type	main.text,@object       # @main.text
	.p2align	4
main.text:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	main.text, 56

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"%-38s> Time: %7.3f sec.; Bits: %ld\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\nBest  > %s\n"
	.size	.L.str.10, 13

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Worst > %s\n"
	.size	.L.str.11, 12

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"01"
	.size	.L.str.12, 3


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
