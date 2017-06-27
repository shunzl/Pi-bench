	.text
	.file	"all.bc"
	.globl	IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -8(%rbp)
	cmpl	$2, -8(%rbp)
	jae	.LBB0_2
# BB#1:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-8(%rbp), %eax
	movl	-8(%rbp), %ecx
	subl	$1, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:
	movl	$0, -4(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movl	$1, -4(%rbp)
.LBB0_5:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	IsPowerOfTwo, .Lfunc_end0-IsPowerOfTwo

	.globl	NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	$2, -4(%rbp)
	jae	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	exit
.LBB1_2:
	movl	$0, -8(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	movl	-16(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB1_5
# BB#4:
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.LBB1_3
.Lfunc_end1:
	.size	NumberOfBitsNeeded, .Lfunc_end1-NumberOfBitsNeeded

	.globl	ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -12(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	.LBB2_4
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-16(%rbp), %eax
	shll	$1, %eax
	movl	-4(%rbp), %ecx
	andl	$1, %ecx
	orl	%ecx, %eax
	movl	%eax, -16(%rbp)
	movl	-4(%rbp), %eax
	shrl	$1, %eax
	movl	%eax, -4(%rbp)
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_1
.LBB2_4:
	movl	-16(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ReverseBits, .Lfunc_end2-ReverseBits

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.globl	Index_to_frequency
	.p2align	4, 0x90
	.type	Index_to_frequency,@function
Index_to_frequency:                     # @Index_to_frequency
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	-16(%rbp), %esi
	cmpl	-12(%rbp), %esi
	jb	.LBB3_2
# BB#1:
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_2:
	movl	-16(%rbp), %eax
	movl	-12(%rbp), %ecx
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	ja	.LBB3_4
# BB#3:
	movl	-16(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	jmp	.LBB3_6
.LBB3_4:
	jmp	.LBB3_5
.LBB3_5:
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movl	%ecx, %eax
	movl	-16(%rbp), %edx
	subl	%edx, %eax
	movl	%eax, %esi
	cvtsi2sdq	%rsi, %xmm0
	movapd	.LCPI3_0(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00]
	xorpd	%xmm1, %xmm0
	cvtsi2sdq	%rcx, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.LBB3_6:
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Index_to_frequency, .Lfunc_end3-Index_to_frequency

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_1:
	.quad	4611686018427387904     # double 2
.LCPI4_2:
	.quad	-4611686018427387904    # double -2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$256, %rsp              # imm = 0x100
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movsd	%xmm0, -80(%rbp)
	movl	-4(%rbp), %edi
	callq	IsPowerOfTwo
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movl	-4(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	callq	exit
.LBB4_2:
	cmpl	$0, -8(%rbp)
	je	.LBB4_4
# BB#3:
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -80(%rbp)
.LBB4_4:
	movabsq	$.L.str.1.2, %rsi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	CheckPointer
	movabsq	$.L.str.2, %rsi
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	callq	CheckPointer
	movabsq	$.L.str.3, %rsi
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	callq	CheckPointer
	movl	-4(%rbp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, -44(%rbp)
	movl	$0, -48(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jae	.LBB4_11
# BB#6:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-48(%rbp), %edi
	movl	-44(%rbp), %esi
	callq	ReverseBits
	movl	%eax, -52(%rbp)
	movq	-16(%rbp), %rcx
	movl	-48(%rbp), %eax
	movl	%eax, %edx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	cmpq	$0, -24(%rbp)
	jne	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	movq	-24(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movsd	%xmm0, -240(%rbp)       # 8-byte Spill
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	movsd	-240(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %edx
	movss	%xmm0, (%rax,%rdx,4)
# BB#10:                                #   in Loop: Header=BB4_5 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_5
.LBB4_11:
	movl	$1, -68(%rbp)
	movl	$2, -64(%rbp)
.LBB4_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_16 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	ja	.LBB4_23
# BB#13:                                #   in Loop: Header=BB4_12 Depth=1
	movsd	.LCPI4_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI4_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	-80(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	-64(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm3
	divsd	%xmm3, %xmm2
	movsd	%xmm2, -104(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-104(%rbp), %xmm2
	movsd	%xmm0, -248(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	callq	sin
	movsd	%xmm0, -112(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	callq	sin
	movsd	%xmm0, -120(%rbp)
	movsd	-256(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-104(%rbp), %xmm0
	callq	cos
	movsd	%xmm0, -128(%rbp)
	movsd	-104(%rbp), %xmm0       # xmm0 = mem[0],zero
	movd	%xmm0, %rcx
	movabsq	$-9223372036854775808, %rdx # imm = 0x8000000000000000
	xorq	%rdx, %rcx
	movd	%rcx, %xmm0
	callq	cos
	movsd	%xmm0, -136(%rbp)
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	-136(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movl	$0, -48(%rbp)
.LBB4_14:                               #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_16 Depth 3
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jae	.LBB4_21
# BB#15:                                #   in Loop: Header=BB4_14 Depth=2
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-112(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -52(%rbp)
	movl	$0, -60(%rbp)
.LBB4_16:                               #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jae	.LBB4_19
# BB#17:                                #   in Loop: Header=BB4_16 Depth=3
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-168(%rbp), %xmm0
	subsd	-160(%rbp), %xmm0
	movsd	%xmm0, -176(%rbp)
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -160(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -168(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	mulsd	-200(%rbp), %xmm0
	subsd	-192(%rbp), %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	movsd	-208(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -200(%rbp)
	movl	-52(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -56(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-208(%rbp), %xmm1       # xmm1 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm0
	subsd	-88(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-32(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm0
	subsd	-96(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-40(%rbp), %rcx
	movl	-56(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movsd	-96(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-40(%rbp), %rcx
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
# BB#18:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB4_16
.LBB4_19:                               #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_20
.LBB4_20:                               #   in Loop: Header=BB4_14 Depth=2
	movl	-64(%rbp), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_14
.LBB4_21:                               #   in Loop: Header=BB4_12 Depth=1
	movl	-64(%rbp), %eax
	movl	%eax, -68(%rbp)
# BB#22:                                #   in Loop: Header=BB4_12 Depth=1
	movl	-64(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.LBB4_12
.LBB4_23:
	cmpl	$0, -8(%rbp)
	je	.LBB4_29
# BB#24:
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	%xmm0, -224(%rbp)
	movl	$0, -48(%rbp)
.LBB4_25:                               # =>This Inner Loop Header: Depth=1
	movl	-48(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jae	.LBB4_28
# BB#26:                                #   in Loop: Header=BB4_25 Depth=1
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movl	-48(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm1
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
# BB#27:                                #   in Loop: Header=BB4_25 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB4_25
.LBB4_28:
	jmp	.LBB4_29
.LBB4_29:
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	fft_float, .Lfunc_end4-fft_float

	.p2align	4, 0x90
	.type	CheckPointer,@function
CheckPointer:                           # @CheckPointer
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.LBB5_2
# BB#1:
	movabsq	$.L.str.4, %rsi
	movq	stderr, %rdi
	movq	-16(%rbp), %rdx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	exit
.LBB5_2:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	CheckPointer, .Lfunc_end5-CheckPointer

	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$160, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -84(%rbp)
	cmpl	$3, -8(%rbp)
	jge	.LBB6_2
# BB#1:
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1.6, %rdi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2.7, %rdi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3.8, %rdi
	movl	%eax, -96(%rbp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	exit
.LBB6_2:
	cmpl	$4, -8(%rbp)
	jne	.LBB6_4
# BB#3:
	movabsq	$.L.str.4.9, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rdi
	callq	strncmp
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, -84(%rbp)
.LBB6_4:
	jmp	.LBB6_5
.LBB6_5:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	atoi
	movl	$1, %edi
	movl	%eax, -24(%rbp)
	callq	srand
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -56(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -64(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	movl	-24(%rbp), %edx
	movl	%edx, %eax
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, -80(%rbp)
	movl	$0, -28(%rbp)
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB6_9
# BB#7:                                 #   in Loop: Header=BB6_6 Depth=1
	callq	rand
	movl	$1000, %ecx             # imm = 0x3E8
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-72(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movl	%ecx, %edi
	movss	%xmm0, (%rsi,%rdi,4)
	callq	rand
	movl	$1000, %ecx             # imm = 0x3E8
	cltd
	idivl	%ecx
	cvtsi2ssl	%edx, %xmm0
	movq	-80(%rbp), %rsi
	movl	-28(%rbp), %ecx
	movl	%ecx, %edi
	movss	%xmm0, (%rsi,%rdi,4)
# BB#8:                                 #   in Loop: Header=BB6_6 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_6
.LBB6_9:
	movl	$0, -28(%rbp)
.LBB6_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB6_20
# BB#11:                                #   in Loop: Header=BB6_10 Depth=1
	xorps	%xmm0, %xmm0
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movss	%xmm0, (%rax,%rdx,4)
	movl	$0, -32(%rbp)
.LBB6_12:                               #   Parent Loop BB6_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jae	.LBB6_18
# BB#13:                                #   in Loop: Header=BB6_12 Depth=2
	callq	rand
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_15
# BB#14:                                #   in Loop: Header=BB6_12 Depth=2
	movq	-72(%rbp), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -112(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	-112(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.LBB6_16
.LBB6_15:                               #   in Loop: Header=BB6_12 Depth=2
	movq	-72(%rbp), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	-80(%rbp), %rax
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movl	-28(%rbp), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, -120(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	-120(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	-40(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
.LBB6_16:                               #   in Loop: Header=BB6_12 Depth=2
	xorps	%xmm0, %xmm0
	movq	-48(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	movss	%xmm0, (%rax,%rdx,4)
# BB#17:                                #   in Loop: Header=BB6_12 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB6_12
.LBB6_18:                               #   in Loop: Header=BB6_10 Depth=1
	jmp	.LBB6_19
.LBB6_19:                               #   in Loop: Header=BB6_10 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_10
.LBB6_20:
	movl	-20(%rbp), %edi
	movl	-84(%rbp), %esi
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-56(%rbp), %r8
	movq	-64(%rbp), %r9
	movb	$0, %al
	callq	fft_float
	movabsq	$.L.str.5.10, %rdi
	movl	%eax, -124(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$0, -28(%rbp)
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB6_21:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB6_24
# BB#22:                                #   in Loop: Header=BB6_21 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	-56(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -132(%rbp)        # 4-byte Spill
# BB#23:                                #   in Loop: Header=BB6_21 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_21
.LBB6_24:
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.8, %rdi
	movl	%eax, -136(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$0, -28(%rbp)
	movl	%eax, -140(%rbp)        # 4-byte Spill
.LBB6_25:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jae	.LBB6_28
# BB#26:                                #   in Loop: Header=BB6_25 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	-64(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, -144(%rbp)        # 4-byte Spill
# BB#27:                                #   in Loop: Header=BB6_25 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB6_25
.LBB6_28:
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movq	-40(%rbp), %rdi
	movl	%eax, -148(%rbp)        # 4-byte Spill
	callq	free
	movq	-48(%rbp), %rdi
	callq	free
	movq	-56(%rbp), %rdi
	callq	free
	movq	-64(%rbp), %rdi
	callq	free
	movq	-72(%rbp), %rdi
	callq	free
	movq	-80(%rbp), %rdi
	callq	free
	xorl	%edi, %edi
	callq	exit
.Lfunc_end6:
	.size	main, .Lfunc_end6-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str, 73

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.1, 52

	.type	.L.str.1.2,@object      # @.str.1.2
.L.str.1.2:
	.asciz	"RealIn"
	.size	.L.str.1.2, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"RealOut"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4, 35

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Usage: fft <waves> <length> -i\n"
	.size	.L.str.5, 32

	.type	.L.str.1.6,@object      # @.str.1.6
.L.str.1.6:
	.asciz	"-i performs an inverse fft\n"
	.size	.L.str.1.6, 28

	.type	.L.str.2.7,@object      # @.str.2.7
.L.str.2.7:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2.7, 30

	.type	.L.str.3.8,@object      # @.str.3.8
.L.str.3.8:
	.asciz	"<length> is the number of samples\n"
	.size	.L.str.3.8, 35

	.type	.L.str.4.9,@object      # @.str.4.9
.L.str.4.9:
	.asciz	"-i"
	.size	.L.str.4.9, 3

	.type	.L.str.5.10,@object     # @.str.5.10
.L.str.5.10:
	.asciz	"RealOut:\n"
	.size	.L.str.5.10, 10

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%f \t"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ImagOut:\n"
	.size	.L.str.8, 10


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
