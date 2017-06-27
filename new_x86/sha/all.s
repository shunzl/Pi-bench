	.text
	.file	"all.bc"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$224, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB0_2
# BB#1:
	leaq	-208(%rbp), %rdi
	movq	stdin, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	callq	sha_stream
	leaq	-208(%rbp), %rdi
	callq	sha_print
	jmp	.LBB0_9
.LBB0_2:
	jmp	.LBB0_3
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-8(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -8(%rbp)
	cmpl	$0, %eax
	je	.LBB0_8
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rcx, -16(%rbp)
	movq	8(%rax), %rdi
	callq	fopen
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movabsq	$.L.str.1, %rdi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB0_7
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-208(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	sha_stream
	leaq	-208(%rbp), %rdi
	callq	sha_print
	movq	-24(%rbp), %rdi
	callq	fclose
	movl	%eax, -216(%rbp)        # 4-byte Spill
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=1
	jmp	.LBB0_3
.LBB0_8:
	jmp	.LBB0_9
.LBB0_9:
	xorl	%eax, %eax
	addq	$224, %rsp
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

	.globl	sha_update
	.p2align	4, 0x90
	.type	sha_update,@function
sha_update:                             # @sha_update
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	movslq	-20(%rbp), %rdi
	shlq	$3, %rdi
	addq	%rdi, %rsi
	movq	-8(%rbp), %rdi
	cmpq	40(%rdi), %rsi
	jae	.LBB2_2
# BB#1:
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 48(%rax)
.LBB2_2:
	movslq	-20(%rbp), %rax
	shlq	$3, %rax
	movq	-8(%rbp), %rcx
	addq	40(%rcx), %rax
	movq	%rax, 40(%rcx)
	movslq	-20(%rbp), %rax
	shrq	$29, %rax
	movq	-8(%rbp), %rcx
	addq	48(%rcx), %rax
	movq	%rax, 48(%rcx)
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$64, -20(%rbp)
	jl	.LBB2_5
# BB#4:                                 #   in Loop: Header=BB2_3 Depth=1
	movl	$64, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movq	-8(%rbp), %rdi
	callq	sha_transform
	movq	-16(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, -16(%rbp)
	movl	-20(%rbp), %eax
	subl	$64, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB2_3
.LBB2_5:
	movq	-8(%rbp), %rax
	addq	$56, %rax
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update

	.p2align	4, 0x90
	.type	sha_transform,@function
sha_transform:                          # @sha_transform
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$16, -12(%rbp)
	jge	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	56(%rax,%rcx,8), %rax
	movslq	-12(%rbp), %rcx
	movq	%rax, -704(%rbp,%rcx,8)
# BB#3:                                 #   in Loop: Header=BB3_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_1
.LBB3_4:
	movl	$16, -12(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$80, -12(%rbp)
	jge	.LBB3_8
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	-12(%rbp), %eax
	subl	$3, %eax
	movslq	%eax, %rcx
	movq	-704(%rbp,%rcx,8), %rcx
	movl	-12(%rbp), %eax
	subl	$8, %eax
	movslq	%eax, %rdx
	xorq	-704(%rbp,%rdx,8), %rcx
	movl	-12(%rbp), %eax
	subl	$14, %eax
	movslq	%eax, %rdx
	xorq	-704(%rbp,%rdx,8), %rcx
	movl	-12(%rbp), %eax
	subl	$16, %eax
	movslq	%eax, %rdx
	xorq	-704(%rbp,%rdx,8), %rcx
	movslq	-12(%rbp), %rdx
	movq	%rcx, -704(%rbp,%rdx,8)
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_5
.LBB3_8:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$0, -12(%rbp)
.LBB3_9:                                # =>This Inner Loop Header: Depth=1
	cmpl	$20, -12(%rbp)
	jge	.LBB3_12
# BB#10:                                #   in Loop: Header=BB3_9 Depth=1
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	-40(%rbp), %rcx
	andq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	xorq	$-1, %rdx
	andq	-56(%rbp), %rdx
	orq	%rdx, %rcx
	addq	%rcx, %rax
	addq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	-704(%rbp,%rcx,8), %rax
	addq	$1518500249, %rax       # imm = 0x5A827999
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	shlq	$30, %rax
	movq	-40(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#11:                                #   in Loop: Header=BB3_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_9
.LBB3_12:
	movl	$20, -12(%rbp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$40, -12(%rbp)
	jge	.LBB3_16
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	-40(%rbp), %rcx
	xorq	-48(%rbp), %rcx
	xorq	-56(%rbp), %rcx
	addq	%rcx, %rax
	addq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	-704(%rbp,%rcx,8), %rax
	addq	$1859775393, %rax       # imm = 0x6ED9EBA1
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	shlq	$30, %rax
	movq	-40(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#15:                                #   in Loop: Header=BB3_13 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_13
.LBB3_16:
	movl	$40, -12(%rbp)
.LBB3_17:                               # =>This Inner Loop Header: Depth=1
	cmpl	$60, -12(%rbp)
	jge	.LBB3_20
# BB#18:                                #   in Loop: Header=BB3_17 Depth=1
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	-40(%rbp), %rcx
	andq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	andq	-56(%rbp), %rdx
	orq	%rdx, %rcx
	movq	-48(%rbp), %rdx
	andq	-56(%rbp), %rdx
	orq	%rdx, %rcx
	addq	%rcx, %rax
	addq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	-704(%rbp,%rcx,8), %rax
	movabsq	$2400959708, %rcx       # imm = 0x8F1BBCDC
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	shlq	$30, %rax
	movq	-40(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#19:                                #   in Loop: Header=BB3_17 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_17
.LBB3_20:
	movl	$60, -12(%rbp)
.LBB3_21:                               # =>This Inner Loop Header: Depth=1
	cmpl	$80, -12(%rbp)
	jge	.LBB3_24
# BB#22:                                #   in Loop: Header=BB3_21 Depth=1
	movq	-32(%rbp), %rax
	shlq	$5, %rax
	movq	-32(%rbp), %rcx
	shrq	$27, %rcx
	orq	%rcx, %rax
	movq	-40(%rbp), %rcx
	xorq	-48(%rbp), %rcx
	xorq	-56(%rbp), %rcx
	addq	%rcx, %rax
	addq	-64(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	-704(%rbp,%rcx,8), %rax
	movabsq	$3395469782, %rcx       # imm = 0xCA62C1D6
	addq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	shlq	$30, %rax
	movq	-40(%rbp), %rcx
	shrq	$2, %rcx
	orq	%rcx, %rax
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#23:                                #   in Loop: Header=BB3_21 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB3_21
.LBB3_24:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	8(%rcx), %rax
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	16(%rcx), %rax
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	24(%rcx), %rax
	movq	%rax, 24(%rcx)
	movq	-64(%rbp), %rax
	movq	-8(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform

	.globl	sha_final
	.p2align	4, 0x90
	.type	sha_final,@function
sha_final:                              # @sha_final
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	40(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	48(%rdi), %rdi
	movq	%rdi, -32(%rbp)
	movq	-24(%rbp), %rdi
	shrq	$3, %rdi
	andq	$63, %rdi
	movl	%edi, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -12(%rbp)
	movslq	%eax, %rdx
	movb	$-128, 56(%rdi,%rdx)
	cmpl	$56, -12(%rbp)
	jle	.LBB4_2
# BB#1:
	xorl	%esi, %esi
	movl	$64, %eax
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movslq	-12(%rbp), %rdx
	addq	%rdx, %rcx
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	callq	memset
	movq	-8(%rbp), %rdi
	callq	sha_transform
	xorl	%esi, %esi
	movl	$56, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movq	%rcx, %rdi
	callq	memset
	jmp	.LBB4_3
.LBB4_2:
	xorl	%esi, %esi
	movl	$56, %eax
	movq	-8(%rbp), %rcx
	addq	$56, %rcx
	movslq	-12(%rbp), %rdx
	addq	%rdx, %rcx
	subl	-12(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rcx, %rdi
	callq	memset
.LBB4_3:
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 168(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-8(%rbp), %rdi
	callq	sha_transform
	addq	$32, %rsp
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
	subq	$8224, %rsp             # imm = 0x2020
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	sha_init
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	%eax, %esi
	movl	$8192, %eax             # imm = 0x2000
	movl	%eax, %edx
	leaq	-8224(%rbp), %rdi
	movq	-16(%rbp), %rcx
	callq	fread
	movl	%eax, %r8d
	movl	%r8d, -20(%rbp)
	cmpl	$0, %r8d
	jle	.LBB5_3
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	leaq	-8224(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	sha_update
	jmp	.LBB5_1
.LBB5_3:
	movq	-8(%rbp), %rdi
	callq	sha_final
	addq	$8224, %rsp             # imm = 0x2020
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
