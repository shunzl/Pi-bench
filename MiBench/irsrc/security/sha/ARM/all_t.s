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
	ldr	r2, .LCPI0_0
	ldr	r3, .LCPI0_1
	ldr	r12, .LCPI0_2
	ldr	lr, .LCPI0_3
	ldr	r4, .LCPI0_4
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
.LCPI0_0:
	.long	3285377520              @ 0xc3d2e1f0
.LCPI0_1:
	.long	271733878               @ 0x10325476
.LCPI0_2:
	.long	2562383102              @ 0x98badcfe
.LCPI0_3:
	.long	4023233417              @ 0xefcdab89
.LCPI0_4:
	.long	1732584193              @ 0x67452301
.Lfunc_end0:
	.size	sha_init, .Lfunc_end0-sha_init
	.cantunwind
	.fnend

	.globl	sha_update
	.p2align	2
	.type	sha_update,%function
	.code	32                      @ @sha_update
sha_update:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #216
	bfc	sp, #0, #4
	mov	r6, sp
	add	r3, r6, #60
	movw	r12, #3
	str	r0, [r3, #28]
	str	r1, [r3, #24]
	str	r2, [r3]
	ldr	r0, [r3, #28]
	ldr	r0, [r0, #20]
	ldr	r1, [r3]
	lsl	r1, r1, #3
	add	r0, r0, r1
	ldr	r1, [r3, #28]
	ldr	r1, [r1, #20]
	cmp	r0, r1
	str	r3, [r6, #44]           @ 4-byte Spill
	str	r12, [r6, #40]          @ 4-byte Spill
	bhs	.LBB1_2
@ BB#1:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #28]
	ldr	r2, [r1, #24]
	add	r2, r2, #1
	str	r2, [r1, #24]
.LBB1_2:
	movw	r0, #29
	movw	r1, #3
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	r3, [r2]
	vdup.32	q8, r3
	add	r12, r6, #64
	vst1.64	{d16, d17}, [r12:128]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	mov	r4, #3
	str	r4, [r12, #-8]
	vmov.i32	q8, #0x3
	vorr	q9, q8, q8
	vst1.32	{d16, d17}, [lr]
	lsl	r3, r3, #3
	ldr	r12, [r2, #28]
	ldr	lr, [r12, #20]
	add	r3, lr, r3
	str	r3, [r12, #20]
	ldr	r3, [r2]
	lsr	r3, r3, #29
	ldr	r12, [r2, #28]
	ldr	lr, [r12, #24]
	add	r3, lr, r3
	str	r3, [r12, #24]
	str	r0, [r6, #36]           @ 4-byte Spill
	str	r1, [r6, #32]           @ 4-byte Spill
	add	lr, r6, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0]
	cmp	r1, #64
	blt	.LBB1_10
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #28]
	add	r3, r2, #28
	ldr	r12, [r1, #24]
	mov	lr, r12
	vld1.8	{d16, d17}, [lr]!
	vst1.8	{d16, d17}, [r3]
	add	r3, r2, #76
	add	r4, r12, #48
	vld1.8	{d16, d17}, [r4]
	vst1.8	{d16, d17}, [r3]
	add	r3, r2, #60
	add	r12, r12, #32
	vld1.8	{d16, d17}, [r12]
	vst1.8	{d16, d17}, [r3]
	add	r2, r2, #44
	vld1.8	{d16, d17}, [lr]
	vst1.8	{d16, d17}, [r2]
	ldr	r2, [r1, #28]
	str	r0, [r6, #12]           @ 4-byte Spill
	mov	r0, r2
	bl	sha_transform
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #24]
	add	r1, r1, #64
	str	r1, [r0, #24]
	ldr	r1, [r0]
	vdup.32	q8, r1
	add	r2, r6, #64
	vst1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #64
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x40
	vst1.32	{d18, d19}, [r12]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	sub	r1, r1, #64
	ldr	r12, [r6, #12]          @ 4-byte Reload
	mul	lr, r1, r12
	str	r1, [r0, #32]
	cmp	r3, lr
	str	r3, [r6, #8]            @ 4-byte Spill
	str	r2, [r6, #4]            @ 4-byte Spill
	str	r1, [r6]                @ 4-byte Spill
	beq	.LBB1_9
@ BB#5:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #8]            @ 4-byte Reload
	ldr	r1, [r6, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #4]            @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #32]
	b	.LBB1_8
.LBB1_7:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6]                @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #32]
.LBB1_8:                                @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_9
.LBB1_9:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	str	r1, [r0]
	b	.LBB1_3
.LBB1_10:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #28]
	add	r1, r1, #28
	ldr	r2, [r0, #24]
	ldr	r3, [r0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end1:
	.size	sha_update, .Lfunc_end1-sha_update
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
	sub	sp, sp, #1088
	bfc	sp, #0, #4
	mov	r6, sp
	add	r1, r6, #556
	movw	r2, #0
	str	r0, [r1, #220]
	str	r2, [r1, #192]
	str	r1, [r6, #220]          @ 4-byte Spill
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #16
	bge	.LBB2_4
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	add	r0, r6, #236
	movw	r1, #2
	ldr	r2, [r6, #220]          @ 4-byte Reload
	ldr	r3, [r2, #220]
	ldr	r12, [r2, #192]
	add	r3, r3, r12, lsl #2
	ldr	r3, [r3, #28]
	add	lr, r6, #236
	add	r12, lr, r12, lsl #2
	str	r3, [r12]
	str	r0, [r6, #216]          @ 4-byte Spill
	str	r1, [r6, #212]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	vdup.32	q8, r1
	add	r2, r6, #752
	vst1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #1
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #192]
	add	lr, r6, #192
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_1
.LBB2_4:
	movw	r0, #16
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #192]
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #80
	bge	.LBB2_8
@ BB#6:                                 @   in Loop: Header=BB2_5 Depth=1
	add	r0, r6, #236
	movw	r1, #2
	ldr	r2, [r6, #220]          @ 4-byte Reload
	ldr	r3, [r2, #192]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	mov	r4, #3
	str	r4, [r12, #-8]
	vmov.i32	q8, #0x3
	vst1.32	{d16, d17}, [lr]
	add	r12, r6, #236
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3, #-12]
	ldr	lr, [r2, #192]
	add	r12, r12, lr, lsl #2
	ldr	lr, [r12, #-64]
	ldr	r4, [r12, #-56]
	ldr	r5, [r12, #-32]
	eor	r3, r3, r5
	eor	r3, r3, r4
	eor	r3, r3, lr
	str	r3, [r12]
	str	r0, [r6, #188]          @ 4-byte Spill
	str	r1, [r6, #184]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	add	r2, r6, #752
	vld1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #1
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #192]
	add	lr, r6, #160
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_5
.LBB2_8:
	movw	r0, #0
	ldr	r1, [r6, #220]          @ 4-byte Reload
	ldr	r2, [r1, #220]
	ldr	r2, [r2]
	str	r2, [r1, #128]
	ldr	r2, [r1, #220]
	ldr	r2, [r2, #4]
	str	r2, [r1, #96]
	ldr	r2, [r1, #220]
	ldr	r2, [r2, #8]
	str	r2, [r1, #64]
	ldr	r2, [r1, #220]
	ldr	r2, [r2, #12]
	str	r2, [r1, #32]
	ldr	r2, [r1, #220]
	ldr	r2, [r2, #16]
	str	r2, [r1]
	str	r0, [r1, #192]
.LBB2_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #20
	bge	.LBB2_12
@ BB#10:                                @   in Loop: Header=BB2_9 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_3
	add	r3, r6, #236
	ldr	r12, [r6, #220]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	vdup.32	q8, lr
	add	r4, r6, #688
	vst1.64	{d16, d17}, [r4:128]
	mov	r5, sp
	sub	r7, r5, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #5
	str	r8, [r5, #-8]
	vmov.i32	q8, #0x5
	vst1.32	{d16, d17}, [r7]
	lsl	lr, lr, #5
	ldr	r5, [r12, #128]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	mov	r4, sp
	sub	r7, r4, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #27
	str	r8, [r4, #-8]
	vmov.i32	q8, #0x1b
	vst1.32	{d16, d17}, [r7]
	orr	lr, lr, r5, lsr #27
	ldr	r4, [r12, #96]
	vdup.32	q8, r4
	add	r5, r6, #656
	vst1.64	{d16, d17}, [r5:128]
	ldr	r7, [r12, #64]
	vdup.32	q8, r7
	add	r8, r6, #624
	vst1.64	{d16, d17}, [r8:128]
	and	r4, r4, r7
	ldr	r7, [r12, #96]
	vdup.32	q8, r7
	vst1.64	{d16, d17}, [r5:128]
	mov	r5, sp
	sub	r8, r5, #8
	mov	sp, r8
	mov	r8, sp
	sub	r8, r8, #16
	bfc	r8, #0, #4
	mov	sp, r8
	mvn	r9, #0
	str	r9, [r5, #-8]
	vmov.i8	q8, #0xff
	vst1.32	{d16, d17}, [r8]
	ldr	r5, [r12, #32]
	vdup.32	q8, r5
	add	r8, r6, #592
	vst1.64	{d16, d17}, [r8:128]
	bic	r5, r5, r7
	orr	r4, r4, r5
	add	lr, lr, r4
	ldr	r4, [r12]
	vdup.32	q8, r4
	add	r5, r6, #560
	vst1.64	{d16, d17}, [r5:128]
	add	lr, lr, r4
	ldr	r4, [r12, #192]
	add	r5, r6, #236
	add	r4, r5, r4, lsl #2
	ldr	r4, [r4]
	add	lr, lr, r4
	add	r2, lr, r2
	str	r2, [r12, #160]
	ldr	r2, [r12, #32]
	str	r2, [r12]
	ldr	r2, [r12, #64]
	str	r2, [r12, #32]
	ldr	r2, [r12, #96]
	lsl	r2, r2, #30
	ldr	lr, [r12, #96]
	lsr	lr, lr, #2
	orr	r2, r2, lr
	str	r2, [r12, #64]
	ldr	r2, [r12, #128]
	str	r2, [r12, #96]
	ldr	r2, [r12, #160]
	str	r2, [r12, #128]
	str	r0, [r6, #156]          @ 4-byte Spill
	str	r1, [r6, #152]          @ 4-byte Spill
	str	r3, [r6, #148]          @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	add	r2, r6, #752
	vld1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #1
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #192]
	add	lr, r6, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_9
.LBB2_12:
	movw	r0, #20
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #192]
.LBB2_13:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #40
	bge	.LBB2_16
@ BB#14:                                @   in Loop: Header=BB2_13 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_2
	add	r3, r6, #236
	ldr	r12, [r6, #220]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	vdup.32	q8, lr
	add	r4, r6, #688
	vst1.64	{d16, d17}, [r4:128]
	mov	r5, sp
	sub	r7, r5, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #5
	str	r8, [r5, #-8]
	vmov.i32	q8, #0x5
	vst1.32	{d16, d17}, [r7]
	lsl	lr, lr, #5
	ldr	r5, [r12, #128]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	mov	r4, sp
	sub	r7, r4, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #27
	str	r8, [r4, #-8]
	vmov.i32	q8, #0x1b
	vst1.32	{d16, d17}, [r7]
	orr	lr, lr, r5, lsr #27
	ldr	r4, [r12, #96]
	vdup.32	q8, r4
	add	r5, r6, #656
	vst1.64	{d16, d17}, [r5:128]
	ldr	r5, [r12, #64]
	vdup.32	q8, r5
	add	r7, r6, #624
	vst1.64	{d16, d17}, [r7:128]
	eor	r4, r4, r5
	ldr	r5, [r12, #32]
	vdup.32	q8, r5
	add	r7, r6, #592
	vst1.64	{d16, d17}, [r7:128]
	eor	r4, r4, r5
	add	lr, lr, r4
	ldr	r4, [r12]
	vdup.32	q8, r4
	add	r5, r6, #560
	vst1.64	{d16, d17}, [r5:128]
	add	lr, lr, r4
	ldr	r4, [r12, #192]
	add	r5, r6, #236
	add	r4, r5, r4, lsl #2
	ldr	r4, [r4]
	add	lr, lr, r4
	add	r2, lr, r2
	str	r2, [r12, #160]
	ldr	r2, [r12, #32]
	str	r2, [r12]
	ldr	r2, [r12, #64]
	str	r2, [r12, #32]
	ldr	r2, [r12, #96]
	lsl	r2, r2, #30
	ldr	lr, [r12, #96]
	lsr	lr, lr, #2
	orr	r2, r2, lr
	str	r2, [r12, #64]
	ldr	r2, [r12, #128]
	str	r2, [r12, #96]
	ldr	r2, [r12, #160]
	str	r2, [r12, #128]
	str	r0, [r6, #124]          @ 4-byte Spill
	str	r1, [r6, #120]          @ 4-byte Spill
	str	r3, [r6, #116]          @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB2_13 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	add	r2, r6, #752
	vld1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #1
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #192]
	add	lr, r6, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_13
.LBB2_16:
	movw	r0, #40
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #192]
.LBB2_17:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #60
	bge	.LBB2_20
@ BB#18:                                @   in Loop: Header=BB2_17 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_1
	add	r3, r6, #236
	ldr	r12, [r6, #220]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	vdup.32	q8, lr
	add	r4, r6, #688
	vst1.64	{d16, d17}, [r4:128]
	mov	r5, sp
	sub	r7, r5, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #5
	str	r8, [r5, #-8]
	vmov.i32	q8, #0x5
	vst1.32	{d16, d17}, [r7]
	lsl	lr, lr, #5
	ldr	r5, [r12, #128]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	mov	r4, sp
	sub	r7, r4, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #27
	str	r8, [r4, #-8]
	vmov.i32	q8, #0x1b
	vst1.32	{d16, d17}, [r7]
	orr	lr, lr, r5, lsr #27
	ldr	r4, [r12, #96]
	vdup.32	q8, r4
	add	r5, r6, #656
	vst1.64	{d16, d17}, [r5:128]
	ldr	r7, [r12, #64]
	vdup.32	q8, r7
	add	r8, r6, #624
	vst1.64	{d16, d17}, [r8:128]
	and	r4, r4, r7
	ldr	r7, [r12, #96]
	vdup.32	q8, r7
	vst1.64	{d16, d17}, [r5:128]
	ldr	r5, [r12, #32]
	vdup.32	q8, r5
	add	r9, r6, #592
	vst1.64	{d16, d17}, [r9:128]
	and	r5, r7, r5
	orr	r4, r4, r5
	ldr	r5, [r12, #64]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r8:128]
	ldr	r7, [r12, #32]
	vdup.32	q8, r7
	vst1.64	{d16, d17}, [r9:128]
	and	r5, r5, r7
	orr	r4, r4, r5
	add	lr, lr, r4
	ldr	r4, [r12]
	vdup.32	q8, r4
	add	r5, r6, #560
	vst1.64	{d16, d17}, [r5:128]
	add	lr, lr, r4
	ldr	r4, [r12, #192]
	add	r5, r6, #236
	add	r4, r5, r4, lsl #2
	ldr	r4, [r4]
	add	lr, lr, r4
	add	r2, lr, r2
	str	r2, [r12, #160]
	ldr	r2, [r12, #32]
	str	r2, [r12]
	ldr	r2, [r12, #64]
	str	r2, [r12, #32]
	ldr	r2, [r12, #96]
	lsl	r2, r2, #30
	ldr	lr, [r12, #96]
	lsr	lr, lr, #2
	orr	r2, r2, lr
	str	r2, [r12, #64]
	ldr	r2, [r12, #128]
	str	r2, [r12, #96]
	ldr	r2, [r12, #160]
	str	r2, [r12, #128]
	str	r0, [r6, #92]           @ 4-byte Spill
	str	r1, [r6, #88]           @ 4-byte Spill
	str	r3, [r6, #84]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	add	r2, r6, #752
	vld1.64	{d16, d17}, [r2:128]
	mov	r3, sp
	sub	r12, r3, #8
	mov	sp, r12
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	mov	lr, #1
	str	lr, [r3, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #192]
	add	lr, r6, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_17
.LBB2_20:
	movw	r0, #60
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #192]
.LBB2_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #80
	bge	.LBB2_29
@ BB#22:                                @   in Loop: Header=BB2_21 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_0
	add	r3, r6, #236
	ldr	r12, [r6, #220]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	vdup.32	q8, lr
	add	r4, r6, #688
	vst1.64	{d16, d17}, [r4:128]
	mov	r5, sp
	sub	r7, r5, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #5
	str	r8, [r5, #-8]
	vmov.i32	q8, #0x5
	vst1.32	{d16, d17}, [r7]
	lsl	lr, lr, #5
	ldr	r5, [r12, #128]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r4:128]
	mov	r4, sp
	sub	r7, r4, #8
	mov	sp, r7
	mov	r7, sp
	sub	r7, r7, #16
	bfc	r7, #0, #4
	mov	sp, r7
	mov	r8, #27
	str	r8, [r4, #-8]
	vmov.i32	q8, #0x1b
	vst1.32	{d16, d17}, [r7]
	orr	lr, lr, r5, lsr #27
	ldr	r4, [r12, #96]
	vdup.32	q8, r4
	add	r5, r6, #656
	vst1.64	{d16, d17}, [r5:128]
	ldr	r5, [r12, #64]
	vdup.32	q8, r5
	add	r7, r6, #624
	vst1.64	{d16, d17}, [r7:128]
	eor	r4, r4, r5
	ldr	r5, [r12, #32]
	vdup.32	q8, r5
	add	r7, r6, #592
	vst1.64	{d16, d17}, [r7:128]
	eor	r4, r4, r5
	add	lr, lr, r4
	ldr	r4, [r12]
	vdup.32	q8, r4
	add	r5, r6, #560
	vst1.64	{d16, d17}, [r5:128]
	add	lr, lr, r4
	ldr	r4, [r12, #192]
	add	r5, r6, #236
	add	r4, r5, r4, lsl #2
	ldr	r4, [r4]
	add	lr, lr, r4
	add	r2, lr, r2
	str	r2, [r12, #160]
	ldr	r2, [r12, #32]
	str	r2, [r12]
	ldr	r2, [r12, #64]
	str	r2, [r12, #32]
	ldr	r2, [r12, #96]
	lsl	r2, r2, #30
	ldr	lr, [r12, #96]
	lsr	lr, lr, #2
	orr	r2, r2, lr
	str	r2, [r12, #64]
	ldr	r2, [r12, #128]
	str	r2, [r12, #96]
	ldr	r2, [r12, #160]
	str	r2, [r12, #128]
	str	r0, [r6, #60]           @ 4-byte Spill
	str	r1, [r6, #56]           @ 4-byte Spill
	str	r3, [r6, #52]           @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB2_21 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #220]          @ 4-byte Reload
	ldr	r2, [r1, #192]
	add	r3, r6, #752
	vld1.64	{d16, d17}, [r3:128]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	mov	r4, #1
	str	r4, [r12, #-8]
	vmov.i32	q9, #0x1
	vst1.32	{d18, d19}, [lr]
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
	str	r2, [r1, #384]
	cmp	r12, r0
	str	r2, [r6, #48]           @ 4-byte Spill
	str	r12, [r6, #44]          @ 4-byte Spill
	str	r3, [r6, #40]           @ 4-byte Spill
	beq	.LBB2_28
@ BB#24:                                @   in Loop: Header=BB2_21 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r6, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_26
@ BB#25:                                @   in Loop: Header=BB2_21 Depth=1
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #384]
	b	.LBB2_27
.LBB2_26:                               @   in Loop: Header=BB2_21 Depth=1
	ldr	r0, [r6, #48]           @ 4-byte Reload
	ldr	r1, [r6, #220]          @ 4-byte Reload
	str	r0, [r1, #384]
.LBB2_27:                               @   in Loop: Header=BB2_21 Depth=1
	b	.LBB2_28
.LBB2_28:                               @   in Loop: Header=BB2_21 Depth=1
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #384]
	str	r1, [r0, #192]
	b	.LBB2_21
.LBB2_29:
	ldr	r0, [r6, #220]          @ 4-byte Reload
	ldr	r1, [r0, #128]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, r6, #688
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [r0, #220]
	ldr	r3, [r2]
	add	r1, r3, r1
	str	r1, [r2]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #220]
	ldr	r3, [r2, #4]
	add	r1, r3, r1
	str	r1, [r2, #4]
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #220]
	ldr	r3, [r2, #8]
	add	r1, r3, r1
	str	r1, [r2, #8]
	ldr	r1, [r0, #32]
	ldr	r2, [r0, #220]
	ldr	r3, [r2, #12]
	add	r1, r3, r1
	str	r1, [r2, #12]
	ldr	r1, [r0]
	ldr	r2, [r0, #220]
	ldr	r3, [r2, #16]
	add	r1, r3, r1
	str	r1, [r2, #16]
	add	lr, r6, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
	.p2align	2
@ BB#30:
.LCPI2_0:
	.long	3395469782              @ 0xca62c1d6
.LCPI2_1:
	.long	2400959708              @ 0x8f1bbcdc
.LCPI2_2:
	.long	1859775393              @ 0x6ed9eba1
.LCPI2_3:
	.long	1518500249              @ 0x5a827999
.Lfunc_end2:
	.size	sha_transform, .Lfunc_end2-sha_transform
	.cantunwind
	.fnend

	.globl	sha_final
	.p2align	2
	.type	sha_final,%function
	.code	32                      @ @sha_final
sha_final:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #296
	bfc	sp, #0, #4
	mov	r6, sp
	add	r1, r6, #124
	movw	r2, #128
	str	r0, [r1, #160]
	ldr	r0, [r0, #20]
	str	r0, [r1, #96]
	ldr	r0, [r1, #160]
	ldr	r0, [r0, #24]
	str	r0, [r1, #64]
	ldr	r0, [r1, #96]
	vdup.32	q8, r0
	add	r3, r6, #224
	vst1.64	{d16, d17}, [r3:128]
	mov	r3, #3
	str	r3, [r1, #60]
	vmov.i32	q9, #0x3
	add	r3, r6, #160
	vst1.32	{d18, d19}, [r3]
	vshr.u32	q8, q8, #3
	mov	r3, #63
	str	r3, [r1, #32]
	vmov.i32	q9, #0x3f
	add	r3, r6, #128
	vst1.32	{d18, d19}, [r3]
	vand	q8, q8, q9
	add	r3, r6, #256
	vst1.64	{d16, d17}, [r3]
	ubfx	r0, r0, #3, #6
	str	r0, [r1, #128]
	ldr	r12, [r1, #160]
	add	r12, r12, #28
	vld1.64	{d16, d17}, [r3:128]
	mov	lr, #1
	str	lr, [r1]
	vmov.i32	q9, #0x1
	add	lr, r6, #96
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r3, r0, #1
	str	r3, [r1, #128]
	add	r0, r12, r0
	strb	r2, [r0]
	ldr	r0, [r1, #128]
	cmp	r0, #56
	str	r1, [r6, #92]           @ 4-byte Spill
	add	lr, r6, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB3_2
@ BB#1:
	movw	r0, #0
	movw	r1, #64
	ldr	r2, [r6, #92]           @ 4-byte Reload
	ldr	r3, [r2, #160]
	ldr	r12, [r2, #128]
	add	r3, r3, r12
	add	r3, r3, #28
	mov	lr, sp
	sub	r4, lr, #8
	mov	sp, r4
	mov	r4, sp
	sub	r4, r4, #16
	bfc	r4, #0, #4
	mov	sp, r4
	mov	r5, #64
	str	r5, [lr, #-8]
	vmov.i32	q8, #0x40
	vorr	q9, q8, q8
	vst1.32	{d16, d17}, [r4]
	sub	r2, r1, r12
	str	r0, [r6, #60]           @ 4-byte Spill
	mov	r0, r3
	ldr	r1, [r6, #60]           @ 4-byte Reload
	and	r1, r1, #255
	add	r4, r6, #32
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	memset
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r0, [r0, #160]
	bl	sha_transform
	movw	r0, #0
	movw	r2, #56
	ldr	r1, [r6, #92]           @ 4-byte Reload
	ldr	r3, [r1, #160]
	add	r3, r3, #28
	str	r0, [r6, #28]           @ 4-byte Spill
	mov	r0, r3
	ldr	r3, [r6, #28]           @ 4-byte Reload
	and	r1, r3, #255
	bl	memset
	b	.LBB3_3
.LBB3_2:
	movw	r0, #0
	movw	r1, #56
	ldr	r2, [r6, #92]           @ 4-byte Reload
	ldr	r3, [r2, #160]
	ldr	r12, [r2, #128]
	add	r3, r3, r12
	add	r3, r3, #28
	mov	lr, sp
	sub	r4, lr, #8
	mov	sp, r4
	mov	r4, sp
	sub	r4, r4, #16
	bfc	r4, #0, #4
	mov	sp, r4
	mov	r5, #56
	str	r5, [lr, #-8]
	vmov.i32	q8, #0x38
	vorr	q9, q8, q8
	vst1.32	{d16, d17}, [r4]
	sub	r2, r1, r12
	str	r0, [r6, #24]           @ 4-byte Spill
	mov	r0, r3
	ldr	r1, [r6, #24]           @ 4-byte Reload
	and	r1, r1, #255
	vst1.64	{d18, d19}, [r6:128]    @ 16-byte Spill
	bl	memset
.LBB3_3:
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #160]
	str	r1, [r2, #84]
	ldr	r1, [r0, #96]
	ldr	r2, [r0, #160]
	str	r1, [r2, #88]
	ldr	r0, [r0, #160]
	bl	sha_transform
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end3:
	.size	sha_final, .Lfunc_end3-sha_final
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
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, #1
	movw	r2, #8192
	add	r0, sp, #12
	ldr	r3, [sp, #8]            @ 4-byte Reload
	ldr	r3, [r3, #28]
	bl	fread
	ldr	r1, [sp, #8]            @ 4-byte Reload
	str	r0, [r1]
	cmp	r0, #0
	ble	.LBB4_3
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	add	r1, sp, #12
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, #32]
	ldr	r2, [sp, #8]            @ 4-byte Reload
	ldr	r2, [r2]
	bl	sha_update
	b	.LBB4_1
.LBB4_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r0, [r0, #32]
	bl	sha_final
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end4:
	.size	sha_stream, .Lfunc_end4-sha_stream
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
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
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
.Lfunc_end5:
	.size	sha_print, .Lfunc_end5-sha_print
	.cantunwind
	.fnend

	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #232
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #132
	movw	r3, #0
	str	r3, [r2, #40]
	str	r0, [r2, #8]
	str	r1, [r2, #4]
	ldr	r0, [r2, #8]
	cmp	r0, #2
	str	r2, [r6, #28]           @ 4-byte Spill
	bge	.LBB6_2
@ BB#1:
	add	r0, r6, #40
	movw	r1, :lower16:stdin
	movt	r1, :upper16:stdin
	ldr	r1, [r1]
	ldr	r2, [r6, #28]           @ 4-byte Reload
	str	r1, [r2]
	ldr	r1, [r2]
	bl	sha_stream
	add	r0, r6, #40
	bl	sha_print
	b	.LBB6_14
.LBB6_2:
	b	.LBB6_3
.LBB6_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [r6, #28]           @ 4-byte Reload
	ldr	r3, [r2, #8]
	vdup.32	q8, r3
	add	r12, r6, #144
	vst1.64	{d16, d17}, [r12:128]
	mov	lr, sp
	sub	r4, lr, #8
	mov	sp, r4
	mov	r4, sp
	sub	r4, r4, #16
	bfc	r4, #0, #4
	mov	sp, r4
	mvn	r5, #0
	str	r5, [lr, #-8]
	vmov.i8	q9, #0xff
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r12, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r4, d20[0]
	add	lr, r12, lr
	add	lr, lr, r4
	add	r1, r3, r1
	mul	r0, r1, r0
	str	r1, [r2, #72]
	cmp	lr, r0
	str	r1, [r6, #24]           @ 4-byte Spill
	str	r12, [r6, #20]          @ 4-byte Spill
	str	lr, [r6, #16]           @ 4-byte Spill
	beq	.LBB6_8
@ BB#4:                                 @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #28]           @ 4-byte Reload
	str	r0, [r1, #72]
	b	.LBB6_7
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r6, #28]           @ 4-byte Reload
	str	r0, [r1, #72]
.LBB6_7:                                @   in Loop: Header=BB6_3 Depth=1
	b	.LBB6_8
.LBB6_8:                                @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r0, #72]
	str	r1, [r0, #8]
	ldr	r1, [r6, #24]           @ 4-byte Reload
	cmp	r1, #0
	beq	.LBB6_13
@ BB#9:                                 @   in Loop: Header=BB6_3 Depth=1
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r2, [r0, #4]
	add	r3, r2, #4
	str	r3, [r0, #4]
	ldr	r0, [r2, #4]
	bl	fopen
	movw	r1, #0
	ldr	r2, [r6, #28]           @ 4-byte Reload
	str	r0, [r2]
	ldr	r0, [r2]
	cmp	r0, r1
	bne	.LBB6_11
@ BB#10:                                @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:.L.str.1.2
	movt	r0, :upper16:.L.str.1.2
	ldr	r1, [r6, #28]           @ 4-byte Reload
	ldr	r2, [r1, #4]
	ldr	r1, [r2]
	bl	printf
	str	r0, [r6, #12]           @ 4-byte Spill
	b	.LBB6_12
.LBB6_11:                               @   in Loop: Header=BB6_3 Depth=1
	add	r0, r6, #40
	ldr	r1, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r1]
	bl	sha_stream
	add	r0, r6, #40
	bl	sha_print
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r0, [r0]
	bl	fclose
	str	r0, [r6, #8]            @ 4-byte Spill
.LBB6_12:                               @   in Loop: Header=BB6_3 Depth=1
	b	.LBB6_3
.LBB6_13:
	b	.LBB6_14
.LBB6_14:
	movw	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"%08lx %08lx %08lx %08lx %08lx\n"
	.size	.L.str, 31

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"rb"
	.size	.L.str.1, 3

	.type	.L.str.1.2,%object      @ @.str.1.2
.L.str.1.2:
	.asciz	"error opening %s for reading\n"
	.size	.L.str.1.2, 30


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
