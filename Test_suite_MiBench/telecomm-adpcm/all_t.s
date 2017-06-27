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
	.globl	adpcm_coder
	.p2align	2
	.type	adpcm_coder,%function
	.code	32                      @ @adpcm_coder
adpcm_coder:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #752
	bfc	sp, #0, #4
	movw	r12, #1
	str	r0, [sp, #632]
	str	r1, [sp, #628]
	str	r2, [sp, #604]
	str	r3, [sp, #600]
	ldr	r0, [sp, #628]
	str	r0, [sp, #592]
	ldr	r0, [sp, #632]
	str	r0, [sp, #596]
	ldr	r0, [sp, #600]
	ldrsh	r0, [r0]
	str	r0, [sp, #412]
	ldr	r0, [sp, #600]
	ldrb	r0, [r0, #2]
	str	r0, [sp, #348]
	movw	r1, :lower16:stepsizeTable
	movt	r1, :upper16:stepsizeTable
	ldr	r0, [r1, r0, lsl #2]
	str	r0, [sp, #444]
	vmov.i32	q8, #0x1
	add	r0, sp, #288
	vst1.64	{d16, d17}, [r0]
	str	r12, [sp, #284]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #604]
	cmp	r0, #0
	ble	.LBB0_42
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #8
	ldr	r1, [sp, #596]
	add	r2, r1, #2
	str	r2, [sp, #596]
	ldrsh	r1, [r1]
	str	r1, [sp, #572]
	vdup.32	q8, r1
	add	r2, sp, #576
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #412]
	vdup.32	q8, r3
	add	r12, sp, #416
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q9, q8
	vorr	q9, q8, q8
	add	r2, sp, #480
	vst1.64	{d16, d17}, [r2]
	sub	r1, r1, r3
	str	r1, [sp, #476]
	ldr	r1, [sp, #476]
	cmp	r1, #0
	movw	r1, #0
	movlt	r1, #1
	tst	r1, #1
	moveq	r0, #0
	str	r0, [sp, #540]
	ldr	r0, [sp, #540]
	cmp	r0, #0
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB0_4
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #476]
	add	r2, sp, #480
	vld1.64	{d16, d17}, [r2:128]
	vneg.s32	q8, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	sub	r0, r0, r1
	str	r0, [sp, #476]
	add	lr, sp, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	vmov.i32	q8, #0x0
	add	r1, sp, #512
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #508]
	ldr	r1, [sp, #444]
	vdup.32	q8, r1
	add	r2, sp, #448
	vst1.64	{d16, d17}, [r2:128]
	vshr.s32	q8, q8, #3
	vorr	q9, q8, q8
	add	r2, sp, #384
	vst1.64	{d16, d17}, [r2]
	asr	r1, r1, #3
	str	r1, [sp, #380]
	ldr	r1, [sp, #476]
	ldr	r2, [sp, #444]
	cmp	r1, r2
	str	r0, [sp, #236]          @ 4-byte Spill
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB0_6
@ BB#5:                                 @   in Loop: Header=BB0_1 Depth=1
	vmov.i32	q8, #0x4
	add	r0, sp, #512
	vst1.64	{d16, d17}, [r0]
	mov	r0, #4
	str	r0, [sp, #508]
	ldr	r0, [sp, #444]
	vdup.32	q8, r0
	add	r1, sp, #448
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #476]
	add	r3, sp, #480
	vld1.64	{d18, d19}, [r3:128]
	vsub.i32	q8, q9, q8
	vst1.64	{d16, d17}, [r3]
	sub	r0, r2, r0
	str	r0, [sp, #476]
	ldr	r0, [sp, #444]
	vdup.32	q8, r0
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #380]
	add	lr, sp, #192
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB0_6:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #444]
	vdup.32	q8, r1
	add	r2, sp, #448
	vst1.64	{d16, d17}, [r2:128]
	vshr.s32	q8, q8, #1
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	asr	r1, r1, #1
	str	r1, [sp, #444]
	ldr	r1, [sp, #476]
	ldr	r2, [sp, #444]
	cmp	r1, r2
	str	r0, [sp, #188]          @ 4-byte Spill
	add	lr, sp, #160
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB0_13
@ BB#7:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #508]
	vdup.32	q8, r1
	add	r2, sp, #512
	vst1.64	{d16, d17}, [r2:128]
	vorr.i32	q8, #0x2
	vst1.64	{d16, d17}, [r2]
	orr	r1, r1, #2
	str	r1, [sp, #508]
	ldr	r1, [sp, #444]
	ldr	r2, [sp, #476]
	add	r3, sp, #480
	vld1.64	{d16, d17}, [r3:128]
	add	r12, sp, #448
	vld1.64	{d18, d19}, [r12:128]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	sub	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #732]
	cmp	r12, r0
	str	r1, [sp, #156]          @ 4-byte Spill
	str	r3, [sp, #152]          @ 4-byte Spill
	str	r12, [sp, #148]         @ 4-byte Spill
	beq	.LBB0_12
@ BB#8:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #148]          @ 4-byte Reload
	ldr	r1, [sp, #152]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_10
@ BB#9:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #156]          @ 4-byte Reload
	str	r0, [sp, #732]
	b	.LBB0_11
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #152]          @ 4-byte Reload
	str	r0, [sp, #732]
.LBB0_11:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_12
.LBB0_12:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #732]
	str	r0, [sp, #476]
	ldr	r0, [sp, #444]
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d16, d17}, [r2:128]
	add	r3, sp, #448
	vld1.64	{d18, d19}, [r3:128]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #380]
	add	lr, sp, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB0_13:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #444]
	add	r2, sp, #448
	vld1.64	{d16, d17}, [r2:128]
	vshr.s32	q8, q8, #1
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	asr	r1, r1, #1
	str	r1, [sp, #444]
	ldr	r1, [sp, #476]
	ldr	r2, [sp, #444]
	cmp	r1, r2
	str	r0, [sp, #124]          @ 4-byte Spill
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB0_15
@ BB#14:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #508]
	add	r1, sp, #512
	vld1.64	{d16, d17}, [r1:128]
	vorr.i32	q8, #0x1
	vst1.64	{d16, d17}, [r1]
	orr	r0, r0, #1
	str	r0, [sp, #508]
	ldr	r0, [sp, #444]
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d16, d17}, [r2:128]
	add	r3, sp, #448
	vld1.64	{d18, d19}, [r3:128]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #380]
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB0_15:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #540]
	cmp	r0, #0
	beq	.LBB0_17
@ BB#16:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #380]
	ldr	r1, [sp, #412]
	vdup.32	q8, r1
	add	r2, sp, #416
	vst1.64	{d16, d17}, [r2:128]
	add	r3, sp, #384
	vld1.64	{d18, d19}, [r3:128]
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	sub	r0, r1, r0
	str	r0, [sp, #412]
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_23
.LBB0_17:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #380]
	ldr	r2, [sp, #412]
	add	r3, sp, #416
	vld1.64	{d16, d17}, [r3:128]
	add	r12, sp, #384
	vld1.64	{d18, d19}, [r12:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #700]
	cmp	r12, r0
	str	r1, [sp, #60]           @ 4-byte Spill
	str	r3, [sp, #56]           @ 4-byte Spill
	str	r12, [sp, #52]          @ 4-byte Spill
	beq	.LBB0_22
@ BB#18:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #52]           @ 4-byte Reload
	ldr	r1, [sp, #56]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_20
@ BB#19:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r0, [sp, #700]
	b	.LBB0_21
.LBB0_20:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r0, [sp, #700]
.LBB0_21:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_22
.LBB0_22:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #700]
	str	r0, [sp, #412]
.LBB0_23:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #412]
	cmp	r1, r0
	ble	.LBB0_25
@ BB#24:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	vmov.i32	q8, #0x7fff
	add	r1, sp, #416
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #412]
	b	.LBB0_28
.LBB0_25:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #412]
	cmn	r0, #32768
	bge	.LBB0_27
@ BB#26:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_0
	vmvn.i32	q8, #0x7fff
	add	r1, sp, #416
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #412]
.LBB0_27:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_28
.LBB0_28:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:indexTable
	movt	r0, :upper16:indexTable
	movw	r1, #2
	ldr	r2, [sp, #540]
	vdup.32	q8, r2
	add	r3, sp, #544
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #508]
	add	r12, sp, #512
	vld1.64	{d18, d19}, [r12:128]
	vorr	q8, q9, q8
	vst1.64	{d16, d17}, [r12]
	orr	r2, r3, r2
	str	r2, [sp, #508]
	movw	r3, :lower16:indexTable
	movt	r3, :upper16:indexTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #348]
	add	r2, r3, r2
	str	r2, [sp, #348]
	ldr	r2, [sp, #348]
	cmp	r2, #0
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	bge	.LBB0_30
@ BB#29:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #348]
.LBB0_30:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #348]
	cmp	r0, #88
	ble	.LBB0_32
@ BB#31:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #88
	vmov.i32	q8, #0x58
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #348]
.LBB0_32:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:stepsizeTable
	movt	r0, :upper16:stepsizeTable
	movw	r1, #2
	ldr	r2, [sp, #348]
	movw	r3, :lower16:stepsizeTable
	movt	r3, :upper16:stepsizeTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [sp, #444]
	ldr	r2, [sp, #284]
	cmp	r2, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	beq	.LBB0_34
@ BB#33:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #508]
	add	r1, sp, #512
	vld1.64	{d16, d17}, [r1:128]
	vshl.i32	q8, q8, #4
	lsl	r0, r0, #4
	vmov.i32	q9, #0xf0
	vand	q8, q8, q9
	vorr	q9, q8, q8
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	and	r0, r0, #240
	str	r0, [sp, #316]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_35
.LBB0_34:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #508]
	and	r0, r0, #15
	ldr	r1, [sp, #316]
	orr	r0, r0, r1
	ldr	r1, [sp, #592]
	add	r2, r1, #1
	str	r2, [sp, #592]
	strb	r0, [r1]
.LBB0_35:                               @   in Loop: Header=BB0_1 Depth=1
	mvn	r0, #0
	ldr	r1, [sp, #284]
	cmp	r1, #0
	movw	r1, #0
	movne	r1, #1
	eor	r0, r1, r0
	and	r0, r0, #1
	str	r0, [sp, #284]
@ BB#36:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #604]
	vdup.32	q8, r2
	add	r3, sp, #608
	vst1.64	{d16, d17}, [r3:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #636]
	cmp	r12, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	beq	.LBB0_41
@ BB#37:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_39
@ BB#38:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #636]
	b	.LBB0_40
.LBB0_39:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #636]
.LBB0_40:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_41
.LBB0_41:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #636]
	str	r0, [sp, #604]
	b	.LBB0_1
.LBB0_42:
	ldr	r0, [sp, #284]
	cmp	r0, #0
	bne	.LBB0_44
@ BB#43:
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #592]
	add	r2, r1, #1
	str	r2, [sp, #592]
	strb	r0, [r1]
.LBB0_44:
	ldr	r0, [sp, #412]
	ldr	r1, [sp, #600]
	strh	r0, [r1]
	ldr	r0, [sp, #348]
	ldr	r1, [sp, #600]
	strb	r0, [r1, #2]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	2
@ BB#45:
.LCPI0_0:
	.long	4294934528              @ 0xffff8000
.Lfunc_end0:
	.size	adpcm_coder, .Lfunc_end0-adpcm_coder
	.cantunwind
	.fnend

	.globl	adpcm_decoder
	.p2align	2
	.type	adpcm_decoder,%function
	.code	32                      @ @adpcm_decoder
adpcm_decoder:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #592
	bfc	sp, #0, #4
	movw	r12, #0
	str	r0, [sp, #472]
	str	r1, [sp, #468]
	str	r2, [sp, #444]
	str	r3, [sp, #440]
	ldr	r0, [sp, #468]
	str	r0, [sp, #432]
	ldr	r0, [sp, #472]
	str	r0, [sp, #436]
	ldr	r0, [sp, #440]
	ldrsh	r0, [r0]
	str	r0, [sp, #316]
	ldr	r0, [sp, #440]
	ldrb	r0, [r0, #2]
	str	r0, [sp, #252]
	movw	r1, :lower16:stepsizeTable
	movt	r1, :upper16:stepsizeTable
	ldr	r0, [r1, r0, lsl #2]
	str	r0, [sp, #348]
	vmov.i32	q8, #0x0
	add	r0, sp, #192
	vst1.64	{d16, d17}, [r0]
	str	r12, [sp, #188]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #444]
	cmp	r0, #0
	ble	.LBB1_40
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #188]
	cmp	r0, #0
	beq	.LBB1_4
@ BB#3:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #220]
	vdup.32	q8, r0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0xf
	vand	q8, q8, q9
	vorr	q9, q8, q8
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1]
	and	r0, r0, #15
	str	r0, [sp, #380]
	add	lr, sp, #160
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_5
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #436]
	add	r1, r0, #1
	str	r1, [sp, #436]
	ldrsb	r0, [r0]
	str	r0, [sp, #220]
	vdup.32	q8, r0
	add	r1, sp, #224
	vst1.64	{d16, d17}, [r1:128]
	vshr.s32	q8, q8, #4
	asr	r0, r0, #4
	vmov.i32	q9, #0xf
	vand	q8, q8, q9
	vorr	q9, q8, q8
	add	r1, sp, #384
	vst1.64	{d16, d17}, [r1]
	and	r0, r0, #15
	str	r0, [sp, #380]
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:indexTable
	movt	r0, :upper16:indexTable
	movw	r1, #2
	ldr	r2, [sp, #188]
	mov	r3, #0
	cmp	r2, #0
	movweq	r3, #1
	str	r3, [sp, #188]
	ldr	r2, [sp, #380]
	movw	r3, :lower16:indexTable
	movt	r3, :upper16:indexTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #252]
	add	r2, r3, r2
	str	r2, [sp, #252]
	ldr	r2, [sp, #252]
	cmp	r2, #0
	str	r0, [sp, #140]          @ 4-byte Spill
	str	r1, [sp, #136]          @ 4-byte Spill
	bge	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #256
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #252]
.LBB1_7:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #252]
	cmp	r0, #88
	ble	.LBB1_9
@ BB#8:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #88
	vmov.i32	q8, #0x58
	add	r1, sp, #256
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #252]
.LBB1_9:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x8
	vand	q8, q8, q9
	add	r2, sp, #416
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	and	r1, r1, #8
	mul	r0, r1, r0
	str	r1, [sp, #540]
	cmp	r3, r0
	str	r1, [sp, #132]          @ 4-byte Spill
	str	r3, [sp, #128]          @ 4-byte Spill
	str	r2, [sp, #124]          @ 4-byte Spill
	beq	.LBB1_14
@ BB#10:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #128]          @ 4-byte Reload
	ldr	r1, [sp, #124]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_12
@ BB#11:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #132]          @ 4-byte Reload
	str	r0, [sp, #540]
	b	.LBB1_13
.LBB1_12:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #124]          @ 4-byte Reload
	str	r0, [sp, #540]
.LBB1_13:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_14
.LBB1_14:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #540]
	str	r1, [sp, #412]
	ldr	r1, [sp, #380]
	add	r2, sp, #384
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x7
	vand	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	and	r1, r1, #7
	str	r1, [sp, #380]
	ldr	r1, [sp, #348]
	vdup.32	q8, r1
	add	r2, sp, #352
	vst1.64	{d16, d17}, [r2:128]
	vshr.s32	q8, q8, #3
	vorr	q9, q8, q8
	add	r2, sp, #288
	vst1.64	{d16, d17}, [r2]
	asr	r1, r1, #3
	str	r1, [sp, #284]
	ldr	r1, [sp, #380]
	and	r1, r1, #4
	cmp	r1, #0
	str	r0, [sp, #120]          @ 4-byte Spill
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB1_16
@ BB#15:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #348]
	vdup.32	q8, r0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #284]
	add	r2, sp, #288
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #284]
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB1_16:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #380]
	and	r0, r0, #2
	cmp	r0, #0
	beq	.LBB1_18
@ BB#17:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #348]
	vdup.32	q8, r0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1:128]
	asr	r0, r0, #1
	ldr	r1, [sp, #284]
	add	r2, sp, #288
	vld1.64	{d18, d19}, [r2:128]
	vsra.s32	q9, q8, #1
	vorr	q8, q9, q9
	vst1.64	{d18, d19}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #284]
	add	lr, sp, #64
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
.LBB1_18:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #380]
	and	r0, r0, #1
	cmp	r0, #0
	beq	.LBB1_20
@ BB#19:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #348]
	vdup.32	q8, r0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1:128]
	asr	r0, r0, #2
	ldr	r1, [sp, #284]
	add	r2, sp, #288
	vld1.64	{d18, d19}, [r2:128]
	vsra.s32	q9, q8, #2
	vorr	q8, q9, q9
	vst1.64	{d18, d19}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #284]
	add	lr, sp, #48
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
.LBB1_20:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #412]
	cmp	r0, #0
	beq	.LBB1_22
@ BB#21:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #316]
	vdup.32	q8, r1
	add	r2, sp, #320
	vst1.64	{d16, d17}, [r2:128]
	add	r3, sp, #288
	vld1.64	{d18, d19}, [r3:128]
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	sub	r0, r1, r0
	str	r0, [sp, #316]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB1_28
.LBB1_22:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #284]
	ldr	r2, [sp, #316]
	add	r3, sp, #320
	vld1.64	{d16, d17}, [r3:128]
	add	r12, sp, #288
	vld1.64	{d18, d19}, [r12:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #508]
	cmp	r12, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	beq	.LBB1_27
@ BB#23:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_25
@ BB#24:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #508]
	b	.LBB1_26
.LBB1_25:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #508]
.LBB1_26:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_27
.LBB1_27:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #508]
	str	r0, [sp, #316]
.LBB1_28:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #316]
	cmp	r1, r0
	ble	.LBB1_30
@ BB#29:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #32767
	vmov.i32	q8, #0x7fff
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
	b	.LBB1_33
.LBB1_30:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #316]
	cmn	r0, #32768
	bge	.LBB1_32
@ BB#31:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, .LCPI1_0
	vmvn.i32	q8, #0x7fff
	add	r1, sp, #320
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #316]
.LBB1_32:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_33
.LBB1_33:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:stepsizeTable
	movt	r0, :upper16:stepsizeTable
	movw	r1, #2
	ldr	r2, [sp, #252]
	movw	r3, :lower16:stepsizeTable
	movt	r3, :upper16:stepsizeTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [sp, #348]
	ldr	r2, [sp, #316]
	ldr	r3, [sp, #432]
	add	r12, r3, #2
	str	r12, [sp, #432]
	strh	r2, [r3]
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
@ BB#34:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #444]
	vdup.32	q8, r2
	add	r3, sp, #448
	vst1.64	{d16, d17}, [r3:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #476]
	cmp	r12, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r12, [sp]               @ 4-byte Spill
	beq	.LBB1_39
@ BB#35:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_37
@ BB#36:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #476]
	b	.LBB1_38
.LBB1_37:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #476]
.LBB1_38:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_39
.LBB1_39:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #476]
	str	r0, [sp, #444]
	b	.LBB1_1
.LBB1_40:
	ldr	r0, [sp, #316]
	ldr	r1, [sp, #440]
	strh	r0, [r1]
	ldr	r0, [sp, #252]
	ldr	r1, [sp, #440]
	strb	r0, [r1, #2]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	2
@ BB#41:
.LCPI1_0:
	.long	4294934528              @ 0xffff8000
.Lfunc_end1:
	.size	adpcm_decoder, .Lfunc_end1-adpcm_decoder
	.cantunwind
	.fnend

	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #80
	bfc	sp, #0, #4
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #60]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	movw	r1, :lower16:abuf
	movt	r1, :upper16:abuf
	movw	r2, #500
	bl	read
	str	r0, [sp, #28]
	ldr	r0, [sp, #28]
	cmp	r0, #0
	bge	.LBB2_3
@ BB#2:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	perror
	movw	r0, #1
	bl	exit
.LBB2_3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #28]
	cmp	r0, #0
	bne	.LBB2_5
@ BB#4:
	b	.LBB2_6
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	movw	r0, #1
	movw	r1, :lower16:sbuf
	movt	r1, :upper16:sbuf
	movw	r2, #2
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	add	r12, sp, #32
	vst1.64	{d16, d17}, [r12:128]
	lsl	r3, r3, #1
	movw	lr, :lower16:abuf
	movt	lr, :upper16:abuf
	movw	r4, :lower16:sbuf
	movt	r4, :upper16:sbuf
	movw	r5, :lower16:state
	movt	r5, :upper16:state
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, lr
	str	r1, [sp, #20]           @ 4-byte Spill
	mov	r1, r4
	str	r2, [sp, #16]           @ 4-byte Spill
	mov	r2, r3
	mov	r3, r5
	str	r12, [sp, #12]          @ 4-byte Spill
	bl	adpcm_decoder
	ldr	r0, [sp, #28]
	vdup.32	q8, r0
	ldr	r1, [sp, #12]           @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	lsl	r2, r0, #2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	write
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB2_1
.LBB2_6:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	movw	r0, :lower16:state
	movt	r0, :upper16:state
	movw	r2, :lower16:stderr
	movt	r2, :upper16:stderr
	ldr	r2, [r2]
	ldrsh	r3, [r0]
	ldrb	r0, [r0, #2]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r2
	mov	r2, r3
	ldr	r3, [sp, #4]            @ 4-byte Reload
	bl	fprintf
	movw	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	bl	exit
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cantunwind
	.fnend

	.type	stepsizeTable,%object   @ @stepsizeTable
	.data
	.p2align	2
stepsizeTable:
	.long	7                       @ 0x7
	.long	8                       @ 0x8
	.long	9                       @ 0x9
	.long	10                      @ 0xa
	.long	11                      @ 0xb
	.long	12                      @ 0xc
	.long	13                      @ 0xd
	.long	14                      @ 0xe
	.long	16                      @ 0x10
	.long	17                      @ 0x11
	.long	19                      @ 0x13
	.long	21                      @ 0x15
	.long	23                      @ 0x17
	.long	25                      @ 0x19
	.long	28                      @ 0x1c
	.long	31                      @ 0x1f
	.long	34                      @ 0x22
	.long	37                      @ 0x25
	.long	41                      @ 0x29
	.long	45                      @ 0x2d
	.long	50                      @ 0x32
	.long	55                      @ 0x37
	.long	60                      @ 0x3c
	.long	66                      @ 0x42
	.long	73                      @ 0x49
	.long	80                      @ 0x50
	.long	88                      @ 0x58
	.long	97                      @ 0x61
	.long	107                     @ 0x6b
	.long	118                     @ 0x76
	.long	130                     @ 0x82
	.long	143                     @ 0x8f
	.long	157                     @ 0x9d
	.long	173                     @ 0xad
	.long	190                     @ 0xbe
	.long	209                     @ 0xd1
	.long	230                     @ 0xe6
	.long	253                     @ 0xfd
	.long	279                     @ 0x117
	.long	307                     @ 0x133
	.long	337                     @ 0x151
	.long	371                     @ 0x173
	.long	408                     @ 0x198
	.long	449                     @ 0x1c1
	.long	494                     @ 0x1ee
	.long	544                     @ 0x220
	.long	598                     @ 0x256
	.long	658                     @ 0x292
	.long	724                     @ 0x2d4
	.long	796                     @ 0x31c
	.long	876                     @ 0x36c
	.long	963                     @ 0x3c3
	.long	1060                    @ 0x424
	.long	1166                    @ 0x48e
	.long	1282                    @ 0x502
	.long	1411                    @ 0x583
	.long	1552                    @ 0x610
	.long	1707                    @ 0x6ab
	.long	1878                    @ 0x756
	.long	2066                    @ 0x812
	.long	2272                    @ 0x8e0
	.long	2499                    @ 0x9c3
	.long	2749                    @ 0xabd
	.long	3024                    @ 0xbd0
	.long	3327                    @ 0xcff
	.long	3660                    @ 0xe4c
	.long	4026                    @ 0xfba
	.long	4428                    @ 0x114c
	.long	4871                    @ 0x1307
	.long	5358                    @ 0x14ee
	.long	5894                    @ 0x1706
	.long	6484                    @ 0x1954
	.long	7132                    @ 0x1bdc
	.long	7845                    @ 0x1ea5
	.long	8630                    @ 0x21b6
	.long	9493                    @ 0x2515
	.long	10442                   @ 0x28ca
	.long	11487                   @ 0x2cdf
	.long	12635                   @ 0x315b
	.long	13899                   @ 0x364b
	.long	15289                   @ 0x3bb9
	.long	16818                   @ 0x41b2
	.long	18500                   @ 0x4844
	.long	20350                   @ 0x4f7e
	.long	22385                   @ 0x5771
	.long	24623                   @ 0x602f
	.long	27086                   @ 0x69ce
	.long	29794                   @ 0x7462
	.long	32767                   @ 0x7fff
	.size	stepsizeTable, 356

	.type	indexTable,%object      @ @indexTable
	.p2align	2
indexTable:
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	2                       @ 0x2
	.long	4                       @ 0x4
	.long	6                       @ 0x6
	.long	8                       @ 0x8
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	4294967295              @ 0xffffffff
	.long	2                       @ 0x2
	.long	4                       @ 0x4
	.long	6                       @ 0x6
	.long	8                       @ 0x8
	.size	indexTable, 64

	.type	abuf,%object            @ @abuf
	.comm	abuf,500,1
	.type	sbuf,%object            @ @sbuf
	.comm	sbuf,2000,2
	.type	state,%object           @ @state
	.comm	state,4,2
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"input file"
	.size	.L.str, 11

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Final valprev=%d, index=%d\n"
	.size	.L.str.1, 28


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
