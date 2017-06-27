	.text
	.file	"all_t.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.long	1073741824              # float 2
	.long	1073741824              # float 2
.LCPI0_3:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
.LCPI0_6:
	.long	1082130432              # float 4
	.long	1082130432              # float 4
	.long	1082130432              # float 4
	.long	1082130432              # float 4
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_4:
	.long	1077936128              # float 3
.LCPI0_5:
	.long	1082130432              # float 4
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$304, %rsp              # imm = 0x130
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	movaps	%xmm1, -80(%rbp)
	movl	$0, -84(%rbp)
	movaps	.LCPI0_0(%rip), %xmm2   # xmm2 = [1.000000e+00,1.000000e+00,1.000000e+00,1.000000e+00]
	movaps	%xmm2, -112(%rbp)
	movl	$1065353216, -116(%rbp) # imm = 0x3F800000
	movaps	%xmm1, -144(%rbp)
	movl	$0, -148(%rbp)
	movaps	%xmm2, -176(%rbp)
	movl	$1065353216, -180(%rbp) # imm = 0x3F800000
	movaps	%xmm2, -208(%rbp)
	movl	$1065353216, -212(%rbp) # imm = 0x3F800000
	movaps	.LCPI0_1(%rip), %xmm2   # xmm2 = [2.000000e+00,2.000000e+00,2.000000e+00,2.000000e+00]
	movaps	%xmm2, -240(%rbp)
	movl	$1073741824, -244(%rbp) # imm = 0x40000000
	movaps	%xmm1, -272(%rbp)
	movss	%xmm0, -276(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	cvtss2sd	-180(%rbp), %xmm1
	movapd	.LCPI0_3(%rip), %xmm2   # xmm2 = [nan,nan]
	andpd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jb	.LBB0_8
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-180(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, -176(%rbp)
	movss	-148(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, -144(%rbp)
	movaps	-176(%rbp), %xmm4
	addps	%xmm4, %xmm3
	movaps	%xmm3, -144(%rbp)
	addss	%xmm1, %xmm2
	movss	%xmm2, -148(%rbp)
	movss	-212(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, -208(%rbp)
	movss	-244(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, -240(%rbp)
	movaps	-208(%rbp), %xmm4
	addps	%xmm3, %xmm4
	movaps	%xmm4, -208(%rbp)
	addss	%xmm2, %xmm1
	movss	%xmm1, -212(%rbp)
	movss	-276(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm2
	shufps	$0, %xmm2, %xmm2        # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, -272(%rbp)
	movss	-116(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	%xmm2, %xmm3
	shufps	$0, %xmm3, %xmm3        # xmm3 = xmm3[0,0,0,0]
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4
	subps	%xmm3, %xmm4
	movaps	%xmm4, -112(%rbp)
	subss	%xmm2, %xmm1
	movss	%xmm1, -116(%rbp)
	movss	-212(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	-112(%rbp), %xmm3
	movaps	-208(%rbp), %xmm4
	divps	%xmm4, %xmm3
	movaps	%xmm3, -176(%rbp)
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
	movss	%xmm1, -20(%rbp)
	ucomiss	%xmm2, %xmm6
	movss	%xmm6, -280(%rbp)       # 4-byte Spill
	movss	%xmm4, -284(%rbp)       # 4-byte Spill
	movss	%xmm1, -288(%rbp)       # 4-byte Spill
	jne	.LBB0_3
	jp	.LBB0_3
	jmp	.LBB0_7
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-280(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-284(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_4
	jp	.LBB0_4
	jmp	.LBB0_5
.LBB0_4:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-288(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
	jmp	.LBB0_6
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-284(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -20(%rbp)
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -180(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_5(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	movss	-148(%rbp), %xmm2       # xmm2 = mem[0],zero,zero,zero
	movaps	-144(%rbp), %xmm3
	movaps	.LCPI0_6(%rip), %xmm4   # xmm4 = [4.000000e+00,4.000000e+00,4.000000e+00,4.000000e+00]
	mulps	%xmm4, %xmm3
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm3, %xmm4
	movaps	%xmm3, %xmm5
	shufps	$229, %xmm5, %xmm5      # xmm5 = xmm5[1,1,2,3]
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm6
	addss	%xmm5, %xmm6
	addss	%xmm3, %xmm6
	mulss	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	mulss	%xmm0, %xmm2
	movss	%xmm1, -52(%rbp)
	ucomiss	%xmm2, %xmm6
	movss	%xmm6, -292(%rbp)       # 4-byte Spill
	movss	%xmm4, -296(%rbp)       # 4-byte Spill
	movss	%xmm1, -300(%rbp)       # 4-byte Spill
	jne	.LBB0_9
	jp	.LBB0_9
	jmp	.LBB0_13
.LBB0_9:
	movss	.LCPI0_4(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movss	-292(%rbp), %xmm1       # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movss	-296(%rbp), %xmm2       # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jne	.LBB0_10
	jp	.LBB0_10
	jmp	.LBB0_11
.LBB0_10:
	movss	-300(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
	jmp	.LBB0_12
.LBB0_11:
	movss	-296(%rbp), %xmm0       # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -52(%rbp)
.LBB0_12:
	jmp	.LBB0_13
.LBB0_13:
	movabsq	$.L.str, %rdi
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -148(%rbp)
	cvtss2sd	-148(%rbp), %xmm0
	movb	$1, %al
	callq	printf
	xorl	%ecx, %ecx
	movl	%eax, -304(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pi:%.6f\n"
	.size	.L.str, 9


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
