	.text
	.file	"all.bc"
	.globl	alloc_bit_array
	.p2align	4, 0x90
	.type	alloc_bit_array,@function
alloc_bit_array:                        # @alloc_bit_array
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	addq	$8, %rdi
	subq	$1, %rdi
	shrq	$3, %rdi
	callq	calloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
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
	movl	$1, %eax
	movl	$8, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %eax
	movl	-12(%rbp), %esi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	movl	-16(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movl	-20(%rbp), %esi         # 4-byte Reload
	andl	%edx, %esi
	cmpl	$0, %esi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	movl	%edx, %eax
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
	movl	$8, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-20(%rbp), %esi         # 4-byte Reload
	idivl	%esi
	movq	-8(%rbp), %rdi
	movslq	%eax, %rcx
	addq	%rcx, %rdi
	movq	%rdi, -8(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:
	movl	$1, %eax
	movl	$8, %ecx
	movl	-12(%rbp), %edx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	movl	-24(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edi
	orl	%edx, %edi
	movb	%dil, %cl
	movb	%cl, (%rsi)
	jmp	.LBB2_3
.LBB2_2:
	movl	$1, %eax
	movl	$8, %ecx
	movl	-12(%rbp), %edx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	movl	-28(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	xorl	$-1, %edx
	movq	-8(%rbp), %rsi
	movsbl	(%rsi), %edi
	andl	%edx, %edi
	movb	%dil, %cl
	movb	%cl, (%rsi)
.LBB2_3:
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
	movl	$1, %eax
	movl	$8, %ecx
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%esi, %eax
	cltd
	idivl	%ecx
	movq	-8(%rbp), %rdi
	movslq	%eax, %r8
	addq	%r8, %rdi
	movq	%rdi, -8(%rbp)
	movl	-12(%rbp), %eax
	cltd
	idivl	%ecx
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	movl	-16(%rbp), %edx         # 4-byte Reload
	shll	%cl, %edx
	movq	-8(%rbp), %rdi
	movsbl	(%rdi), %esi
	xorl	%edx, %esi
	movb	%sil, %cl
	movb	%cl, (%rdi)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit

	.globl	bit_count
	.p2align	4, 0x90
	.type	bit_count,@function
bit_count:                              # @bit_count
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB4_5
# BB#1:
	jmp	.LBB4_2
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
# BB#3:                                 #   in Loop: Header=BB4_2 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	-8(%rbp), %rsi
	subq	$1, %rsi
	andq	%rsi, %rdx
	movq	%rdx, -8(%rbp)
	cmpq	%rdx, %rcx
	jne	.LBB4_2
# BB#4:
	jmp	.LBB4_5
.LBB4_5:
	movl	-12(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bit_count, .Lfunc_end4-bit_count

	.globl	bitcount
	.p2align	4, 0x90
	.type	bitcount,@function
bitcount:                               # @bitcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movabsq	$2863311530, %rdi       # imm = 0xAAAAAAAA
	andq	-8(%rbp), %rdi
	sarq	$1, %rdi
	movq	-8(%rbp), %rax
	andq	$1431655765, %rax       # imm = 0x55555555
	addq	%rax, %rdi
	movq	%rdi, -8(%rbp)
	movabsq	$3435973836, %rax       # imm = 0xCCCCCCCC
	andq	-8(%rbp), %rax
	sarq	$2, %rax
	movq	-8(%rbp), %rdi
	andq	$858993459, %rdi        # imm = 0x33333333
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4042322160, %rax       # imm = 0xF0F0F0F0
	andq	-8(%rbp), %rax
	sarq	$4, %rax
	movq	-8(%rbp), %rdi
	andq	$252645135, %rdi        # imm = 0xF0F0F0F
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4278255360, %rax       # imm = 0xFF00FF00
	andq	-8(%rbp), %rax
	sarq	$8, %rax
	movq	-8(%rbp), %rdi
	andq	$16711935, %rdi         # imm = 0xFF00FF
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movabsq	$4294901760, %rax       # imm = 0xFFFF0000
	andq	-8(%rbp), %rax
	sarq	$16, %rax
	movq	-8(%rbp), %rdi
	andq	$65535, %rdi            # imm = 0xFFFF
	addq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	%eax, %ecx
	movl	%ecx, %eax
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$15, %rdi
	movl	%edi, %eax
	movslq	%eax, %rdi
	movsbl	bits(,%rdi), %eax
	movq	-8(%rbp), %rdi
	andq	$240, %rdi
	shrq	$4, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$3840, %rdi             # imm = 0xF00
	shrq	$8, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$61440, %rdi            # imm = 0xF000
	shrq	$12, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$983040, %rdi           # imm = 0xF0000
	shrq	$16, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$15728640, %rdi         # imm = 0xF00000
	shrq	$20, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movq	-8(%rbp), %rdi
	andq	$251658240, %rdi        # imm = 0xF000000
	shrq	$24, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movabsq	$4026531840, %rdi       # imm = 0xF0000000
	andq	-8(%rbp), %rdi
	shrq	$28, %rdi
	movl	%edi, %ecx
	movslq	%ecx, %rdi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
	movzbl	-16(%rbp), %eax
	movl	%eax, %edi
	movsbl	bits(,%rdi), %eax
	movzbl	-15(%rbp), %ecx
	movl	%ecx, %edi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movzbl	-13(%rbp), %ecx
	movl	%ecx, %edi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
	movzbl	-14(%rbp), %ecx
	movl	%ecx, %edi
	movsbl	bits(,%rdi), %ecx
	addl	%ecx, %eax
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
	leaq	-8(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movsbl	bits(,%rax), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movsbl	bits(,%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	addq	$1, %rdi
	movq	%rdi, -16(%rbp)
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movsbl	bits(,%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ecx
	movl	%ecx, %eax
	movsbl	bits(,%rax), %ecx
	addl	-20(%rbp), %ecx
	movl	%ecx, -20(%rbp)
	movl	-20(%rbp), %eax
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	andq	$15, %rdi
	movl	%edi, %eax
	movslq	%eax, %rdi
	movsbl	bits.1(,%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$4, %rdi
	movq	%rdi, -8(%rbp)
	cmpq	%rdi, %rcx
	je	.LBB9_2
# BB#1:
	movq	-8(%rbp), %rdi
	callq	ntbl_bitcnt
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB9_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movsbl	-8(%rbp), %eax
	andl	$255, %eax
	movslq	%eax, %rdi
	movsbl	bits.1(,%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	sarq	$8, %rdi
	movq	%rdi, -8(%rbp)
	cmpq	%rdi, %rcx
	je	.LBB10_2
# BB#1:
	movq	-8(%rbp), %rdi
	callq	btbl_bitcnt
	addl	-12(%rbp), %eax
	movl	%eax, -12(%rbp)
.LBB10_2:
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	btbl_bitcnt, .Lfunc_end10-btbl_bitcnt

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI11_0:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
.LCPI11_1:
	.quad	4696837146684686336     # double 1.0E+6
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	xorps	%xmm0, %xmm0
	movsd	.LCPI11_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	cmpl	$2, -8(%rbp)
	jge	.LBB11_2
# BB#1:
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -104(%rbp)        # 4-byte Spill
	callq	exit
.LBB11_2:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movabsq	$.L.str.8, %rdi
	movl	%eax, -100(%rbp)
	callq	puts
	movl	$0, -60(%rbp)
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB11_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	cmpl	$7, -60(%rbp)
	jge	.LBB11_14
# BB#4:                                 #   in Loop: Header=BB11_3 Depth=1
	callq	clock
	movq	%rax, -24(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	callq	rand
	movslq	%eax, %rcx
	movq	%rcx, -96(%rbp)
.LBB11_5:                               #   Parent Loop BB11_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-80(%rbp), %rax
	movslq	-100(%rbp), %rcx
	cmpq	%rcx, %rax
	jge	.LBB11_8
# BB#6:                                 #   in Loop: Header=BB11_5 Depth=2
	movslq	-60(%rbp), %rax
	movq	main.pBitCntFunc(,%rax,8), %rax
	movq	-96(%rbp), %rdi
	callq	*%rax
	movslq	%eax, %rdi
	addq	-88(%rbp), %rdi
	movq	%rdi, -88(%rbp)
# BB#7:                                 #   in Loop: Header=BB11_5 Depth=2
	movq	-80(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	addq	$13, %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB11_5
.LBB11_8:                               #   in Loop: Header=BB11_3 Depth=1
	callq	clock
	movsd	.LCPI11_1(%rip), %xmm0  # xmm0 = mem[0],zero
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	cvtsi2sdq	%rax, %xmm1
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB11_10
# BB#9:                                 #   in Loop: Header=BB11_3 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -64(%rbp)
.LBB11_10:                              #   in Loop: Header=BB11_3 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-56(%rbp), %xmm0
	jbe	.LBB11_12
# BB#11:                                #   in Loop: Header=BB11_3 Depth=1
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	movl	-60(%rbp), %eax
	movl	%eax, -68(%rbp)
.LBB11_12:                              #   in Loop: Header=BB11_3 Depth=1
	movabsq	$.L.str.9, %rdi
	movslq	-60(%rbp), %rax
	movq	main.text(,%rax,8), %rsi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-88(%rbp), %rdx
	movb	$1, %al
	callq	printf
	movl	%eax, -112(%rbp)        # 4-byte Spill
# BB#13:                                #   in Loop: Header=BB11_3 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB11_3
.LBB11_14:
	movabsq	$.L.str.10, %rdi
	movslq	-64(%rbp), %rax
	movq	main.text(,%rax,8), %rsi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.11, %rdi
	movslq	-68(%rbp), %rsi
	movq	main.text(,%rsi,8), %rsi
	movl	%eax, -116(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -120(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	main, .Lfunc_end11-main

	.p2align	4, 0x90
	.type	bit_shifter,@function
bit_shifter:                            # @bit_shifter
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB12_3
# BB#2:                                 #   in Loop: Header=BB12_1 Depth=1
	movslq	-12(%rbp), %rax
	cmpq	$64, %rax
	setb	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB12_4
	jmp	.LBB12_6
.LBB12_4:                               #   in Loop: Header=BB12_1 Depth=1
	movq	-8(%rbp), %rax
	andq	$1, %rax
	movl	%eax, %ecx
	addl	-16(%rbp), %ecx
	movl	%ecx, -16(%rbp)
# BB#5:                                 #   in Loop: Header=BB12_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rcx
	sarq	$1, %rcx
	movq	%rcx, -8(%rbp)
	jmp	.LBB12_1
.LBB12_6:
	movl	-16(%rbp), %eax
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movsbl	9(%rdi), %ecx
	cmpl	%ecx, %eax
	jne	.LBB14_2
# BB#1:
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	callq	fgetc
	movb	%al, %cl
	movq	-8(%rbp), %rdi
	movb	%cl, 8(%rdi)
	movq	-8(%rbp), %rdi
	movb	$8, 9(%rdi)
.LBB14_2:
	movl	$1, %eax
	movq	-8(%rbp), %rcx
	movb	9(%rcx), %dl
	addb	$-1, %dl
	movb	%dl, 9(%rcx)
	movq	-8(%rbp), %rcx
	movsbl	8(%rcx), %esi
	movq	-8(%rbp), %rcx
	movsbl	9(%rcx), %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	andl	%eax, %esi
	cmpl	$0, %esi
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
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
	subq	$32, %rsp
	movl	$8, %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movsbl	11(%rsi), %edi
	cmpl	%edi, %eax
	jne	.LBB15_2
# BB#1:
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %edi
	movq	-16(%rbp), %rax
	movq	(%rax), %rsi
	callq	fputc
	movq	-16(%rbp), %rsi
	movb	$0, 11(%rsi)
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB15_2:
	movq	-16(%rbp), %rax
	movb	11(%rax), %cl
	addb	$1, %cl
	movb	%cl, 11(%rax)
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %edx
	shll	$1, %edx
	movb	%dl, %cl
	movb	%cl, 10(%rax)
	movl	-4(%rbp), %edx
	andl	$1, %edx
	movq	-16(%rbp), %rax
	movsbl	10(%rax), %esi
	orl	%edx, %esi
	movb	%sil, %cl
	movb	%cl, 10(%rax)
	addq	$32, %rsp
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

	.globl	bitstring
	.p2align	4, 0x90
	.type	bitstring,@function
bitstring:                              # @bitstring
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %eax
	xorl	%r8d, %r8d
	movl	$4, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %ecx
	movl	-20(%rbp), %edx
	movl	-20(%rbp), %r10d
	sarl	$2, %r10d
	addl	%r10d, %edx
	movl	-20(%rbp), %r10d
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %eax
	movl	%edx, -40(%rbp)         # 4-byte Spill
	cltd
	idivl	%r9d
	cmpl	$0, %edx
	movl	-36(%rbp), %edx         # 4-byte Reload
	cmovnel	%r8d, %edx
	movl	-40(%rbp), %r8d         # 4-byte Reload
	subl	%edx, %r8d
	subl	%r8d, %ecx
	movl	%ecx, -32(%rbp)
	movl	$0, -28(%rbp)
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	.LBB17_4
# BB#2:                                 #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$32, (%rax)
# BB#3:                                 #   in Loop: Header=BB17_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB17_1
.LBB17_4:
	jmp	.LBB17_5
.LBB17_5:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -20(%rbp)
	cmpl	$0, %eax
	jl	.LBB17_10
# BB#6:                                 #   in Loop: Header=BB17_5 Depth=1
	movl	$4, %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	movl	%edx, %esi
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rcx
                                        # kill: %CL<def> %RCX<kill>
	movq	-48(%rbp), %rsi         # 8-byte Reload
	sarq	%cl, %rsi
	andq	$1, %rsi
	addq	$48, %rsi
	movb	%sil, %cl
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	addq	$1, %rdi
	movq	%rdi, -8(%rbp)
	movb	%cl, (%rsi)
	movl	-20(%rbp), %edx
	movl	%eax, -52(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	cltd
	movl	-52(%rbp), %r8d         # 4-byte Reload
	idivl	%r8d
	cmpl	$0, %edx
	jne	.LBB17_9
# BB#7:                                 #   in Loop: Header=BB17_5 Depth=1
	cmpl	$0, -20(%rbp)
	je	.LBB17_9
# BB#8:                                 #   in Loop: Header=BB17_5 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movb	$32, (%rax)
.LBB17_9:                               #   in Loop: Header=BB17_5 Depth=1
	jmp	.LBB17_5
.LBB17_10:
	movq	-8(%rbp), %rax
	movb	$0, (%rax)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	bitstring, .Lfunc_end17-bitstring

	.globl	bstr_i
	.p2align	4, 0x90
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -16(%rbp)
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpq	$0, -8(%rbp)
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB18_4
# BB#2:                                 #   in Loop: Header=BB18_1 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movsbl	(%rdx), %eax
	cmpl	$0, %eax
	movb	%cl, -17(%rbp)          # 1-byte Spill
	je	.LBB18_4
# BB#3:                                 #   in Loop: Header=BB18_1 Depth=1
	movabsq	$.L.str.12, %rdi
	movq	-8(%rbp), %rax
	movsbl	(%rax), %esi
	callq	strchr
	cmpq	$0, %rax
	setne	%cl
	movb	%cl, -17(%rbp)          # 1-byte Spill
.LBB18_4:                               #   in Loop: Header=BB18_1 Depth=1
	movb	-17(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB18_5
	jmp	.LBB18_6
.LBB18_5:                               #   in Loop: Header=BB18_1 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -8(%rbp)
	movsbl	(%rax), %edx
	subl	$48, %edx
	movl	%edx, -12(%rbp)
	movl	-16(%rbp), %edx
	shll	$1, %edx
	movl	%edx, -16(%rbp)
	movl	-12(%rbp), %edx
	andl	$1, %edx
	orl	-16(%rbp), %edx
	movl	%edx, -16(%rbp)
	jmp	.LBB18_1
.LBB18_6:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
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
