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
	.globl	pat_insert
	.p2align	2
	.type	pat_insert,%function
	.code	32                      @ @pat_insert
pat_insert:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #64
	movw	r2, #0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r0, [r11, #-12]
	cmp	r0, r2
	beq	.LBB0_3
@ BB#1:
	movw	r0, #0
	ldr	r1, [r11, #-8]
	cmp	r1, r0
	beq	.LBB0_3
@ BB#2:
	movw	r0, #0
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	cmp	r1, r0
	bne	.LBB0_4
.LBB0_3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB0_37
.LBB0_4:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r2, [r1]
	and	r0, r2, r0
	str	r0, [r1]
	ldr	r0, [r11, #-12]
	str	r0, [r11, #-16]
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #9]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB0_7
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB0_8
.LBB0_7:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #12]
	str	r0, [sp, #28]           @ 4-byte Spill
.LBB0_8:                                @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [r11, #-16]
@ BB#9:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #9]
	cmp	r0, r1
	blt	.LBB0_5
@ BB#10:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	cmp	r0, r1
	bne	.LBB0_27
@ BB#11:
	movw	r0, #0
	str	r0, [r11, #-28]
.LBB0_12:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bge	.LBB0_17
@ BB#13:                                @   in Loop: Header=BB0_12 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1]
	ldr	r2, [r11, #-16]
	ldr	r2, [r2, #4]
	ldr	r3, [r11, #-28]
	add	r2, r2, r3, lsl #3
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #24]           @ 4-byte Spill
	bne	.LBB0_15
@ BB#14:
	movw	r0, #3
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1, #4]
	ldr	r2, [r11, #-16]
	ldr	r2, [r2, #4]
	ldr	r3, [r11, #-28]
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #4]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	free
	ldr	r0, [r11, #-8]
	bl	free
	movw	r0, #0
	str	r0, [r11, #-8]
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-4]
	b	.LBB0_37
.LBB0_15:                               @   in Loop: Header=BB0_12 Depth=1
	b	.LBB0_16
.LBB0_16:                               @   in Loop: Header=BB0_12 Depth=1
	ldr	r0, [r11, #-28]
	add	r0, r0, #1
	str	r0, [r11, #-28]
	b	.LBB0_12
.LBB0_17:
	movw	r0, #3
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #8]
	add	r1, r1, #1
	lsl	r1, r1, #3
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	movw	r1, #0
	str	r0, [r11, #-20]
	str	r1, [sp, #32]
	str	r1, [r11, #-28]
	ldr	r0, [r11, #-20]
	str	r0, [r11, #-24]
.LBB0_18:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-16]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bge	.LBB0_24
@ BB#19:                                @   in Loop: Header=BB0_18 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1]
	ldr	r2, [r11, #-16]
	ldr	r2, [r2, #4]
	ldr	r3, [r11, #-28]
	add	r2, r2, r3, lsl #3
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	bls	.LBB0_21
@ BB#20:                                @   in Loop: Header=BB0_18 Depth=1
	movw	r2, #8
	movw	r0, #3
	ldr	r1, [r11, #-16]
	ldr	r1, [r1, #4]
	ldr	r3, [r11, #-28]
	add	r1, r1, r3, lsl #3
	ldr	r3, [r11, #-24]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	bl	bcopy
	ldr	r0, [r11, #-28]
	add	r0, r0, #1
	str	r0, [r11, #-28]
	b	.LBB0_22
.LBB0_21:                               @   in Loop: Header=BB0_18 Depth=1
	movw	r2, #8
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-24]
	bl	bcopy
	movw	r0, #1
	mvn	r1, #0
	ldr	r2, [r11, #-8]
	ldr	r2, [r2, #4]
	str	r1, [r2]
	str	r0, [sp, #32]
.LBB0_22:                               @   in Loop: Header=BB0_18 Depth=1
	b	.LBB0_23
.LBB0_23:                               @   in Loop: Header=BB0_18 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #8
	str	r0, [r11, #-24]
	b	.LBB0_18
.LBB0_24:
	ldr	r0, [sp, #32]
	cmp	r0, #0
	bne	.LBB0_26
@ BB#25:
	movw	r2, #8
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-24]
	bl	bcopy
.LBB0_26:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #4]
	bl	free
	ldr	r0, [r11, #-8]
	bl	free
	movw	r0, #1
	movw	lr, #0
	str	lr, [r11, #-8]
	ldr	lr, [r11, #-16]
	ldrb	r1, [lr, #8]
	add	r0, r1, r0
	strb	r0, [lr, #8]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #4]
	bl	free
	ldr	r0, [r11, #-20]
	ldr	r1, [r11, #-16]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-4]
	b	.LBB0_37
.LBB0_27:
	movw	r0, #1
	str	r0, [r11, #-28]
.LBB0_28:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-28]
	cmp	r1, #32
	str	r0, [sp, #4]            @ 4-byte Spill
	bge	.LBB0_30
@ BB#29:                                @   in Loop: Header=BB0_28 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	ldr	r1, [r11, #-28]
	ldr	lr, [r11, #-16]
	ldr	lr, [lr]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	bit
	ldr	r1, [sp]                @ 4-byte Reload
	cmp	r1, r0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB0_30:                               @   in Loop: Header=BB0_28 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB0_33
@ BB#31:                                @   in Loop: Header=BB0_28 Depth=1
	b	.LBB0_32
.LBB0_32:                               @   in Loop: Header=BB0_28 Depth=1
	ldr	r0, [r11, #-28]
	add	r0, r0, #1
	str	r0, [r11, #-28]
	b	.LBB0_28
.LBB0_33:
	ldr	r0, [r11, #-12]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB0_35
@ BB#34:
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #16]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-12]
	bl	insertR
	ldr	r1, [r11, #-12]
	str	r0, [r1, #16]
	b	.LBB0_36
.LBB0_35:
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #12]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-12]
	bl	insertR
	ldr	r1, [r11, #-12]
	str	r0, [r1, #12]
.LBB0_36:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
.LBB0_37:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	pat_insert, .Lfunc_end0-pat_insert
	.cantunwind
	.fnend

	.p2align	2
	.type	bit,%function
	.code	32                      @ @bit
bit:
	.fnstart
@ BB#0:
	sub	sp, sp, #8
	movw	r2, #1
	movw	r3, #31
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp]
	ldr	r1, [sp, #4]
	sub	r1, r3, r1
	lsl	r1, r2, r1
	and	r0, r0, r1
	add	sp, sp, #8
	bx	lr
.Lfunc_end1:
	.size	bit, .Lfunc_end1-bit
	.cantunwind
	.fnend

	.p2align	2
	.type	insertR,%function
	.code	32                      @ @insertR
insertR:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #9]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bge	.LBB2_2
@ BB#1:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #9]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1, #9]
	cmp	r0, r1
	bgt	.LBB2_9
.LBB2_2:
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-12]
	strb	r0, [r1, #9]
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-12]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB2_4
@ BB#3:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB2_5
.LBB2_4:
	ldr	r0, [r11, #-12]
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB2_5:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [r11, #-12]
	str	r0, [r1, #12]
	ldr	r0, [sp, #16]
	ldr	r1, [r11, #-12]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB2_7
@ BB#6:
	ldr	r0, [r11, #-12]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB2_8
.LBB2_7:
	ldr	r0, [r11, #-8]
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB2_8:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [r11, #-12]
	str	r0, [r1, #16]
	ldr	r0, [r11, #-12]
	str	r0, [r11, #-4]
	b	.LBB2_13
.LBB2_9:
	ldr	r0, [r11, #-8]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-12]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB2_11
@ BB#10:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #16]
	ldr	r1, [r11, #-12]
	ldr	r2, [sp, #16]
	ldr	r3, [r11, #-8]
	bl	insertR
	ldr	r1, [r11, #-8]
	str	r0, [r1, #16]
	b	.LBB2_12
.LBB2_11:
	ldr	r0, [r11, #-8]
	ldr	r0, [r0, #12]
	ldr	r1, [r11, #-12]
	ldr	r2, [sp, #16]
	ldr	r3, [r11, #-8]
	bl	insertR
	ldr	r1, [r11, #-8]
	str	r0, [r1, #12]
.LBB2_12:
	ldr	r0, [r11, #-8]
	str	r0, [r11, #-4]
.LBB2_13:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	insertR, .Lfunc_end2-insertR
	.cantunwind
	.fnend

	.globl	pat_remove
	.p2align	2
	.type	pat_remove,%function
	.code	32                      @ @pat_remove
pat_remove:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	movw	r2, #0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r0, [r11, #-8]
	cmp	r0, r2
	beq	.LBB3_3
@ BB#1:
	movw	r0, #0
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	cmp	r1, r0
	beq	.LBB3_3
@ BB#2:
	movw	r0, #0
	ldr	r1, [r11, #-32]
	cmp	r1, r0
	bne	.LBB3_4
.LBB3_3:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_4:
	ldr	r0, [r11, #-12]
	str	r0, [r11, #-32]
	str	r0, [r11, #-16]
	str	r0, [r11, #-20]
.LBB3_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0, #9]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-32]
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_7
@ BB#6:                                 @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #16]
	str	r0, [sp, #32]           @ 4-byte Spill
	b	.LBB3_8
.LBB3_7:                                @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #12]
	str	r0, [sp, #32]           @ 4-byte Spill
.LBB3_8:                                @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [r11, #-32]
@ BB#9:                                 @   in Loop: Header=BB3_5 Depth=1
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-32]
	ldrb	r1, [r1, #9]
	cmp	r0, r1
	blt	.LBB3_5
@ BB#10:
	ldr	r0, [r11, #-32]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	cmp	r0, r1
	beq	.LBB3_12
@ BB#11:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_12:
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0, #8]
	cmp	r0, #1
	bne	.LBB3_40
@ BB#13:
	ldr	r0, [r11, #-32]
	ldrb	r0, [r0, #9]
	cmp	r0, #0
	bne	.LBB3_15
@ BB#14:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_15:
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #4]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1]
	cmp	r0, r1
	beq	.LBB3_17
@ BB#16:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_17:
	ldr	r0, [r11, #-16]
	str	r0, [r11, #-24]
	str	r0, [r11, #-28]
.LBB3_18:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #9]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-24]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_20
@ BB#19:                                @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #16]
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB3_21
.LBB3_20:                               @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #12]
	str	r0, [sp, #28]           @ 4-byte Spill
.LBB3_21:                               @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [r11, #-24]
@ BB#22:                                @   in Loop: Header=BB3_18 Depth=1
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-24]
	ldrb	r1, [r1, #9]
	cmp	r0, r1
	blt	.LBB3_18
@ BB#23:
	ldr	r0, [r11, #-28]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-16]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_25
@ BB#24:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	str	r0, [r1, #16]
	b	.LBB3_26
.LBB3_25:
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	str	r0, [r1, #12]
.LBB3_26:
	ldr	r0, [r11, #-20]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_31
@ BB#27:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_29
@ BB#28:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #12]
	str	r0, [sp, #24]           @ 4-byte Spill
	b	.LBB3_30
.LBB3_29:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	str	r0, [sp, #24]           @ 4-byte Spill
.LBB3_30:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r11, #-20]
	str	r0, [r1, #16]
	b	.LBB3_35
.LBB3_31:
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	ldr	r1, [r1]
	bl	bit
	cmp	r0, #0
	beq	.LBB3_33
@ BB#32:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #12]
	str	r0, [sp, #20]           @ 4-byte Spill
	b	.LBB3_34
.LBB3_33:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #16]
	str	r0, [sp, #20]           @ 4-byte Spill
.LBB3_34:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [r11, #-20]
	str	r0, [r1, #12]
.LBB3_35:
	movw	r0, #0
	ldr	r1, [r11, #-32]
	ldr	r1, [r1, #4]
	ldr	r1, [r1, #4]
	cmp	r1, r0
	beq	.LBB3_37
@ BB#36:
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #4]
	ldr	r0, [r0, #4]
	bl	free
.LBB3_37:
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #4]
	bl	free
	ldr	r0, [r11, #-32]
	ldr	lr, [r11, #-16]
	cmp	r0, lr
	beq	.LBB3_39
@ BB#38:
	ldr	r0, [r11, #-16]
	ldr	r0, [r0]
	ldr	r1, [r11, #-32]
	str	r0, [r1]
	ldr	r0, [r11, #-16]
	ldr	r0, [r0, #4]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #4]
	ldr	r0, [r11, #-16]
	ldrb	r0, [r0, #8]
	ldr	r1, [r11, #-32]
	strb	r0, [r1, #8]
.LBB3_39:
	ldr	r0, [r11, #-16]
	bl	free
	movw	r0, #1
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_40:
	movw	r0, #0
	str	r0, [sp, #36]
.LBB3_41:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-32]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bge	.LBB3_46
@ BB#42:                                @   in Loop: Header=BB3_41 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1]
	ldr	r2, [r11, #-32]
	ldr	r2, [r2, #4]
	ldr	r3, [sp, #36]
	add	r2, r2, r3, lsl #3
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	bne	.LBB3_44
@ BB#43:
	b	.LBB3_46
.LBB3_44:                               @   in Loop: Header=BB3_41 Depth=1
	b	.LBB3_45
.LBB3_45:                               @   in Loop: Header=BB3_41 Depth=1
	ldr	r0, [sp, #36]
	add	r0, r0, #1
	str	r0, [sp, #36]
	b	.LBB3_41
.LBB3_46:
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-32]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	blt	.LBB3_48
@ BB#47:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB3_55
.LBB3_48:
	movw	r0, #3
	ldr	r1, [r11, #-32]
	ldrb	r1, [r1, #8]
	sub	r1, r1, #1
	lsl	r1, r1, #3
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	movw	r1, #0
	str	r0, [r11, #-36]
	str	r1, [sp, #36]
	ldr	r0, [r11, #-36]
	str	r0, [sp, #40]
.LBB3_49:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-32]
	ldrb	r1, [r1, #8]
	cmp	r0, r1
	bge	.LBB3_54
@ BB#50:                                @   in Loop: Header=BB3_49 Depth=1
	movw	r0, #3
	ldr	r1, [r11, #-8]
	ldr	r1, [r1, #4]
	ldr	r1, [r1]
	ldr	r2, [r11, #-32]
	ldr	r2, [r2, #4]
	ldr	r3, [sp, #36]
	add	r2, r2, r3, lsl #3
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	beq	.LBB3_52
@ BB#51:                                @   in Loop: Header=BB3_49 Depth=1
	movw	r2, #8
	movw	r0, #3
	ldr	r1, [r11, #-32]
	ldr	r1, [r1, #4]
	ldr	r3, [sp, #36]
	add	r1, r1, r3, lsl #3
	ldr	r3, [sp, #40]
	add	r12, r3, #8
	str	r12, [sp, #40]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	bl	bcopy
.LBB3_52:                               @   in Loop: Header=BB3_49 Depth=1
	b	.LBB3_53
.LBB3_53:                               @   in Loop: Header=BB3_49 Depth=1
	ldr	r0, [sp, #36]
	add	r0, r0, #1
	str	r0, [sp, #36]
	b	.LBB3_49
.LBB3_54:
	movw	r0, #255
	ldr	r1, [r11, #-32]
	ldrb	r2, [r1, #8]
	add	r0, r2, r0
	strb	r0, [r1, #8]
	ldr	r0, [r11, #-32]
	ldr	r0, [r0, #4]
	bl	free
	movw	r0, #1
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-32]
	str	r1, [r2, #4]
	str	r0, [r11, #-4]
.LBB3_55:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	pat_remove, .Lfunc_end3-pat_remove
	.cantunwind
	.fnend

	.globl	pat_search
	.p2align	2
	.type	pat_search,%function
	.code	32                      @ @pat_search
pat_search:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	movw	r2, #0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [sp, #16]
	ldr	r0, [r11, #-12]
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	cmp	r0, r2
	bne	.LBB4_2
@ BB#1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB4_14
.LBB4_2:
	b	.LBB4_3
.LBB4_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	ldr	r2, [r2]
	and	r1, r1, r2
	cmp	r0, r1
	bne	.LBB4_5
@ BB#4:                                 @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #12]
	str	r0, [sp, #16]
.LBB4_5:                                @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #12]
	ldrb	r0, [r0, #9]
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	ldrb	r0, [r0, #9]
	ldr	r1, [r11, #-8]
	bl	bit
	cmp	r0, #0
	beq	.LBB4_7
@ BB#6:                                 @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #12]
	ldr	r0, [r0, #16]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB4_8
.LBB4_7:                                @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #12]
	ldr	r0, [r0, #12]
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB4_8:                                @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #12]
@ BB#9:                                 @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1, #9]
	cmp	r0, r1
	blt	.LBB4_3
@ BB#10:
	ldr	r0, [sp, #12]
	ldr	r0, [r0]
	ldr	r1, [r11, #-8]
	ldr	r2, [sp, #12]
	ldr	r2, [r2, #4]
	ldr	r2, [r2]
	and	r1, r1, r2
	cmp	r0, r1
	bne	.LBB4_12
@ BB#11:
	ldr	r0, [sp, #12]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB4_13
.LBB4_12:
	ldr	r0, [sp, #16]
	str	r0, [sp]                @ 4-byte Spill
.LBB4_13:
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [r11, #-4]
.LBB4_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end4:
	.size	pat_search, .Lfunc_end4-pat_search
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
	sub	sp, sp, #248
	mvn	r2, #0
	movw	r3, #0
	str	r3, [r11, #-12]
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [sp, #64]
	ldr	r0, [r11, #-16]
	cmp	r0, #2
	bge	.LBB5_2
@ BB#1:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	ldr	r1, [r11, #-20]
	ldr	r1, [r1]
	bl	printf
	mvn	r1, #0
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB5_2:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r11, #-20]
	ldr	r0, [r0, #4]
	bl	fopen
	movw	r1, #0
	str	r0, [r11, #-40]
	cmp	r0, r1
	bne	.LBB5_4
@ BB#3:
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #4]
	bl	printf
	movw	r1, #1
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB5_4:
	movw	r0, #20
	bl	malloc
	movw	lr, #0
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-24]
	cmp	r0, lr
	bne	.LBB5_6
@ BB#5:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_6:
	movw	r0, #8
	movw	r1, #0
	movw	r2, #20
	ldr	r3, [r11, #-24]
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r3
	and	r1, r1, #255
	bl	memset
	ldr	r0, [sp, #48]           @ 4-byte Reload
	bl	malloc
	movw	r1, #0
	ldr	r2, [r11, #-24]
	str	r0, [r2, #4]
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #4]
	cmp	r0, r1
	bne	.LBB5_8
@ BB#7:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_8:
	movw	r0, #16
	movw	r1, #0
	movw	r2, #8
	ldr	r3, [r11, #-24]
	ldr	r3, [r3, #4]
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r3
	and	r1, r1, #255
	bl	memset
	ldr	r0, [r11, #-24]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-36]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	bl	malloc
	movw	r1, #0
	ldr	r2, [r11, #-36]
	str	r0, [r2, #4]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #4]
	cmp	r0, r1
	bne	.LBB5_10
@ BB#9:
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_10:
	movw	r0, #1
	movw	r1, #0
	movw	r2, #1
	ldr	r3, [r11, #-36]
	ldr	r3, [r3, #4]
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r3
	and	r1, r1, #255
	bl	memset
	ldr	r0, [r11, #-24]
	ldr	r1, [sp, #40]           @ 4-byte Reload
	strb	r1, [r0, #8]
	ldr	r0, [r11, #-24]
	ldr	r2, [r11, #-24]
	str	r0, [r2, #16]
	ldr	r2, [r11, #-24]
	str	r0, [r2, #12]
.LBB5_11:                               @ =>This Inner Loop Header: Depth=1
	movw	r1, #128
	add	r0, sp, #88
	ldr	r2, [r11, #-40]
	bl	fgets
	movw	r1, #0
	cmp	r0, r1
	beq	.LBB5_24
@ BB#12:                                @   in Loop: Header=BB5_11 Depth=1
	movw	r1, :lower16:.L.str.6
	movt	r1, :upper16:.L.str.6
	add	r2, sp, #60
	add	r0, sp, #68
	add	r3, sp, #88
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r3
	ldr	r3, [sp, #36]           @ 4-byte Reload
	bl	sscanf
	movw	r1, #20
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	movw	r1, #0
	str	r0, [r11, #-28]
	ldr	r0, [r11, #-28]
	cmp	r0, r1
	bne	.LBB5_14
@ BB#13:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_14:                               @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #8
	movw	r1, #0
	movw	r2, #20
	ldr	r3, [r11, #-28]
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r3
	and	r1, r1, #255
	bl	memset
	ldr	r0, [sp, #28]           @ 4-byte Reload
	bl	malloc
	movw	r1, #0
	ldr	r2, [r11, #-28]
	str	r0, [r2, #4]
	ldr	r0, [r11, #-28]
	ldr	r0, [r0, #4]
	cmp	r0, r1
	bne	.LBB5_16
@ BB#15:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_16:                               @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #16
	movw	r1, #0
	movw	r2, #8
	ldr	r3, [r11, #-28]
	ldr	r3, [r3, #4]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r3
	and	r1, r1, #255
	bl	memset
	ldr	r0, [r11, #-28]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-36]
	ldr	r0, [sp, #24]           @ 4-byte Reload
	bl	malloc
	movw	r1, #0
	ldr	r2, [r11, #-36]
	str	r0, [r2, #4]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #4]
	cmp	r0, r1
	bne	.LBB5_18
@ BB#17:
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	bl	perror
	movw	r0, #1
	bl	exit
.LBB5_18:                               @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #0
	movw	r2, #1
	ldr	r1, [r11, #-36]
	ldr	r1, [r1, #4]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #20]           @ 4-byte Reload
	and	r1, r1, #255
	bl	memset
	ldr	r0, [sp, #68]
	ldr	r1, [r11, #-28]
	str	r0, [r1]
	ldr	r0, [sp, #64]
	bl	htonl
	ldr	r1, [r11, #-28]
	ldr	r1, [r1, #4]
	str	r0, [r1]
	ldr	r0, [sp, #68]
	ldr	r1, [r11, #-24]
	bl	pat_search
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	ldr	r0, [r0]
	ldr	r1, [sp, #68]
	cmp	r0, r1
	bne	.LBB5_20
@ BB#19:                                @   in Loop: Header=BB5_11 Depth=1
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	vldr	s0, [sp, #60]
	vcvt.f64.f32	d16, s0
	ldr	r1, [sp, #68]
	vmov	r2, r3, d16
	str	r1, [sp]
	bl	printf
	movw	r1, :lower16:.L.str.8
	movt	r1, :upper16:.L.str.8
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
	b	.LBB5_21
.LBB5_20:                               @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-24]
	bl	pat_insert
	str	r0, [r11, #-28]
.LBB5_21:                               @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-28]
	cmp	r1, r0
	bne	.LBB5_23
@ BB#22:
	movw	r1, :lower16:.L.str.9
	movt	r1, :upper16:.L.str.9
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB5_23:                               @   in Loop: Header=BB5_11 Depth=1
	b	.LBB5_11
.LBB5_24:
	movw	r0, #0
	bl	exit
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: %s <TCP stream>\n"
	.size	.L.str, 24

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"File %s doesn't seem to exist\n"
	.size	.L.str.2, 31

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Allocating p-trie node"
	.size	.L.str.3, 23

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Allocating p-trie mask data"
	.size	.L.str.4, 28

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Allocating p-trie mask's node data"
	.size	.L.str.5, 35

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"%f %d"
	.size	.L.str.6, 6

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"%f %08x: "
	.size	.L.str.7, 10

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"Found.\n"
	.size	.L.str.8, 8

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"Failed on pat_insert\n"
	.size	.L.str.9, 22


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
