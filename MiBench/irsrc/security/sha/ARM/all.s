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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r3, #3
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0, #20]
	ldr	r1, [sp, #12]
	lsl	r1, r1, #3
	add	r0, r0, r1
	ldr	r1, [r11, #-4]
	ldr	r1, [r1, #20]
	cmp	r0, r1
	str	r3, [sp, #8]            @ 4-byte Spill
	bhs	.LBB1_2
@ BB#1:
	ldr	r0, [r11, #-4]
	ldr	r1, [r0, #24]
	add	r1, r1, #1
	str	r1, [r0, #24]
.LBB1_2:
	movw	r0, #29
	movw	r1, #3
	ldr	r2, [sp, #12]
	lsl	r2, r2, #3
	ldr	r3, [r11, #-4]
	ldr	r12, [r3, #20]
	add	r2, r12, r2
	str	r2, [r3, #20]
	ldr	r2, [sp, #12]
	lsr	r2, r2, #29
	ldr	r3, [r11, #-4]
	ldr	r12, [r3, #24]
	add	r2, r12, r2
	str	r2, [r3, #24]
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #64
	blt	.LBB1_5
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r2, #64
	ldr	r0, [r11, #-4]
	add	r0, r0, #28
	ldr	r1, [r11, #-8]
	bl	memcpy
	ldr	r0, [r11, #-4]
	bl	sha_transform
	ldr	r0, [r11, #-8]
	add	r0, r0, #64
	str	r0, [r11, #-8]
	ldr	r0, [sp, #12]
	sub	r0, r0, #64
	str	r0, [sp, #12]
	b	.LBB1_3
.LBB1_5:
	ldr	r0, [r11, #-4]
	add	r0, r0, #28
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	bl	memcpy
	mov	sp, r11
	pop	{r11, pc}
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
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #416
	movw	r1, #0
	str	r0, [r11, #-20]
	str	r1, [r11, #-24]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #16
	bge	.LBB2_4
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	add	r0, sp, #64
	movw	r1, #2
	ldr	r2, [r11, #-20]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2, #28]
	add	r12, sp, #64
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r1, [sp, #56]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_1
.LBB2_4:
	movw	r0, #16
	str	r0, [r11, #-24]
.LBB2_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #80
	bge	.LBB2_8
@ BB#6:                                 @   in Loop: Header=BB2_5 Depth=1
	add	r0, sp, #64
	movw	r1, #2
	ldr	r2, [r11, #-24]
	add	r3, sp, #64
	add	r2, r3, r2, lsl #2
	ldr	r3, [r2, #-64]
	ldr	r12, [r2, #-56]
	ldr	lr, [r2, #-32]
	ldr	r4, [r2, #-12]
	eor	lr, r4, lr
	eor	r12, lr, r12
	eor	r3, r12, r3
	str	r3, [r2]
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB2_5 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_5
.LBB2_8:
	movw	r0, #0
	ldr	r1, [r11, #-20]
	ldr	r1, [r1]
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #4]
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #8]
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #12]
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #16]
	str	r1, [r11, #-48]
	str	r0, [r11, #-24]
.LBB2_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #20
	bge	.LBB2_12
@ BB#10:                                @   in Loop: Header=BB2_9 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_3
	add	r3, sp, #64
	ldr	r12, [r11, #-32]
	ldr	lr, [r11, #-36]
	ldr	r4, [r11, #-40]
	and	r4, lr, r4
	ldr	r5, [r11, #-44]
	bic	lr, r5, lr
	orr	lr, r4, lr
	add	r12, lr, r12, ror #27
	ldr	lr, [r11, #-48]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	add	r4, sp, #64
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [r11, #-28]
	ldr	r2, [r11, #-44]
	str	r2, [r11, #-48]
	ldr	r2, [r11, #-40]
	str	r2, [r11, #-44]
	ldr	r2, [r11, #-36]
	lsl	r2, r2, #30
	ldr	r12, [r11, #-36]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [r11, #-40]
	ldr	r2, [r11, #-32]
	str	r2, [r11, #-36]
	ldr	r2, [r11, #-28]
	str	r2, [r11, #-32]
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB2_9 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_9
.LBB2_12:
	movw	r0, #20
	str	r0, [r11, #-24]
.LBB2_13:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #40
	bge	.LBB2_16
@ BB#14:                                @   in Loop: Header=BB2_13 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_2
	add	r3, sp, #64
	ldr	r12, [r11, #-32]
	ldr	lr, [r11, #-36]
	ldr	r4, [r11, #-40]
	eor	lr, lr, r4
	ldr	r4, [r11, #-44]
	eor	lr, lr, r4
	add	r12, lr, r12, ror #27
	ldr	lr, [r11, #-48]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	add	r4, sp, #64
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [r11, #-28]
	ldr	r2, [r11, #-44]
	str	r2, [r11, #-48]
	ldr	r2, [r11, #-40]
	str	r2, [r11, #-44]
	ldr	r2, [r11, #-36]
	lsl	r2, r2, #30
	ldr	r12, [r11, #-36]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [r11, #-40]
	ldr	r2, [r11, #-32]
	str	r2, [r11, #-36]
	ldr	r2, [r11, #-28]
	str	r2, [r11, #-32]
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB2_13 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_13
.LBB2_16:
	movw	r0, #40
	str	r0, [r11, #-24]
.LBB2_17:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #60
	bge	.LBB2_20
@ BB#18:                                @   in Loop: Header=BB2_17 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_1
	add	r3, sp, #64
	ldr	r12, [r11, #-32]
	ldr	lr, [r11, #-36]
	ldr	r4, [r11, #-40]
	ldr	r5, [r11, #-44]
	orr	r6, r4, r5
	and	lr, lr, r6
	and	r4, r4, r5
	orr	lr, lr, r4
	add	r12, lr, r12, ror #27
	ldr	lr, [r11, #-48]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	add	r4, sp, #64
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [r11, #-28]
	ldr	r2, [r11, #-44]
	str	r2, [r11, #-48]
	ldr	r2, [r11, #-40]
	str	r2, [r11, #-44]
	ldr	r2, [r11, #-36]
	lsl	r2, r2, #30
	ldr	r12, [r11, #-36]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [r11, #-40]
	ldr	r2, [r11, #-32]
	str	r2, [r11, #-36]
	ldr	r2, [r11, #-28]
	str	r2, [r11, #-32]
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB2_17 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_17
.LBB2_20:
	movw	r0, #60
	str	r0, [r11, #-24]
.LBB2_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #80
	bge	.LBB2_24
@ BB#22:                                @   in Loop: Header=BB2_21 Depth=1
	movw	r0, #2
	movw	r1, #30
	ldr	r2, .LCPI2_0
	add	r3, sp, #64
	ldr	r12, [r11, #-32]
	ldr	lr, [r11, #-36]
	ldr	r4, [r11, #-40]
	eor	lr, lr, r4
	ldr	r4, [r11, #-44]
	eor	lr, lr, r4
	add	r12, lr, r12, ror #27
	ldr	lr, [r11, #-48]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	add	r4, sp, #64
	add	lr, r4, lr, lsl #2
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r2, r12, r2
	str	r2, [r11, #-28]
	ldr	r2, [r11, #-44]
	str	r2, [r11, #-48]
	ldr	r2, [r11, #-40]
	str	r2, [r11, #-44]
	ldr	r2, [r11, #-36]
	lsl	r2, r2, #30
	ldr	r12, [r11, #-36]
	lsr	r12, r12, #2
	orr	r2, r2, r12
	str	r2, [r11, #-40]
	ldr	r2, [r11, #-32]
	str	r2, [r11, #-36]
	ldr	r2, [r11, #-28]
	str	r2, [r11, #-32]
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB2_21 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_21
.LBB2_24:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-20]
	ldr	r2, [r1]
	add	r0, r2, r0
	str	r0, [r1]
	ldr	r0, [r11, #-36]
	ldr	r1, [r11, #-20]
	ldr	r2, [r1, #4]
	add	r0, r2, r0
	str	r0, [r1, #4]
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-20]
	ldr	r2, [r1, #8]
	add	r0, r2, r0
	str	r0, [r1, #8]
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-20]
	ldr	r2, [r1, #12]
	add	r0, r2, r0
	str	r0, [r1, #12]
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-20]
	ldr	r2, [r1, #16]
	add	r0, r2, r0
	str	r0, [r1, #16]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
	.p2align	2
@ BB#25:
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	movw	r1, #128
	movw	r2, #3
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0, #20]
	str	r0, [r11, #-12]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0, #24]
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-12]
	lsr	r0, r0, #3
	and	r0, r0, #63
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-4]
	add	r0, r0, #28
	ldr	r3, [r11, #-8]
	add	r12, r3, #1
	str	r12, [r11, #-8]
	add	r0, r0, r3
	strb	r1, [r0]
	ldr	r0, [r11, #-8]
	cmp	r0, #56
	str	r2, [sp, #20]           @ 4-byte Spill
	ble	.LBB3_2
@ BB#1:
	movw	r0, #0
	movw	r1, #64
	ldr	r2, [r11, #-4]
	add	r2, r2, #28
	ldr	r3, [r11, #-8]
	add	r2, r2, r3
	ldr	r3, [r11, #-8]
	sub	r1, r1, r3
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #16]           @ 4-byte Reload
	and	r3, r2, #255
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp, #12]           @ 4-byte Reload
	bl	memset
	ldr	r0, [r11, #-4]
	bl	sha_transform
	movw	r0, #0
	movw	r2, #56
	ldr	r1, [r11, #-4]
	add	r1, r1, #28
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	and	r1, r1, #255
	bl	memset
	b	.LBB3_3
.LBB3_2:
	movw	r0, #0
	movw	r1, #56
	ldr	r2, [r11, #-4]
	add	r2, r2, #28
	ldr	r3, [r11, #-8]
	add	r2, r2, r3
	ldr	r3, [r11, #-8]
	sub	r1, r1, r3
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r2
	ldr	r2, [sp, #4]            @ 4-byte Reload
	and	r3, r2, #255
	str	r1, [sp]                @ 4-byte Spill
	mov	r1, r3
	ldr	r2, [sp]                @ 4-byte Reload
	bl	memset
.LBB3_3:
	ldr	r0, [r11, #-16]
	ldr	r1, [r11, #-4]
	str	r0, [r1, #84]
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-4]
	str	r0, [r1, #88]
	ldr	r0, [r11, #-4]
	bl	sha_transform
	mov	sp, r11
	pop	{r11, pc}
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
	sub	sp, sp, #16
	sub	sp, sp, #8192
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	ldr	r0, [r11, #-12]
	bl	sha_init
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, #1
	movw	r2, #8192
	add	r0, sp, #4
	ldr	r3, [r11, #-16]
	bl	fread
	str	r0, [r11, #-20]
	cmp	r0, #0
	ble	.LBB4_3
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	add	r1, sp, #4
	ldr	r0, [r11, #-12]
	ldr	r2, [r11, #-20]
	bl	sha_update
	b	.LBB4_1
.LBB4_3:
	ldr	r0, [r11, #-12]
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #120
	movw	r2, #0
	str	r2, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	cmp	r0, #2
	bge	.LBB6_2
@ BB#1:
	add	r0, sp, #12
	movw	r1, :lower16:stdin
	movt	r1, :upper16:stdin
	ldr	r1, [r1]
	str	r1, [r11, #-16]
	ldr	r1, [r11, #-16]
	bl	sha_stream
	add	r0, sp, #12
	bl	sha_print
	b	.LBB6_9
.LBB6_2:
	b	.LBB6_3
.LBB6_3:                                @ =>This Inner Loop Header: Depth=1
	mvn	r0, #0
	ldr	r1, [r11, #-8]
	add	r0, r1, r0
	str	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB6_8
@ BB#4:                                 @   in Loop: Header=BB6_3 Depth=1
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r11, #-12]
	add	r2, r0, #4
	str	r2, [r11, #-12]
	ldr	r0, [r0, #4]
	bl	fopen
	movw	r1, #0
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	cmp	r0, r1
	bne	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:.L.str.1.2
	movt	r0, :upper16:.L.str.1.2
	ldr	r1, [r11, #-12]
	ldr	r1, [r1]
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB6_7
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=1
	add	r0, sp, #12
	ldr	r1, [r11, #-16]
	bl	sha_stream
	add	r0, sp, #12
	bl	sha_print
	ldr	r0, [r11, #-16]
	bl	fclose
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB6_7:                                @   in Loop: Header=BB6_3 Depth=1
	b	.LBB6_3
.LBB6_8:
	b	.LBB6_9
.LBB6_9:
	movw	r0, #0
	mov	sp, r11
	pop	{r11, pc}
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
