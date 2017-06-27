	.text
	.file	"all_t.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$448, %rsp              # imm = 0x1C0
	movq	%rdi, 144(%rsp)
	movq	%rsi, 136(%rsp)
	cmpq	$0, 136(%rsp)
	je	.LBB0_3
# BB#1:
	cmpq	$0, 144(%rsp)
	je	.LBB0_3
# BB#2:
	movq	144(%rsp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
.LBB0_3:
	movq	$0, 152(%rsp)
	jmp	.LBB0_42
.LBB0_4:
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	144(%rsp), %rcx
	andq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	136(%rsp), %rax
	movq	%rax, 128(%rsp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	128(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 92(%rsp)
	movq	128(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	144(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB0_7
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	128(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	128(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 128(%rsp)
# BB#9:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	92(%rsp), %eax
	movq	128(%rsp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB0_5
# BB#10:
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	movq	128(%rsp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_27
# BB#11:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 96(%rsp)
	movl	$0, 92(%rsp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	92(%rsp), %eax
	movq	128(%rsp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB0_17
# BB#13:                                #   in Loop: Header=BB0_12 Depth=1
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	128(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	92(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_15
# BB#14:
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	128(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	92(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	144(%rsp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, 144(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 152(%rsp)
	jmp	.LBB0_42
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	92(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 96(%rsp)
	addl	$1, %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB0_12
.LBB0_17:
	movq	128(%rsp), %rax
	movzbl	16(%rax), %ecx
	movl	%ecx, 300(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 272(%rsp)
	incl	%ecx
	movl	%ecx, %eax
	movq	%rax, 216(%rsp)
	movd	%ecx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 176(%rsp)
	movups	%xmm0, 160(%rsp)
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 120(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64(%rsp)
	movl	$0, 60(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$0, 92(%rsp)
	movq	120(%rsp), %rax
	movq	%rax, 112(%rsp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	92(%rsp), %eax
	movq	128(%rsp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB0_24
# BB#19:                                #   in Loop: Header=BB0_18 Depth=1
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	128(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	92(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jbe	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_18 Depth=1
	movq	128(%rsp), %rax
	movq	8(%rax), %rax
	movslq	92(%rsp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	112(%rsp), %rsi
	movl	$16, %edx
                                        # kill: %RDX<def> %EDX<kill>
	movq	%rax, %rdi
	callq	bcopy
	movl	92(%rsp), %r8d
	movaps	96(%rsp), %xmm0
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 96(%rsp)
	addl	$1, %r8d
	movl	%r8d, 92(%rsp)
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movq	144(%rsp), %rax
	movq	8(%rax), %rdi
	movq	112(%rsp), %rsi
	movl	$16, %ecx
	movl	%ecx, %edx
	callq	bcopy
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	%ecx, %edx
	movq	%rdx, (%rax)
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, 64(%rsp)
	movl	$1, 60(%rsp)
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	movq	112(%rsp), %rax
	addq	$16, %rax
	movq	%rax, 112(%rsp)
	jmp	.LBB0_18
.LBB0_24:
	cmpl	$0, 60(%rsp)
	jne	.LBB0_26
# BB#25:
	movl	$16, %eax
	movl	%eax, %edx
	movq	144(%rsp), %rcx
	movq	8(%rcx), %rcx
	movq	112(%rsp), %rsi
	movq	%rcx, %rdi
	callq	bcopy
.LBB0_26:
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	144(%rsp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, 144(%rsp)
	movq	128(%rsp), %rax
	movb	16(%rax), %cl
	addb	$1, %cl
	movb	%cl, 16(%rax)
	movq	128(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	120(%rsp), %rax
	movq	128(%rsp), %rdi
	movq	%rax, 8(%rdi)
	movq	128(%rsp), %rax
	movq	%rax, 152(%rsp)
	jmp	.LBB0_42
.LBB0_27:
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, 96(%rsp)
	movl	$1, 92(%rsp)
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, 92(%rsp)
	movb	%cl, 47(%rsp)           # 1-byte Spill
	jge	.LBB0_30
# BB#29:                                #   in Loop: Header=BB0_28 Depth=1
	movl	92(%rsp), %edi
	movq	144(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	movl	92(%rsp), %edi
	movq	128(%rsp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, 32(%rsp)          # 8-byte Spill
	callq	bit
	movq	32(%rsp), %rsi          # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, 47(%rsp)           # 1-byte Spill
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=1
	movb	47(%rsp), %al           # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_31
	jmp	.LBB0_38
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=1
	movl	92(%rsp), %eax
	movaps	96(%rsp), %xmm0
	movaps	.LCPI0_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
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
	movl	%eax, 332(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 28(%rsp)          # 4-byte Spill
	movl	%edi, 24(%rsp)          # 4-byte Spill
	movl	%eax, 20(%rsp)          # 4-byte Spill
	je	.LBB0_37
# BB#33:                                #   in Loop: Header=BB0_28 Depth=1
	movl	24(%rsp), %eax          # 4-byte Reload
	cltd
	movl	28(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB0_35
# BB#34:                                #   in Loop: Header=BB0_28 Depth=1
	movl	20(%rsp), %eax          # 4-byte Reload
	movl	%eax, 332(%rsp)
	jmp	.LBB0_36
.LBB0_35:                               #   in Loop: Header=BB0_28 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 332(%rsp)
.LBB0_36:                               #   in Loop: Header=BB0_28 Depth=1
	jmp	.LBB0_37
.LBB0_37:                               #   in Loop: Header=BB0_28 Depth=1
	movl	332(%rsp), %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB0_28
.LBB0_38:
	movq	136(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	144(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB0_40
# BB#39:
	movq	136(%rsp), %rax
	movq	32(%rax), %rdi
	movq	144(%rsp), %rsi
	movl	92(%rsp), %edx
	movq	136(%rsp), %rcx
	callq	insertR
	movq	136(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB0_41
.LBB0_40:
	movq	136(%rsp), %rax
	movq	24(%rax), %rdi
	movq	144(%rsp), %rsi
	movl	92(%rsp), %edx
	movq	136(%rsp), %rcx
	callq	insertR
	movq	136(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_41:
	movq	144(%rsp), %rax
	movq	%rax, 152(%rsp)
.LBB0_42:
	movq	152(%rsp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	pat_insert, .Lfunc_end0-pat_insert

	.p2align	4, 0x90
	.type	bit,@function
bit:                                    # @bit
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$224, %rsp
	movl	%edi, 76(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rsi, %rax
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm0, 32(%rsp)
	movl	76(%rsp), %edi
	movd	%edi, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 80(%rsp)
	movl	$31, %ecx
	subl	%edi, %ecx
	movb	%cl, %dl
	movl	$1, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	movb	%dl, %cl
	movl	20(%rsp), %edi          # 4-byte Reload
	shll	%cl, %edi
	movslq	%edi, %rsi
	movq	%rsi, 152(%rsp)
	movd	%rsi, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 112(%rsp)
	movups	%xmm0, 96(%rsp)
	andq	%rsi, %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bit, .Lfunc_end1-bit

	.p2align	4, 0x90
	.type	insertR,@function
insertR:                                # @insertR
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	-52(%rbp), %edx
	jge	.LBB2_2
# BB#1:
	movq	-16(%rbp), %rax
	movsbl	17(%rax), %ecx
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %edx
	cmpl	%edx, %ecx
	jg	.LBB2_9
.LBB2_2:
	movl	-52(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 17(%rdx)
	movl	-52(%rbp), %edi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:
	movq	-24(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB2_5:
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	-52(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB2_7
# BB#6:
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB2_8:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_13
.LBB2_9:
	movq	-16(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB2_11
# BB#10:
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	insertR
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB2_12
.LBB2_11:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	insertR
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_13:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insertR, .Lfunc_end2-insertR

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	pat_remove
	.p2align	4, 0x90
	.type	pat_remove,@function
pat_remove:                             # @pat_remove
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$416, %rsp              # imm = 0x1A0
	movq	%rdi, 160(%rsp)
	movq	%rsi, 152(%rsp)
	cmpq	$0, 160(%rsp)
	je	.LBB3_3
# BB#1:
	movq	160(%rsp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_3
# BB#2:
	cmpq	$0, 112(%rsp)
	jne	.LBB3_4
.LBB3_3:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$0, 172(%rsp)
	jmp	.LBB3_60
.LBB3_4:
	movq	152(%rsp), %rax
	movq	%rax, 112(%rsp)
	movq	%rax, 144(%rsp)
	movq	%rax, 136(%rsp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	112(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 76(%rsp)
	movq	144(%rsp), %rax
	movq	%rax, 136(%rsp)
	movq	112(%rsp), %rax
	movq	%rax, 144(%rsp)
	movq	112(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	160(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_7
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movq	112(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	movq	112(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 112(%rsp)
# BB#9:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	76(%rsp), %eax
	movq	112(%rsp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_5
# BB#10:
	movq	112(%rsp), %rax
	movq	(%rax), %rax
	movq	160(%rsp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_12
# BB#11:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$0, 172(%rsp)
	jmp	.LBB3_60
.LBB3_12:
	movq	112(%rsp), %rax
	movzbl	16(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB3_40
# BB#13:
	movq	112(%rsp), %rax
	movsbl	17(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_15
# BB#14:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$0, 172(%rsp)
	jmp	.LBB3_60
.LBB3_15:
	movq	112(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	160(%rsp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_17
# BB#16:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$0, 172(%rsp)
	jmp	.LBB3_60
.LBB3_17:
	movq	144(%rsp), %rax
	movq	%rax, 128(%rsp)
	movq	%rax, 120(%rsp)
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	movq	128(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 76(%rsp)
	movq	128(%rsp), %rax
	movq	%rax, 120(%rsp)
	movq	128(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	144(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_20
# BB#19:                                #   in Loop: Header=BB3_18 Depth=1
	movq	128(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_18 Depth=1
	movq	128(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
.LBB3_21:                               #   in Loop: Header=BB3_18 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 128(%rsp)
# BB#22:                                #   in Loop: Header=BB3_18 Depth=1
	movl	76(%rsp), %eax
	movq	128(%rsp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_18
# BB#23:
	movq	120(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	144(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_25
# BB#24:
	movq	112(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_26
.LBB3_25:
	movq	112(%rsp), %rax
	movq	120(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_26:
	movq	136(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	160(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_31
# BB#27:
	movq	144(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	160(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_29
# BB#28:
	movq	144(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:
	movq	144(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
.LBB3_30:
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	136(%rsp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_35
.LBB3_31:
	movq	144(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	160(%rsp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_33
# BB#32:
	movq	144(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:
	movq	144(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
.LBB3_34:
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	136(%rsp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_35:
	movq	112(%rsp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_37
# BB#36:
	movq	112(%rsp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB3_37:
	movq	112(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	112(%rsp), %rax
	cmpq	144(%rsp), %rax
	je	.LBB3_39
# BB#38:
	movq	144(%rsp), %rax
	movq	(%rax), %rax
	movq	112(%rsp), %rcx
	movq	%rax, (%rcx)
	movq	144(%rsp), %rax
	movq	8(%rax), %rax
	movq	112(%rsp), %rcx
	movq	%rax, 8(%rcx)
	movq	144(%rsp), %rax
	movb	16(%rax), %dl
	movq	112(%rsp), %rax
	movb	%dl, 16(%rax)
.LBB3_39:
	movq	144(%rsp), %rdi
	callq	free
	movaps	.LCPI3_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, 176(%rsp)
	movl	$1, 172(%rsp)
	jmp	.LBB3_60
.LBB3_40:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	$0, 76(%rsp)
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	movl	76(%rsp), %eax
	movq	112(%rsp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_46
# BB#42:                                #   in Loop: Header=BB3_41 Depth=1
	movq	160(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	112(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	76(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_44
# BB#43:
	jmp	.LBB3_46
.LBB3_44:                               #   in Loop: Header=BB3_41 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               #   in Loop: Header=BB3_41 Depth=1
	movl	76(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 80(%rsp)
	movaps	.LCPI3_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 80(%rsp)
	addl	$1, %eax
	movl	%eax, 76(%rsp)
	jmp	.LBB3_41
.LBB3_46:
	movl	76(%rsp), %eax
	movq	112(%rsp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_48
# BB#47:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movl	$0, 172(%rsp)
	jmp	.LBB3_60
.LBB3_48:
	movq	112(%rsp), %rax
	movzbl	16(%rax), %ecx
	movl	%ecx, 332(%rsp)
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 304(%rsp)
	decl	%ecx
	movslq	%ecx, %rax
	movq	%rax, 248(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 208(%rsp)
	movups	%xmm0, 192(%rsp)
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 104(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 80(%rsp)
	movl	$0, 76(%rsp)
	movq	104(%rsp), %rax
	movq	%rax, 96(%rsp)
.LBB3_49:                               # =>This Inner Loop Header: Depth=1
	movl	76(%rsp), %eax
	movq	112(%rsp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_59
# BB#50:                                #   in Loop: Header=BB3_49 Depth=1
	movq	160(%rsp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	112(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	76(%rsp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_52
# BB#51:                                #   in Loop: Header=BB3_49 Depth=1
	movl	$16, %eax
	movl	%eax, %edx
	movq	112(%rsp), %rcx
	movq	8(%rcx), %rcx
	movslq	76(%rsp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movq	96(%rsp), %rsi
	movq	%rsi, %rdi
	addq	$16, %rdi
	movq	%rdi, 96(%rsp)
	movq	%rcx, %rdi
	callq	bcopy
.LBB3_52:                               #   in Loop: Header=BB3_49 Depth=1
	jmp	.LBB3_53
.LBB3_53:                               #   in Loop: Header=BB3_49 Depth=1
	movl	76(%rsp), %eax
	movaps	80(%rsp), %xmm0
	movaps	.LCPI3_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 80(%rsp)
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
	movl	%eax, 380(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 36(%rsp)          # 4-byte Spill
	movl	%edi, 32(%rsp)          # 4-byte Spill
	movl	%eax, 28(%rsp)          # 4-byte Spill
	je	.LBB3_58
# BB#54:                                #   in Loop: Header=BB3_49 Depth=1
	movl	32(%rsp), %eax          # 4-byte Reload
	cltd
	movl	36(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB3_56
# BB#55:                                #   in Loop: Header=BB3_49 Depth=1
	movl	28(%rsp), %eax          # 4-byte Reload
	movl	%eax, 380(%rsp)
	jmp	.LBB3_57
.LBB3_56:                               #   in Loop: Header=BB3_49 Depth=1
	movl	36(%rsp), %eax          # 4-byte Reload
	movl	%eax, 380(%rsp)
.LBB3_57:                               #   in Loop: Header=BB3_49 Depth=1
	jmp	.LBB3_58
.LBB3_58:                               #   in Loop: Header=BB3_49 Depth=1
	movl	380(%rsp), %eax
	movl	%eax, 76(%rsp)
	jmp	.LBB3_49
.LBB3_59:
	movq	112(%rsp), %rax
	movb	16(%rax), %cl
	addb	$-1, %cl
	movb	%cl, 16(%rax)
	movq	112(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	104(%rsp), %rax
	movq	112(%rsp), %rdi
	movq	%rax, 8(%rdi)
	movl	$1, 172(%rsp)
.LBB3_60:
	movl	172(%rsp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pat_remove, .Lfunc_end3-pat_remove

	.globl	pat_search
	.p2align	4, 0x90
	.type	pat_search,@function
pat_search:                             # @pat_search
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$160, %rsp
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rsi
	movq	%rsi, 64(%rsp)
	cmpq	$0, 64(%rsp)
	jne	.LBB4_2
# BB#1:
	movq	$0, 136(%rsp)
	jmp	.LBB4_14
.LBB4_2:
	jmp	.LBB4_3
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	88(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	64(%rsp), %rdx
	movq	8(%rdx), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	64(%rsp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, 44(%rsp)
	movq	64(%rsp), %rax
	movsbl	17(%rax), %edi
	movq	88(%rsp), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB4_7
# BB#6:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	64(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	64(%rsp), %rax
	movq	24(%rax), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 64(%rsp)
# BB#9:                                 #   in Loop: Header=BB4_3 Depth=1
	movl	44(%rsp), %eax
	movq	64(%rsp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB4_3
# BB#10:
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	88(%rsp), %rcx
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 112(%rsp)
	movaps	%xmm0, 96(%rsp)
	movq	64(%rsp), %rdx
	movq	8(%rdx), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_12
# BB#11:
	movq	64(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:
	movq	72(%rsp), %rax
	movq	%rax, 24(%rsp)          # 8-byte Spill
.LBB4_13:
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 136(%rsp)
.LBB4_14:
	movq	136(%rsp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pat_search, .Lfunc_end4-pat_search


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
