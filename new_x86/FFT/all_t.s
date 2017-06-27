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
	.globl	IsPowerOfTwo
	.p2align	4, 0x90
	.type	IsPowerOfTwo,@function
IsPowerOfTwo:                           # @IsPowerOfTwo
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, -52(%rbp)
	cmpl	$2, -52(%rbp)
	jae	.LBB0_2
# BB#1:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB0_5
.LBB0_2:
	movl	-52(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -48(%rbp)
	movl	-52(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -48(%rbp)
	subl	$1, %ecx
	andl	%ecx, %eax
	cmpl	$0, %eax
	je	.LBB0_4
# BB#3:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB0_5
.LBB0_4:
	movaps	.LCPI0_0(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, -16(%rbp)
	movl	$1, -20(%rbp)
.LBB0_5:
	movl	-20(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	IsPowerOfTwo, .Lfunc_end0-IsPowerOfTwo

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI1_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	NumberOfBitsNeeded
	.p2align	4, 0x90
	.type	NumberOfBitsNeeded,@function
NumberOfBitsNeeded:                     # @NumberOfBitsNeeded
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	%edi, -52(%rbp)
	cmpl	$2, -52(%rbp)
	jae	.LBB1_2
# BB#1:
	movabsq	$.L.str, %rsi
	movq	stderr, %rdi
	movl	-52(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -88(%rbp)         # 4-byte Spill
	callq	exit
.LBB1_2:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movl	$0, -84(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	$1, %eax
	movl	-52(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -48(%rbp)
	movl	-84(%rbp), %edx
	movd	%edx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -80(%rbp)
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
                                        # kill: %CL<def> %ECX<kill>
	shll	%cl, %eax
	movl	-92(%rbp), %edx         # 4-byte Reload
	andl	%eax, %edx
	cmpl	$0, %edx
	je	.LBB1_5
# BB#4:
	movl	-84(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_6
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-84(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -80(%rbp)
	movaps	.LCPI1_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
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
	addl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -20(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movl	%eax, -104(%rbp)        # 4-byte Spill
	je	.LBB1_11
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-96(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_3 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_11
.LBB1_11:                               #   in Loop: Header=BB1_3 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB1_3
.Lfunc_end1:
	.size	NumberOfBitsNeeded, .Lfunc_end1-NumberOfBitsNeeded

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	ReverseBits
	.p2align	4, 0x90
	.type	ReverseBits,@function
ReverseBits:                            # @ReverseBits
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$128, %rsp
	movl	%edi, -116(%rbp)
	movl	%esi, -148(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -208(%rbp)
	movl	$0, -212(%rbp)
	movaps	%xmm0, -176(%rbp)
	movl	$0, -180(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	-180(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jae	.LBB2_19
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-212(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -208(%rbp)
	paddd	%xmm0, %xmm0
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	addl	%eax, %eax
	movl	-116(%rbp), %ecx
	movd	%ecx, %xmm2
	pshufd	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, -112(%rbp)
	pand	%xmm1, %xmm2
	andl	$1, %ecx
	por	%xmm2, %xmm0
	movaps	%xmm0, -208(%rbp)
	movd	%xmm0, %edx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %esi
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %edi
	movl	%edx, %r8d
	addl	%esi, %r8d
	addl	%edi, %r8d
	orl	%ecx, %eax
	imull	$3, %eax, %ecx
	movl	%eax, -20(%rbp)
	cmpl	%ecx, %r8d
	movl	%r8d, -216(%rbp)        # 4-byte Spill
	movl	%eax, -220(%rbp)        # 4-byte Spill
	movl	%edx, -224(%rbp)        # 4-byte Spill
	je	.LBB2_7
# BB#3:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-216(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-224(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB2_5
# BB#4:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB2_6
.LBB2_5:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_7
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -212(%rbp)
	movl	-116(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -112(%rbp)
	psrld	$1, %xmm0
	movaps	%xmm0, -112(%rbp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	shrl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -52(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -228(%rbp)        # 4-byte Spill
	movl	%edi, -232(%rbp)        # 4-byte Spill
	movl	%eax, -236(%rbp)        # 4-byte Spill
	je	.LBB2_12
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-232(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-228(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB2_10
# BB#9:                                 #   in Loop: Header=BB2_1 Depth=1
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB2_11
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_12
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -116(%rbp)
# BB#13:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-180(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -176(%rbp)
	movaps	.LCPI2_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -176(%rbp)
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
	movl	%eax, -84(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -240(%rbp)        # 4-byte Spill
	movl	%edi, -244(%rbp)        # 4-byte Spill
	movl	%eax, -248(%rbp)        # 4-byte Spill
	je	.LBB2_18
# BB#14:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-244(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-240(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_1 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-240(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_18
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB2_1
.LBB2_19:
	movl	-212(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ReverseBits, .Lfunc_end2-ReverseBits

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_0:
	.quad	4613937818241073152     # double 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_1:
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
	subq	$272, %rsp              # imm = 0x110
	movl	%edi, -308(%rbp)
	movl	%esi, -340(%rbp)
	movl	-340(%rbp), %esi
	cmpl	-308(%rbp), %esi
	jb	.LBB3_2
# BB#1:
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movaps	%xmm1, -272(%rbp)
	movsd	%xmm0, -280(%rbp)
	jmp	.LBB3_16
.LBB3_2:
	movl	-340(%rbp), %eax
	movl	-308(%rbp), %ecx
	movd	%ecx, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -304(%rbp)
	shrl	$1, %ecx
	cmpl	%ecx, %eax
	ja	.LBB3_9
# BB#3:
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-340(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movl	-308(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm2
	movsd	%xmm1, -88(%rbp)
	movaps	%xmm1, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movups	%xmm3, -112(%rbp)
	movsd	%xmm2, -136(%rbp)
	movaps	%xmm2, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	movups	%xmm4, -160(%rbp)
	divpd	%xmm4, %xmm3
	movapd	%xmm3, -272(%rbp)
	movaps	%xmm3, %xmm4
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm3, %xmm5
	divsd	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm1, -24(%rbp)
	ucomisd	%xmm2, %xmm5
	movsd	%xmm4, -352(%rbp)       # 8-byte Spill
	movsd	%xmm5, -360(%rbp)       # 8-byte Spill
	movsd	%xmm1, -368(%rbp)       # 8-byte Spill
	jne	.LBB3_4
	jp	.LBB3_4
	jmp	.LBB3_8
.LBB3_4:
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_5
	jp	.LBB3_5
	jmp	.LBB3_6
.LBB3_5:
	movsd	-368(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	jmp	.LBB3_7
.LBB3_6:
	movsd	-352(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB3_7:
	jmp	.LBB3_8
.LBB3_8:
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
	jmp	.LBB3_16
.LBB3_9:
	jmp	.LBB3_10
.LBB3_10:
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	-308(%rbp), %eax
	movd	%eax, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -304(%rbp)
	movl	-340(%rbp), %ecx
	movd	%ecx, %xmm1
	pshufd	$0, %xmm1, %xmm1        # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, -336(%rbp)
	subl	%ecx, %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm1
	movsd	%xmm1, -184(%rbp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movups	%xmm2, -208(%rbp)
	movapd	.LCPI3_1(%rip), %xmm3   # xmm3 = [-0.000000e+00,-0.000000e+00]
	xorpd	%xmm3, %xmm2
	xorpd	%xmm3, %xmm1
	movl	-308(%rbp), %eax
	movl	%eax, %edx
	cvtsi2sdq	%rdx, %xmm3
	movsd	%xmm3, -232(%rbp)
	movaps	%xmm3, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	movups	%xmm4, -256(%rbp)
	divpd	%xmm4, %xmm2
	movapd	%xmm2, -272(%rbp)
	movaps	%xmm2, %xmm4
	movhlps	%xmm2, %xmm2            # xmm2 = xmm2[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm2, %xmm5
	addsd	%xmm2, %xmm5
	divsd	%xmm3, %xmm1
	movaps	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	movsd	%xmm1, -56(%rbp)
	ucomisd	%xmm2, %xmm5
	movsd	%xmm1, -376(%rbp)       # 8-byte Spill
	movsd	%xmm4, -384(%rbp)       # 8-byte Spill
	movsd	%xmm5, -392(%rbp)       # 8-byte Spill
	jne	.LBB3_11
	jp	.LBB3_11
	jmp	.LBB3_15
.LBB3_11:
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-392(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	-384(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB3_12
	jp	.LBB3_12
	jmp	.LBB3_13
.LBB3_12:
	movsd	-376(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
	jmp	.LBB3_14
.LBB3_13:
	movsd	-384(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -56(%rbp)
.LBB3_14:
	jmp	.LBB3_15
.LBB3_15:
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -280(%rbp)
.LBB3_16:
	movsd	-280(%rbp), %xmm0       # xmm0 = mem[0],zero
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Index_to_frequency, .Lfunc_end3-Index_to_frequency

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI4_0:
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_5:
	.quad	-4611686018427387904    # double -2
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_1:
	.quad	4618760256179416344     # double 6.2831853071795862
	.quad	4618760256179416344     # double 6.2831853071795862
.LCPI4_2:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
.LCPI4_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI4_4:
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.text
	.globl	fft_float
	.p2align	4, 0x90
	.type	fft_float,@function
fft_float:                              # @fft_float
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1488, %rsp             # imm = 0x5D0
	movsd	.LCPI4_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movl	%edi, -708(%rbp)
	movl	%esi, -740(%rbp)
	movq	%rdx, -752(%rbp)
	movq	%rcx, -760(%rbp)
	movq	%r8, -768(%rbp)
	movq	%r9, -776(%rbp)
	movapd	.LCPI4_1(%rip), %xmm1   # xmm1 = [6.283185e+00,6.283185e+00]
	movapd	%xmm1, -1024(%rbp)
	movsd	%xmm0, -1032(%rbp)
	movl	-708(%rbp), %edi
	callq	IsPowerOfTwo
	cmpl	$0, %eax
	jne	.LBB4_2
# BB#1:
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movl	-708(%rbp), %edx
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -1404(%rbp)       # 4-byte Spill
	callq	exit
.LBB4_2:
	cmpl	$0, -740(%rbp)
	je	.LBB4_4
# BB#3:
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, -1024(%rbp)
	movapd	.LCPI4_2(%rip), %xmm2   # xmm2 = [-0.000000e+00,-0.000000e+00]
	xorpd	%xmm2, %xmm1
	movapd	%xmm1, -1024(%rbp)
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -1032(%rbp)
.LBB4_4:
	movq	-752(%rbp), %rdi
	movl	$.L.str.1.2, %eax
	movl	%eax, %esi
	callq	CheckPointer
	movq	-768(%rbp), %rdi
	movl	$.L.str.2, %eax
	movl	%eax, %esi
	callq	CheckPointer
	movq	-776(%rbp), %rdi
	movl	$.L.str.3, %eax
	movl	%eax, %esi
	callq	CheckPointer
	movl	-708(%rbp), %edi
	callq	NumberOfBitsNeeded
	movl	%eax, -804(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -832(%rbp)
	movl	$0, -836(%rbp)
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movl	-836(%rbp), %eax
	cmpl	-708(%rbp), %eax
	jae	.LBB4_11
# BB#6:                                 #   in Loop: Header=BB4_5 Depth=1
	movl	-836(%rbp), %edi
	movl	-804(%rbp), %esi
	callq	ReverseBits
	movl	%eax, -868(%rbp)
	movq	-752(%rbp), %rcx
	movl	-836(%rbp), %eax
	movl	%eax, %edx
	movss	(%rcx,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	movq	-768(%rbp), %rcx
	movl	-868(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	cmpq	$0, -760(%rbp)
	jne	.LBB4_8
# BB#7:                                 #   in Loop: Header=BB4_5 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -1416(%rbp)      # 8-byte Spill
	jmp	.LBB4_9
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	movq	-760(%rbp), %rax
	movl	-836(%rbp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movsd	%xmm0, -1416(%rbp)      # 8-byte Spill
.LBB4_9:                                #   in Loop: Header=BB4_5 Depth=1
	movsd	-1416(%rbp), %xmm0      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	movq	-776(%rbp), %rax
	movl	-868(%rbp), %ecx
	movl	%ecx, %edx
	movss	%xmm0, (%rax,%rdx,4)
# BB#10:                                #   in Loop: Header=BB4_5 Depth=1
	movl	-836(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -832(%rbp)
	movaps	.LCPI4_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -832(%rbp)
	addl	$1, %eax
	movl	%eax, -836(%rbp)
	jmp	.LBB4_5
.LBB4_11:
	movaps	.LCPI4_3(%rip), %xmm0   # xmm0 = [1,1,1,1]
	movaps	%xmm0, -992(%rbp)
	movl	$1, -996(%rbp)
	movaps	.LCPI4_4(%rip), %xmm0   # xmm0 = [2,2,2,2]
	movaps	%xmm0, -960(%rbp)
	movl	$2, -964(%rbp)
.LBB4_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_14 Depth 2
                                        #       Child Loop BB4_16 Depth 3
	movl	-964(%rbp), %eax
	cmpl	-708(%rbp), %eax
	ja	.LBB4_38
# BB#13:                                #   in Loop: Header=BB4_12 Depth=1
	movsd	-1032(%rbp), %xmm0      # xmm0 = mem[0],zero
	movl	-964(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm1
	movapd	-1024(%rbp), %xmm2
	movsd	%xmm1, -184(%rbp)
	movaps	%xmm1, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movups	%xmm3, -208(%rbp)
	divpd	%xmm3, %xmm2
	movapd	%xmm2, -1120(%rbp)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -1128(%rbp)
	movsd	.LCPI4_5(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, -1424(%rbp)      # 8-byte Spill
	callq	sin
	movsd	%xmm0, -1160(%rbp)
	movsd	-1128(%rbp), %xmm0      # xmm0 = mem[0],zero
	movapd	.LCPI4_2(%rip), %xmm1   # xmm1 = [-0.000000e+00,-0.000000e+00]
	xorpd	%xmm1, %xmm0
	movaps	%xmm1, -1440(%rbp)      # 16-byte Spill
	callq	sin
	movsd	%xmm0, -1192(%rbp)
	movsd	-1128(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	-1424(%rbp), %xmm1      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -1224(%rbp)
	movsd	-1128(%rbp), %xmm0      # xmm0 = mem[0],zero
	movaps	-1440(%rbp), %xmm1      # 16-byte Reload
	xorpd	%xmm1, %xmm0
	callq	cos
	movsd	%xmm0, -1256(%rbp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, -1248(%rbp)
	addpd	%xmm1, %xmm1
	movapd	%xmm1, -1280(%rbp)
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -1288(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -832(%rbp)
	movl	$0, -836(%rbp)
.LBB4_14:                               #   Parent Loop BB4_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_16 Depth 3
	movl	-836(%rbp), %eax
	cmpl	-708(%rbp), %eax
	jae	.LBB4_31
# BB#15:                                #   in Loop: Header=BB4_14 Depth=2
	movsd	-1224(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1296(%rbp)
	movsd	-1256(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1304(%rbp)
	movsd	-1160(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1328(%rbp)
	movsd	-1192(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1336(%rbp)
	movl	-836(%rbp), %eax
	movl	%eax, -868(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -928(%rbp)
	movl	$0, -932(%rbp)
.LBB4_16:                               #   Parent Loop BB4_12 Depth=1
                                        #     Parent Loop BB4_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-932(%rbp), %eax
	cmpl	-996(%rbp), %eax
	jae	.LBB4_29
# BB#17:                                #   in Loop: Header=BB4_16 Depth=3
	movsd	-1288(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1304(%rbp), %xmm0
	subsd	-1296(%rbp), %xmm0
	movsd	%xmm0, -1312(%rbp)
	movsd	-1304(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1296(%rbp)
	movsd	-1312(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1304(%rbp)
	movsd	-1288(%rbp), %xmm0      # xmm0 = mem[0],zero
	mulsd	-1336(%rbp), %xmm0
	subsd	-1328(%rbp), %xmm0
	movsd	%xmm0, -1344(%rbp)
	movsd	-1336(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1328(%rbp)
	movsd	-1344(%rbp), %xmm0      # xmm0 = mem[0],zero
	movsd	%xmm0, -1336(%rbp)
	movl	-868(%rbp), %eax
	addl	-996(%rbp), %eax
	movl	%eax, -900(%rbp)
	movsd	-1312(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-768(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-1344(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	-776(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -1064(%rbp)
	movsd	-1312(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-776(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	-1344(%rbp), %xmm1      # xmm1 = mem[0],zero
	movq	-768(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -1096(%rbp)
	movq	-768(%rbp), %rcx
	movl	-868(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm0
	subsd	-1064(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-768(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	movq	-776(%rbp), %rcx
	movl	-868(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm0
	subsd	-1096(%rbp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movq	-776(%rbp), %rcx
	movl	-900(%rbp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	movsd	-1064(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-768(%rbp), %rcx
	movl	-868(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
	movsd	-1096(%rbp), %xmm0      # xmm0 = mem[0],zero
	movq	-776(%rbp), %rcx
	movl	-868(%rbp), %eax
	movl	%eax, %edx
	cvtss2sd	(%rcx,%rdx,4), %xmm1
	addsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rcx,%rdx,4)
# BB#18:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-868(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -864(%rbp)
	movaps	.LCPI4_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -864(%rbp)
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
	movl	%ecx, -1444(%rbp)       # 4-byte Spill
	movl	%edi, -1448(%rbp)       # 4-byte Spill
	movl	%eax, -1452(%rbp)       # 4-byte Spill
	je	.LBB4_23
# BB#19:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-1448(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-1444(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_21
# BB#20:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-1452(%rbp), %eax       # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB4_22
.LBB4_21:                               #   in Loop: Header=BB4_16 Depth=3
	movl	-1444(%rbp), %eax       # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB4_22:                               #   in Loop: Header=BB4_16 Depth=3
	jmp	.LBB4_23
.LBB4_23:                               #   in Loop: Header=BB4_16 Depth=3
	movl	-52(%rbp), %eax
	movl	%eax, -868(%rbp)
	movl	-932(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -928(%rbp)
	movaps	.LCPI4_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -928(%rbp)
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
	movl	%eax, -84(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -1456(%rbp)       # 4-byte Spill
	movl	%edi, -1460(%rbp)       # 4-byte Spill
	movl	%eax, -1464(%rbp)       # 4-byte Spill
	je	.LBB4_28
# BB#24:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-1460(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-1456(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_26
# BB#25:                                #   in Loop: Header=BB4_16 Depth=3
	movl	-1464(%rbp), %eax       # 4-byte Reload
	movl	%eax, -84(%rbp)
	jmp	.LBB4_27
.LBB4_26:                               #   in Loop: Header=BB4_16 Depth=3
	movl	-1456(%rbp), %eax       # 4-byte Reload
	movl	%eax, -84(%rbp)
.LBB4_27:                               #   in Loop: Header=BB4_16 Depth=3
	jmp	.LBB4_28
.LBB4_28:                               #   in Loop: Header=BB4_16 Depth=3
	movl	-84(%rbp), %eax
	movl	%eax, -932(%rbp)
	jmp	.LBB4_16
.LBB4_29:                               #   in Loop: Header=BB4_14 Depth=2
	jmp	.LBB4_30
.LBB4_30:                               #   in Loop: Header=BB4_14 Depth=2
	movl	-964(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqa	%xmm0, -960(%rbp)
	movl	-836(%rbp), %ecx
	movdqa	-832(%rbp), %xmm0
	paddd	-960(%rbp), %xmm0
	movdqa	%xmm0, -832(%rbp)
	addl	%eax, %ecx
	movl	%ecx, -836(%rbp)
	jmp	.LBB4_14
.LBB4_31:                               #   in Loop: Header=BB4_12 Depth=1
	movl	-964(%rbp), %eax
	movl	%eax, -996(%rbp)
# BB#32:                                #   in Loop: Header=BB4_12 Depth=1
	movl	-964(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -960(%rbp)
	paddd	%xmm0, %xmm0
	movaps	%xmm0, -960(%rbp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	shll	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, -116(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -1468(%rbp)       # 4-byte Spill
	movl	%edi, -1472(%rbp)       # 4-byte Spill
	movl	%eax, -1476(%rbp)       # 4-byte Spill
	je	.LBB4_37
# BB#33:                                #   in Loop: Header=BB4_12 Depth=1
	movl	-1472(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-1468(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_35
# BB#34:                                #   in Loop: Header=BB4_12 Depth=1
	movl	-1476(%rbp), %eax       # 4-byte Reload
	movl	%eax, -116(%rbp)
	jmp	.LBB4_36
.LBB4_35:                               #   in Loop: Header=BB4_12 Depth=1
	movl	-1468(%rbp), %eax       # 4-byte Reload
	movl	%eax, -116(%rbp)
.LBB4_36:                               #   in Loop: Header=BB4_12 Depth=1
	jmp	.LBB4_37
.LBB4_37:                               #   in Loop: Header=BB4_12 Depth=1
	movl	-116(%rbp), %eax
	movl	%eax, -964(%rbp)
	jmp	.LBB4_12
.LBB4_38:
	cmpl	$0, -740(%rbp)
	je	.LBB4_49
# BB#39:
	movl	-708(%rbp), %eax
	movl	%eax, %ecx
	cvtsi2sdq	%rcx, %xmm0
	movsd	%xmm0, -1400(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -832(%rbp)
	movl	$0, -836(%rbp)
.LBB4_40:                               # =>This Inner Loop Header: Depth=1
	movl	-836(%rbp), %eax
	cmpl	-708(%rbp), %eax
	jae	.LBB4_48
# BB#41:                                #   in Loop: Header=BB4_40 Depth=1
	movsd	-1400(%rbp), %xmm0      # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, -1392(%rbp)
	movq	-768(%rbp), %rax
	movl	-836(%rbp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -616(%rbp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movups	%xmm2, -640(%rbp)
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	movsd	-1400(%rbp), %xmm0      # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, -1392(%rbp)
	movq	-776(%rbp), %rax
	movl	-836(%rbp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, -664(%rbp)
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movupd	%xmm2, -688(%rbp)
	divsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
# BB#42:                                #   in Loop: Header=BB4_40 Depth=1
	movl	-836(%rbp), %eax
	movaps	-832(%rbp), %xmm0
	movaps	.LCPI4_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -832(%rbp)
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
	movl	%eax, -148(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -1480(%rbp)       # 4-byte Spill
	movl	%edi, -1484(%rbp)       # 4-byte Spill
	movl	%eax, -1488(%rbp)       # 4-byte Spill
	je	.LBB4_47
# BB#43:                                #   in Loop: Header=BB4_40 Depth=1
	movl	-1484(%rbp), %eax       # 4-byte Reload
	cltd
	movl	-1480(%rbp), %ecx       # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_45
# BB#44:                                #   in Loop: Header=BB4_40 Depth=1
	movl	-1488(%rbp), %eax       # 4-byte Reload
	movl	%eax, -148(%rbp)
	jmp	.LBB4_46
.LBB4_45:                               #   in Loop: Header=BB4_40 Depth=1
	movl	-1480(%rbp), %eax       # 4-byte Reload
	movl	%eax, -148(%rbp)
.LBB4_46:                               #   in Loop: Header=BB4_40 Depth=1
	jmp	.LBB4_47
.LBB4_47:                               #   in Loop: Header=BB4_40 Depth=1
	movl	-148(%rbp), %eax
	movl	%eax, -836(%rbp)
	jmp	.LBB4_40
.LBB4_48:
	jmp	.LBB4_49
.LBB4_49:
	addq	$1488, %rsp             # imm = 0x5D0
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

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI6_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$1568, %rsp             # imm = 0x620
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 352(%rsp)
	movl	$0, 348(%rsp)
	movl	%edi, 316(%rsp)
	movq	%rsi, 304(%rsp)
	movaps	%xmm0, 112(%rsp)
	movl	$0, 108(%rsp)
	cmpl	$3, 316(%rsp)
	jge	.LBB6_2
# BB#1:
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.1.6, %rdi
	movl	%eax, 104(%rsp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.2.7, %rdi
	movl	%eax, 100(%rsp)         # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.3.8, %rdi
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movb	$0, %al
	callq	printf
	movl	$4294967295, %edi       # imm = 0xFFFFFFFF
	movl	%eax, 92(%rsp)          # 4-byte Spill
	callq	exit
.LBB6_2:
	cmpl	$4, 316(%rsp)
	jne	.LBB6_4
# BB#3:
	movabsq	$.L.str.4.9, %rsi
	movl	$2, %eax
	movl	%eax, %edx
	movq	304(%rsp), %rcx
	movq	24(%rcx), %rdi
	callq	strncmp
	cmpl	$0, %eax
	setne	%r8b
	xorb	$-1, %r8b
	andb	$1, %r8b
	movzbl	%r8b, %eax
	movl	%eax, 108(%rsp)
.LBB6_4:
	jmp	.LBB6_5
.LBB6_5:
	movq	304(%rsp), %rax
	movq	16(%rax), %rdi
	callq	atoi
	movl	%eax, 284(%rsp)
	movq	304(%rsp), %rdi
	movq	8(%rdi), %rdi
	callq	atoi
	movl	%eax, 252(%rsp)
	movl	$1, %edi
	callq	srand
	movl	284(%rsp), %eax
	movl	%eax, %ecx
	movq	%rcx, 1432(%rsp)
	movd	%rcx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1392(%rsp)
	movups	%xmm0, 1376(%rsp)
	shlq	$2, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, 176(%rsp)
	movl	284(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 1336(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1296(%rsp)
	movups	%xmm0, 1280(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 168(%rsp)
	movl	284(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 1240(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1200(%rsp)
	movups	%xmm0, 1184(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 160(%rsp)
	movl	284(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 1144(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1104(%rsp)
	movups	%xmm0, 1088(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 152(%rsp)
	movl	252(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 1048(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 1008(%rsp)
	movups	%xmm0, 992(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 144(%rsp)
	movl	252(%rsp), %edx
	movl	%edx, %eax
	movq	%rax, 952(%rsp)
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movups	%xmm0, 912(%rsp)
	movups	%xmm0, 896(%rsp)
	shlq	$2, %rax
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 136(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	movl	220(%rsp), %eax
	cmpl	252(%rsp), %eax
	jae	.LBB6_9
# BB#7:                                 #   in Loop: Header=BB6_6 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	movl	%eax, 88(%rsp)          # 4-byte Spill
	callq	rand
	movl	%eax, 588(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movups	%xmm0, 560(%rsp)
	movslq	%eax, %rcx
	imulq	$274877907, %rcx, %rcx  # imm = 0x10624DD3
	movq	%rcx, %rdx
	shrq	$63, %rdx
	movl	%edx, %esi
	sarq	$38, %rcx
	movl	%ecx, %edi
	addl	%esi, %edi
	imull	$1000, %edi, %esi       # imm = 0x3E8
	subl	%esi, %eax
	cvtsi2ssl	%eax, %xmm0
	movq	144(%rsp), %rcx
	movl	220(%rsp), %eax
	movl	%eax, %edx
	movss	%xmm0, (%rcx,%rdx,4)
	callq	rand
	movl	%eax, %esi
	movl	%eax, 540(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 512(%rsp)
	movl	%esi, %eax
	cltd
	movl	88(%rsp), %esi          # 4-byte Reload
	idivl	%esi
	cvtsi2ssl	%edx, %xmm0
	movq	136(%rsp), %rcx
	movl	220(%rsp), %edx
	movl	%edx, %r8d
	movss	%xmm0, (%rcx,%r8,4)
# BB#8:                                 #   in Loop: Header=BB6_6 Depth=1
	movl	220(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 224(%rsp)
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	$1, %eax
	movl	%eax, 220(%rsp)
	jmp	.LBB6_6
.LBB6_9:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
.LBB6_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
	movl	220(%rsp), %eax
	cmpl	284(%rsp), %eax
	jae	.LBB6_25
# BB#11:                                #   in Loop: Header=BB6_10 Depth=1
	movq	176(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	movl	$0, (%rax,%rdx,4)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 192(%rsp)
	movl	$0, 188(%rsp)
.LBB6_12:                               #   Parent Loop BB6_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	188(%rsp), %eax
	cmpl	252(%rsp), %eax
	jae	.LBB6_23
# BB#13:                                #   in Loop: Header=BB6_12 Depth=2
	movl	$2, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	callq	rand
	movl	%eax, %ecx
	movl	%eax, 492(%rsp)
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movdqu	%xmm0, 464(%rsp)
	movl	%ecx, %eax
	cltd
	movl	84(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$0, %edx
	je	.LBB6_15
# BB#14:                                #   in Loop: Header=BB6_12 Depth=2
	movq	144(%rsp), %rax
	movl	188(%rsp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	136(%rsp), %rax
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movl	220(%rsp), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	cos
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	176(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
	jmp	.LBB6_16
.LBB6_15:                               #   in Loop: Header=BB6_12 Depth=2
	movq	144(%rsp), %rax
	movl	188(%rsp), %ecx
	movl	%ecx, %edx
	movss	(%rax,%rdx,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movq	136(%rsp), %rax
	movss	(%rax,%rdx,4), %xmm1    # xmm1 = mem[0],zero,zero,zero
	movl	220(%rsp), %ecx
	movl	%ecx, %eax
	cvtsi2ssq	%rax, %xmm2
	mulss	%xmm2, %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm0, 64(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	sin
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movq	176(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, (%rax,%rdx,4)
.LBB6_16:                               #   in Loop: Header=BB6_12 Depth=2
	xorps	%xmm0, %xmm0
	movq	168(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	movss	%xmm0, (%rax,%rdx,4)
# BB#17:                                #   in Loop: Header=BB6_12 Depth=2
	movl	188(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 192(%rsp)
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 192(%rsp)
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
	movl	%eax, 1532(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 60(%rsp)          # 4-byte Spill
	movl	%edi, 56(%rsp)          # 4-byte Spill
	movl	%eax, 52(%rsp)          # 4-byte Spill
	je	.LBB6_22
# BB#18:                                #   in Loop: Header=BB6_12 Depth=2
	movl	56(%rsp), %eax          # 4-byte Reload
	cltd
	movl	60(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB6_20
# BB#19:                                #   in Loop: Header=BB6_12 Depth=2
	movl	52(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1532(%rsp)
	jmp	.LBB6_21
.LBB6_20:                               #   in Loop: Header=BB6_12 Depth=2
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1532(%rsp)
.LBB6_21:                               #   in Loop: Header=BB6_12 Depth=2
	jmp	.LBB6_22
.LBB6_22:                               #   in Loop: Header=BB6_12 Depth=2
	movl	1532(%rsp), %eax
	movl	%eax, 188(%rsp)
	jmp	.LBB6_12
.LBB6_23:                               #   in Loop: Header=BB6_10 Depth=1
	jmp	.LBB6_24
.LBB6_24:                               #   in Loop: Header=BB6_10 Depth=1
	movl	220(%rsp), %eax
	movaps	224(%rsp), %xmm0
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	$1, %eax
	movl	%eax, 220(%rsp)
	jmp	.LBB6_10
.LBB6_25:
	movl	284(%rsp), %edi
	movl	108(%rsp), %esi
	movq	176(%rsp), %rdx
	movq	168(%rsp), %rcx
	movq	160(%rsp), %r8
	movq	152(%rsp), %r9
	xorl	%eax, %eax
	movb	%al, %r10b
	movb	%r10b, %al
	movb	%r10b, 51(%rsp)         # 1-byte Spill
	callq	fft_float
	movl	$.L.str.5.10, %esi
	movl	%esi, %edi
	movb	51(%rsp), %r10b         # 1-byte Reload
	movl	%eax, 44(%rsp)          # 4-byte Spill
	movb	%r10b, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	%eax, 40(%rsp)          # 4-byte Spill
.LBB6_26:                               # =>This Inner Loop Header: Depth=1
	movl	220(%rsp), %eax
	cmpl	284(%rsp), %eax
	jae	.LBB6_29
# BB#27:                                #   in Loop: Header=BB6_26 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	160(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, 36(%rsp)          # 4-byte Spill
# BB#28:                                #   in Loop: Header=BB6_26 Depth=1
	movl	220(%rsp), %eax
	movaps	224(%rsp), %xmm0
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 224(%rsp)
	addl	$1, %eax
	movl	%eax, 220(%rsp)
	jmp	.LBB6_26
.LBB6_29:
	movl	$.L.str.7, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, 35(%rsp)           # 1-byte Spill
	callq	printf
	movl	$.L.str.8, %edx
	movl	%edx, %edi
	movb	35(%rsp), %cl           # 1-byte Reload
	movl	%eax, 28(%rsp)          # 4-byte Spill
	movb	%cl, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 224(%rsp)
	movl	$0, 220(%rsp)
	movl	%eax, 24(%rsp)          # 4-byte Spill
.LBB6_30:                               # =>This Inner Loop Header: Depth=1
	movl	220(%rsp), %eax
	cmpl	284(%rsp), %eax
	jae	.LBB6_38
# BB#31:                                #   in Loop: Header=BB6_30 Depth=1
	movabsq	$.L.str.6, %rdi
	movq	152(%rsp), %rax
	movl	220(%rsp), %ecx
	movl	%ecx, %edx
	cvtss2sd	(%rax,%rdx,4), %xmm0
	movb	$1, %al
	callq	printf
	movl	%eax, 20(%rsp)          # 4-byte Spill
# BB#32:                                #   in Loop: Header=BB6_30 Depth=1
	movl	220(%rsp), %eax
	movaps	224(%rsp), %xmm0
	movaps	.LCPI6_0(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 224(%rsp)
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
	movl	%eax, 1500(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 16(%rsp)          # 4-byte Spill
	movl	%edi, 12(%rsp)          # 4-byte Spill
	movl	%eax, 8(%rsp)           # 4-byte Spill
	je	.LBB6_37
# BB#33:                                #   in Loop: Header=BB6_30 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	cltd
	movl	16(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB6_35
# BB#34:                                #   in Loop: Header=BB6_30 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	movl	%eax, 1500(%rsp)
	jmp	.LBB6_36
.LBB6_35:                               #   in Loop: Header=BB6_30 Depth=1
	movl	16(%rsp), %eax          # 4-byte Reload
	movl	%eax, 1500(%rsp)
.LBB6_36:                               #   in Loop: Header=BB6_30 Depth=1
	jmp	.LBB6_37
.LBB6_37:                               #   in Loop: Header=BB6_30 Depth=1
	movl	1500(%rsp), %eax
	movl	%eax, 220(%rsp)
	jmp	.LBB6_30
.LBB6_38:
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	movq	176(%rsp), %rdi
	movl	%eax, 4(%rsp)           # 4-byte Spill
	callq	free
	movq	168(%rsp), %rdi
	callq	free
	movq	160(%rsp), %rdi
	callq	free
	movq	152(%rsp), %rdi
	callq	free
	movq	144(%rsp), %rdi
	callq	free
	movq	136(%rsp), %rdi
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
