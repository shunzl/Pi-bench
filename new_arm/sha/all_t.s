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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #216
	bfc	sp, #0, #4
	movw	r2, #0
	vmov.i32	q8, #0x0
	add	r3, sp, #160
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #156]
	str	r0, [sp, #124]
	str	r1, [sp, #120]
	ldr	r0, [sp, #124]
	cmp	r0, #2
	bge	.LBB0_2
@ BB#1:
	add	r0, sp, #24
	movw	r1, :lower16:stdin
	movt	r1, :upper16:stdin
	ldr	r1, [r1]
	str	r1, [sp, #116]
	ldr	r1, [sp, #116]
	bl	sha_stream
	add	r0, sp, #24
	bl	sha_print
	b	.LBB0_14
.LBB0_2:
	b	.LBB0_3
.LBB0_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #124]
	vdup.32	q8, r2
	add	r3, sp, #128
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
	str	r1, [sp, #188]
	cmp	r12, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	beq	.LBB0_8
@ BB#4:                                 @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_6
@ BB#5:                                 @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #188]
	b	.LBB0_7
.LBB0_6:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #188]
.LBB0_7:                                @   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_8
.LBB0_8:                                @   in Loop: Header=BB0_3 Depth=1
	ldr	r0, [sp, #188]
	str	r0, [sp, #124]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	cmp	r0, #0
	beq	.LBB0_13
@ BB#9:                                 @   in Loop: Header=BB0_3 Depth=1
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	ldr	r0, [sp, #120]
	add	r2, r0, #4
	str	r2, [sp, #120]
	ldr	r0, [r0, #4]
	bl	fopen
	movw	r1, #0
	str	r0, [sp, #116]
	ldr	r0, [sp, #116]
	cmp	r0, r1
	bne	.LBB0_11
@ BB#10:                                @   in Loop: Header=BB0_3 Depth=1
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	ldr	r1, [sp, #120]
	ldr	r1, [r1]
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_12
.LBB0_11:                               @   in Loop: Header=BB0_3 Depth=1
	add	r0, sp, #24
	ldr	r1, [sp, #116]
	bl	sha_stream
	add	r0, sp, #24
	bl	sha_print
	ldr	r0, [sp, #116]
	bl	fclose
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB0_12:                               @   in Loop: Header=BB0_3 Depth=1
	b	.LBB0_3
.LBB0_13:
	b	.LBB0_14
.LBB0_14:
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.globl	sha_init
	.p2align	2
	.type	sha_init,%function
	.code	32                      @ @sha_init
sha_init:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #4
	movw	r1, #0
	ldr	r2, .LCPI1_0
	ldr	r3, .LCPI1_1
	ldr	r12, .LCPI1_2
	ldr	lr, .LCPI1_3
	ldr	r4, .LCPI1_4
	str	r0, [sp]
	ldr	r0, [sp]
	str	r4, [r0]
	ldr	r0, [sp]
	str	lr, [r0, #4]
	ldr	r0, [sp]
	str	r12, [r0, #8]
	ldr	r0, [sp]
	str	r3, [r0, #12]
	ldr	r0, [sp]
	str	r2, [r0, #16]
	ldr	r0, [sp]
	str	r1, [r0, #20]
	ldr	r0, [sp]
	str	r1, [r0, #24]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
	.p2align	2
@ BB#1:
.LCPI1_0:
	.long	3285377520              @ 0xc3d2e1f0
.LCPI1_1:
	.long	271733878               @ 0x10325476
.LCPI1_2:
	.long	2562383102              @ 0x98badcfe
.LCPI1_3:
	.long	4023233417              @ 0xefcdab89
.LCPI1_4:
	.long	1732584193              @ 0x67452301
.Lfunc_end1:
	.size	sha_init, .Lfunc_end1-sha_init
	.cantunwind
	.fnend

	.globl	sha_update
	.p2align	2
	.type	sha_update,%function
	.code	32                      @ @sha_update
sha_update:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #192
	bfc	sp, #0, #4
	movw	r3, #3
	str	r0, [sp, #72]
	str	r1, [sp, #68]
	str	r2, [sp, #44]
	ldr	r0, [sp, #72]
	ldr	r0, [r0, #20]
	ldr	r1, [sp, #44]
	lsl	r1, r1, #3
	add	r0, r0, r1
	ldr	r1, [sp, #72]
	ldr	r1, [r1, #20]
	cmp	r0, r1
	str	r3, [sp, #40]           @ 4-byte Spill
	bhs	.LBB2_2
@ BB#1:
	ldr	r0, [sp, #72]
	ldr	r1, [r0, #24]
	add	r1, r1, #1
	str	r1, [r0, #24]
.LBB2_2:
	movw	r0, #29
	movw	r1, #3
	ldr	r2, [sp, #44]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #48
	vst1.64	{d16, d17}, [r3:128]
	lsl	r2, r2, #3
	ldr	r3, [sp, #72]
	ldr	r12, [r3, #20]
	add	r2, r12, r2
	str	r2, [r3, #20]
	ldr	r2, [sp, #44]
	lsr	r2, r2, #29
	ldr	r3, [sp, #72]
	ldr	r12, [r3, #24]
	add	r2, r12, r2
	str	r2, [r3, #24]
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB2_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #44]
	cmp	r0, #64
	blt	.LBB2_10
@ BB#4:                                 @   in Loop: Header=BB2_3 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #72]
	add	r2, r1, #28
	ldr	r3, [sp, #68]
	mov	r12, r3
	vld1.8	{d16, d17}, [r12]!
	vst1.8	{d16, d17}, [r2]
	add	r2, r1, #76
	add	lr, r3, #48
	vld1.8	{d16, d17}, [lr]
	vst1.8	{d16, d17}, [r2]
	add	r2, r1, #60
	add	r3, r3, #32
	vld1.8	{d16, d17}, [r3]
	vst1.8	{d16, d17}, [r2]
	add	r1, r1, #44
	vld1.8	{d16, d17}, [r12]
	vst1.8	{d16, d17}, [r1]
	ldr	r1, [sp, #72]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	bl	sha_transform
	ldr	r0, [sp, #68]
	add	r0, r0, #64
	str	r0, [sp, #68]
	ldr	r0, [sp, #44]
	vdup.32	q8, r0
	add	r1, sp, #48
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x40
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r2, d20[1]
	vmov.f64	d20, d17
	vmov.32	r3, d20[0]
	add	r2, r1, r2
	add	r2, r2, r3
	sub	r0, r0, #64
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mul	r12, r0, r3
	str	r0, [sp, #76]
	cmp	r2, r12
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r0, [sp]                @ 4-byte Spill
	beq	.LBB2_9
@ BB#5:                                 @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_7
@ BB#6:                                 @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #76]
	b	.LBB2_8
.LBB2_7:                                @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #76]
.LBB2_8:                                @   in Loop: Header=BB2_3 Depth=1
	b	.LBB2_9
.LBB2_9:                                @   in Loop: Header=BB2_3 Depth=1
	ldr	r0, [sp, #76]
	str	r0, [sp, #44]
	b	.LBB2_3
.LBB2_10:
	ldr	r0, [sp, #72]
	add	r0, r0, #28
	ldr	r1, [sp, #68]
	ldr	r2, [sp, #44]
	bl	memcpy
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	sha_update, .Lfunc_end2-sha_update
	.cantunwind
	.fnend

	.p2align	2
	.type	sha_transform,%function
	.code	32                      @ @sha_transform
sha_transform:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #1056
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #744]
	vmov.i32	q8, #0x0
	add	r0, sp, #720
	vst1.64	{d16, d17}, [r0]
	str	r1, [sp, #716]
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #16
	bge	.LBB3_4
@ BB#2:                                 @   in Loop: Header=BB3_1 Depth=1
	add	r0, sp, #204
	movw	r1, #2
	ldr	r2, [sp, #744]
	ldr	r3, [sp, #716]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2, #28]
	add	r12, sp, #204
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #200]          @ 4-byte Spill
	str	r1, [sp, #196]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [sp, #716]
	vdup.32	q8, r0
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #176
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB3_1
.LBB3_4:
	movw	r0, #16
	vmov.i32	q8, #0x10
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB3_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #80
	bge	.LBB3_8
@ BB#6:                                 @   in Loop: Header=BB3_5 Depth=1
	add	r0, sp, #204
	movw	r1, #2
	ldr	r2, [sp, #716]
	add	r3, sp, #204
	add	r2, r3, r2, lsl #2
	ldr	r3, [r2, #-64]
	ldr	r12, [r2, #-56]
	ldr	lr, [r2, #-32]
	ldr	r4, [r2, #-12]
	eor	lr, r4, lr
	eor	r12, lr, r12
	eor	r3, r12, r3
	str	r3, [r2]
	str	r0, [sp, #172]          @ 4-byte Spill
	str	r1, [sp, #168]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [sp, #716]
	add	r1, sp, #720
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB3_5
.LBB3_8:
	movw	r0, #0
	ldr	r1, [sp, #744]
	ldr	r1, [r1]
	str	r1, [sp, #652]
	ldr	r1, [sp, #744]
	ldr	r1, [r1, #4]
	str	r1, [sp, #620]
	ldr	r1, [sp, #744]
	ldr	r1, [r1, #8]
	str	r1, [sp, #588]
	ldr	r1, [sp, #744]
	ldr	r1, [r1, #12]
	str	r1, [sp, #556]
	ldr	r1, [sp, #744]
	ldr	r1, [r1, #16]
	str	r1, [sp, #524]
	vmov.i32	q8, #0x0
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB3_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #20
	bge	.LBB3_12
@ BB#10:                                @   in Loop: Header=BB3_9 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI3_3
	add	r3, sp, #204
	ldr	r12, [sp, #652]
	vdup.32	q8, r12
	add	lr, sp, #656
	vst1.64	{d16, d17}, [lr:128]
	lsl	r12, r12, #5
	ldr	r4, [sp, #652]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	orr	r12, r12, r4, lsr #27
	ldr	lr, [sp, #620]
	vdup.32	q8, lr
	add	r4, sp, #624
	vst1.64	{d16, d17}, [r4:128]
	ldr	r5, [sp, #588]
	vdup.32	q8, r5
	add	r6, sp, #592
	vst1.64	{d16, d17}, [r6:128]
	and	lr, lr, r5
	ldr	r5, [sp, #620]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	ldr	r4, [sp, #556]
	vdup.32	q8, r4
	add	r6, sp, #560
	vst1.64	{d16, d17}, [r6:128]
	bic	r4, r4, r5
	orr	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #524]
	vdup.32	q8, lr
	add	r4, sp, #528
	vst1.64	{d16, d17}, [r4:128]
	add	r12, r12, lr
	ldr	lr, [sp, #716]
	add	r4, sp, #204
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [sp, #684]
	ldr	r2, [sp, #556]
	str	r2, [sp, #524]
	ldr	r2, [sp, #588]
	str	r2, [sp, #556]
	ldr	r2, [sp, #620]
	lsl	r2, r2, #30
	ldr	r12, [sp, #620]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [sp, #588]
	ldr	r2, [sp, #652]
	str	r2, [sp, #620]
	ldr	r2, [sp, #684]
	str	r2, [sp, #652]
	str	r0, [sp, #140]          @ 4-byte Spill
	str	r1, [sp, #136]          @ 4-byte Spill
	str	r3, [sp, #132]          @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB3_9 Depth=1
	ldr	r0, [sp, #716]
	add	r1, sp, #720
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB3_9
.LBB3_12:
	movw	r0, #20
	vmov.i32	q8, #0x14
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB3_13:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #40
	bge	.LBB3_16
@ BB#14:                                @   in Loop: Header=BB3_13 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI3_2
	add	r3, sp, #204
	ldr	r12, [sp, #652]
	vdup.32	q8, r12
	add	lr, sp, #656
	vst1.64	{d16, d17}, [lr:128]
	lsl	r12, r12, #5
	ldr	r4, [sp, #652]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	orr	r12, r12, r4, lsr #27
	ldr	lr, [sp, #620]
	vdup.32	q8, lr
	add	r4, sp, #624
	vst1.64	{d16, d17}, [r4:128]
	ldr	r4, [sp, #588]
	vdup.32	q8, r4
	add	r5, sp, #592
	vst1.64	{d16, d17}, [r5:128]
	eor	lr, lr, r4
	ldr	r4, [sp, #556]
	vdup.32	q8, r4
	add	r5, sp, #560
	vst1.64	{d16, d17}, [r5:128]
	eor	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #524]
	vdup.32	q8, lr
	add	r4, sp, #528
	vst1.64	{d16, d17}, [r4:128]
	add	r12, r12, lr
	ldr	lr, [sp, #716]
	add	r4, sp, #204
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [sp, #684]
	ldr	r2, [sp, #556]
	str	r2, [sp, #524]
	ldr	r2, [sp, #588]
	str	r2, [sp, #556]
	ldr	r2, [sp, #620]
	lsl	r2, r2, #30
	ldr	r12, [sp, #620]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [sp, #588]
	ldr	r2, [sp, #652]
	str	r2, [sp, #620]
	ldr	r2, [sp, #684]
	str	r2, [sp, #652]
	str	r0, [sp, #108]          @ 4-byte Spill
	str	r1, [sp, #104]          @ 4-byte Spill
	str	r3, [sp, #100]          @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB3_13 Depth=1
	ldr	r0, [sp, #716]
	add	r1, sp, #720
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB3_13
.LBB3_16:
	movw	r0, #40
	vmov.i32	q8, #0x28
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB3_17:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #60
	bge	.LBB3_20
@ BB#18:                                @   in Loop: Header=BB3_17 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI3_1
	add	r3, sp, #204
	ldr	r12, [sp, #652]
	vdup.32	q8, r12
	add	lr, sp, #656
	vst1.64	{d16, d17}, [lr:128]
	lsl	r12, r12, #5
	ldr	r4, [sp, #652]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	orr	r12, r12, r4, lsr #27
	ldr	lr, [sp, #620]
	vdup.32	q8, lr
	add	r4, sp, #624
	vst1.64	{d16, d17}, [r4:128]
	ldr	r5, [sp, #588]
	vdup.32	q8, r5
	add	r6, sp, #592
	vst1.64	{d16, d17}, [r6:128]
	and	lr, lr, r5
	ldr	r5, [sp, #620]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	ldr	r4, [sp, #556]
	vdup.32	q8, r4
	add	r7, sp, #560
	vst1.64	{d16, d17}, [r7:128]
	and	r4, r5, r4
	orr	lr, lr, r4
	ldr	r4, [sp, #588]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r6:128]
	ldr	r5, [sp, #556]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r7:128]
	and	r4, r4, r5
	orr	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #524]
	vdup.32	q8, lr
	add	r4, sp, #528
	vst1.64	{d16, d17}, [r4:128]
	add	r12, r12, lr
	ldr	lr, [sp, #716]
	add	r4, sp, #204
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [sp, #684]
	ldr	r2, [sp, #556]
	str	r2, [sp, #524]
	ldr	r2, [sp, #588]
	str	r2, [sp, #556]
	ldr	r2, [sp, #620]
	lsl	r2, r2, #30
	ldr	r12, [sp, #620]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [sp, #588]
	ldr	r2, [sp, #652]
	str	r2, [sp, #620]
	ldr	r2, [sp, #684]
	str	r2, [sp, #652]
	str	r0, [sp, #76]           @ 4-byte Spill
	str	r1, [sp, #72]           @ 4-byte Spill
	str	r3, [sp, #68]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB3_17 Depth=1
	ldr	r0, [sp, #716]
	add	r1, sp, #720
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB3_17
.LBB3_20:
	movw	r0, #60
	vmov.i32	q8, #0x3c
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB3_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #716]
	cmp	r0, #80
	bge	.LBB3_29
@ BB#22:                                @   in Loop: Header=BB3_21 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI3_0
	add	r3, sp, #204
	ldr	r12, [sp, #652]
	vdup.32	q8, r12
	add	lr, sp, #656
	vst1.64	{d16, d17}, [lr:128]
	lsl	r12, r12, #5
	ldr	r4, [sp, #652]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	orr	r12, r12, r4, lsr #27
	ldr	lr, [sp, #620]
	vdup.32	q8, lr
	add	r4, sp, #624
	vst1.64	{d16, d17}, [r4:128]
	ldr	r4, [sp, #588]
	vdup.32	q8, r4
	add	r5, sp, #592
	vst1.64	{d16, d17}, [r5:128]
	eor	lr, lr, r4
	ldr	r4, [sp, #556]
	vdup.32	q8, r4
	add	r5, sp, #560
	vst1.64	{d16, d17}, [r5:128]
	eor	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #524]
	vdup.32	q8, lr
	add	r4, sp, #528
	vst1.64	{d16, d17}, [r4:128]
	add	r12, r12, lr
	ldr	lr, [sp, #716]
	add	r4, sp, #204
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [sp, #684]
	ldr	r2, [sp, #556]
	str	r2, [sp, #524]
	ldr	r2, [sp, #588]
	str	r2, [sp, #556]
	ldr	r2, [sp, #620]
	lsl	r2, r2, #30
	ldr	r12, [sp, #620]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [sp, #588]
	ldr	r2, [sp, #652]
	str	r2, [sp, #620]
	ldr	r2, [sp, #684]
	str	r2, [sp, #652]
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB3_21 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #716]
	add	r2, sp, #720
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
	str	r1, [sp, #908]
	cmp	r3, r0
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	beq	.LBB3_28
@ BB#24:                                @   in Loop: Header=BB3_21 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_26
@ BB#25:                                @   in Loop: Header=BB3_21 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #908]
	b	.LBB3_27
.LBB3_26:                               @   in Loop: Header=BB3_21 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #908]
.LBB3_27:                               @   in Loop: Header=BB3_21 Depth=1
	b	.LBB3_28
.LBB3_28:                               @   in Loop: Header=BB3_21 Depth=1
	ldr	r0, [sp, #908]
	str	r0, [sp, #716]
	b	.LBB3_21
.LBB3_29:
	ldr	r0, [sp, #652]
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r1, sp, #656
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #744]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	ldr	r0, [sp, #620]
	ldr	r1, [sp, #744]
	ldr	r2, [r1, #4]
	add	r0, r2, r0
	str	r0, [r1, #4]
	ldr	r0, [sp, #588]
	ldr	r1, [sp, #744]
	ldr	r2, [r1, #8]
	add	r0, r2, r0
	str	r0, [r1, #8]
	ldr	r0, [sp, #556]
	ldr	r1, [sp, #744]
	ldr	r2, [r1, #12]
	add	r0, r2, r0
	str	r0, [r1, #12]
	ldr	r0, [sp, #524]
	ldr	r1, [sp, #744]
	ldr	r2, [r1, #16]
	add	r0, r2, r0
	str	r0, [r1, #16]
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	2
@ BB#30:
.LCPI3_0:
	.long	3395469782              @ 0xca62c1d6
.LCPI3_1:
	.long	2400959708              @ 0x8f1bbcdc
.LCPI3_2:
	.long	1859775393              @ 0x6ed9eba1
.LCPI3_3:
	.long	1518500249              @ 0x5a827999
.Lfunc_end3:
	.size	sha_transform, .Lfunc_end3-sha_transform
	.cantunwind
	.fnend

	.globl	sha_final
	.p2align	2
	.type	sha_final,%function
	.code	32                      @ @sha_final
sha_final:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #160
	bfc	sp, #0, #4
	movw	r1, #128
	str	r0, [sp, #156]
	ldr	r0, [r0, #20]
	str	r0, [sp, #92]
	ldr	r0, [sp, #156]
	ldr	r0, [r0, #24]
	str	r0, [sp, #60]
	ldr	r0, [sp, #92]
	vdup.32	q8, r0
	add	r2, sp, #96
	vst1.64	{d16, d17}, [r2:128]
	vshr.u32	q8, q8, #3
	vmov.i32	q9, #0x3f
	vand	q8, q8, q9
	add	r2, sp, #128
	vst1.64	{d16, d17}, [r2]
	ubfx	r0, r0, #3, #6
	str	r0, [sp, #124]
	ldr	r3, [sp, #156]
	add	r3, r3, #28
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r2, r0, #1
	str	r2, [sp, #124]
	add	r0, r3, r0
	strb	r1, [r0]
	ldr	r0, [sp, #124]
	cmp	r0, #56
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB4_2
@ BB#1:
	movw	r0, #0
	movw	r1, #64
	ldr	r2, [sp, #156]
	add	r2, r2, #28
	ldr	r3, [sp, #124]
	add	r2, r2, r3
	ldr	r3, [sp, #124]
	sub	r1, r1, r3
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #28]           @ 4-byte Reload
	and	r3, r2, #255
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp, #24]           @ 4-byte Reload
	bl	memset
	ldr	r0, [sp, #156]
	bl	sha_transform
	movw	r0, #0
	movw	r2, #56
	ldr	r1, [sp, #156]
	add	r1, r1, #28
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	and	r1, r1, #255
	bl	memset
	b	.LBB4_3
.LBB4_2:
	movw	r0, #0
	movw	r1, #56
	ldr	r2, [sp, #156]
	add	r2, r2, #28
	ldr	r3, [sp, #124]
	add	r2, r2, r3
	ldr	r3, [sp, #124]
	sub	r1, r1, r3
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #16]           @ 4-byte Reload
	and	r3, r2, #255
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp, #12]           @ 4-byte Reload
	bl	memset
.LBB4_3:
	ldr	r0, [sp, #60]
	ldr	r1, [sp, #156]
	str	r0, [r1, #84]
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #156]
	str	r0, [r1, #88]
	ldr	r0, [sp, #156]
	bl	sha_transform
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end4:
	.size	sha_final, .Lfunc_end4-sha_final
	.cantunwind
	.fnend

	.globl	sha_stream
	.p2align	2
	.type	sha_stream,%function
	.code	32                      @ @sha_stream
sha_stream:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #48
	sub	sp, sp, #8192
	bfc	sp, #0, #4
	add	r4, sp, #8192
	add	r2, r4, #12
	str	r0, [r2, #32]
	str	r1, [r2, #28]
	ldr	r0, [r2, #32]
	str	r2, [sp, #8]            @ 4-byte Spill
	bl	sha_init
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, #1
	movw	r2, #8192
	add	r0, sp, #12
	ldr	r3, [sp, #8]            @ 4-byte Reload
	ldr	r3, [r3, #28]
	bl	fread
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [r1]
	cmp	r0, #0
	ble	.LBB5_3
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	add	r1, sp, #12
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, #32]
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r2, [r2]
	bl	sha_update
	b	.LBB5_1
.LBB5_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, #32]
	bl	sha_final
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end5:
	.size	sha_stream, .Lfunc_end5-sha_stream
	.cantunwind
	.fnend

	.globl	sha_print
	.p2align	2
	.type	sha_print,%function
	.code	32                      @ @sha_print
sha_print:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r1, :lower16:.L.str.5
	movt	r1, :upper16:.L.str.5
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	ldr	r2, [r2, #4]
	ldr	r3, [r11, #-4]
	ldr	r3, [r3, #8]
	ldr	r12, [r11, #-4]
	ldr	r12, [r12, #12]
	ldr	lr, [r11, #-4]
	ldr	lr, [lr, #16]
	str	r0, [r11, #-8]          @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [r11, #-8]          @ 4-byte Reload
	str	r12, [sp]
	str	lr, [sp, #4]
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end6:
	.size	sha_print, .Lfunc_end6-sha_print
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"rb"
	.size	.L.str, 3

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1, 30

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str.5, 31


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
