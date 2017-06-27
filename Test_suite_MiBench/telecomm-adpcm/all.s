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
	.globl	adpcm_coder
	.p2align	2
	.type	adpcm_coder,%function
	.code	32                      @ @adpcm_coder
adpcm_coder:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #108
	movw	r12, #1
	movw	lr, :lower16:stepsizeTable
	movt	lr, :upper16:stepsizeTable
	movw	r4, #2
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [r11, #-24]
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-12]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-24]
	ldrsh	r0, [r0]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #2]
	str	r0, [sp, #52]
	mov	r1, r0
	movw	r2, :lower16:stepsizeTable
	movt	r2, :upper16:stepsizeTable
	add	r0, r2, r0, lsl #2
	ldr	r0, [r0]
	str	r0, [r11, #-52]
	str	r12, [sp, #44]
	str	r1, [sp, #40]           @ 4-byte Spill
	str	lr, [sp, #36]           @ 4-byte Spill
	str	r4, [sp, #32]           @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	ble	.LBB0_27
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #8
	ldr	r1, [r11, #-28]
	add	r2, r1, #2
	str	r2, [r11, #-28]
	ldrsh	r1, [r1]
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-56]
	sub	r1, r1, r2
	str	r1, [r11, #-48]
	ldr	r1, [r11, #-48]
	cmp	r1, #0
	movw	r1, #0
	movlt	r1, #1
	tst	r1, #1
	moveq	r0, #0
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB0_4
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-48]
	sub	r0, r0, r1
	str	r0, [r11, #-48]
.LBB0_4:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #3
	movw	r1, #0
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-52]
	asr	r1, r1, #3
	str	r1, [sp, #56]
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-52]
	cmp	r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	blt	.LBB0_6
@ BB#5:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #4
	str	r0, [r11, #-44]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-48]
	sub	r0, r1, r0
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-52]
	ldr	r1, [sp, #56]
	add	r0, r1, r0
	str	r0, [sp, #56]
.LBB0_6:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-52]
	asr	r1, r1, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-52]
	cmp	r1, r2
	str	r0, [sp, #24]           @ 4-byte Spill
	blt	.LBB0_8
@ BB#7:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-44]
	orr	r0, r0, #2
	str	r0, [r11, #-44]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-48]
	sub	r0, r1, r0
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-52]
	ldr	r1, [sp, #56]
	add	r0, r1, r0
	str	r0, [sp, #56]
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-52]
	asr	r1, r1, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-52]
	cmp	r1, r2
	str	r0, [sp, #20]           @ 4-byte Spill
	blt	.LBB0_10
@ BB#9:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-44]
	orr	r0, r0, #1
	str	r0, [r11, #-44]
	ldr	r0, [r11, #-52]
	ldr	r1, [sp, #56]
	add	r0, r1, r0
	str	r0, [sp, #56]
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-40]
	cmp	r0, #0
	beq	.LBB0_12
@ BB#11:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #56]
	ldr	r1, [r11, #-56]
	sub	r0, r1, r0
	str	r0, [r11, #-56]
	b	.LBB0_13
.LBB0_12:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #56]
	ldr	r1, [r11, #-56]
	add	r0, r1, r0
	str	r0, [r11, #-56]
.LBB0_13:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	ldr	r1, [r11, #-56]
	cmp	r1, r0
	ble	.LBB0_15
@ BB#14:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	str	r0, [r11, #-56]
	b	.LBB0_18
.LBB0_15:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-56]
	cmn	r0, #32768
	bge	.LBB0_17
@ BB#16:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, .LCPI0_0
	str	r0, [r11, #-56]
.LBB0_17:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_18
.LBB0_18:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:indexTable
	movt	r0, :upper16:indexTable
	movw	r1, #2
	ldr	r2, [r11, #-40]
	ldr	r3, [r11, #-44]
	orr	r2, r3, r2
	str	r2, [r11, #-44]
	movw	r3, :lower16:indexTable
	movt	r3, :upper16:indexTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #52]
	add	r2, r3, r2
	str	r2, [sp, #52]
	ldr	r2, [sp, #52]
	cmp	r2, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	bge	.LBB0_20
@ BB#19:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #52]
.LBB0_20:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #52]
	cmp	r0, #88
	ble	.LBB0_22
@ BB#21:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #88
	str	r0, [sp, #52]
.LBB0_22:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:stepsizeTable
	movt	r0, :upper16:stepsizeTable
	movw	r1, #2
	ldr	r2, [sp, #52]
	movw	r3, :lower16:stepsizeTable
	movt	r3, :upper16:stepsizeTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [r11, #-52]
	ldr	r2, [sp, #44]
	cmp	r2, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB0_24
@ BB#23:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #4
	ldr	r1, [r11, #-44]
	lsl	r1, r1, #4
	and	r1, r1, #240
	str	r1, [sp, #48]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_25
.LBB0_24:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-44]
	and	r0, r0, #15
	ldr	r1, [sp, #48]
	orr	r0, r0, r1
	ldr	r1, [r11, #-32]
	add	r2, r1, #1
	str	r2, [r11, #-32]
	strb	r0, [r1]
.LBB0_25:                               @   in Loop: Header=BB0_1 Depth=1
	mvn	r0, #0
	ldr	r1, [sp, #44]
	cmp	r1, #0
	movw	r1, #0
	movne	r1, #1
	eor	r0, r1, r0
	and	r0, r0, #1
	str	r0, [sp, #44]
@ BB#26:                                @   in Loop: Header=BB0_1 Depth=1
	mvn	r0, #0
	ldr	r1, [r11, #-20]
	add	r0, r1, r0
	str	r0, [r11, #-20]
	b	.LBB0_1
.LBB0_27:
	ldr	r0, [sp, #44]
	cmp	r0, #0
	bne	.LBB0_29
@ BB#28:
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-32]
	add	r2, r1, #1
	str	r2, [r11, #-32]
	strb	r0, [r1]
.LBB0_29:
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-24]
	strh	r0, [r1]
	ldr	r0, [sp, #52]
	ldr	r1, [r11, #-24]
	strb	r0, [r1, #2]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
	.p2align	2
@ BB#30:
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
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #100
	movw	r12, #0
	movw	lr, :lower16:stepsizeTable
	movt	lr, :upper16:stepsizeTable
	movw	r4, #2
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [r11, #-24]
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-12]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-24]
	ldrsh	r0, [r0]
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #2]
	str	r0, [sp, #52]
	mov	r1, r0
	movw	r2, :lower16:stepsizeTable
	movt	r2, :upper16:stepsizeTable
	add	r0, r2, r0, lsl #2
	ldr	r0, [r0]
	str	r0, [r11, #-44]
	str	r12, [sp, #44]
	str	r1, [sp, #40]           @ 4-byte Spill
	str	lr, [sp, #36]           @ 4-byte Spill
	str	r4, [sp, #32]           @ 4-byte Spill
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	ble	.LBB1_25
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #44]
	cmp	r0, #0
	beq	.LBB1_4
@ BB#3:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #48]
	and	r0, r0, #15
	str	r0, [r11, #-40]
	b	.LBB1_5
.LBB1_4:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #4
	ldr	r1, [r11, #-28]
	add	r2, r1, #1
	str	r2, [r11, #-28]
	ldrsb	r1, [r1]
	str	r1, [sp, #48]
	ldr	r1, [sp, #48]
	asr	r1, r1, #4
	and	r1, r1, #15
	str	r1, [r11, #-40]
	str	r0, [sp, #28]           @ 4-byte Spill
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:indexTable
	movt	r0, :upper16:indexTable
	movw	r1, #2
	ldr	r2, [sp, #44]
	mov	r3, #0
	cmp	r2, #0
	movweq	r3, #1
	str	r3, [sp, #44]
	ldr	r2, [r11, #-40]
	movw	r3, :lower16:indexTable
	movt	r3, :upper16:indexTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #52]
	add	r2, r3, r2
	str	r2, [sp, #52]
	ldr	r2, [sp, #52]
	cmp	r2, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #20]           @ 4-byte Spill
	bge	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #52]
.LBB1_7:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #52]
	cmp	r0, #88
	ble	.LBB1_9
@ BB#8:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #88
	str	r0, [sp, #52]
.LBB1_9:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-40]
	and	r1, r1, #8
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-40]
	and	r1, r1, #7
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-44]
	asr	r1, r1, #3
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-40]
	and	r1, r1, #4
	cmp	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	beq	.LBB1_11
@ BB#10:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
.LBB1_11:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-40]
	and	r0, r0, #2
	cmp	r0, #0
	beq	.LBB1_13
@ BB#12:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-44]
	asr	r1, r1, #1
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB1_13:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-40]
	and	r0, r0, #1
	cmp	r0, #0
	beq	.LBB1_15
@ BB#14:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-44]
	asr	r1, r1, #2
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB1_15:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-36]
	cmp	r0, #0
	beq	.LBB1_17
@ BB#16:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-48]
	sub	r0, r1, r0
	str	r0, [r11, #-48]
	b	.LBB1_18
.LBB1_17:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-48]
	add	r0, r1, r0
	str	r0, [r11, #-48]
.LBB1_18:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #32767
	ldr	r1, [r11, #-48]
	cmp	r1, r0
	ble	.LBB1_20
@ BB#19:                                @   in Loop: Header=BB1_1 Depth=1
	movw	r0, #32767
	str	r0, [r11, #-48]
	b	.LBB1_23
.LBB1_20:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-48]
	cmn	r0, #32768
	bge	.LBB1_22
@ BB#21:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, .LCPI1_0
	str	r0, [r11, #-48]
.LBB1_22:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_23
.LBB1_23:                               @   in Loop: Header=BB1_1 Depth=1
	movw	r0, :lower16:stepsizeTable
	movt	r0, :upper16:stepsizeTable
	movw	r1, #2
	ldr	r2, [sp, #52]
	movw	r3, :lower16:stepsizeTable
	movt	r3, :upper16:stepsizeTable
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [r11, #-44]
	ldr	r2, [r11, #-48]
	ldr	r3, [r11, #-32]
	add	r12, r3, #2
	str	r12, [r11, #-32]
	strh	r2, [r3]
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
@ BB#24:                                @   in Loop: Header=BB1_1 Depth=1
	mvn	r0, #0
	ldr	r1, [r11, #-20]
	add	r0, r1, r0
	str	r0, [r11, #-20]
	b	.LBB1_1
.LBB1_25:
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-24]
	strh	r0, [r1]
	ldr	r0, [sp, #52]
	ldr	r1, [r11, #-24]
	strb	r0, [r1, #2]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
	.p2align	2
@ BB#26:
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
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #32
	movw	r0, #0
	str	r0, [r11, #-12]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	movw	r1, :lower16:abuf
	movt	r1, :upper16:abuf
	movw	r2, #500
	bl	read
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bge	.LBB2_3
@ BB#2:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	perror
	movw	r0, #1
	bl	exit
.LBB2_3:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	bne	.LBB2_5
@ BB#4:
	b	.LBB2_6
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	movw	r0, #1
	movw	r1, :lower16:sbuf
	movt	r1, :upper16:sbuf
	movw	r2, #2
	ldr	r3, [r11, #-16]
	lsl	r3, r3, #1
	movw	r12, :lower16:abuf
	movt	r12, :upper16:abuf
	movw	lr, :lower16:sbuf
	movt	lr, :upper16:sbuf
	movw	r4, :lower16:state
	movt	r4, :upper16:state
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r12
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, lr
	str	r2, [sp, #12]           @ 4-byte Spill
	mov	r2, r3
	mov	r3, r4
	bl	adpcm_decoder
	ldr	r0, [r11, #-16]
	lsl	r2, r0, #2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
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
