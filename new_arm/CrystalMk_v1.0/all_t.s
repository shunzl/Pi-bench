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
	.file	"all_t.bc"
	.globl	Crystal_Cholesky
	.p2align	3
	.type	Crystal_Cholesky,%function
	.code	32                      @ @Crystal_Cholesky
Crystal_Cholesky:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #528
	bfc	sp, #0, #4
	movw	r12, #0
	str	r0, [sp, #412]
	str	r1, [sp, #408]
	str	r2, [sp, #404]
	str	r3, [sp, #400]
	vmov.i32	q8, #0x0
	add	r0, sp, #384
	vst1.64	{d16, d17}, [r0]
	str	r12, [sp, #380]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #404]
	ldr	r2, [sp, #380]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	ldr	r1, [sp, #400]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #276]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #380]
	vdup.32	q8, r0
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #380]
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
.LBB0_4:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #380]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, #96
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #380]
	mul	r2, r2, r0
	add	r1, r1, r2
	vldr	d16, [r1]
	ldr	r1, [sp, #408]
	vldr	d17, [r1]
	vdiv.f64	d16, d16, d17
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #380]
	mul	r0, r2, r0
	add	r0, r1, r0
	vstr	d16, [r0]
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #380]
	add	r1, sp, #384
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #380]
	add	lr, sp, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_5
.LBB0_8:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #380]
.LBB0_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_11 Depth 2
                                        @     Child Loop BB0_15 Depth 2
                                        @       Child Loop BB0_17 Depth 3
                                        @       Child Loop BB0_21 Depth 3
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_33
@ BB#10:                                @   in Loop: Header=BB0_9 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #288
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #284]
	str	r1, [sp, #280]
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB0_11:                               @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #380]
	cmp	r0, r1
	bge	.LBB0_14
@ BB#12:                                @   in Loop: Header=BB0_11 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #380]
	add	r3, r2, r2, lsl #1
	add	r3, r1, r3, lsl #5
	ldr	r12, [sp, #316]
	add	r3, r3, r12, lsl #3
	vldr	d16, [r3]
	add	r3, r12, r12, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #280]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #280]
	str	r0, [sp, #236]          @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB0_11 Depth=2
	ldr	r0, [sp, #316]
	vdup.32	q8, r0
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_11
.LBB0_14:                               @   in Loop: Header=BB0_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #380]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [sp, #280]
	vsub.f64	d16, d16, d17
	vstr	d16, [r1]
	ldr	r1, [sp, #380]
	add	r1, r1, #1
	str	r1, [sp, #348]
	str	r0, [sp, #204]          @ 4-byte Spill
.LBB0_15:                               @   Parent Loop BB0_9 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_17 Depth 3
                                        @       Child Loop BB0_21 Depth 3
	ldr	r0, [sp, #348]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_31
@ BB#16:                                @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #288
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #284]
	str	r1, [sp, #280]
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB0_17:                               @   Parent Loop BB0_9 Depth=1
                                        @     Parent Loop BB0_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #380]
	cmp	r0, r1
	bge	.LBB0_20
@ BB#18:                                @   in Loop: Header=BB0_17 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #380]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #316]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	add	r2, r3, r3, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #348]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #280]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #280]
	str	r0, [sp, #200]          @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB0_17 Depth=3
	ldr	r0, [sp, #316]
	add	r1, sp, #320
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #176
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_17
.LBB0_20:                               @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #0
	vldr	d16, .LCPI0_1
	movw	r1, #3
	ldr	r2, [sp, #408]
	ldr	r3, [sp, #380]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #5
	ldr	r3, [sp, #348]
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	vldr	d18, [sp, #280]
	vsub.f64	d17, d17, d18
	vstr	d17, [r2]
	vstr	d16, [sp, #280]
	str	r0, [sp, #316]
	str	r1, [sp, #172]          @ 4-byte Spill
.LBB0_21:                               @   Parent Loop BB0_9 Depth=1
                                        @     Parent Loop BB0_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #380]
	cmp	r0, r1
	bge	.LBB0_24
@ BB#22:                                @   in Loop: Header=BB0_21 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #348]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #316]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	add	r2, r3, r3, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #380]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #280]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #280]
	str	r0, [sp, #168]          @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB0_21 Depth=3
	ldr	r0, [sp, #316]
	add	r1, sp, #320
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_21
.LBB0_24:                               @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #348]
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #5
	ldr	r3, [sp, #380]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vldr	d17, [sp, #280]
	vsub.f64	d16, d16, d17
	add	r12, r3, r3, lsl #1
	add	r1, r1, r12, lsl #5
	add	r1, r1, r3, lsl #3
	vldr	d17, [r1]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r2]
	str	r0, [sp, #140]          @ 4-byte Spill
@ BB#25:                                @   in Loop: Header=BB0_15 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #348]
	vdup.32	q8, r1
	add	r2, sp, #352
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #508]
	cmp	r3, r0
	str	r1, [sp, #136]          @ 4-byte Spill
	str	r3, [sp, #132]          @ 4-byte Spill
	str	r2, [sp, #128]          @ 4-byte Spill
	beq	.LBB0_30
@ BB#26:                                @   in Loop: Header=BB0_15 Depth=2
	ldr	r0, [sp, #132]          @ 4-byte Reload
	ldr	r1, [sp, #128]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_28
@ BB#27:                                @   in Loop: Header=BB0_15 Depth=2
	ldr	r0, [sp, #136]          @ 4-byte Reload
	str	r0, [sp, #508]
	b	.LBB0_29
.LBB0_28:                               @   in Loop: Header=BB0_15 Depth=2
	ldr	r0, [sp, #128]          @ 4-byte Reload
	str	r0, [sp, #508]
.LBB0_29:                               @   in Loop: Header=BB0_15 Depth=2
	b	.LBB0_30
.LBB0_30:                               @   in Loop: Header=BB0_15 Depth=2
	ldr	r0, [sp, #508]
	str	r0, [sp, #348]
	b	.LBB0_15
.LBB0_31:                               @   in Loop: Header=BB0_9 Depth=1
	b	.LBB0_32
.LBB0_32:                               @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [sp, #380]
	add	r1, sp, #384
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #380]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_9
.LBB0_33:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #380]
.LBB0_34:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_36 Depth 2
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_42
@ BB#35:                                @   in Loop: Header=BB0_34 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB0_36:                               @   Parent Loop BB0_34 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #380]
	cmp	r0, r1
	bge	.LBB0_39
@ BB#37:                                @   in Loop: Header=BB0_36 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #380]
	add	r3, r1, r2, lsl #3
	vldr	d16, [r3]
	ldr	r12, [sp, #408]
	add	r2, r2, r2, lsl #1
	add	r2, r12, r2, lsl #5
	ldr	r12, [sp, #316]
	add	r2, r2, r12, lsl #3
	vldr	d17, [r2]
	add	r1, r1, r12, lsl #3
	vldr	d18, [r1]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r3]
	str	r0, [sp, #108]          @ 4-byte Spill
@ BB#38:                                @   in Loop: Header=BB0_36 Depth=2
	ldr	r0, [sp, #316]
	add	r1, sp, #320
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_36
.LBB0_39:                               @   in Loop: Header=BB0_34 Depth=1
	b	.LBB0_40
.LBB0_40:                               @   in Loop: Header=BB0_34 Depth=1
	ldr	r0, [sp, #380]
	add	r1, sp, #384
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #380]
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_34
	.p2align	3
@ BB#41:
.LCPI0_1:
	.long	0                       @ double 0
	.long	0
.LBB0_42:
	movw	r0, #3
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #412]
	add	r1, r1, r2, lsl #3
	vdup.32	q8, r2
	add	r2, sp, #416
	vst1.64	{d16, d17}, [r2:128]
	vldr	d18, [r1, #-8]
	ldr	r1, [sp, #408]
	ldr	r2, [sp, #412]
	sub	r2, r2, #1
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d19, [r1]
	vdiv.f64	d18, d18, d19
	ldr	r1, [sp, #400]
	add	r1, r1, r2, lsl #3
	vstr	d18, [r1]
	ldr	r1, [sp, #412]
	sub	r1, r1, #2
	str	r1, [sp, #380]
	str	r0, [sp, #60]           @ 4-byte Spill
.LBB0_43:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_45 Depth 2
	ldr	r0, [sp, #380]
	cmp	r0, #0
	blt	.LBB0_60
@ BB#44:                                @   in Loop: Header=BB0_43 Depth=1
	ldr	r0, [sp, #380]
	add	r1, sp, #384
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB0_45:                               @   Parent Loop BB0_43 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #412]
	cmp	r0, r1
	bge	.LBB0_53
@ BB#46:                                @   in Loop: Header=BB0_45 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #380]
	add	r3, r1, r2, lsl #3
	vldr	d16, [r3]
	ldr	r12, [sp, #408]
	add	r2, r2, r2, lsl #1
	add	r2, r12, r2, lsl #5
	ldr	r12, [sp, #316]
	add	r2, r2, r12, lsl #3
	vldr	d17, [r2]
	add	r1, r1, r12, lsl #3
	vldr	d18, [r1]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r3]
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#47:                                @   in Loop: Header=BB0_45 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #316]
	add	r2, sp, #320
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #476]
	cmp	r3, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB0_52
@ BB#48:                                @   in Loop: Header=BB0_45 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_50
@ BB#49:                                @   in Loop: Header=BB0_45 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #476]
	b	.LBB0_51
.LBB0_50:                               @   in Loop: Header=BB0_45 Depth=2
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #476]
.LBB0_51:                               @   in Loop: Header=BB0_45 Depth=2
	b	.LBB0_52
.LBB0_52:                               @   in Loop: Header=BB0_45 Depth=2
	ldr	r0, [sp, #476]
	str	r0, [sp, #316]
	b	.LBB0_45
.LBB0_53:                               @   in Loop: Header=BB0_43 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #400]
	ldr	r2, [sp, #380]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	ldr	r3, [sp, #408]
	add	r12, r2, r2, lsl #1
	add	r3, r3, r12, lsl #5
	add	r2, r3, r2, lsl #3
	vldr	d17, [r2]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r1]
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#54:                                @   in Loop: Header=BB0_43 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	sub	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #444]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB0_59
@ BB#55:                                @   in Loop: Header=BB0_43 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_57
@ BB#56:                                @   in Loop: Header=BB0_43 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #444]
	b	.LBB0_58
.LBB0_57:                               @   in Loop: Header=BB0_43 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #444]
.LBB0_58:                               @   in Loop: Header=BB0_43 Depth=1
	b	.LBB0_59
.LBB0_59:                               @   in Loop: Header=BB0_43 Depth=1
	ldr	r0, [sp, #444]
	str	r0, [sp, #380]
	b	.LBB0_43
.LBB0_60:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
@ BB#61:
.Lfunc_end0:
	.size	Crystal_Cholesky, .Lfunc_end0-Crystal_Cholesky
	.cantunwind
	.fnend

	.globl	Crystal_div
	.p2align	4
	.type	Crystal_div,%function
	.code	32                      @ @Crystal_div
Crystal_div:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #1152
	bfc	sp, #0, #4
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
	str	r0, [sp, #956]
	vstr	d16, [sp, #920]
	str	r6, [sp, #916]
	str	r5, [sp, #912]
	str	r4, [sp, #908]
	str	lr, [sp, #904]
	str	r12, [sp, #900]
	str	r1, [sp, #896]
	str	r3, [sp, #892]
	str	r2, [sp, #888]
	adr	r0, .LCPI1_6
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #384
	vst1.64	{d18, d19}, [r0]
	movw	r0, #50935
	movt	r0, #16048
	str	r0, [sp, #380]
	movw	r0, #60813
	movt	r0, #41141
	str	r0, [sp, #376]
	adr	r0, .LCPI1_7
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #352
	vst1.64	{d18, d19}, [r0]
	movw	r0, #0
	movt	r0, #16446
	str	r0, [sp, #348]
	mov	r0, #0
	str	r0, [sp, #344]
	adr	r1, .LCPI1_8
	vld1.64	{d18, d19}, [r1:128]
	add	r1, sp, #320
	vst1.64	{d18, d19}, [r1]
	movw	r1, #13107
	movt	r1, #16371
	str	r1, [sp, #316]
	movw	r1, #13107
	movt	r1, #13107
	str	r1, [sp, #312]
	adr	r1, .LCPI1_9
	vld1.64	{d18, d19}, [r1:128]
	add	r1, sp, #288
	vst1.64	{d18, d19}, [r1]
	movw	r1, #31457
	movt	r1, #16260
	str	r1, [sp, #284]
	movw	r1, #5243
	movt	r1, #18350
	str	r1, [sp, #280]
	vmov.i32	q9, #0x0
	add	r1, sp, #256
	vst1.64	{d18, d19}, [r1]
	str	r0, [sp, #252]
	str	r0, [sp, #248]
	add	r1, sp, #224
	vst1.64	{d18, d19}, [r1]
	str	r0, [sp, #220]
	add	r2, sp, #192
	vst1.64	{d18, d19}, [r2]
	str	r0, [sp, #188]
	vst1.64	{d18, d19}, [r1]
	str	r7, [sp, #220]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #220]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_4
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	add	r0, sp, #600
	movw	r1, #3
	ldr	r2, [sp, #220]
	add	r3, sp, #696
	add	r12, r3, r2, lsl #3
	mov	lr, #0
	str	lr, [r3, r2, lsl #3]
	movw	r2, #0
	movt	r2, #16368
	str	r2, [r12, #4]
	vldr	s0, [sp, #220]
	vcvt.f64.s32	d16, s0
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #1000]
	add	r2, sp, #976
	vst1.32	{d18, d19}, [r2]
	vldr	d17, .LCPI1_10
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	vldr	d17, .LCPI1_11
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #220]
	add	r3, sp, #600
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #184]          @ 4-byte Spill
	str	r1, [sp, #180]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #220]
	vdup.32	q8, r0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #220]
	add	lr, sp, #160
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_1
.LBB1_4:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #220]
.LBB1_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #220]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_8
@ BB#6:                                 @   in Loop: Header=BB1_5 Depth=1
	add	r0, sp, #792
	movw	r1, #3
	ldr	r2, [sp, #916]
	ldr	r3, [sp, #220]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	add	r2, sp, #696
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #376]
	vadd.f64	d16, d16, d17
	vmov.f64	d17, #1.000000e+00
	vdiv.f64	d16, d17, d16
	add	r2, sp, #792
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #156]          @ 4-byte Spill
	str	r1, [sp, #152]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [sp, #220]
	add	r1, sp, #224
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #220]
	add	lr, sp, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_5
.LBB1_8:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #220]
.LBB1_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_11 Depth 2
	ldr	r0, [sp, #220]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_22
@ BB#10:                                @   in Loop: Header=BB1_9 Depth=1
	movw	r0, #0
	movw	r1, #3
	vldr	d16, [sp, #344]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r2, sp, #352
	vst1.64	{d18, d19}, [r2:128]
	ldr	r2, [sp, #220]
	add	r3, sp, #600
	add	r3, r3, r2, lsl #3
	vldr	d17, [r3]
	vmul.f64	d16, d16, d17
	add	r3, sp, #696
	add	r3, r3, r2, lsl #3
	vldr	d17, [r3]
	vmul.f64	d16, d16, d17
	ldr	r3, [sp, #908]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #188]
	str	r1, [sp, #124]          @ 4-byte Spill
.LBB1_11:                               @   Parent Loop BB1_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #188]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_14
@ BB#12:                                @   in Loop: Header=BB1_11 Depth=2
	movw	r0, #3
	vldr	d16, [sp, #312]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r1, sp, #320
	vst1.64	{d18, d19}, [r1:128]
	vldr	d17, [sp, #920]
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r1, sp, #928
	vst1.64	{d18, d19}, [r1:128]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #220]
	add	r2, sp, #600
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	ldr	r2, [sp, #896]
	add	r1, r1, r1, lsl #1
	add	r1, r2, r1, lsl #5
	ldr	r2, [sp, #188]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #120]          @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB1_11 Depth=2
	ldr	r0, [sp, #188]
	vdup.32	q8, r0
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #188]
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_11
.LBB1_14:                               @   in Loop: Header=BB1_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #908]
	ldr	r2, [sp, #220]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [sp, #280]
	vmul.f64	d16, d16, d17
	add	r1, sp, #696
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	add	r1, sp, #792
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #896]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vadd.f64	d16, d17, d16
	vstr	d16, [r1]
	str	r0, [sp, #92]           @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB1_9 Depth=1
	ldr	r0, [sp, #220]
	add	r1, sp, #224
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #220]
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_9
	.p2align	4
@ BB#16:
.LCPI1_6:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
	.p2align	4
@ BB#17:
.LCPI1_7:
	.long	0                       @ double 30
	.long	1077805056
	.long	0                       @ double 30
	.long	1077805056
	.p2align	4
@ BB#18:
.LCPI1_8:
	.long	858993459               @ double 1.2
	.long	1072902963
	.long	858993459               @ double 1.2
	.long	1072902963
	.p2align	4
@ BB#19:
.LCPI1_9:
	.long	1202590843              @ double 0.01
	.long	1065646817
	.long	1202590843              @ double 0.01
	.long	1065646817
	.p2align	3
@ BB#20:
.LCPI1_10:
	.long	2576980378              @ double 0.20000000000000001
	.long	1070176665
	.p2align	3
@ BB#21:
.LCPI1_11:
	.long	3435973837              @ double 0.90000000000000002
	.long	1072483532
.LBB1_22:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #220]
.LBB1_23:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #220]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_26
@ BB#24:                                @   in Loop: Header=BB1_23 Depth=1
	add	r0, sp, #792
	movw	r1, #3
	ldr	r2, [sp, #896]
	ldr	r3, [sp, #220]
	add	r12, r3, r3, lsl #1
	add	r2, r2, r12, lsl #5
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vmov.f64	d17, #1.000000e+00
	vdiv.f64	d16, d17, d16
	add	r2, sp, #792
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r1, [sp, #56]           @ 4-byte Spill
@ BB#25:                                @   in Loop: Header=BB1_23 Depth=1
	ldr	r0, [sp, #220]
	add	r1, sp, #224
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #220]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_23
.LBB1_26:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #220]
.LBB1_27:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_29 Depth 2
	ldr	r0, [sp, #220]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_44
@ BB#28:                                @   in Loop: Header=BB1_27 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #908]
	ldr	r2, [sp, #220]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	add	r1, sp, #504
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	vmov.i32	q9, #0x0
	add	r1, sp, #192
	vst1.64	{d18, d19}, [r1]
	str	r0, [sp, #188]
.LBB1_29:                               @   Parent Loop BB1_27 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #188]
	ldr	r1, [sp, #956]
	cmp	r0, r1
	bge	.LBB1_37
@ BB#30:                                @   in Loop: Header=BB1_29 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #892]
	ldr	r2, [sp, #220]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #188]
	add	r1, r1, r2, lsl #3
	vldr	d16, [r1]
	vldr	d17, [sp, #920]
	vmul.f64	d16, d16, d17
	vstr	d16, [sp, #248]
	ldr	r1, [sp, #912]
	ldr	r2, [sp, #188]
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #220]
	add	r2, sp, #504
	add	r1, r2, r1, lsl #3
	vldr	d17, [r1]
	vadd.f64	d16, d17, d16
	vstr	d16, [r1]
	vldr	d16, [sp, #248]
	ldr	r1, [sp, #896]
	ldr	r2, [sp, #220]
	add	r3, r2, r2, lsl #1
	add	r1, r1, r3, lsl #5
	ldr	r12, [sp, #188]
	add	r1, r1, r12, lsl #3
	vldr	d17, [r1]
	vsub.f64	d16, d17, d16
	add	r1, sp, #792
	add	r1, r1, r2, lsl #3
	vldr	d17, [r1]
	vmul.f64	d16, d16, d17
	ldr	r1, [sp, #888]
	add	r1, r1, r3, lsl #5
	add	r1, r1, r12, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#31:                                @   in Loop: Header=BB1_29 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #188]
	add	r2, sp, #192
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #1068]
	cmp	r3, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB1_36
@ BB#32:                                @   in Loop: Header=BB1_29 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_34
@ BB#33:                                @   in Loop: Header=BB1_29 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #1068]
	b	.LBB1_35
.LBB1_34:                               @   in Loop: Header=BB1_29 Depth=2
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #1068]
.LBB1_35:                               @   in Loop: Header=BB1_29 Depth=2
	b	.LBB1_36
.LBB1_36:                               @   in Loop: Header=BB1_29 Depth=2
	ldr	r0, [sp, #1068]
	str	r0, [sp, #188]
	b	.LBB1_29
.LBB1_37:                               @   in Loop: Header=BB1_27 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #220]
	add	r2, sp, #504
	add	r2, r2, r1, lsl #3
	vldr	d16, [r2]
	ldr	r2, [sp, #904]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vsub.f64	d16, d16, d17
	add	r2, sp, #408
	add	r1, r2, r1, lsl #3
	vstr	d16, [r1]
	ldr	r1, [sp, #220]
	add	r2, r2, r1, lsl #3
	vldr	d16, [r2]
	add	r2, sp, #792
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	ldr	r2, [sp, #900]
	add	r1, r2, r1, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#38:                                @   in Loop: Header=BB1_27 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #220]
	add	r2, sp, #224
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #1036]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB1_43
@ BB#39:                                @   in Loop: Header=BB1_27 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_41
@ BB#40:                                @   in Loop: Header=BB1_27 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #1036]
	b	.LBB1_42
.LBB1_41:                               @   in Loop: Header=BB1_27 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #1036]
.LBB1_42:                               @   in Loop: Header=BB1_27 Depth=1
	b	.LBB1_43
.LBB1_43:                               @   in Loop: Header=BB1_27 Depth=1
	ldr	r0, [sp, #1036]
	str	r0, [sp, #220]
	b	.LBB1_27
.LBB1_44:
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
@ BB#45:
.Lfunc_end1:
	.size	Crystal_div, .Lfunc_end1-Crystal_div
	.cantunwind
	.fnend

	.globl	Crystal_pow
	.p2align	4
	.type	Crystal_pow,%function
	.code	32                      @ @Crystal_pow
Crystal_pow:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #592
	bfc	sp, #0, #4
	movw	r2, #0
	str	r0, [sp, #444]
	str	r1, [sp, #440]
	adr	r0, .LCPI2_0
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #224
	vst1.64	{d16, d17}, [r0]
	movw	r0, #19456
	movt	r0, #16621
	str	r0, [sp, #220]
	mov	r0, #0
	str	r0, [sp, #216]
	adr	r1, .LCPI2_1
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1]
	movw	r1, #27136
	movt	r1, #16616
	str	r1, [sp, #188]
	str	r0, [sp, #184]
	adr	r1, .LCPI2_2
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #160
	vst1.64	{d16, d17}, [r1]
	movw	r1, #50935
	movt	r1, #16048
	str	r1, [sp, #156]
	movw	r1, #60813
	movt	r1, #41141
	str	r1, [sp, #152]
	adr	r1, .LCPI2_3
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1073741824
	str	r1, [sp, #124]
	str	r0, [sp, #120]
	adr	r1, .LCPI2_4
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #96
	vst1.64	{d16, d17}, [r1]
	movw	r1, #31457
	movt	r1, #16260
	str	r1, [sp, #92]
	movw	r1, #5243
	movt	r1, #18350
	str	r1, [sp, #88]
	vmov.i32	q8, #0x0
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #60]
	vst1.64	{d16, d17}, [r1]
	str	r2, [sp, #60]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #444]
	cmp	r0, r1
	bge	.LBB2_4
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	add	r0, sp, #344
	movw	r1, #3
	ldr	r2, [sp, #60]
	add	r3, sp, #248
	add	r12, r3, r2, lsl #3
	mov	lr, #0
	str	lr, [r3, r2, lsl #3]
	movw	r2, #0
	movt	r2, #16368
	str	r2, [r12, #4]
	vldr	s0, [sp, #60]
	vcvt.f64.s32	d16, s0
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #536]
	add	r2, sp, #512
	vst1.32	{d18, d19}, [r2]
	vldr	d17, .LCPI2_5
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI2_6
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	ldr	r2, [sp, #60]
	add	r3, sp, #344
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #56]           @ 4-byte Spill
	str	r1, [sp, #52]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #60]
	vdup.32	q8, r0
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #60]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_1
.LBB2_4:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #60]
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #444]
	cmp	r0, r1
	bge	.LBB2_13
@ BB#6:                                 @   in Loop: Header=BB2_5 Depth=1
	add	r0, sp, #344
	movw	r1, #3
	vldr	d16, [sp, #216]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r2, sp, #224
	vst1.64	{d18, d19}, [r2:128]
	vldr	d17, [sp, #184]
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r2, sp, #192
	vst1.64	{d18, d19}, [r2:128]
	vdiv.f64	d16, d16, d17
	ldr	r2, [sp, #440]
	ldr	r3, [sp, #60]
	add	r2, r2, r3, lsl #3
	vldr	d17, [r2]
	add	r2, sp, #248
	add	r2, r2, r3, lsl #3
	vldr	d20, [r2]
	vmul.f64	d17, d17, d20
	vldr	d20, [sp, #152]
	vadd.f64	d17, d17, d20
	vldr	d20, [sp, #120]
	vdiv.f64	d17, d17, d20
	vldr	d20, [sp, #88]
	vmov	r2, r3, d17
	vmov	r12, lr, d20
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	mov	r2, r12
	mov	r3, lr
	vstr	d16, [sp, #16]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [sp, #16]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [sp, #60]
	add	r1, sp, #344
	add	r0, r1, r0, lsl #3
	vstr	d16, [r0]
@ BB#7:                                 @   in Loop: Header=BB2_5 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #60]
	add	r2, sp, #64
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #572]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB2_12
@ BB#8:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_10
@ BB#9:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #572]
	b	.LBB2_11
.LBB2_10:                               @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #572]
.LBB2_11:                               @   in Loop: Header=BB2_5 Depth=1
	b	.LBB2_12
.LBB2_12:                               @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [sp, #572]
	str	r0, [sp, #60]
	b	.LBB2_5
.LBB2_13:
	vldr	d16, [sp, #368]
	vmov	r0, r1, d16
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	4
@ BB#14:
.LCPI2_0:
	.long	0                       @ double 6.0E+4
	.long	1089293312
	.long	0                       @ double 6.0E+4
	.long	1089293312
.LCPI2_1:
	.long	0                       @ double 5.0E+4
	.long	1088973312
	.long	0                       @ double 5.0E+4
	.long	1088973312
.LCPI2_2:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI2_3:
	.long	0                       @ double 2
	.long	1073741824
	.long	0                       @ double 2
	.long	1073741824
.LCPI2_4:
	.long	1202590843              @ double 0.01
	.long	1065646817
	.long	1202590843              @ double 0.01
	.long	1065646817
.LCPI2_5:
	.long	2576980378              @ double 0.20000000000000001
	.long	1070176665
.LCPI2_6:
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
	sub	sp, sp, #440
	bfc	sp, #0, #4
	ldr	r12, [r11, #20]
	ldr	lr, [r11, #16]
	ldr	r4, [r11, #12]
	ldr	r5, [r11, #8]
	movw	r6, #0
	str	r0, [sp, #124]
	str	r1, [sp, #120]
	str	r2, [sp, #116]
	str	r3, [sp, #112]
	str	r5, [sp, #108]
	str	r4, [sp, #104]
	str	lr, [sp, #100]
	str	r12, [sp, #96]
	vmov.i32	q8, #0x0
	add	r0, sp, #80
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #76]
	add	r1, sp, #48
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #44]
	vst1.64	{d16, d17}, [r1]
	str	r6, [sp, #44]
.LBB3_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_3 Depth 2
	ldr	r0, [sp, #44]
	cmp	r0, #12
	bge	.LBB3_18
@ BB#2:                                 @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #0
	movw	r1, #3
	vldr	s0, [sp, #44]
	vcvt.f64.s32	d16, s0
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #344]
	add	r2, sp, #320
	vst1.32	{d18, d19}, [r2]
	vldr	d17, .LCPI3_0
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.200000e+01
	vdiv.f64	d16, d16, d17
	vldr	d17, .LCPI3_1
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #124]
	ldr	r3, [sp, #44]
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	ldr	r2, [sp, #124]
	ldr	r3, [sp, #44]
	add	r2, r2, r3, lsl #3
	vldr	d16, [r2]
	vldr	d17, .LCPI3_2
	vmul.f64	d16, d16, d17
	ldr	r2, [sp, #120]
	add	r2, r2, r3, lsl #3
	vstr	d16, [r2]
	ldr	r2, [sp, #44]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #2.000000e+00
	vadd.f64	d16, d16, d17
	ldr	r3, [sp, #116]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	ldr	r2, [sp, #112]
	ldr	r3, [sp, #44]
	mov	r12, #0
	str	r12, [r2, r3, lsl #3]!
	movw	r3, #0
	movt	r3, #16446
	str	r3, [r2, #4]
	ldr	r2, [sp, #44]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #3.500000e+00
	vadd.f64	d16, d16, d17
	ldr	r3, [sp, #108]
	add	r2, r3, r2, lsl #3
	vstr	d16, [r2]
	str	r0, [sp, #76]
	str	r1, [sp, #40]           @ 4-byte Spill
.LBB3_3:                                @   Parent Loop BB3_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #76]
	cmp	r0, #12
	bge	.LBB3_11
@ BB#4:                                 @   in Loop: Header=BB3_3 Depth=2
	vldr	d16, .LCPI3_3
	movw	r0, #3
	vldr	s0, [sp, #76]
	vcvt.f64.s32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vstr	d17, [sp, #200]
	add	r1, sp, #176
	vst1.32	{d18, d19}, [r1]
	vldr	d20, .LCPI3_4
	vmul.f64	d17, d17, d20
	vldr	s0, [sp, #44]
	vcvt.f64.s32	d20, s0
	vmov.f64	d18, d20
	vmov.f64	d19, d20
	vstr	d20, [sp, #152]
	add	r1, sp, #128
	vst1.32	{d18, d19}, [r1]
	vmul.f64	d17, d17, d20
	vldr	d20, .LCPI3_5
	vadd.f64	d17, d17, d20
	ldr	r1, [sp, #104]
	ldr	r2, [sp, #44]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #76]
	add	r1, r1, r2, lsl #3
	vstr	d17, [r1]
	ldr	r1, [sp, #76]
	vdup.32	q9, r1
	add	r2, sp, #80
	vst1.64	{d18, d19}, [r2:128]
	ldr	r2, [sp, #44]
	vdup.32	q9, r2
	add	r3, sp, #48
	vst1.64	{d18, d19}, [r3:128]
	add	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #44]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #76]
	add	r1, r1, r2, lsl #3
	vstr	d17, [r1]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #44]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r2, [sp, #76]
	add	r1, r1, r2, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #36]           @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB3_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #76]
	vdup.32	q8, r1
	add	r2, sp, #80
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #412]
	cmp	r3, r0
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	beq	.LBB3_10
@ BB#6:                                 @   in Loop: Header=BB3_3 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_8
@ BB#7:                                 @   in Loop: Header=BB3_3 Depth=2
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #412]
	b	.LBB3_9
.LBB3_8:                                @   in Loop: Header=BB3_3 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #412]
.LBB3_9:                                @   in Loop: Header=BB3_3 Depth=2
	b	.LBB3_10
.LBB3_10:                               @   in Loop: Header=BB3_3 Depth=2
	ldr	r0, [sp, #412]
	str	r0, [sp, #76]
	b	.LBB3_3
.LBB3_11:                               @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_12
.LBB3_12:                               @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #44]
	vdup.32	q8, r1
	add	r2, sp, #48
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #380]
	cmp	r3, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	beq	.LBB3_17
@ BB#13:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_15
@ BB#14:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #380]
	b	.LBB3_16
.LBB3_15:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #380]
.LBB3_16:                               @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_17
.LBB3_17:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #380]
	str	r0, [sp, #44]
	b	.LBB3_1
.LBB3_18:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.p2align	3
@ BB#19:
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
	sub	sp, sp, #456
	sub	sp, sp, #4096
	bfc	sp, #0, #4
	add	lr, sp, #4096
	add	r0, lr, #108
	movw	r1, #0
	vmov.i32	q8, #0x0
	add	r2, sp, #4288
	vst1.64	{d16, d17}, [r2]
	mov	r2, #0
	str	r2, [r0, #80]
	add	lr, sp, #4096
	add	r3, lr, #144
	vst1.64	{d16, d17}, [r3]
	str	r2, [r0, #32]
	add	r4, sp, #4096
	add	r3, r4, #112
	vst1.64	{d16, d17}, [r3]
	str	r2, [r0]
	add	r3, sp, #240
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #236]
	str	r2, [sp, #232]
	add	r3, sp, #208
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #204]
	str	r2, [sp, #200]
	add	r3, sp, #176
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #172]
	add	r12, sp, #144
	vst1.64	{d16, d17}, [r12]
	str	r2, [sp, #140]
	movw	r12, :lower16:.L.str
	movt	r12, :upper16:.L.str
	str	r0, [sp, #136]          @ 4-byte Spill
	mov	r0, r12
	str	r3, [sp, #132]          @ 4-byte Spill
	str	r1, [sp, #128]          @ 4-byte Spill
	add	r10, sp, #112
	vst1.64	{d16, d17}, [r10:128]   @ 16-byte Spill
	str	r2, [sp, #108]          @ 4-byte Spill
	bl	printf
	mov	r1, sp
	add	r2, sp, #264
	str	r2, [r1, #12]
	add	r10, sp, #1024
	add	r3, r10, #392
	str	r3, [r1, #8]
	add	r10, sp, #2048
	add	r12, r10, #520
	str	r12, [r1, #4]
	add	r10, sp, #3072
	add	lr, r10, #648
	str	lr, [r1]
	add	r10, sp, #4096
	add	r1, r10, #8
	add	r10, sp, #3072
	add	r4, r10, #936
	add	r10, sp, #3072
	add	r5, r10, #840
	add	r10, sp, #3072
	add	r6, r10, #744
	str	r0, [sp, #104]          @ 4-byte Spill
	mov	r0, r1
	str	r1, [sp, #100]          @ 4-byte Spill
	mov	r1, r4
	str	r2, [sp, #96]           @ 4-byte Spill
	mov	r2, r5
	str	r3, [sp, #92]           @ 4-byte Spill
	mov	r3, r6
	str	r6, [sp, #88]           @ 4-byte Spill
	str	lr, [sp, #84]           @ 4-byte Spill
	str	r4, [sp, #80]           @ 4-byte Spill
	str	r5, [sp, #76]           @ 4-byte Spill
	str	r12, [sp, #72]          @ 4-byte Spill
	bl	init
	add	r4, sp, #4096
	add	r0, r4, #180
	ldr	r1, [sp, #108]          @ 4-byte Reload
	bl	gettimeofday
	str	r0, [sp, #68]           @ 4-byte Spill
	bl	clock
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1, #32]
	mov	r0, sp
	ldr	r2, [sp, #96]           @ 4-byte Reload
	str	r2, [r0, #12]
	ldr	r3, [sp, #92]           @ 4-byte Reload
	str	r3, [r0, #8]
	ldr	r12, [sp, #72]          @ 4-byte Reload
	str	r12, [r0, #4]
	ldr	lr, [sp, #84]           @ 4-byte Reload
	str	lr, [r0]
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, [sp, #80]           @ 4-byte Reload
	ldr	r2, [sp, #76]           @ 4-byte Reload
	ldr	r3, [sp, #88]           @ 4-byte Reload
	bl	SPEdriver
	str	r0, [sp, #200]
	str	r1, [sp, #204]
	add	r4, sp, #4096
	add	r0, r4, #172
	ldr	r1, [sp, #108]          @ 4-byte Reload
	bl	gettimeofday
	str	r0, [sp, #64]           @ 4-byte Spill
	bl	clock
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1]
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vldr	d18, [sp, #200]
	vmov	r2, r3, d18
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [sp, #132]          @ 4-byte Reload
	add	lr, sp, #112
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	ldr	r2, [sp, #128]          @ 4-byte Reload
	str	r2, [sp, #172]
	str	r0, [sp, #56]           @ 4-byte Spill
.LBB4_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_3 Depth 2
	ldr	r0, [sp, #172]
	cmp	r0, #12
	bge	.LBB4_18
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #140]
.LBB4_3:                                @   Parent Loop BB4_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #140]
	cmp	r0, #12
	bge	.LBB4_11
@ BB#4:                                 @   in Loop: Header=BB4_3 Depth=2
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	movw	r1, #3
	ldr	r2, [sp, #172]
	ldr	r3, [sp, #140]
	mov	r12, r3
	add	lr, r2, r2, lsl #1
	add	r5, sp, #2048
	add	r4, r5, #520
	add	lr, r4, lr, lsl #5
	add	r3, lr, r3, lsl #3
	vldr	d16, [r3]
	str	r1, [sp, #52]           @ 4-byte Spill
	mov	r1, r2
	mov	r2, r12
	vstr	d16, [sp]
	bl	printf
	str	r0, [sp, #48]           @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB4_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #140]
	vdup.32	q8, r1
	add	r2, sp, #144
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x4
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #4
	mul	r0, r1, r0
	ldr	r12, [sp, #136]         @ 4-byte Reload
	str	r1, [r12, #320]
	cmp	r3, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	beq	.LBB4_10
@ BB#6:                                 @   in Loop: Header=BB4_3 Depth=2
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_8
@ BB#7:                                 @   in Loop: Header=BB4_3 Depth=2
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1, #320]
	b	.LBB4_9
.LBB4_8:                                @   in Loop: Header=BB4_3 Depth=2
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1, #320]
.LBB4_9:                                @   in Loop: Header=BB4_3 Depth=2
	b	.LBB4_10
.LBB4_10:                               @   in Loop: Header=BB4_3 Depth=2
	ldr	r0, [sp, #136]          @ 4-byte Reload
	ldr	r1, [r0, #320]
	str	r1, [sp, #140]
	b	.LBB4_3
.LBB4_11:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_12
.LBB4_12:                               @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #172]
	vdup.32	q8, r1
	add	r2, sp, #176
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x4
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #4
	mul	r0, r1, r0
	ldr	r12, [sp, #136]         @ 4-byte Reload
	str	r1, [r12, #288]
	cmp	r3, r0
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	beq	.LBB4_17
@ BB#13:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_15
@ BB#14:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1, #288]
	b	.LBB4_16
.LBB4_15:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #136]          @ 4-byte Reload
	str	r0, [r1, #288]
.LBB4_16:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_17
.LBB4_17:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #136]          @ 4-byte Reload
	ldr	r1, [r0, #288]
	str	r1, [sp, #172]
	b	.LBB4_1
.LBB4_18:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	vldr	d16, .LCPI4_0
	ldr	r1, [sp, #136]          @ 4-byte Reload
	ldr	r2, [r1, #64]
	ldr	r3, [r1, #72]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	ldr	r2, [r1, #68]
	ldr	r3, [r1, #76]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #232]
	vldr	d16, [sp, #232]
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.5
	movt	r1, :upper16:.L.str.5
	vldr	d16, .LCPI4_0
	ldr	r2, [sp, #136]          @ 4-byte Reload
	ldr	r3, [r2]
	ldr	lr, [r2, #32]
	sub	r3, r3, lr
	vmov	s0, r3
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.p2align	3
@ BB#19:
.LCPI4_0:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end4:
	.size	main, .Lfunc_end4-main
	.cantunwind
	.fnend

	.globl	SPEdriver
	.p2align	4
	.type	SPEdriver,%function
	.code	32                      @ @SPEdriver
SPEdriver:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #1200
	bfc	sp, #0, #4
	ldr	r12, [r11, #20]
	ldr	lr, [r11, #16]
	ldr	r4, [r11, #12]
	ldr	r5, [r11, #8]
	movw	r6, #0
	str	r0, [sp, #572]
	str	r1, [sp, #568]
	str	r2, [sp, #564]
	str	r3, [sp, #560]
	str	r5, [sp, #556]
	str	r4, [sp, #552]
	str	lr, [sp, #548]
	str	r12, [sp, #544]
	vmov.i32	q8, #0x0
	add	r0, sp, #512
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #508]
	add	r1, sp, #480
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #476]
	add	r1, sp, #448
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #444]
	str	r0, [sp, #440]
	adr	r1, .LCPI5_4
	vld1.64	{d18, d19}, [r1:128]
	add	r1, sp, #384
	vst1.64	{d18, d19}, [r1]
	movw	r1, #16960
	movt	r1, #15
	str	r1, [sp, #380]
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #348]
	add	r2, sp, #536
	str	r0, [sp, #280]          @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #280]          @ 4-byte Reload
	str	r1, [sp, #276]          @ 4-byte Spill
	mov	r1, r2
	str	r6, [sp, #272]          @ 4-byte Spill
	add	r4, sp, #256
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	bl	gettimeofday
	str	r0, [sp, #252]          @ 4-byte Spill
	bl	clock
	str	r0, [sp, #508]
	ldr	r0, [sp, #276]          @ 4-byte Reload
	add	lr, sp, #256
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r0]
	ldr	r1, [sp, #272]          @ 4-byte Reload
	str	r1, [sp, #348]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI5_1
	ldr	r1, [sp, #348]
	cmp	r1, r0
	bge	.LBB5_4
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	movw	r0, #12
	vldr	d16, .LCPI5_5
	ldr	r1, [sp, #572]
	ldr	r2, [sp, #568]
	ldr	r3, [sp, #564]
	ldr	r12, [sp, #560]
	ldr	lr, [sp, #556]
	ldr	r4, [sp, #552]
	ldr	r5, [sp, #548]
	ldr	r6, [sp, #544]
	str	r2, [sp, #248]          @ 4-byte Spill
	str	r3, [sp, #244]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp]
	ldr	r1, [sp, #248]          @ 4-byte Reload
	str	r1, [sp, #4]
	ldr	r7, [sp, #244]          @ 4-byte Reload
	str	r7, [sp, #8]
	str	r12, [sp, #12]
	str	lr, [sp, #16]
	str	r4, [sp, #20]
	str	r5, [sp, #24]
	str	r6, [sp, #28]
	bl	Crystal_div
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #348]
	vdup.32	q8, r0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #348]
	add	lr, sp, #224
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_1
.LBB5_4:
	add	r0, sp, #528
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #220]          @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.6
	movt	r1, :upper16:.L.str.6
	vldr	d16, .LCPI5_6
	str	r0, [sp, #476]
	ldr	r0, [sp, #528]
	ldr	lr, [sp, #536]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	ldr	r0, [sp, #532]
	ldr	lr, [sp, #540]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #440]
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	vldr	d16, [sp, #440]
	str	r0, [sp, #216]          @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	vldr	d16, .LCPI5_6
	ldr	r2, [sp, #476]
	ldr	r3, [sp, #508]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #212]          @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	add	r1, sp, #536
	movw	r2, #0
	str	r0, [sp, #208]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	gettimeofday
	str	r0, [sp, #204]          @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [sp, #508]
	str	r1, [sp, #348]
.LBB5_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI5_1
	ldr	r1, [sp, #348]
	cmp	r1, r0
	bge	.LBB5_8
@ BB#6:                                 @   in Loop: Header=BB5_5 Depth=1
	movw	r0, #12
	ldr	r1, [sp, #572]
	bl	Crystal_pow
	vmov	d16, r0, r1
	vstr	d16, [sp, #408]
@ BB#7:                                 @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, [sp, #348]
	add	r1, sp, #352
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #348]
	add	lr, sp, #176
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_5
.LBB5_8:
	add	r0, sp, #528
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #172]          @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.3.9
	movt	r1, :upper16:.L.str.3.9
	vldr	d16, .LCPI5_6
	str	r0, [sp, #476]
	ldr	r0, [sp, #528]
	ldr	lr, [sp, #536]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	ldr	r0, [sp, #532]
	ldr	lr, [sp, #540]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #440]
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	vldr	d16, [sp, #440]
	str	r0, [sp, #168]          @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	vldr	d16, .LCPI5_6
	ldr	r2, [sp, #476]
	ldr	r3, [sp, #508]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #164]          @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	add	r1, sp, #536
	movw	r2, #0
	str	r0, [sp, #160]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	gettimeofday
	str	r0, [sp, #156]          @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [sp, #508]
	str	r1, [sp, #348]
.LBB5_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_11 Depth 2
	ldr	r0, [sp, #348]
	cmp	r0, #12
	bge	.LBB5_19
@ BB#10:                                @   in Loop: Header=BB5_9 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB5_11:                               @   Parent Loop BB5_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #316]
	cmp	r0, #12
	bge	.LBB5_14
@ BB#12:                                @   in Loop: Header=BB5_11 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #552]
	ldr	r2, [sp, #348]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r3, [sp, #316]
	add	r1, r1, r3, lsl #3
	vldr	d16, [r1]
	ldr	r1, [sp, #544]
	add	r1, r1, r2, lsl #5
	add	r1, r1, r3, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #152]          @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB5_11 Depth=2
	ldr	r0, [sp, #316]
	vdup.32	q8, r0
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #316]
	add	lr, sp, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_11
.LBB5_14:                               @   in Loop: Header=BB5_9 Depth=1
	b	.LBB5_15
.LBB5_15:                               @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [sp, #348]
	add	r1, sp, #352
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #348]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_9
	.p2align	4
@ BB#16:
.LCPI5_4:
	.long	1000000                 @ 0xf4240
	.long	1000000                 @ 0xf4240
	.long	1000000                 @ 0xf4240
	.long	1000000                 @ 0xf4240
	.p2align	3
@ BB#17:
.LCPI5_5:
	.long	1202590843              @ double 0.01
	.long	1065646817
	.p2align	3
@ BB#18:
.LCPI5_6:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.LBB5_19:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #348]
.LBB5_20:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_22 Depth 2
                                        @       Child Loop BB5_24 Depth 3
	ldr	r0, .LCPI5_1
	ldr	r1, [sp, #348]
	cmp	r1, r0
	bge	.LBB5_46
@ BB#21:                                @   in Loop: Header=BB5_20 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB5_22:                               @   Parent Loop BB5_20 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB5_24 Depth 3
	ldr	r0, [sp, #316]
	cmp	r0, #12
	bge	.LBB5_39
@ BB#23:                                @   in Loop: Header=BB5_22 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #288
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #284]
.LBB5_24:                               @   Parent Loop BB5_20 Depth=1
                                        @     Parent Loop BB5_22 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #284]
	cmp	r0, #12
	bge	.LBB5_32
@ BB#25:                                @   in Loop: Header=BB5_24 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #544]
	ldr	r2, [sp, #316]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #5
	ldr	r3, [sp, #284]
	add	r1, r1, r3, lsl #3
	vldr	d16, [r1]
	ldr	r1, [sp, #552]
	add	r1, r1, r2, lsl #5
	add	r1, r1, r3, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #108]          @ 4-byte Spill
@ BB#26:                                @   in Loop: Header=BB5_24 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #284]
	vdup.32	q8, r1
	add	r2, sp, #288
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #1116]
	cmp	r3, r0
	str	r1, [sp, #104]          @ 4-byte Spill
	str	r3, [sp, #100]          @ 4-byte Spill
	str	r2, [sp, #96]           @ 4-byte Spill
	beq	.LBB5_31
@ BB#27:                                @   in Loop: Header=BB5_24 Depth=3
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, [sp, #96]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_29
@ BB#28:                                @   in Loop: Header=BB5_24 Depth=3
	ldr	r0, [sp, #104]          @ 4-byte Reload
	str	r0, [sp, #1116]
	b	.LBB5_30
.LBB5_29:                               @   in Loop: Header=BB5_24 Depth=3
	ldr	r0, [sp, #96]           @ 4-byte Reload
	str	r0, [sp, #1116]
.LBB5_30:                               @   in Loop: Header=BB5_24 Depth=3
	b	.LBB5_31
.LBB5_31:                               @   in Loop: Header=BB5_24 Depth=3
	ldr	r0, [sp, #1116]
	str	r0, [sp, #284]
	b	.LBB5_24
.LBB5_32:                               @   in Loop: Header=BB5_22 Depth=2
	b	.LBB5_33
.LBB5_33:                               @   in Loop: Header=BB5_22 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #316]
	add	r2, sp, #320
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #1084]
	cmp	r3, r0
	str	r1, [sp, #92]           @ 4-byte Spill
	str	r3, [sp, #88]           @ 4-byte Spill
	str	r2, [sp, #84]           @ 4-byte Spill
	beq	.LBB5_38
@ BB#34:                                @   in Loop: Header=BB5_22 Depth=2
	ldr	r0, [sp, #88]           @ 4-byte Reload
	ldr	r1, [sp, #84]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_36
@ BB#35:                                @   in Loop: Header=BB5_22 Depth=2
	ldr	r0, [sp, #92]           @ 4-byte Reload
	str	r0, [sp, #1084]
	b	.LBB5_37
.LBB5_36:                               @   in Loop: Header=BB5_22 Depth=2
	ldr	r0, [sp, #84]           @ 4-byte Reload
	str	r0, [sp, #1084]
.LBB5_37:                               @   in Loop: Header=BB5_22 Depth=2
	b	.LBB5_38
.LBB5_38:                               @   in Loop: Header=BB5_22 Depth=2
	ldr	r0, [sp, #1084]
	str	r0, [sp, #316]
	b	.LBB5_22
.LBB5_39:                               @   in Loop: Header=BB5_20 Depth=1
	movw	r0, #12
	ldr	r1, [sp, #552]
	ldr	r2, [sp, #564]
	ldr	r3, [sp, #556]
	bl	Crystal_Cholesky
@ BB#40:                                @   in Loop: Header=BB5_20 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #348]
	add	r2, sp, #352
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	str	r1, [sp, #1052]
	cmp	r3, r0
	str	r1, [sp, #80]           @ 4-byte Spill
	str	r3, [sp, #76]           @ 4-byte Spill
	str	r2, [sp, #72]           @ 4-byte Spill
	beq	.LBB5_45
@ BB#41:                                @   in Loop: Header=BB5_20 Depth=1
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #72]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_43
@ BB#42:                                @   in Loop: Header=BB5_20 Depth=1
	ldr	r0, [sp, #80]           @ 4-byte Reload
	str	r0, [sp, #1052]
	b	.LBB5_44
.LBB5_43:                               @   in Loop: Header=BB5_20 Depth=1
	ldr	r0, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #1052]
.LBB5_44:                               @   in Loop: Header=BB5_20 Depth=1
	b	.LBB5_45
.LBB5_45:                               @   in Loop: Header=BB5_20 Depth=1
	ldr	r0, [sp, #1052]
	str	r0, [sp, #348]
	b	.LBB5_20
.LBB5_46:
	add	r0, sp, #528
	mov	r1, #0
	bl	gettimeofday
	str	r0, [sp, #68]           @ 4-byte Spill
	bl	clock
	str	r0, [sp, #476]
	ldr	r0, [sp, #528]
	ldr	r1, [sp, #532]
	ldr	lr, [sp, #536]
	ldr	r2, [sp, #540]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	sub	r0, r1, r2
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vldr	d18, .LCPI5_2
	vdiv.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	vstr	d16, [sp, #440]
	movw	r0, :lower16:.L.str.4.10
	movt	r0, :upper16:.L.str.4.10
	vstr	d18, [sp, #56]          @ 8-byte Spill
	bl	printf
	vldr	d16, [sp, #440]
	vmov	r2, r3, d16
	movw	r1, :lower16:.L.str.1.7
	movt	r1, :upper16:.L.str.1.7
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	ldr	r1, [sp, #476]
	ldr	r2, [sp, #508]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d16, s0
	vldr	d17, [sp, #56]          @ 8-byte Reload
	vdiv.f64	d16, d16, d17
	vmov	r2, r3, d16
	movw	r1, :lower16:.L.str.2.8
	movt	r1, :upper16:.L.str.2.8
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vldr	d16, [sp, #408]
	vmov	r1, r2, d16
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	3
@ BB#47:
.LCPI5_2:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.LCPI5_1:
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
