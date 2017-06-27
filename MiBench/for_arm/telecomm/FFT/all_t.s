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
	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #552
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #252
	movw	r3, #0
	str	r3, [r2, #208]
	str	r0, [r2, #176]
	str	r1, [r2, #172]
	str	r3, [r2]
	ldr	r0, [r2, #176]
	cmp	r0, #3
	str	r2, [r6, #236]          @ 4-byte Spill
	bge	.LBB0_2
@ BB#1:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	printf
	movw	lr, :lower16:.L.str.1
	movt	lr, :upper16:.L.str.1
	str	r0, [r6, #232]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.2
	movt	lr, :upper16:.L.str.2
	str	r0, [r6, #228]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.3
	movt	lr, :upper16:.L.str.3
	str	r0, [r6, #224]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	mvn	lr, #0
	str	r0, [r6, #220]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB0_2:
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #176]
	cmp	r1, #4
	bne	.LBB0_4
@ BB#3:
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	movw	r2, #2
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r3, [r0, #172]
	ldr	r0, [r3, #12]
	bl	strncmp
	mvn	r1, #0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	eor	r0, r0, r1
	and	r0, r0, #1
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1]
.LBB0_4:
	b	.LBB0_5
.LBB0_5:
	movw	r0, #2
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #172]
	ldr	r2, [r2, #8]
	str	r0, [r6, #216]          @ 4-byte Spill
	mov	r0, r2
	bl	atoi
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #144]
	ldr	r0, [r1, #172]
	ldr	r0, [r0, #4]
	bl	atoi
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #112]
	mov	r0, #1
	bl	srand
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #144]
	vdup.32	q8, r1
	add	r2, r6, #400
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r1, #2
	str	r2, [r6, #212]          @ 4-byte Spill
	bl	malloc
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #44]
	ldr	r0, [r1, #144]
	vdup.32	q8, r0
	ldr	r2, [r6, #212]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r0, #2
	bl	malloc
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #40]
	ldr	r0, [r1, #144]
	vdup.32	q8, r0
	ldr	r2, [r6, #212]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r0, #2
	bl	malloc
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #36]
	ldr	r0, [r1, #144]
	vdup.32	q8, r0
	ldr	r2, [r6, #212]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r0, #2
	bl	malloc
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #32]
	ldr	r0, [r1, #112]
	vdup.32	q8, r0
	add	r2, r6, #368
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r0, #2
	str	r2, [r6, #208]          @ 4-byte Spill
	bl	malloc
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #28]
	ldr	r0, [r1, #112]
	vdup.32	q8, r0
	ldr	r2, [r6, #208]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	lsl	r0, r0, #2
	bl	malloc
	movw	r1, #0
	ldr	r2, [r6, #236]          @ 4-byte Reload
	str	r0, [r2, #24]
	str	r1, [r2, #80]
.LBB0_6:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	ldr	r2, [r0, #112]
	cmp	r1, r2
	bhs	.LBB0_9
@ BB#7:                                 @   in Loop: Header=BB0_6 Depth=1
	movw	r0, #2
	str	r0, [r6, #204]          @ 4-byte Spill
	bl	rand
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	vdup.32	q8, r0
	vst1.32	{d16, d17}, [lr]
	movw	lr, #19923
	movt	lr, #4194
	smmul	r1, r0, lr
	asr	r2, r1, #6
	add	r1, r2, r1, lsr #31
	mov	r2, #1000
	mls	r0, r1, r2, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #28]
	ldr	r3, [r0, #80]
	add	r1, r1, r3, lsl #2
	vstr	s0, [r1]
	str	r2, [r6, #200]          @ 4-byte Spill
	str	lr, [r6, #196]          @ 4-byte Spill
	bl	rand
	mov	r1, sp
	sub	r1, r1, #16
	bfc	r1, #0, #4
	mov	sp, r1
	vdup.32	q8, r0
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [r6, #196]          @ 4-byte Reload
	smmul	r2, r0, r1
	asr	r3, r2, #6
	add	r2, r3, r2, lsr #31
	ldr	r3, [r6, #200]          @ 4-byte Reload
	mls	r0, r2, r3, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r0, #24]
	ldr	lr, [r0, #80]
	add	r2, r2, lr, lsl #2
	vstr	s0, [r2]
@ BB#8:                                 @   in Loop: Header=BB0_6 Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	vdup.32	q8, r1
	add	r2, r6, #336
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #80]
	add	lr, r6, #176
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_6
.LBB0_9:
	movw	r0, #0
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #80]
.LBB0_10:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_12 Depth 2
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	ldr	r2, [r0, #144]
	cmp	r1, r2
	bhs	.LBB0_25
@ BB#11:                                @   in Loop: Header=BB0_10 Depth=1
	movw	r0, #0
	vldr	s0, .LCPI0_1
	movw	r1, #2
	ldr	r2, [r6, #236]          @ 4-byte Reload
	ldr	r3, [r2, #44]
	ldr	r12, [r2, #80]
	add	r3, r3, r12, lsl #2
	vstr	s0, [r3]
	str	r0, [r2, #48]
	str	r1, [r6, #172]          @ 4-byte Spill
.LBB0_12:                               @   Parent Loop BB0_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #48]
	ldr	r2, [r0, #112]
	cmp	r1, r2
	bhs	.LBB0_23
@ BB#13:                                @   in Loop: Header=BB0_12 Depth=2
	movw	r1, #2
	str	r1, [r6, #168]          @ 4-byte Spill
	bl	rand
	mov	r1, r0
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	vdup.32	q8, r0
	vorr	q9, q8, q8
	vst1.32	{d16, d17}, [lr]
	mov	r0, r1
	ldr	r1, [r6, #168]          @ 4-byte Reload
	add	r4, r6, #144
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__modsi3
	cmp	r0, #0
	beq	.LBB0_15
@ BB#14:                                @   in Loop: Header=BB0_12 Depth=2
	movw	r0, #2
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #28]
	ldr	r3, [r1, #48]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	ldr	r2, [r1, #24]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vldr	s2, [r1, #80]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r2, r1, d17
	str	r0, [r6, #140]          @ 4-byte Spill
	mov	r0, r2
	vstr	d16, [r6, #128]         @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [r6, #128]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #44]
	ldr	r2, [r0, #80]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	b	.LBB0_16
.LBB0_15:                               @   in Loop: Header=BB0_12 Depth=2
	movw	r0, #2
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #28]
	ldr	r3, [r1, #48]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	ldr	r2, [r1, #24]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vldr	s2, [r1, #80]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r2, r1, d17
	str	r0, [r6, #124]          @ 4-byte Spill
	mov	r0, r2
	vstr	d16, [r6, #112]         @ 8-byte Spill
	bl	sin
	vmov	d16, r0, r1
	vldr	d17, [r6, #112]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #44]
	ldr	r2, [r0, #80]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
.LBB0_16:                               @   in Loop: Header=BB0_12 Depth=2
	vldr	s0, .LCPI0_0
	movw	r0, #2
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #40]
	ldr	r3, [r1, #80]
	add	r2, r2, r3, lsl #2
	vstr	s0, [r2]
	str	r0, [r6, #108]          @ 4-byte Spill
@ BB#17:                                @   in Loop: Header=BB0_12 Depth=2
	movw	r0, #3
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #48]
	vdup.32	q8, r2
	add	r3, r6, #304
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r2, r2, #1
	mul	r0, r2, r0
	str	r2, [r1, #272]
	cmp	r12, r0
	str	r2, [r6, #104]          @ 4-byte Spill
	str	r12, [r6, #100]         @ 4-byte Spill
	str	r3, [r6, #96]           @ 4-byte Spill
	beq	.LBB0_22
@ BB#18:                                @   in Loop: Header=BB0_12 Depth=2
	ldr	r0, [r6, #100]          @ 4-byte Reload
	ldr	r1, [r6, #96]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_20
@ BB#19:                                @   in Loop: Header=BB0_12 Depth=2
	ldr	r0, [r6, #104]          @ 4-byte Reload
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #272]
	b	.LBB0_21
.LBB0_20:                               @   in Loop: Header=BB0_12 Depth=2
	ldr	r0, [r6, #96]           @ 4-byte Reload
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #272]
.LBB0_21:                               @   in Loop: Header=BB0_12 Depth=2
	b	.LBB0_22
.LBB0_22:                               @   in Loop: Header=BB0_12 Depth=2
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #272]
	str	r1, [r0, #48]
	b	.LBB0_12
.LBB0_23:                               @   in Loop: Header=BB0_10 Depth=1
	b	.LBB0_24
.LBB0_24:                               @   in Loop: Header=BB0_10 Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	add	r2, r6, #336
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #80]
	add	lr, r6, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_10
.LBB0_25:
	movw	r0, :lower16:fft_float
	movt	r0, :upper16:fft_float
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #144]
	ldr	r1, [r1]
	ldr	r3, [r6, #236]          @ 4-byte Reload
	ldr	r12, [r3, #44]
	ldr	r3, [r3, #40]
	ldr	lr, [r6, #236]          @ 4-byte Reload
	ldr	r4, [lr, #36]
	ldr	r5, [lr, #32]
	sub	sp, sp, #8
	str	r0, [r6, #76]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r12
	str	r4, [sp]
	str	r5, [sp, #4]
	ldr	r12, [r6, #76]          @ 4-byte Reload
	blx	r12
	add	sp, sp, #8
	movw	r1, :lower16:.L.str.5
	movt	r1, :upper16:.L.str.5
	str	r0, [r6, #72]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #236]          @ 4-byte Reload
	str	r1, [r2, #80]
	str	r0, [r6, #68]           @ 4-byte Spill
.LBB0_26:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	ldr	r2, [r0, #144]
	cmp	r1, r2
	bhs	.LBB0_30
@ BB#27:                                @   in Loop: Header=BB0_26 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [r6, #236]          @ 4-byte Reload
	ldr	r3, [r2, #36]
	ldr	r12, [r2, #80]
	add	r3, r3, r12, lsl #2
	vldr	s0, [r3]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [r6, #64]           @ 4-byte Spill
	bl	printf
	str	r0, [r6, #60]           @ 4-byte Spill
@ BB#28:                                @   in Loop: Header=BB0_26 Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	add	r2, r6, #336
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #80]
	add	lr, r6, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_26
	.p2align	2
@ BB#29:
.LCPI0_1:
	.long	0                       @ float 0
.LBB0_30:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [r6, #28]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #0
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	lr, [r1, #80]
	str	r0, [r6, #24]           @ 4-byte Spill
.LBB0_31:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #80]
	ldr	r2, [r0, #144]
	cmp	r1, r2
	bhs	.LBB0_39
@ BB#32:                                @   in Loop: Header=BB0_31 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [r6, #236]          @ 4-byte Reload
	ldr	r3, [r2, #32]
	ldr	r12, [r2, #80]
	add	r3, r3, r12, lsl #2
	vldr	s0, [r3]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [r6, #20]           @ 4-byte Spill
	bl	printf
	str	r0, [r6, #16]           @ 4-byte Spill
@ BB#33:                                @   in Loop: Header=BB0_31 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #236]          @ 4-byte Reload
	ldr	r2, [r1, #80]
	add	r3, r6, #336
	vld1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r2, r2, #1
	mul	r0, r2, r0
	str	r2, [r1, #240]
	cmp	r12, r0
	str	r2, [r6, #12]           @ 4-byte Spill
	str	r12, [r6, #8]           @ 4-byte Spill
	str	r3, [r6, #4]            @ 4-byte Spill
	beq	.LBB0_38
@ BB#34:                                @   in Loop: Header=BB0_31 Depth=1
	ldr	r0, [r6, #8]            @ 4-byte Reload
	ldr	r1, [r6, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_36
@ BB#35:                                @   in Loop: Header=BB0_31 Depth=1
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #240]
	b	.LBB0_37
.LBB0_36:                               @   in Loop: Header=BB0_31 Depth=1
	ldr	r0, [r6, #4]            @ 4-byte Reload
	ldr	r1, [r6, #236]          @ 4-byte Reload
	str	r0, [r1, #240]
.LBB0_37:                               @   in Loop: Header=BB0_31 Depth=1
	b	.LBB0_38
.LBB0_38:                               @   in Loop: Header=BB0_31 Depth=1
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #240]
	str	r1, [r0, #80]
	b	.LBB0_31
.LBB0_39:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	ldr	lr, [r6, #236]          @ 4-byte Reload
	ldr	r1, [lr, #44]
	str	r0, [r6]                @ 4-byte Spill
	mov	r0, r1
	bl	free
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #40]
	mov	r0, r1
	bl	free
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #36]
	mov	r0, r1
	bl	free
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #32]
	mov	r0, r1
	bl	free
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #28]
	mov	r0, r1
	bl	free
	ldr	r0, [r6, #236]          @ 4-byte Reload
	ldr	r1, [r0, #24]
	mov	r0, r1
	bl	free
	movw	r0, #0
	bl	exit
	.p2align	2
@ BB#40:
.LCPI0_0:
	.long	0                       @ float 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.globl	IsPowerOfTwo
	.p2align	2
	.type	IsPowerOfTwo,%function
	.code	32                      @ @IsPowerOfTwo
IsPowerOfTwo:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #80
	bfc	sp, #0, #4
	str	r0, [sp, #28]
	ldr	r0, [sp, #28]
	cmp	r0, #2
	bhs	.LBB1_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #60]
	b	.LBB1_5
.LBB1_2:
	ldr	r0, [sp, #28]
	vdup.32	q8, r0
	add	r1, sp, #32
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #28]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1:128]
	sub	r1, r2, #1
	and	r0, r0, r1
	cmp	r0, #0
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	beq	.LBB1_4
@ BB#3:
	movw	r0, #0
	str	r0, [sp, #60]
	b	.LBB1_5
.LBB1_4:
	movw	r0, #1
	str	r0, [sp, #60]
.LBB1_5:
	ldr	r0, [sp, #60]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end1:
	.size	IsPowerOfTwo, .Lfunc_end1-IsPowerOfTwo
	.cantunwind
	.fnend

	.globl	NumberOfBitsNeeded
	.p2align	2
	.type	NumberOfBitsNeeded,%function
	.code	32                      @ @NumberOfBitsNeeded
NumberOfBitsNeeded:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #128
	bfc	sp, #0, #4
	str	r0, [sp, #76]
	ldr	r0, [sp, #76]
	cmp	r0, #2
	bhs	.LBB2_2
@ BB#1:
	movw	r1, :lower16:.L.str.9
	movt	r1, :upper16:.L.str.9
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #76]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_2:
	movw	r0, #0
	str	r0, [sp, #44]
.LBB2_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #1
	ldr	r1, [sp, #76]
	vdup.32	q8, r1
	add	r2, sp, #80
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #44]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #48
	vst1.64	{d16, d17}, [r3:128]
	lsl	r0, r0, r2
	and	r0, r1, r0
	cmp	r0, #0
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB2_5
@ BB#4:
	ldr	r0, [sp, #44]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.LBB2_5:                                @   in Loop: Header=BB2_3 Depth=1
	b	.LBB2_6
.LBB2_6:                                @   in Loop: Header=BB2_3 Depth=1
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
	str	r1, [sp, #108]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB2_11
@ BB#7:                                 @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_9
@ BB#8:                                 @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #108]
	b	.LBB2_10
.LBB2_9:                                @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #108]
.LBB2_10:                               @   in Loop: Header=BB2_3 Depth=1
	b	.LBB2_11
.LBB2_11:                               @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #108]
	str	r0, [sp, #44]
	b	.LBB2_3
.Lfunc_end2:
	.size	NumberOfBitsNeeded, .Lfunc_end2-NumberOfBitsNeeded
	.cantunwind
	.fnend

	.globl	ReverseBits
	.p2align	2
	.type	ReverseBits,%function
	.code	32                      @ @ReverseBits
ReverseBits:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #256
	bfc	sp, #0, #4
	movw	r2, #0
	str	r0, [sp, #140]
	str	r1, [sp, #108]
	str	r2, [sp, #44]
	str	r2, [sp, #76]
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #108]
	cmp	r0, r1
	bhs	.LBB3_19
@ BB#2:                                 @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #44]
	vdup.32	q8, r1
	add	r2, sp, #48
	vst1.64	{d16, d17}, [r2:128]
	vshl.i32	q8, q8, #1
	vmov.i32	q9, #0x1
	lsl	r1, r1, #1
	ldr	r3, [sp, #140]
	vdup.32	q10, r3
	add	r12, sp, #144
	vst1.64	{d20, d21}, [r12:128]
	vand	q9, q10, q9
	and	r3, r3, #1
	vorr	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d22, d16
	vmov.32	r2, d22[0]
	vmov.32	r12, d22[1]
	vmov.f64	d22, d17
	vmov.32	lr, d22[0]
	add	r12, r2, r12
	add	r12, r12, lr
	orr	r1, r1, r3
	mul	r0, r1, r0
	str	r1, [sp, #236]
	cmp	r12, r0
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r12, [sp, #36]          @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	beq	.LBB3_7
@ BB#3:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_5
@ BB#4:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r0, [sp, #236]
	b	.LBB3_6
.LBB3_5:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #236]
.LBB3_6:                                @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_7
.LBB3_7:                                @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #3
	movw	r1, #1
	ldr	r2, [sp, #236]
	str	r2, [sp, #44]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	vshr.u32	q8, q8, #1
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d18, d16
	vmov.32	r3, d18[0]
	vmov.32	r12, d18[1]
	vmov.f64	d18, d17
	vmov.32	lr, d18[0]
	add	r12, r3, r12
	add	r12, r12, lr
	lsr	r2, r2, #1
	mul	r0, r2, r0
	str	r2, [sp, #204]
	cmp	r12, r0
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	beq	.LBB3_12
@ BB#8:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_10
@ BB#9:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB3_11
.LBB3_10:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #204]
.LBB3_11:                               @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_12
.LBB3_12:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #204]
	str	r0, [sp, #140]
@ BB#13:                                @   in Loop: Header=BB3_1 Depth=1
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
	str	r1, [sp, #172]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB3_18
@ BB#14:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_16
@ BB#15:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #172]
	b	.LBB3_17
.LBB3_16:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #172]
.LBB3_17:                               @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_18
.LBB3_18:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #172]
	str	r0, [sp, #76]
	b	.LBB3_1
.LBB3_19:
	ldr	r0, [sp, #44]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end3:
	.size	ReverseBits, .Lfunc_end3-ReverseBits
	.cantunwind
	.fnend

	.globl	Index_to_frequency
	.p2align	2
	.type	Index_to_frequency,%function
	.code	32                      @ @Index_to_frequency
Index_to_frequency:
	.fnstart
@ BB#0:
	push	{r6, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #224
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #76
	str	r0, [r2, #32]
	str	r1, [r2]
	ldr	r0, [r2]
	ldr	r1, [r2, #32]
	cmp	r0, r1
	str	r2, [r6, #60]           @ 4-byte Spill
	blo	.LBB4_2
@ BB#1:
	vldr	s0, .LCPI4_0
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vstr	s0, [r0, #64]
	b	.LBB4_16
.LBB4_2:
	movw	r0, #1
	movw	r1, #2
	ldr	r2, [r6, #60]           @ 4-byte Reload
	ldr	r3, [r2]
	ldr	r12, [r2, #32]
	vdup.32	q8, r12
	vorr	q9, q8, q8
	add	lr, r6, #112
	vst1.64	{d16, d17}, [lr:128]
	str	r0, [r6, #56]           @ 4-byte Spill
	mov	r0, r12
	add	r10, r6, #32
	vst1.64	{d18, d19}, [r10:128]   @ 16-byte Spill
	str	r3, [r6, #28]           @ 4-byte Spill
	bl	__udivsi3
	ldr	r1, [r6, #28]           @ 4-byte Reload
	cmp	r1, r0
	bhi	.LBB4_9
@ BB#3:
	vmov.f32	s0, #3.000000e+00
	ldr	r0, [r6, #60]           @ 4-byte Reload
	ldr	r1, [r0]
	vmov	s2, r1
	vcvt.f32.u32	s2, s2
	ldr	r2, [r0, #32]
	vmov	s4, r2
	vcvt.f32.u32	s4, s4
	mov	r3, sp
	sub	r3, r3, #16
	bfc	r3, #0, #4
	mov	sp, r3
	vdup.32	q8, r1
	vcvt.f32.u32	q8, q8
	vst1.32	{d16, d17}, [r3]
	mov	r1, sp
	sub	r1, r1, #16
	bfc	r1, #0, #4
	mov	sp, r1
	vdup.32	q9, r2
	vcvt.f32.u32	q9, q9
	vst1.32	{d18, d19}, [r1]
	vorr	q2, q9, q9
	vmov.f32	s6, s11
	vorr	q3, q8, q8
	vmov.f32	s1, s15
	vdiv.f32	s6, s1, s6
	vmov.f32	s1, s10
	vmov.f32	s3, s14
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s9
	vmov.f32	s5, s13
	vdiv.f32	s3, s5, s3
	vmov.f32	s5, s8
	vmov.f32	s7, s12
	vdiv.f32	s5, s7, s5
	vmov.f32	s8, s5
	vmov.f32	s9, s3
	vmov.f32	s10, s1
	vmov.f32	s11, s6
	add	r1, r6, #144
	vst1.64	{d4, d5}, [r1]
	vmov.f32	s6, s8
	vmov.f32	s1, s9
	vmov.f32	s3, s10
	vadd.f32	s1, s6, s1
	vadd.f32	s1, s1, s3
	vdiv.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	vstr	s2, [r0, #128]
	vcmpe.f32	s1, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [r6, #24]           @ 4-byte Spill
	vstr	s6, [r6, #20]           @ 4-byte Spill
	vstr	s1, [r6, #16]           @ 4-byte Spill
	beq	.LBB4_8
@ BB#4:
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r6, #16]           @ 4-byte Reload
	vldr	s4, [r6, #20]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB4_6
@ BB#5:
	vldr	s0, [r6, #24]           @ 4-byte Reload
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vstr	s0, [r0, #128]
	b	.LBB4_7
.LBB4_6:
	vldr	s0, [r6, #20]           @ 4-byte Reload
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vstr	s0, [r0, #128]
.LBB4_7:
	b	.LBB4_8
.LBB4_8:
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vldr	s0, [r0, #128]
	vstr	s0, [r0, #64]
	b	.LBB4_16
.LBB4_9:
	b	.LBB4_10
.LBB4_10:
	vmov.f32	s0, #3.000000e+00
	ldr	r0, [r6, #60]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	vdup.32	q8, r1
	add	r2, r6, #112
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [r0]
	vdup.32	q8, r2
	add	r3, r6, #80
	vst1.64	{d16, d17}, [r3:128]
	sub	r1, r1, r2
	vmov	s2, r1
	vcvt.f32.u32	s2, s2
	mov	r2, sp
	sub	r2, r2, #16
	bfc	r2, #0, #4
	mov	sp, r2
	vdup.32	q8, r1
	vcvt.f32.u32	q8, q8
	vst1.32	{d16, d17}, [r2]
	vneg.f32	q8, q8
	vneg.f32	s2, s2
	ldr	r1, [r0, #32]
	vmov	s4, r1
	vcvt.f32.u32	s4, s4
	mov	r2, sp
	sub	r2, r2, #16
	bfc	r2, #0, #4
	mov	sp, r2
	vdup.32	q9, r1
	vcvt.f32.u32	q9, q9
	vst1.32	{d18, d19}, [r2]
	vorr	q2, q8, q8
	vmov.f32	s6, s11
	vorr	q3, q9, q9
	vmov.f32	s1, s15
	vdiv.f32	s6, s6, s1
	vmov.f32	s1, s10
	vmov.f32	s3, s14
	vdiv.f32	s1, s1, s3
	vmov.f32	s3, s9
	vmov.f32	s5, s13
	vdiv.f32	s3, s3, s5
	vmov.f32	s5, s8
	vmov.f32	s7, s12
	vdiv.f32	s5, s5, s7
	vmov.f32	s8, s5
	vmov.f32	s9, s3
	vmov.f32	s10, s1
	vmov.f32	s11, s6
	add	r1, r6, #144
	vst1.64	{d4, d5}, [r1]
	vmov.f32	s6, s8
	vmov.f32	s1, s9
	vmov.f32	s3, s10
	vadd.f32	s1, s6, s1
	vadd.f32	s1, s1, s3
	vdiv.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	vstr	s2, [r0, #96]
	vcmpe.f32	s1, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [r6, #12]           @ 4-byte Spill
	vstr	s6, [r6, #8]            @ 4-byte Spill
	vstr	s1, [r6, #4]            @ 4-byte Spill
	beq	.LBB4_15
@ BB#11:
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r6, #4]            @ 4-byte Reload
	vldr	s4, [r6, #8]            @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB4_13
@ BB#12:
	vldr	s0, [r6, #12]           @ 4-byte Reload
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vstr	s0, [r0, #96]
	b	.LBB4_14
.LBB4_13:
	vldr	s0, [r6, #8]            @ 4-byte Reload
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vstr	s0, [r0, #96]
.LBB4_14:
	b	.LBB4_15
.LBB4_15:
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vldr	s0, [r0, #96]
	vstr	s0, [r0, #64]
.LBB4_16:
	ldr	r0, [r6, #60]           @ 4-byte Reload
	vldr	s0, [r0, #64]
	vmov	r0, s0
	sub	sp, r11, #8
	pop	{r6, r10, r11, pc}
	.p2align	2
@ BB#17:
.LCPI4_0:
	.long	0                       @ float 0
.Lfunc_end4:
	.size	Index_to_frequency, .Lfunc_end4-Index_to_frequency
	.cantunwind
	.fnend

	.globl	fft_float
	.p2align	3
	.type	fft_float,%function
	.code	32                      @ @fft_float
fft_float:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #752
	bfc	sp, #0, #4
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	vldr	d16, .LCPI5_2
	str	r0, [sp, #572]
	str	r1, [sp, #540]
	str	r2, [sp, #536]
	str	r3, [sp, #532]
	str	lr, [sp, #528]
	str	r12, [sp, #524]
	vstr	d16, [sp, #288]
	ldr	r0, [sp, #572]
	bl	IsPowerOfTwo
	cmp	r0, #0
	bne	.LBB5_2
@ BB#1:
	movw	r1, :lower16:.L.str.12
	movt	r1, :upper16:.L.str.12
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #572]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #156]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB5_2:
	ldr	r0, [sp, #540]
	cmp	r0, #0
	beq	.LBB5_4
@ BB#3:
	vldr	d16, [sp, #288]
	vneg.f64	d16, d16
	vstr	d16, [sp, #288]
.LBB5_4:
	movw	r1, :lower16:.L.str.1.13
	movt	r1, :upper16:.L.str.1.13
	ldr	r0, [sp, #536]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.2.14
	movt	r1, :upper16:.L.str.2.14
	ldr	r0, [sp, #528]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.3.15
	movt	r1, :upper16:.L.str.3.15
	ldr	r0, [sp, #524]
	bl	CheckPointer
	ldr	r0, [sp, #572]
	bl	NumberOfBitsNeeded
	movw	r1, #0
	str	r0, [sp, #492]
	str	r1, [sp, #460]
.LBB5_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #460]
	ldr	r1, [sp, #572]
	cmp	r0, r1
	bhs	.LBB5_13
@ BB#6:                                 @   in Loop: Header=BB5_5 Depth=1
	movw	r0, #0
	movw	r1, #2
	ldr	r2, [sp, #460]
	ldr	r3, [sp, #492]
	str	r0, [sp, #152]          @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #148]          @ 4-byte Spill
	mov	r1, r3
	bl	ReverseBits
	str	r0, [sp, #428]
	ldr	r1, [sp, #536]
	ldr	r2, [sp, #460]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	ldr	r1, [sp, #528]
	mov	r2, r0
	add	r0, r1, r0, lsl #2
	vstr	s0, [r0]
	ldr	r0, [sp, #532]
	ldr	r1, [sp, #152]          @ 4-byte Reload
	cmp	r0, r1
	str	r2, [sp, #144]          @ 4-byte Spill
	bne	.LBB5_8
@ BB#7:                                 @   in Loop: Header=BB5_5 Depth=1
	vldr	d16, .LCPI5_3
	vstr	d16, [sp, #136]         @ 8-byte Spill
	b	.LBB5_9
.LBB5_8:                                @   in Loop: Header=BB5_5 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #532]
	ldr	r2, [sp, #460]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	str	r0, [sp, #132]          @ 4-byte Spill
	vstr	d16, [sp, #136]         @ 8-byte Spill
.LBB5_9:                                @   in Loop: Header=BB5_5 Depth=1
	vldr	d16, [sp, #136]         @ 8-byte Reload
	movw	r0, #2
	vcvt.f32.f64	s0, d16
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #428]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	str	r0, [sp, #128]          @ 4-byte Spill
@ BB#10:                                @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, [sp, #460]
	vdup.32	q8, r0
	add	r1, sp, #464
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #460]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_5
	.p2align	3
@ BB#11:
.LCPI5_2:
	.long	1413754136              @ double 6.2831853071795862
	.long	1075388923
	.p2align	3
@ BB#12:
.LCPI5_3:
	.long	0                       @ double 0
	.long	0
.LBB5_13:
	movw	r0, #2
	movw	r1, #1
	str	r1, [sp, #300]
	str	r0, [sp, #332]
.LBB5_14:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_16 Depth 2
                                        @       Child Loop BB5_18 Depth 3
	ldr	r0, [sp, #332]
	ldr	r1, [sp, #572]
	cmp	r0, r1
	bhi	.LBB5_40
@ BB#15:                                @   in Loop: Header=BB5_14 Depth=1
	movw	r0, #0
	vmov.f64	d16, #2.000000e+00
	vmov.f64	d17, #-2.000000e+00
	vldr	d18, [sp, #288]
	ldr	r1, [sp, #332]
	vmov	s0, r1
	vcvt.f64.u32	d19, s0
	vdiv.f64	d18, d18, d19
	vstr	d18, [sp, #264]
	vldr	d18, [sp, #264]
	vmul.f64	d18, d17, d18
	vmov	r1, r2, d18
	str	r0, [sp, #108]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d17, [sp, #96]          @ 8-byte Spill
	vstr	d16, [sp, #88]          @ 8-byte Spill
	bl	sin
	vmov	d16, r0, r1
	vstr	d16, [sp, #256]
	vldr	d16, [sp, #264]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	sin
	vmov	d16, r0, r1
	vstr	d16, [sp, #248]
	vldr	d16, [sp, #264]
	vldr	d17, [sp, #96]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vstr	d16, [sp, #240]
	vldr	d16, [sp, #264]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vstr	d16, [sp, #232]
	vldr	d16, [sp, #232]
	vldr	d17, [sp, #88]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vstr	d16, [sp, #224]
	ldr	r0, [sp, #108]          @ 4-byte Reload
	str	r0, [sp, #460]
.LBB5_16:                               @   Parent Loop BB5_14 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB5_18 Depth 3
	ldr	r0, [sp, #460]
	ldr	r1, [sp, #572]
	cmp	r0, r1
	bhs	.LBB5_33
@ BB#17:                                @   in Loop: Header=BB5_16 Depth=2
	movw	r0, #0
	vldr	d16, [sp, #240]
	vstr	d16, [sp, #216]
	vldr	d16, [sp, #232]
	vstr	d16, [sp, #208]
	vldr	d16, [sp, #256]
	vstr	d16, [sp, #192]
	vldr	d16, [sp, #248]
	vstr	d16, [sp, #184]
	ldr	r1, [sp, #460]
	str	r1, [sp, #428]
	str	r0, [sp, #364]
.LBB5_18:                               @   Parent Loop BB5_14 Depth=1
                                        @     Parent Loop BB5_16 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #364]
	ldr	r1, [sp, #300]
	cmp	r0, r1
	bhs	.LBB5_31
@ BB#19:                                @   in Loop: Header=BB5_18 Depth=3
	movw	r0, #2
	vldr	d16, [sp, #224]
	vldr	d17, [sp, #208]
	vldr	d18, [sp, #216]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #200]
	vldr	d16, [sp, #208]
	vstr	d16, [sp, #216]
	vldr	d16, [sp, #200]
	vstr	d16, [sp, #208]
	vldr	d16, [sp, #224]
	vldr	d17, [sp, #184]
	vldr	d18, [sp, #192]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #176]
	vldr	d16, [sp, #184]
	vstr	d16, [sp, #192]
	vldr	d16, [sp, #176]
	vstr	d16, [sp, #184]
	ldr	r1, [sp, #428]
	ldr	r2, [sp, #300]
	add	r1, r1, r2
	str	r1, [sp, #396]
	vldr	d16, [sp, #200]
	ldr	r2, [sp, #528]
	add	r2, r2, r1, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #176]
	ldr	r2, [sp, #524]
	add	r1, r2, r1, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [sp, #280]
	vldr	d16, [sp, #200]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #396]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #176]
	ldr	r1, [sp, #528]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	vstr	d16, [sp, #272]
	ldr	r1, [sp, #528]
	ldr	r2, [sp, #428]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [sp, #280]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [sp, #396]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #428]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [sp, #272]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [sp, #396]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	vldr	d16, [sp, #280]
	ldr	r1, [sp, #528]
	ldr	r2, [sp, #428]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [sp, #272]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #428]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	str	r0, [sp, #84]           @ 4-byte Spill
@ BB#20:                                @   in Loop: Header=BB5_18 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #428]
	vdup.32	q8, r1
	add	r2, sp, #432
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
	str	r1, [sp, #700]
	cmp	r3, r0
	str	r1, [sp, #80]           @ 4-byte Spill
	str	r3, [sp, #76]           @ 4-byte Spill
	str	r2, [sp, #72]           @ 4-byte Spill
	beq	.LBB5_25
@ BB#21:                                @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #72]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_23
@ BB#22:                                @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #80]           @ 4-byte Reload
	str	r0, [sp, #700]
	b	.LBB5_24
.LBB5_23:                               @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #700]
.LBB5_24:                               @   in Loop: Header=BB5_18 Depth=3
	b	.LBB5_25
.LBB5_25:                               @   in Loop: Header=BB5_18 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #700]
	str	r1, [sp, #428]
	ldr	r1, [sp, #364]
	vdup.32	q8, r1
	add	r2, sp, #368
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
	str	r1, [sp, #668]
	cmp	r3, r0
	str	r1, [sp, #68]           @ 4-byte Spill
	str	r3, [sp, #64]           @ 4-byte Spill
	str	r2, [sp, #60]           @ 4-byte Spill
	beq	.LBB5_30
@ BB#26:                                @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #64]           @ 4-byte Reload
	ldr	r1, [sp, #60]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_28
@ BB#27:                                @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #68]           @ 4-byte Reload
	str	r0, [sp, #668]
	b	.LBB5_29
.LBB5_28:                               @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r0, [sp, #668]
.LBB5_29:                               @   in Loop: Header=BB5_18 Depth=3
	b	.LBB5_30
.LBB5_30:                               @   in Loop: Header=BB5_18 Depth=3
	ldr	r0, [sp, #668]
	str	r0, [sp, #364]
	b	.LBB5_18
.LBB5_31:                               @   in Loop: Header=BB5_16 Depth=2
	b	.LBB5_32
.LBB5_32:                               @   in Loop: Header=BB5_16 Depth=2
	ldr	r0, [sp, #332]
	vdup.32	q8, r0
	add	r1, sp, #336
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #460]
	add	r2, sp, #464
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #460]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_16
.LBB5_33:                               @   in Loop: Header=BB5_14 Depth=1
	ldr	r0, [sp, #332]
	str	r0, [sp, #300]
@ BB#34:                                @   in Loop: Header=BB5_14 Depth=1
	movw	r0, #3
	movw	r1, #1
	ldr	r2, [sp, #332]
	vdup.32	q8, r2
	add	r3, sp, #336
	vst1.64	{d16, d17}, [r3:128]
	vshl.i32	q8, q8, #1
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d18, d16
	vmov.32	r3, d18[0]
	vmov.32	r12, d18[1]
	vmov.f64	d18, d17
	vmov.32	lr, d18[0]
	add	r12, r3, r12
	add	r12, r12, lr
	lsl	r2, r2, #1
	mul	r0, r2, r0
	str	r2, [sp, #636]
	cmp	r12, r0
	str	r2, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	beq	.LBB5_39
@ BB#35:                                @   in Loop: Header=BB5_14 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_37
@ BB#36:                                @   in Loop: Header=BB5_14 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #636]
	b	.LBB5_38
.LBB5_37:                               @   in Loop: Header=BB5_14 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #636]
.LBB5_38:                               @   in Loop: Header=BB5_14 Depth=1
	b	.LBB5_39
.LBB5_39:                               @   in Loop: Header=BB5_14 Depth=1
	ldr	r0, [sp, #636]
	str	r0, [sp, #332]
	b	.LBB5_14
.LBB5_40:
	ldr	r0, [sp, #540]
	cmp	r0, #0
	beq	.LBB5_51
@ BB#41:
	movw	r0, #0
	ldr	r1, [sp, #572]
	vmov	s0, r1
	vcvt.f64.u32	d16, s0
	vstr	d16, [sp, #160]
	str	r0, [sp, #460]
.LBB5_42:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #460]
	ldr	r1, [sp, #572]
	cmp	r0, r1
	bhs	.LBB5_50
@ BB#43:                                @   in Loop: Header=BB5_42 Depth=1
	movw	r0, #2
	vldr	d16, [sp, #160]
	ldr	r1, [sp, #528]
	ldr	r2, [sp, #460]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [sp, #160]
	ldr	r1, [sp, #524]
	ldr	r2, [sp, #460]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#44:                                @   in Loop: Header=BB5_42 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #460]
	add	r2, sp, #464
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
	str	r1, [sp, #604]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB5_49
@ BB#45:                                @   in Loop: Header=BB5_42 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_47
@ BB#46:                                @   in Loop: Header=BB5_42 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #604]
	b	.LBB5_48
.LBB5_47:                               @   in Loop: Header=BB5_42 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #604]
.LBB5_48:                               @   in Loop: Header=BB5_42 Depth=1
	b	.LBB5_49
.LBB5_49:                               @   in Loop: Header=BB5_42 Depth=1
	ldr	r0, [sp, #604]
	str	r0, [sp, #460]
	b	.LBB5_42
.LBB5_50:
	b	.LBB5_51
.LBB5_51:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
@ BB#52:
.Lfunc_end5:
	.size	fft_float, .Lfunc_end5-fft_float
	.cantunwind
	.fnend

	.p2align	2
	.type	CheckPointer,%function
	.code	32                      @ @CheckPointer
CheckPointer:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r2, #0
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	cmp	r0, r2
	bne	.LBB6_2
@ BB#1:
	movw	r1, :lower16:.L.str.4.16
	movt	r1, :upper16:.L.str.4.16
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #8]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB6_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end6:
	.size	CheckPointer, .Lfunc_end6-CheckPointer
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: fft <waves> <length> -i\n"
	.size	.L.str, 32

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"-i performs an inverse fft\n"
	.size	.L.str.1, 28

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2, 30

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"<length> is the number of samples\n"
	.size	.L.str.3, 35

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"-i"
	.size	.L.str.4, 3

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"RealOut:\n"
	.size	.L.str.5, 10

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"%f \t"
	.size	.L.str.6, 5

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"\n"
	.size	.L.str.7, 2

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"ImagOut:\n"
	.size	.L.str.8, 10

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str.9, 73

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.12, 52

	.type	.L.str.1.13,%object     @ @.str.1.13
.L.str.1.13:
	.asciz	"RealIn"
	.size	.L.str.1.13, 7

	.type	.L.str.2.14,%object     @ @.str.2.14
.L.str.2.14:
	.asciz	"RealOut"
	.size	.L.str.2.14, 8

	.type	.L.str.3.15,%object     @ @.str.3.15
.L.str.3.15:
	.asciz	"ImagOut"
	.size	.L.str.3.15, 8

	.type	.L.str.4.16,%object     @ @.str.4.16
.L.str.4.16:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4.16, 35


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
