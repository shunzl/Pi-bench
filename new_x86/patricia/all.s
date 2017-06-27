	.text
	.file	"all.bc"
	.globl	pat_insert
	.p2align	4, 0x90
	.type	pat_insert,@function
pat_insert:                             # @pat_insert
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB0_3
# BB#1:
	cmpq	$0, -16(%rbp)
	je	.LBB0_3
# BB#2:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB0_4
.LBB0_3:
	movq	$0, -8(%rbp)
	jmp	.LBB0_37
.LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	andq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, -52(%rbp)
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB0_7
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB0_8:                                #   in Loop: Header=BB0_5 Depth=1
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
# BB#9:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB0_5
# BB#10:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_27
# BB#11:
	movl	$0, -52(%rbp)
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB0_17
# BB#13:                                #   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB0_15
# BB#14:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_37
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               #   in Loop: Header=BB0_12 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_12
.LBB0_17:
	movq	-32(%rbp), %rax
	movzbl	16(%rax), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -52(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB0_24
# BB#19:                                #   in Loop: Header=BB0_18 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-52(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jbe	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_18 Depth=1
	movl	$16, %eax
	movl	%eax, %edx
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-52(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	bcopy
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_22
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	bcopy
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	%rcx, (%rdx)
	movl	$1, -56(%rbp)
.LBB0_22:                               #   in Loop: Header=BB0_18 Depth=1
	jmp	.LBB0_23
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	movq	-48(%rbp), %rax
	addq	$16, %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB0_18
.LBB0_24:
	cmpl	$0, -56(%rbp)
	jne	.LBB0_26
# BB#25:
	movl	$16, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	movq	-48(%rbp), %rsi
	movq	%rcx, %rdi
	callq	bcopy
.LBB0_26:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movq	$0, -16(%rbp)
	movq	-32(%rbp), %rax
	movb	16(%rax), %cl
	addb	$1, %cl
	movb	%cl, 16(%rax)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB0_37
.LBB0_27:
	movl	$1, -52(%rbp)
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$32, -52(%rbp)
	movb	%cl, -65(%rbp)          # 1-byte Spill
	jge	.LBB0_30
# BB#29:                                #   in Loop: Header=BB0_28 Depth=1
	movl	-52(%rbp), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	movl	-52(%rbp), %edi
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	bit
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	movb	%cl, -65(%rbp)          # 1-byte Spill
.LBB0_30:                               #   in Loop: Header=BB0_28 Depth=1
	movb	-65(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB0_31
	jmp	.LBB0_33
.LBB0_31:                               #   in Loop: Header=BB0_28 Depth=1
	jmp	.LBB0_32
.LBB0_32:                               #   in Loop: Header=BB0_28 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_28
.LBB0_33:
	movq	-24(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB0_35
# BB#34:
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	insertR
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB0_36
.LBB0_35:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rcx
	callq	insertR
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB0_36:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_37:
	movq	-8(%rbp), %rax
	addq	$80, %rsp
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
	movl	$1, %eax
	movl	$31, %ecx
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subl	-4(%rbp), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	movslq	%eax, %rdx
	andq	%rdx, %rsi
	movq	%rsi, %rax
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-16(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	-28(%rbp), %edx
	jge	.LBB2_2
# BB#1:
	movq	-16(%rbp), %rax
	movsbl	17(%rax), %ecx
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edx
	cmpl	%edx, %ecx
	jg	.LBB2_9
.LBB2_2:
	movl	-28(%rbp), %eax
	movb	%al, %cl
	movq	-24(%rbp), %rdx
	movb	%cl, 17(%rdx)
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB2_4
# BB#3:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
.LBB2_4:
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB2_5:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	-28(%rbp), %edi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB2_7
# BB#6:
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB2_8
.LBB2_7:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB2_8:
	movq	-56(%rbp), %rax         # 8-byte Reload
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
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	insertR
	movq	-16(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB2_12
.LBB2_11:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rcx
	callq	insertR
	movq	-16(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB2_12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_13:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insertR, .Lfunc_end2-insertR

	.globl	pat_remove
	.p2align	4, 0x90
	.type	pat_remove,@function
pat_remove:                             # @pat_remove
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB3_3
# BB#1:
	movq	-16(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_3
# BB#2:
	cmpq	$0, -64(%rbp)
	jne	.LBB3_4
.LBB3_3:
	movl	$0, -4(%rbp)
	jmp	.LBB3_55
.LBB3_4:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rax, -32(%rbp)
	movq	%rax, -40(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_7
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movq	-64(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	movq	-96(%rbp), %rax         # 8-byte Reload
	movq	%rax, -64(%rbp)
# BB#9:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_5
# BB#10:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_12
# BB#11:
	movl	$0, -4(%rbp)
	jmp	.LBB3_55
.LBB3_12:
	movq	-64(%rbp), %rax
	movzbl	16(%rax), %ecx
	cmpl	$1, %ecx
	jne	.LBB3_40
# BB#13:
	movq	-64(%rbp), %rax
	movsbl	17(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB3_15
# BB#14:
	movl	$0, -4(%rbp)
	jmp	.LBB3_55
.LBB3_15:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_17
# BB#16:
	movl	$0, -4(%rbp)
	jmp	.LBB3_55
.LBB3_17:
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	%rax, -56(%rbp)
.LBB3_18:                               # =>This Inner Loop Header: Depth=1
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, -84(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_20
# BB#19:                                #   in Loop: Header=BB3_18 Depth=1
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB3_21
.LBB3_20:                               #   in Loop: Header=BB3_18 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB3_21:                               #   in Loop: Header=BB3_18 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -48(%rbp)
# BB#22:                                #   in Loop: Header=BB3_18 Depth=1
	movl	-84(%rbp), %eax
	movq	-48(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_18
# BB#23:
	movq	-56(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-32(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_25
# BB#24:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_26
.LBB3_25:
	movq	-64(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_26:
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_31
# BB#27:
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_29
# BB#28:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	jmp	.LBB3_30
.LBB3_29:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB3_30:
	movq	-112(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, 32(%rcx)
	jmp	.LBB3_35
.LBB3_31:
	movq	-32(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB3_33
# BB#32:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB3_34
.LBB3_33:
	movq	-32(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB3_34:
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB3_35:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	$0, 8(%rax)
	je	.LBB3_37
# BB#36:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	callq	free
.LBB3_37:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-64(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB3_39
# BB#38:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-32(%rbp), %rax
	movb	16(%rax), %dl
	movq	-64(%rbp), %rax
	movb	%dl, 16(%rax)
.LBB3_39:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	free
	movl	$1, -4(%rbp)
	jmp	.LBB3_55
.LBB3_40:
	movl	$0, -84(%rbp)
.LBB3_41:                               # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_46
# BB#42:                                #   in Loop: Header=BB3_41 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	jne	.LBB3_44
# BB#43:
	jmp	.LBB3_46
.LBB3_44:                               #   in Loop: Header=BB3_41 Depth=1
	jmp	.LBB3_45
.LBB3_45:                               #   in Loop: Header=BB3_41 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_41
.LBB3_46:
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB3_48
# BB#47:
	movl	$0, -4(%rbp)
	jmp	.LBB3_55
.LBB3_48:
	movq	-64(%rbp), %rax
	movzbl	16(%rax), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rax
	shlq	$4, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -80(%rbp)
.LBB3_49:                               # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	16(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB3_54
# BB#50:                                #   in Loop: Header=BB3_49 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-84(%rbp), %rdx
	shlq	$4, %rdx
	addq	%rdx, %rcx
	cmpq	(%rcx), %rax
	je	.LBB3_52
# BB#51:                                #   in Loop: Header=BB3_49 Depth=1
	movl	$16, %eax
	movl	%eax, %edx
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movslq	-84(%rbp), %rsi
	shlq	$4, %rsi
	addq	%rsi, %rcx
	movq	-80(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$16, %rdi
	movq	%rdi, -80(%rbp)
	movq	%rcx, %rdi
	callq	bcopy
.LBB3_52:                               #   in Loop: Header=BB3_49 Depth=1
	jmp	.LBB3_53
.LBB3_53:                               #   in Loop: Header=BB3_49 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB3_49
.LBB3_54:
	movq	-64(%rbp), %rax
	movb	16(%rax), %cl
	addb	$-1, %cl
	movb	%cl, 16(%rax)
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	free
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movl	$1, -4(%rbp)
.LBB3_55:
	movl	-4(%rbp), %eax
	addq	$128, %rsp
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	.LBB4_2
# BB#1:
	movq	$0, -8(%rbp)
	jmp	.LBB4_14
.LBB4_2:
	jmp	.LBB4_3
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB4_5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movsbl	17(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	bit
	cmpq	$0, %rax
	je	.LBB4_7
# BB#6:                                 #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB4_8
.LBB4_7:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -40(%rbp)
# BB#9:                                 #   in Loop: Header=BB4_3 Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	movsbl	17(%rcx), %edx
	cmpl	%edx, %eax
	jl	.LBB4_3
# BB#10:
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	andq	(%rdx), %rcx
	cmpq	%rcx, %rax
	jne	.LBB4_12
# BB#11:
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB4_13
.LBB4_12:
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB4_13:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB4_14:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	pat_search, .Lfunc_end4-pat_search


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
