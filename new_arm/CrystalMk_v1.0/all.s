	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"all.bc"
	.globl	Crystal_Cholesky
	.p2align	3
	.type	Crystal_Cholesky,%function
	.code	32                      @ @Crystal_Cholesky
Crystal_Cholesky:
	.fnstart
@ BB#0:
	sub	sp, sp, #88
	movw	r12, #0
	str	r0, [sp, #84]
	str	r1, [sp, #80]
	str	r2, [sp, #76]
	str	r3, [sp, #72]
	str	r12, [sp, #68]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #76]
	ldr	r2, [sp, #68]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	ldr	r1, [sp, #72]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #44]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #68]
	add	r0, r0, #1
	str	r0, [sp, #68]
	b	.LBB0_1
.LBB0_4:
	movw	r0, #1
	str	r0, [sp, #68]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, #96
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #68]
	mul	r2, r2, r0
	add	r1, r1, r2
	vldr	d16, [r1]
	ldr	r1, [sp, #80]
	vldr	d17, [r1]
	vdiv.f64	d16, d16, d17
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #68]
	mul	r0, r2, r0
	add	r0, r1, r0
	vstr	d16, [r0]
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #68]
	add	r0, r0, #1
	str	r0, [sp, #68]
	b	.LBB0_5
.LBB0_8:
	movw	r0, #1
	str	r0, [sp, #68]
.LBB0_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_11 Depth 2
                                        @     Child Loop BB0_15 Depth 2
                                        @       Child Loop BB0_17 Depth 3
                                        @       Child Loop BB0_21 Depth 3
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_28
@ BB#10:                                @   in Loop: Header=BB0_9 Depth=1
	movw	r0, #0
	vldr	d16, .LCPI0_0
	vstr	d16, [sp, #48]
	str	r0, [sp, #60]
.LBB0_11:                               @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bge	.LBB0_14
@ BB#12:                                @   in Loop: Header=BB0_11 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #68]
	add	r3, r2, r2, lsl #1
	add	r3, r1, r3, lsl #5
	ldr	r12, [sp, #60]
	add	r3, r3, r12, lsl #3
	vldr	d16, [r3]
	add	r3, r12, r12, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #48]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #48]
	str	r0, [sp, #40]           @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB0_11 Depth=2
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_11
.LBB0_14:                               @   in Loop: Header=BB0_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #68]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [sp, #48]
	vsub.f64	d16, d16, d17
	vstr	d16, [r1]
	ldr	r1, [sp, #68]
	add	r1, r1, #1
	str	r1, [sp, #64]
	str	r0, [sp, #36]           @ 4-byte Spill
.LBB0_15:                               @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_17 Depth 3
                                        @       Child Loop BB0_21 Depth 3
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_26
@ BB#16:                                @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #0
	vldr	d16, .LCPI0_0
	vstr	d16, [sp, #48]
	str	r0, [sp, #60]
.LBB0_17:                               @   Parent Loop BB0_9 Depth=1
                                        @     Parent Loop BB0_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bge	.LBB0_20
@ BB#18:                                @   in Loop: Header=BB0_17 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #68]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #60]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	add	r2, r3, r3, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #64]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #48]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #48]
	str	r0, [sp, #32]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB0_17 Depth=3
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_17
.LBB0_20:                               @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #0
	vldr	d16, .LCPI0_0
	movw	r1, #3
	ldr	r2, [sp, #80]
	ldr	r3, [sp, #68]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #5
	ldr	r3, [sp, #64]
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	vldr	d18, [sp, #48]
	vsub.f64	d17, d17, d18
	vstr	d17, [r2]
	vstr	d16, [sp, #48]
	str	r0, [sp, #60]
	str	r1, [sp, #28]           @ 4-byte Spill
.LBB0_21:                               @   Parent Loop BB0_9 Depth=1
                                        @     Parent Loop BB0_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bge	.LBB0_24
@ BB#22:                                @   in Loop: Header=BB0_21 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #64]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #60]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	add	r2, r3, r3, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #68]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #48]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #48]
	str	r0, [sp, #24]           @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB0_21 Depth=3
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_21
.LBB0_24:                               @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #64]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #68]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vldr	d17, [sp, #48]
	vsub.f64	d16, d16, d17
	add	r12, r3, r3, lsl #1
	add	r1, r1, r12, lsl #5
	add	r1, r1, r3, lsl #3
	vldr	d17, [r1]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r2]
	str	r0, [sp, #20]           @ 4-byte Spill
@ BB#25:                                @   in Loop: Header=BB0_15 Depth=2
	ldr	r0, [sp, #64]
	add	r0, r0, #1
	str	r0, [sp, #64]
	b	.LBB0_15
.LBB0_26:                               @   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_27
.LBB0_27:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #68]
	add	r0, r0, #1
	str	r0, [sp, #68]
	b	.LBB0_9
.LBB0_28:
	movw	r0, #1
	str	r0, [sp, #68]
.LBB0_29:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_31 Depth 2
	ldr	r0, [sp, #68]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_36
@ BB#30:                                @   in Loop: Header=BB0_29 Depth=1
	movw	r0, #0
	str	r0, [sp, #60]
.LBB0_31:                               @   Parent Loop BB0_29 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bge	.LBB0_34
@ BB#32:                                @   in Loop: Header=BB0_31 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #68]
	add	r3, r1, r2, lsl #3
	vldr	d16, [r3]
	ldr	r12, [sp, #80]
	add	r2, r2, r2, lsl #1
	add	r2, r12, r2, lsl #5
	ldr	r12, [sp, #60]
	add	r2, r2, r12, lsl #3
	vldr	d17, [r2]
	add	r1, r1, r12, lsl #3
	vldr	d18, [r1]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r3]
	str	r0, [sp, #16]           @ 4-byte Spill
@ BB#33:                                @   in Loop: Header=BB0_31 Depth=2
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_31
.LBB0_34:                               @   in Loop: Header=BB0_29 Depth=1
	b	.LBB0_35
.LBB0_35:                               @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #68]
	add	r0, r0, #1
	str	r0, [sp, #68]
	b	.LBB0_29
.LBB0_36:
	movw	r0, #3
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #84]
	sub	r2, r2, #1
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	ldr	r3, [sp, #80]
	add	r12, r2, r2, lsl #1
	add	r3, r3, r12, lsl #5
	add	r2, r3, r2, lsl #3
	vldr	d17, [r2]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r1]
	ldr	r1, [sp, #84]
	sub	r1, r1, #2
	str	r1, [sp, #68]
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB0_37:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_39 Depth 2
	ldr	r0, [sp, #68]
	cmp	r0, #0
	blt	.LBB0_44
@ BB#38:                                @   in Loop: Header=BB0_37 Depth=1
	ldr	r0, [sp, #68]
	add	r0, r0, #1
	str	r0, [sp, #60]
.LBB0_39:                               @   Parent Loop BB0_37 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #84]
	cmp	r0, r1
	bge	.LBB0_42
@ BB#40:                                @   in Loop: Header=BB0_39 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #68]
	add	r3, r1, r2, lsl #3
	vldr	d16, [r3]
	ldr	r12, [sp, #80]
	add	r2, r2, r2, lsl #1
	add	r2, r12, r2, lsl #5
	ldr	r12, [sp, #60]
	add	r2, r2, r12, lsl #3
	vldr	d17, [r2]
	add	r1, r1, r12, lsl #3
	vldr	d18, [r1]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r3]
	str	r0, [sp, #8]            @ 4-byte Spill
@ BB#41:                                @   in Loop: Header=BB0_39 Depth=2
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB0_39
.LBB0_42:                               @   in Loop: Header=BB0_37 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #68]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	ldr	r3, [sp, #80]
	add	r12, r2, r2, lsl #1
	add	r3, r3, r12, lsl #5
	add	r2, r3, r2, lsl #3
	vldr	d17, [r2]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r1]
	str	r0, [sp, #4]            @ 4-byte Spill
@ BB#43:                                @   in Loop: Header=BB0_37 Depth=1
	ldr	r0, [sp, #68]
	sub	r0, r0, #1
	str	r0, [sp, #68]
	b	.LBB0_37
.LBB0_44:
	add	sp, sp, #88
	bx	lr
	.p2align	3
@ BB#45:
.LCPI0_0:
	.long	0                       @ double 0
	.long	0
.Lfunc_end0:
	.size	Crystal_Cholesky, .Lfunc_end0-Crystal_Cholesky
	.cantunwind
	.fnend

	.globl	Crystal_div
	.p2align	3
	.type	Crystal_div,%function
	.code	32                      @ @Crystal_div
Crystal_div:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #632
	vmov	d16, r2, r3
	ldr	r2, [r11, #36]
	ldr	r3, [r11, #32]
	ldr	r1, [r11, #28]
	ldr	r12, [r11, #24]
	ldr	lr, [r11, #20]
	ldr	r4, [r11, #16]
	ldr	r5, [r11, #12]
	ldr	r6, [r11, #8]
	movw	r7, #0
	vldr	d17, .LCPI1_6
	vldr	d18, .LCPI1_7
	vldr	d19, .LCPI1_8
	vmov.f64	d20, #3.000000e+01
	vldr	d21, .LCPI1_9
	str	r0, [r11, #-28]
	vstr	d16, [r11, #-40]
	str	r6, [r11, #-44]
	str	r5, [r11, #-48]
	str	r4, [r11, #-52]
	str	lr, [r11, #-56]
	str	r12, [r11, #-60]
	str	r1, [r11, #-64]
	str	r3, [r11, #-68]
	str	r2, [r11, #-72]
	vstr	d21, [sp, #96]
	vstr	d20, [sp, #88]
	vstr	d19, [sp, #80]
	vstr	d18, [sp, #72]
	vstr	d17, [sp, #64]
	str	r7, [sp, #60]
	str	r7, [sp, #56]
	str	r7, [sp, #60]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_8
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	add	r0, sp, #296
	movw	r1, #3
	ldr	r2, [sp, #60]
	sub	r3, r11, #264
	add	r12, r3, r2, lsl #3
	mov	lr, #0
	str	lr, [r3, r2, lsl #3]
	movw	r2, #0
	movt	r2, #16368
	str	r2, [r12, #4]
	ldr	r2, [sp, #60]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vldr	d17, .LCPI1_4
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	vldr	d17, .LCPI1_5
	vadd.f64	d16, d16, d17
	add	r3, sp, #296
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB1_1
	.p2align	3
@ BB#4:
.LCPI1_6:
	.long	0                       @ double 0
	.long	0
	.p2align	3
@ BB#5:
.LCPI1_7:
	.long	1202590843              @ double 0.01
	.long	1065646817
	.p2align	3
@ BB#6:
.LCPI1_8:
	.long	858993459               @ double 1.2
	.long	1072902963
	.p2align	3
@ BB#7:
.LCPI1_9:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LBB1_8:
	movw	r0, #0
	str	r0, [sp, #60]
.LBB1_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_12
@ BB#10:                                @   in Loop: Header=BB1_9 Depth=1
	sub	r0, r11, #168
	movw	r1, #3
	ldr	r2, [r11, #-44]
	ldr	r3, [sp, #60]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	sub	r2, r11, #264
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #96]
	vadd.f64	d16, d16, d17
	vmov.f64	d17, #1.000000e+00
	vdiv.f64	d16, d17, d16
	sub	r2, r11, #168
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB1_9 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB1_9
.LBB1_12:
	movw	r0, #0
	str	r0, [sp, #60]
.LBB1_13:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_15 Depth 2
	ldr	r0, [sp, #60]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_20
@ BB#14:                                @   in Loop: Header=BB1_13 Depth=1
	movw	r0, #0
	movw	r1, #3
	vldr	d16, [sp, #88]
	ldr	r2, [sp, #60]
	add	r3, sp, #296
	add	r3, r3, r2, lsl #3
	vldr	d17, [r3]
	vmul.f64	d16, d16, d17
	sub	r3, r11, #264
	add	r3, r3, r2, lsl #3
	vldr	d17, [r3]
	vmul.f64	d16, d16, d17
	ldr	r3, [r11, #-52]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #56]
	str	r1, [sp, #36]           @ 4-byte Spill
.LBB1_15:                               @   Parent Loop BB1_13 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #56]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_18
@ BB#16:                                @   in Loop: Header=BB1_15 Depth=2
	movw	r0, #3
	vldr	d16, [sp, #80]
	vldr	d17, [r11, #-40]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #60]
	add	r2, sp, #296
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	ldr	r2, [r11, #-64]
	add	r1, r1, r1, lsl #1
	add	r1, r2, r1, lsl #5
	ldr	r2, [sp, #56]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #32]           @ 4-byte Spill
@ BB#17:                                @   in Loop: Header=BB1_15 Depth=2
	ldr	r0, [sp, #56]
	add	r0, r0, #1
	str	r0, [sp, #56]
	b	.LBB1_15
.LBB1_18:                               @   in Loop: Header=BB1_13 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-52]
	ldr	r2, [sp, #60]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [sp, #72]
	vmul.f64	d16, d16, d17
	sub	r1, r11, #264
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	sub	r1, r11, #168
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [r11, #-64]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vadd.f64	d16, d17, d16
	vstr	d16, [r1]
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB1_13 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB1_13
.LBB1_20:
	movw	r0, #0
	str	r0, [sp, #60]
.LBB1_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_24
@ BB#22:                                @   in Loop: Header=BB1_21 Depth=1
	sub	r0, r11, #168
	movw	r1, #3
	ldr	r2, [r11, #-64]
	ldr	r3, [sp, #60]
	add	r12, r3, r3, lsl #1
	add	r2, r2, r12, lsl #5
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vmov.f64	d17, #1.000000e+00
	vdiv.f64	d16, d17, d16
	sub	r2, r11, #168
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #20]           @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB1_21 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB1_21
.LBB1_24:
	movw	r0, #0
	str	r0, [sp, #60]
.LBB1_25:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_27 Depth 2
	ldr	r0, [sp, #60]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_32
@ BB#26:                                @   in Loop: Header=BB1_25 Depth=1
	movw	r0, #0
	add	r1, sp, #200
	movw	r2, #3
	ldr	r3, [r11, #-52]
	ldr	r12, [sp, #60]
	add	r3, r3, r12, lsl #3
	vldr	d16, [r3]
	add	r3, sp, #200
	add	r3, r3, r12, lsl #3
	vstr	d16, [r3]
	str	r0, [sp, #56]
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
.LBB1_27:                               @   Parent Loop BB1_25 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #56]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bge	.LBB1_30
@ BB#28:                                @   in Loop: Header=BB1_27 Depth=2
	movw	r0, #3
	ldr	r1, [r11, #-68]
	ldr	r2, [sp, #60]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #56]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [r11, #-40]
	vmul.f64	d16, d16, d17
	vstr	d16, [sp, #64]
	ldr	r1, [r11, #-48]
	ldr	r2, [sp, #56]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #60]
	add	r2, sp, #200
	add	r1, r2, r1, lsl #3
	vldr	d17, [r1]
	vadd.f64	d16, d17, d16
	vstr	d16, [r1]
	vldr	d16, [sp, #64]
	ldr	r1, [r11, #-64]
	ldr	r2, [sp, #60]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	ldr	r12, [sp, #56]
	add	r1, r1, r12, lsl #3
	vldr	d17, [r1]
	vsub.f64	d16, d17, d16
	sub	r1, r11, #168
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [r11, #-72]
	add	r1, r1, r3, lsl #5
	add	r1, r1, r12, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #8]            @ 4-byte Spill
@ BB#29:                                @   in Loop: Header=BB1_27 Depth=2
	ldr	r0, [sp, #56]
	add	r0, r0, #1
	str	r0, [sp, #56]
	b	.LBB1_27
.LBB1_30:                               @   in Loop: Header=BB1_25 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #60]
	add	r2, sp, #200
	add	r2, r2, r1, lsl #3
	vldr	d16, [r2]
	ldr	r2, [r11, #-56]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vsub.f64	d16, d16, d17
	add	r2, sp, #104
	add	r1, r2, r1, lsl #3
	vstr	d16, [r1]
	ldr	r1, [sp, #60]
	add	r2, r2, r1, lsl #3
	vldr	d16, [r2]
	sub	r2, r11, #168
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	ldr	r2, [r11, #-60]
	add	r1, r2, r1, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #4]            @ 4-byte Spill
@ BB#31:                                @   in Loop: Header=BB1_25 Depth=1
	ldr	r0, [sp, #60]
	add	r0, r0, #1
	str	r0, [sp, #60]
	b	.LBB1_25
.LBB1_32:
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	3
@ BB#33:
.LCPI1_4:
	.long	2576980378              @ double 0.20000000000000001
	.long	1070176665
.LCPI1_5:
	.long	3435973837              @ double 0.90000000000000002
	.long	1072483532
.Lfunc_end1:
	.size	Crystal_div, .Lfunc_end1-Crystal_div
	.cantunwind
	.fnend

	.globl	Crystal_pow
	.p2align	3
	.type	Crystal_pow,%function
	.code	32                      @ @Crystal_pow
Crystal_pow:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #272
	movw	r2, #0
	vldr	d16, .LCPI2_0
	vmov.f64	d17, #2.000000e+00
	vldr	d18, .LCPI2_1
	vldr	d19, .LCPI2_2
	vldr	d20, .LCPI2_3
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	vstr	d20, [sp, #64]
	vstr	d19, [sp, #56]
	vstr	d18, [sp, #48]
	vstr	d17, [sp, #40]
	vstr	d16, [sp, #32]
	str	r2, [sp, #28]
	str	r2, [sp, #28]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	bge	.LBB2_4
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	sub	r0, r11, #112
	movw	r1, #3
	ldr	r2, [sp, #28]
	add	r3, sp, #72
	add	r12, r3, r2, lsl #3
	mov	lr, #0
	str	lr, [r3, r2, lsl #3]
	movw	r2, #0
	movt	r2, #16368
	str	r2, [r12, #4]
	ldr	r2, [sp, #28]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vldr	d17, .LCPI2_4
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI2_5
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	sub	r3, r11, #112
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #20]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB2_1
.LBB2_4:
	movw	r0, #0
	str	r0, [sp, #28]
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	bge	.LBB2_8
@ BB#6:                                 @   in Loop: Header=BB2_5 Depth=1
	sub	r0, r11, #112
	movw	r1, #3
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #56]
	vdiv.f64	d16, d16, d17
	ldr	r2, [r11, #-16]
	ldr	r3, [sp, #28]
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	add	r2, sp, #72
	add	r2, r2, r3, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vldr	d18, [sp, #48]
	vadd.f64	d17, d17, d18
	vldr	d18, [sp, #40]
	vdiv.f64	d17, d17, d18
	vldr	d18, [sp, #32]
	vmov	r2, r3, d17
	vmov	r12, lr, d18
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r3
	mov	r2, r12
	mov	r3, lr
	vstr	d16, [sp]               @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [sp]               @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [sp, #28]
	sub	r1, r11, #112
	add	r0, r1, r0, lsl #3
	vstr	d16, [r0]
@ BB#7:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB2_5
.LBB2_8:
	vldr	d16, [r11, #-88]
	vmov	r0, r1, d16
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#9:
.LCPI2_0:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI2_1:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI2_2:
	.long	0                       @ double 5.0E+4
	.long	1088973312
.LCPI2_3:
	.long	0                       @ double 6.0E+4
	.long	1089293312
.LCPI2_4:
	.long	2576980378              @ double 0.20000000000000001
	.long	1070176665
.LCPI2_5:
	.long	3435973837              @ double 0.90000000000000002
	.long	1072483532
.Lfunc_end2:
	.size	Crystal_pow, .Lfunc_end2-Crystal_pow
	.cantunwind
	.fnend

	.globl	init
	.p2align	3
	.type	init,%function
	.code	32                      @ @init
init:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #48
	ldr	r12, [r11, #20]
	ldr	lr, [r11, #16]
	ldr	r4, [r11, #12]
	ldr	r5, [r11, #8]
	movw	r6, #0
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
	str	r2, [r11, #-28]
	str	r3, [sp, #32]
	str	r5, [sp, #28]
	str	r4, [sp, #24]
	str	lr, [sp, #20]
	str	r12, [sp, #16]
	str	r6, [sp, #12]
	str	r6, [sp, #8]
	str	r6, [sp, #8]
.LBB3_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_3 Depth 2
	ldr	r0, [sp, #8]
	cmp	r0, #12
	bge	.LBB3_8
@ BB#2:                                 @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #0
	movw	r1, #3
	ldr	r2, [sp, #8]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vldr	d17, .LCPI3_0
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	vldr	d17, .LCPI3_1
	vadd.f64	d16, d16, d17
	ldr	r3, [r11, #-20]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #8]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vldr	d17, .LCPI3_2
	vmul.f64	d16, d16, d17
	ldr	r2, [r11, #-24]
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	ldr	r2, [sp, #8]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #2.000000e+00
	vadd.f64	d16, d16, d17
	ldr	r3, [r11, #-28]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #8]
	mov	r12, #0
	str	r12, [r2, r3, lsl #3]!
	movw	r3, #0
	movt	r3, #16446
	str	r3, [r2, #4]
	ldr	r2, [sp, #8]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #3.500000e+00
	vadd.f64	d16, d16, d17
	ldr	r3, [sp, #28]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #12]
	str	r1, [sp, #4]            @ 4-byte Spill
.LBB3_3:                                @   Parent Loop BB3_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #12]
	cmp	r0, #12
	bge	.LBB3_6
@ BB#4:                                 @   in Loop: Header=BB3_3 Depth=2
	vldr	d16, .LCPI3_3
	movw	r0, #3
	ldr	r1, [sp, #12]
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	vldr	d18, .LCPI3_4
	vmul.f64	d17, d17, d18
	ldr	r2, [sp, #8]
	vmov	s0, r2
	vcvt.f64.s32	d18, s0
	vmul.f64	d17, d17, d18
	vldr	d18, .LCPI3_5
	vadd.f64	d17, d17, d18
	ldr	r3, [sp, #24]
	add	r2, r2, r2, lsl #1
	add	r2, r3, r2, lsl #5
	add	r1, r2, r1, lsl #3
	vstr	d17, [r1]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	add	r3, r1, r2
	vmov	s0, r3
	vcvt.f64.s32	d17, s0
	ldr	r3, [sp, #20]
	add	r2, r2, r2, lsl #1
	add	r2, r3, r2, lsl #5
	add	r1, r2, r1, lsl #3
	vstr	d17, [r1]
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #8]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #12]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp]                @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB3_3 Depth=2
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB3_3
.LBB3_6:                                @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_7
.LBB3_7:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB3_1
.LBB3_8:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.p2align	3
@ BB#9:
.LCPI3_0:
	.long	2576980378              @ double 0.20000000000000001
	.long	1070176665
.LCPI3_1:
	.long	1717986918              @ double 1.8999999999999999
	.long	1073636966
.LCPI3_2:
	.long	3539053052              @ double 0.001
	.long	1062232653
.LCPI3_3:
	.long	0                       @ double 0
	.long	0
.LCPI3_4:
	.long	2296604913              @ double 1.0000000000000001E-5
	.long	1055193269
.LCPI3_5:
	.long	1202590843              @ double 0.01
	.long	1065646817
.Lfunc_end3:
	.size	init, .Lfunc_end3-init
	.cantunwind
	.fnend

	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #1000
	sub	sp, sp, #3072
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	movw	r1, #0
	vldr	d16, .LCPI4_0
	str	r1, [r11, #-20]
	str	r1, [r11, #-40]
	str	r1, [r11, #-44]
	vstr	d16, [sp, #96]
	vstr	d16, [sp, #88]
	str	r1, [sp, #84]
	str	r1, [sp, #80]
	bl	printf
	add	r1, sp, #104
	add	r10, sp, #1024
	add	lr, r10, #232
	sub	r2, r11, #1680
	sub	r3, r11, #528
	sub	r12, r11, #432
	sub	r4, r11, #336
	sub	r5, r11, #240
	sub	r6, r11, #144
	str	r0, [sp, #76]           @ 4-byte Spill
	mov	r0, r6
	str	r1, [sp, #72]           @ 4-byte Spill
	mov	r1, r5
	str	r2, [sp, #68]           @ 4-byte Spill
	mov	r2, r4
	str	r3, [sp, #64]           @ 4-byte Spill
	mov	r3, r12
	ldr	r12, [sp, #64]          @ 4-byte Reload
	str	r12, [sp]
	ldr	r4, [sp, #68]           @ 4-byte Reload
	str	r4, [sp, #4]
	str	lr, [sp, #8]
	ldr	lr, [sp, #72]           @ 4-byte Reload
	str	lr, [sp, #12]
	bl	init
	sub	r0, r11, #28
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #60]           @ 4-byte Spill
	bl	clock
	add	r1, sp, #104
	add	r10, sp, #1024
	add	r2, r10, #232
	sub	r3, r11, #1680
	sub	r12, r11, #528
	sub	lr, r11, #432
	sub	r4, r11, #336
	sub	r5, r11, #240
	sub	r6, r11, #144
	str	r0, [r11, #-40]
	mov	r0, r6
	str	r1, [sp, #56]           @ 4-byte Spill
	mov	r1, r5
	str	r2, [sp, #52]           @ 4-byte Spill
	mov	r2, r4
	str	r3, [sp, #48]           @ 4-byte Spill
	mov	r3, lr
	str	r12, [sp]
	ldr	r12, [sp, #48]          @ 4-byte Reload
	str	r12, [sp, #4]
	ldr	lr, [sp, #52]           @ 4-byte Reload
	str	lr, [sp, #8]
	ldr	r4, [sp, #56]           @ 4-byte Reload
	str	r4, [sp, #12]
	bl	SPEdriver
	vmov	d16, r0, r1
	sub	r0, r11, #36
	movw	r1, #0
	vstr	d16, [sp, #88]
	bl	gettimeofday
	str	r0, [sp, #44]           @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	str	r0, [r11, #-44]
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	vldr	d16, [sp, #88]
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, #0
	str	r1, [sp, #84]
	str	r0, [sp, #36]           @ 4-byte Spill
.LBB4_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_3 Depth 2
	ldr	r0, [sp, #84]
	cmp	r0, #12
	bge	.LBB4_8
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #80]
.LBB4_3:                                @   Parent Loop BB4_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #80]
	cmp	r0, #12
	bge	.LBB4_6
@ BB#4:                                 @   in Loop: Header=BB4_3 Depth=2
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	movw	r1, #3
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #80]
	mov	r12, r3
	add	lr, r2, r2, lsl #1
	sub	r4, r11, #1680
	add	lr, r4, lr, lsl #5
	add	r3, lr, r3, lsl #3
	vldr	d16, [r3]
	str	r1, [sp, #32]           @ 4-byte Spill
	mov	r1, r2
	mov	r2, r12
	vstr	d16, [sp]
	bl	printf
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB4_3 Depth=2
	ldr	r0, [sp, #80]
	add	r0, r0, #4
	str	r0, [sp, #80]
	b	.LBB4_3
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #84]
	add	r0, r0, #4
	str	r0, [sp, #84]
	b	.LBB4_1
.LBB4_8:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	vldr	d16, .LCPI4_1
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-28]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-24]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #96]
	vldr	d16, [sp, #96]
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.5
	movt	r1, :upper16:.L.str.5
	vldr	d16, .LCPI4_1
	ldr	r2, [r11, #-44]
	ldr	r3, [r11, #-40]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.p2align	3
@ BB#9:
.LCPI4_0:
	.long	0                       @ double 0
	.long	0
.LCPI4_1:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cantunwind
	.fnend

	.globl	SPEdriver
	.p2align	3
	.type	SPEdriver,%function
	.code	32                      @ @SPEdriver
SPEdriver:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #208
	ldr	r12, [r11, #20]
	ldr	lr, [r11, #16]
	ldr	r4, [r11, #12]
	ldr	r5, [r11, #8]
	sub	r6, r11, #64
	movw	r7, #0
	ldr	r8, .LCPI5_0
	vldr	d16, .LCPI5_4
	str	r0, [r11, #-28]
	str	r1, [r11, #-32]
	str	r2, [r11, #-36]
	str	r3, [r11, #-40]
	str	r5, [r11, #-44]
	str	r4, [r11, #-48]
	str	lr, [r11, #-52]
	str	r12, [r11, #-56]
	str	r7, [r11, #-76]
	str	r7, [r11, #-80]
	vstr	d16, [r11, #-88]
	str	r8, [r11, #-100]
	str	r7, [r11, #-104]
	mov	r0, r6
	mov	r1, r7
	bl	gettimeofday
	str	r0, [sp, #116]          @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [r11, #-76]
	str	r1, [r11, #-104]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI5_0
	ldr	r1, [r11, #-104]
	cmp	r1, r0
	bge	.LBB5_6
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	movw	r0, #12
	vldr	d16, .LCPI5_5
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-36]
	ldr	r12, [r11, #-40]
	ldr	lr, [r11, #-44]
	ldr	r4, [r11, #-48]
	ldr	r5, [r11, #-52]
	ldr	r6, [r11, #-56]
	str	r2, [sp, #112]          @ 4-byte Spill
	str	r3, [sp, #108]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp]
	ldr	r1, [sp, #112]          @ 4-byte Reload
	str	r1, [sp, #4]
	ldr	r7, [sp, #108]          @ 4-byte Reload
	str	r7, [sp, #8]
	str	r12, [sp, #12]
	str	lr, [sp, #16]
	str	r4, [sp, #20]
	str	r5, [sp, #24]
	str	r6, [sp, #28]
	bl	Crystal_div
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-104]
	add	r0, r0, #1
	str	r0, [r11, #-104]
	b	.LBB5_1
	.p2align	3
@ BB#4:
.LCPI5_4:
	.long	0                       @ double 0
	.long	0
	.p2align	3
@ BB#5:
.LCPI5_5:
	.long	1202590843              @ double 0.01
	.long	1065646817
.LBB5_6:
	sub	r0, r11, #72
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #104]          @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.6
	movt	r1, :upper16:.L.str.6
	vldr	d16, .LCPI5_2
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-72]
	ldr	lr, [r11, #-64]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	ldr	r0, [r11, #-68]
	ldr	lr, [r11, #-60]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-88]
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	vldr	d16, [r11, #-88]
	str	r0, [sp, #100]          @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	vldr	d16, .LCPI5_2
	ldr	r2, [r11, #-80]
	ldr	r3, [r11, #-76]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #96]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	sub	r1, r11, #64
	movw	r2, #0
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	gettimeofday
	str	r0, [sp, #88]           @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [r11, #-76]
	str	r1, [r11, #-104]
.LBB5_7:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI5_0
	ldr	r1, [r11, #-104]
	cmp	r1, r0
	bge	.LBB5_10
@ BB#8:                                 @   in Loop: Header=BB5_7 Depth=1
	movw	r0, #12
	ldr	r1, [r11, #-28]
	bl	Crystal_pow
	vmov	d16, r0, r1
	vstr	d16, [r11, #-96]
@ BB#9:                                 @   in Loop: Header=BB5_7 Depth=1
	ldr	r0, [r11, #-104]
	add	r0, r0, #1
	str	r0, [r11, #-104]
	b	.LBB5_7
.LBB5_10:
	sub	r0, r11, #72
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #84]           @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.3.9
	movt	r1, :upper16:.L.str.3.9
	vldr	d16, .LCPI5_2
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-72]
	ldr	lr, [r11, #-64]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	ldr	r0, [r11, #-68]
	ldr	lr, [r11, #-60]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-88]
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	vldr	d16, [r11, #-88]
	str	r0, [sp, #80]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	vldr	d16, .LCPI5_2
	ldr	r2, [r11, #-80]
	ldr	r3, [r11, #-76]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #76]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	sub	r1, r11, #64
	movw	r2, #0
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	gettimeofday
	str	r0, [sp, #68]           @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [r11, #-76]
	str	r1, [r11, #-104]
.LBB5_11:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_13 Depth 2
	ldr	r0, [r11, #-104]
	cmp	r0, #12
	bge	.LBB5_18
@ BB#12:                                @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #0
	str	r0, [r11, #-108]
.LBB5_13:                               @   Parent Loop BB5_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-108]
	cmp	r0, #12
	bge	.LBB5_16
@ BB#14:                                @   in Loop: Header=BB5_13 Depth=2
	movw	r0, #3
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-104]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r3, [r11, #-108]
	add	r1, r1, r3, lsl #3
	vldr	d16, [r1]
	ldr	r1, [r11, #-56]
	add	r1, r1, r2, lsl #5
	add	r1, r1, r3, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #64]           @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB5_13 Depth=2
	ldr	r0, [r11, #-108]
	add	r0, r0, #1
	str	r0, [r11, #-108]
	b	.LBB5_13
.LBB5_16:                               @   in Loop: Header=BB5_11 Depth=1
	b	.LBB5_17
.LBB5_17:                               @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [r11, #-104]
	add	r0, r0, #1
	str	r0, [r11, #-104]
	b	.LBB5_11
.LBB5_18:
	movw	r0, #0
	str	r0, [r11, #-104]
.LBB5_19:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_21 Depth 2
                                        @       Child Loop BB5_23 Depth 3
	ldr	r0, .LCPI5_0
	ldr	r1, [r11, #-104]
	cmp	r1, r0
	bge	.LBB5_30
@ BB#20:                                @   in Loop: Header=BB5_19 Depth=1
	movw	r0, #0
	str	r0, [r11, #-108]
.LBB5_21:                               @   Parent Loop BB5_19 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB5_23 Depth 3
	ldr	r0, [r11, #-108]
	cmp	r0, #12
	bge	.LBB5_28
@ BB#22:                                @   in Loop: Header=BB5_21 Depth=2
	movw	r0, #0
	str	r0, [r11, #-112]
.LBB5_23:                               @   Parent Loop BB5_19 Depth=1
                                        @     Parent Loop BB5_21 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r11, #-112]
	cmp	r0, #12
	bge	.LBB5_26
@ BB#24:                                @   in Loop: Header=BB5_23 Depth=3
	movw	r0, #3
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-108]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r3, [r11, #-112]
	add	r1, r1, r3, lsl #3
	vldr	d16, [r1]
	ldr	r1, [r11, #-48]
	add	r1, r1, r2, lsl #5
	add	r1, r1, r3, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #60]           @ 4-byte Spill
@ BB#25:                                @   in Loop: Header=BB5_23 Depth=3
	ldr	r0, [r11, #-112]
	add	r0, r0, #1
	str	r0, [r11, #-112]
	b	.LBB5_23
.LBB5_26:                               @   in Loop: Header=BB5_21 Depth=2
	b	.LBB5_27
.LBB5_27:                               @   in Loop: Header=BB5_21 Depth=2
	ldr	r0, [r11, #-108]
	add	r0, r0, #1
	str	r0, [r11, #-108]
	b	.LBB5_21
.LBB5_28:                               @   in Loop: Header=BB5_19 Depth=1
	movw	r0, #12
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-44]
	bl	Crystal_Cholesky
@ BB#29:                                @   in Loop: Header=BB5_19 Depth=1
	ldr	r0, [r11, #-104]
	add	r0, r0, #1
	str	r0, [r11, #-104]
	b	.LBB5_19
.LBB5_30:
	sub	r0, r11, #72
	mov	r1, #0
	bl	gettimeofday
	str	r0, [sp, #56]           @ 4-byte Spill
	bl	clock
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-68]
	ldr	lr, [r11, #-64]
	ldr	r2, [r11, #-60]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	sub	r0, r1, r2
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vldr	d18, .LCPI5_2
	vdiv.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	vstr	d16, [r11, #-88]
	movw	r0, :lower16:.L.str.4.10
	movt	r0, :upper16:.L.str.4.10
	vstr	d18, [sp, #48]          @ 8-byte Spill
	bl	printf
	vldr	d16, [r11, #-88]
	vmov	r2, r3, d16
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [r11, #-80]
	ldr	r2, [r11, #-76]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d16, s0
	vldr	d17, [sp, #48]          @ 8-byte Reload
	vdiv.f64	d16, d16, d17
	vmov	r2, r3, d16
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vldr	d16, [r11, #-96]
	vmov	r1, r2, d16
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.p2align	3
@ BB#31:
.LCPI5_2:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.LCPI5_0:
	.long	1000000                 @ 0xf4240
.Lfunc_end5:
	.size	SPEdriver, .Lfunc_end5-SPEdriver
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\nSequoia benchmark version 1.0\n"
	.size	.L.str, 32

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"\n***** results \n"
	.size	.L.str.1, 17

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"returnVal = %f \n"
	.size	.L.str.2, 17

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"i = %5d j = %5d    dtcdgd[i][j]   = %e \n"
	.size	.L.str.3, 41

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"\nTotal Wall time = %f seconds. \n"
	.size	.L.str.4, 33

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"\nTotal CPU  time = %f seconds. \n\n"
	.size	.L.str.5, 34

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"\n***** timing for Crystal_div \n"
	.size	.L.str.6, 32

	.type	.L.str.1.7,%object      @ @.str.1.7
.L.str.1.7:
	.asciz	"\nWall time = %f seconds. \n"
	.size	.L.str.1.7, 27

	.type	.L.str.2.8,%object      @ @.str.2.8
.L.str.2.8:
	.asciz	"\nCPU  time = %f seconds. \n\n"
	.size	.L.str.2.8, 28

	.type	.L.str.3.9,%object      @ @.str.3.9
.L.str.3.9:
	.asciz	"\n***** timing for Crystal_pow \n"
	.size	.L.str.3.9, 32

	.type	.L.str.4.10,%object     @ @.str.4.10
.L.str.4.10:
	.asciz	"\n***** timing for Crystal_Cholesky \n"
	.size	.L.str.4.10, 37


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
