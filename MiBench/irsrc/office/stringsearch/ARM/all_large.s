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
	.file	"all_large.bc"
	.globl	bmha_init
	.p2align	2
	.type	bmha_init,%function
	.code	32                      @ @bmha_init
bmha_init:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	movw	r1, #0
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	movw	r3, :lower16:pat
	movt	r3, :upper16:pat
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r0, [r3]
	ldr	r0, [r11, #-4]
	str	r2, [r11, #-16]         @ 4-byte Spill
	str	r1, [r11, #-20]         @ 4-byte Spill
	bl	strlen
	ldr	r1, [r11, #-16]         @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-20]         @ 4-byte Reload
	str	r0, [r11, #-8]
.LBB0_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldr	r0, [r11, #-8]
	cmp	r0, #255
	bgt	.LBB0_14
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	movw	r1, :lower16:skip
	movt	r1, :upper16:skip
	movw	r2, #2
	movw	r3, :lower16:patlen
	movt	r3, :upper16:patlen
	ldr	r3, [r3]
	ldr	r12, [r11, #-8]
	movw	lr, :lower16:skip
	movt	lr, :upper16:skip
	add	r12, lr, r12, lsl #2
	str	r3, [r12]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [r11, #-12]
	str	r2, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #20]           @ 4-byte Spill
.LBB0_3:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	blt	.LBB0_8
@ BB#4:                                 @   in Loop: Header=BB0_3 Depth=2
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:pat
	movt	r1, :upper16:pat
	ldr	r2, [r11, #-8]
	and	r2, r2, #255
	add	r2, r0, r2
	ldrb	r2, [r2]
	ldr	r1, [r1]
	ldr	r3, [r11, #-12]
	add	r1, r1, r3
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r2, r0
	bne	.LBB0_6
@ BB#5:                                 @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_8
.LBB0_6:                                @   in Loop: Header=BB0_3 Depth=2
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_3 Depth=2
	mvn	r0, #0
	ldr	r1, [r11, #-12]
	add	r0, r1, r0
	str	r0, [r11, #-12]
	b	.LBB0_3
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-12]
	cmp	r0, #0
	blt	.LBB0_10
@ BB#9:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:skip
	movt	r0, :upper16:skip
	movw	r1, #2
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	ldr	r2, [r2]
	ldr	r3, [r11, #-12]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r3, [r11, #-8]
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	ldr	r1, [r11, #-12]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bne	.LBB0_12
@ BB#11:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	movw	r1, :lower16:skip
	movt	r1, :upper16:skip
	movw	r2, #2
	ldr	r3, [r11, #-8]
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r3, r12, r3, lsl #2
	str	r0, [r3]
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
.LBB0_12:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB0_1
.LBB0_14:
	movw	r0, #0
	movw	r1, :lower16:skip2
	movt	r1, :upper16:skip2
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	ldr	r2, [r2]
	str	r2, [r1]
	str	r0, [r11, #-8]
.LBB0_15:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	ldr	r1, [r11, #-8]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB0_20
@ BB#16:                                @   in Loop: Header=BB0_15 Depth=1
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:patlen
	movt	r1, :upper16:patlen
	movw	r2, :lower16:pat
	movt	r2, :upper16:pat
	ldr	r3, [r2]
	ldr	r12, [r11, #-8]
	add	r3, r3, r12
	ldrb	r3, [r3]
	add	r3, r0, r3
	ldrb	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	sub	r1, r1, #1
	add	r1, r2, r1
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r3, r0
	bne	.LBB0_18
@ BB#17:                                @   in Loop: Header=BB0_15 Depth=1
	movw	r0, :lower16:skip2
	movt	r0, :upper16:skip2
	movw	r1, :lower16:patlen
	movt	r1, :upper16:patlen
	ldr	r1, [r1]
	ldr	r2, [r11, #-8]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB0_18:                               @   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_19
.LBB0_19:                               @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB0_15
.LBB0_20:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	bmha_init, .Lfunc_end0-bmha_init
	.cantunwind
	.fnend

	.globl	bmha_search
	.p2align	2
	.type	bmha_search,%function
	.code	32                      @ @bmha_search
bmha_search:
	.fnstart
@ BB#0:
	sub	sp, sp, #40
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [sp, #28]
	sub	r0, r0, r1
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	blt	.LBB1_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB1_18
.LBB1_2:
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	str	r0, [sp, #32]
.LBB1_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_4 Depth 2
                                        @     Child Loop BB1_9 Depth 2
	b	.LBB1_4
.LBB1_4:                                @   Parent Loop BB1_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip
	movt	r0, :upper16:skip
	movw	r1, #2
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #24]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [sp, #24]
	add	r2, r12, r2
	str	r2, [sp, #24]
	cmp	r2, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bge	.LBB1_6
@ BB#5:                                 @   in Loop: Header=BB1_4 Depth=2
	b	.LBB1_4
.LBB1_6:                                @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	sub	r0, r0, r2
	cmp	r1, r0
	bge	.LBB1_8
@ BB#7:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB1_18
.LBB1_8:                                @   in Loop: Header=BB1_3 Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	movw	r1, #32767
	ldr	r2, [sp, #24]
	sub	r1, r2, r1
	str	r1, [sp, #24]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #20]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #16]
.LBB1_9:                                @   Parent Loop BB1_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #0
	mvn	r1, #0
	ldr	r2, [sp, #20]
	add	r1, r2, r1
	str	r1, [sp, #20]
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB1_11
@ BB#10:                                @   in Loop: Header=BB1_9 Depth=2
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:pat
	movt	r1, :upper16:pat
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #20]
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r2, r0, r2
	ldrb	r2, [r2]
	ldr	r1, [r1]
	ldr	r3, [sp, #20]
	add	r1, r1, r3
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r2, r0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB1_11:                               @   in Loop: Header=BB1_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_13
@ BB#12:                                @   in Loop: Header=BB1_9 Depth=2
	b	.LBB1_9
.LBB1_13:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bge	.LBB1_15
@ BB#14:
	ldr	r0, [sp, #16]
	str	r0, [sp, #36]
	b	.LBB1_18
.LBB1_15:                               @   in Loop: Header=BB1_3 Depth=1
	movw	r0, :lower16:skip2
	movt	r0, :upper16:skip2
	ldr	r0, [r0]
	ldr	r1, [sp, #24]
	add	r0, r1, r0
	str	r0, [sp, #24]
	cmp	r0, #0
	blt	.LBB1_17
@ BB#16:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB1_18
.LBB1_17:                               @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_3
.LBB1_18:
	ldr	r0, [sp, #36]
	add	sp, sp, #40
	bx	lr
.Lfunc_end1:
	.size	bmha_search, .Lfunc_end1-bmha_search
	.cantunwind
	.fnend

	.globl	bmhi_init
	.p2align	2
	.type	bmhi_init,%function
	.code	32                      @ @bmhi_init
bmhi_init:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #88
	movw	r1, :lower16:patlen.1
	movt	r1, :upper16:patlen.1
	movw	r2, :lower16:pat.2
	movt	r2, :upper16:pat.2
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	str	r2, [r11, #-32]         @ 4-byte Spill
	str	r1, [r11, #-36]         @ 4-byte Spill
	bl	strlen
	ldr	r1, [r11, #-36]         @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-32]         @ 4-byte Reload
	ldr	r0, [r0]
	ldr	r1, [r1]
	bl	realloc
	movw	r1, #0
	movw	r2, :lower16:pat.2
	movt	r2, :upper16:pat.2
	str	r0, [r2]
	ldr	r0, [r2]
	cmp	r0, r1
	bne	.LBB2_2
@ BB#1:
	movw	r0, #1
	bl	exit
.LBB2_2:
	movw	r0, :lower16:bhmi_cleanup
	movt	r0, :upper16:bhmi_cleanup
	bl	atexit
	str	r0, [r11, #-40]         @ 4-byte Spill
@ BB#3:
	movw	r0, #0
	str	r0, [r11, #-24]
.LBB2_4:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [r11, #-24]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB2_7
@ BB#5:                                 @   in Loop: Header=BB2_4 Depth=1
	ldr	r0, [r11, #-20]
	ldr	r1, [r11, #-24]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	toupper
	movw	r1, :lower16:pat.2
	movt	r1, :upper16:pat.2
	ldr	r1, [r1]
	ldr	lr, [r11, #-24]
	add	r1, r1, lr
	strb	r0, [r1]
@ BB#6:                                 @   in Loop: Header=BB2_4 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_4
.LBB2_7:
	movw	r0, #0
	str	r0, [r11, #-24]
.LBB2_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #255
	bgt	.LBB2_11
@ BB#9:                                 @   in Loop: Header=BB2_8 Depth=1
	movw	r0, :lower16:skip.3
	movt	r0, :upper16:skip.3
	movw	r1, #2
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	ldr	r2, [r2]
	ldr	r3, [r11, #-24]
	movw	r12, :lower16:skip.3
	movt	r12, :upper16:skip.3
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [r11, #-44]         @ 4-byte Spill
	str	r1, [r11, #-48]         @ 4-byte Spill
@ BB#10:                                @   in Loop: Header=BB2_8 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_8
.LBB2_11:
	movw	r0, #0
	str	r0, [r11, #-24]
.LBB2_12:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [r11, #-24]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB2_15
@ BB#13:                                @   in Loop: Header=BB2_12 Depth=1
	movw	r0, :lower16:skip.3
	movt	r0, :upper16:skip.3
	movw	r1, #2
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	ldr	r3, [r2]
	ldr	r12, [r11, #-24]
	sub	r3, r3, r12
	sub	r3, r3, #1
	movw	lr, :lower16:pat.2
	movt	lr, :upper16:pat.2
	ldr	r4, [lr]
	ldrb	r12, [r4, r12]
	movw	r4, :lower16:skip.3
	movt	r4, :upper16:skip.3
	str	r3, [r4, r12, lsl #2]
	ldr	r2, [r2]
	ldr	r3, [r11, #-24]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r12, [lr]
	ldrb	r3, [r12, r3]
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r3
	str	r2, [sp, #48]           @ 4-byte Spill
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r4, [sp, #40]           @ 4-byte Spill
	bl	tolower
	mov	r1, r0
	ldr	r2, [sp, #40]           @ 4-byte Reload
	add	r0, r2, r0, lsl #2
	ldr	r3, [sp, #48]           @ 4-byte Reload
	str	r3, [r0]
	str	r1, [sp, #36]           @ 4-byte Spill
@ BB#14:                                @   in Loop: Header=BB2_12 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_12
.LBB2_15:
	movw	r0, #0
	movw	r1, :lower16:skip2.4
	movt	r1, :upper16:skip2.4
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	movw	r3, #32767
	movw	r12, :lower16:skip.3
	movt	r12, :upper16:skip.3
	movw	lr, #2
	movw	r4, :lower16:pat.2
	movt	r4, :upper16:pat.2
	ldr	r4, [r4]
	movw	r5, :lower16:patlen.1
	movt	r5, :upper16:patlen.1
	ldr	r5, [r5]
	add	r4, r4, r5
	ldrb	r4, [r4, #-1]
	str	r4, [r11, #-28]
	movw	r5, :lower16:skip.3
	movt	r5, :upper16:skip.3
	movw	r6, #32767
	str	r6, [r5, r4, lsl #2]
	ldr	r4, [r11, #-28]
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r4
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	bl	tolower
	mov	r1, r0
	ldr	r2, [sp, #28]           @ 4-byte Reload
	add	r0, r2, r0, lsl #2
	ldr	r3, [sp, #16]           @ 4-byte Reload
	str	r3, [r0]
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r12, [r0]
	ldr	lr, [sp, #24]           @ 4-byte Reload
	str	r12, [lr]
	ldr	r12, [sp, #32]          @ 4-byte Reload
	str	r12, [r11, #-24]
	str	r1, [sp, #4]            @ 4-byte Spill
.LBB2_16:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [r11, #-24]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB2_21
@ BB#17:                                @   in Loop: Header=BB2_16 Depth=1
	movw	r0, :lower16:pat.2
	movt	r0, :upper16:pat.2
	ldr	r0, [r0]
	ldr	r1, [r11, #-24]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bne	.LBB2_19
@ BB#18:                                @   in Loop: Header=BB2_16 Depth=1
	movw	r0, :lower16:skip2.4
	movt	r0, :upper16:skip2.4
	movw	r1, :lower16:patlen.1
	movt	r1, :upper16:patlen.1
	ldr	r1, [r1]
	ldr	r2, [r11, #-24]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB2_19:                               @   in Loop: Header=BB2_16 Depth=1
	b	.LBB2_20
.LBB2_20:                               @   in Loop: Header=BB2_16 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB2_16
.LBB2_21:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end2:
	.size	bmhi_init, .Lfunc_end2-bmhi_init
	.cantunwind
	.fnend

	.globl	bhmi_cleanup
	.p2align	2
	.type	bhmi_cleanup,%function
	.code	32                      @ @bhmi_cleanup
bhmi_cleanup:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	movw	r0, :lower16:pat.2
	movt	r0, :upper16:pat.2
	ldr	r0, [r0]
	bl	free
	pop	{r11, pc}
.Lfunc_end3:
	.size	bhmi_cleanup, .Lfunc_end3-bhmi_cleanup
	.cantunwind
	.fnend

	.globl	bmhi_search
	.p2align	2
	.type	bmhi_search,%function
	.code	32                      @ @bmhi_search
bmhi_search:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [r11, #-12]
	sub	r0, r0, r1
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	cmp	r0, #0
	blt	.LBB4_2
@ BB#1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB4_18
.LBB4_2:
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-8]
	add	r0, r1, r0
	str	r0, [r11, #-8]
.LBB4_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_4 Depth 2
                                        @     Child Loop BB4_9 Depth 2
	b	.LBB4_4
.LBB4_4:                                @   Parent Loop BB4_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip.3
	movt	r0, :upper16:skip.3
	movw	r1, #2
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-16]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip.3
	movt	r12, :upper16:skip.3
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [r11, #-16]
	add	r2, r12, r2
	str	r2, [r11, #-16]
	cmp	r2, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bge	.LBB4_6
@ BB#5:                                 @   in Loop: Header=BB4_4 Depth=2
	b	.LBB4_4
.LBB4_6:                                @   in Loop: Header=BB4_3 Depth=1
	movw	r0, #32767
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-12]
	sub	r0, r0, r2
	cmp	r1, r0
	bge	.LBB4_8
@ BB#7:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB4_18
.LBB4_8:                                @   in Loop: Header=BB4_3 Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	movw	r1, #32767
	ldr	r2, [r11, #-16]
	sub	r1, r2, r1
	str	r1, [r11, #-16]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #20]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #16]
.LBB4_9:                                @   Parent Loop BB4_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #0
	mvn	r1, #0
	ldr	r2, [sp, #20]
	add	r1, r2, r1
	str	r1, [sp, #20]
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB4_11
@ BB#10:                                @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	toupper
	movw	r1, :lower16:pat.2
	movt	r1, :upper16:pat.2
	ldr	r1, [r1]
	ldr	lr, [sp, #20]
	add	r1, r1, lr
	ldrb	r1, [r1]
	cmp	r0, r1
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB4_11:                               @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB4_13
@ BB#12:                                @   in Loop: Header=BB4_9 Depth=2
	b	.LBB4_9
.LBB4_13:                               @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bge	.LBB4_15
@ BB#14:
	ldr	r0, [sp, #16]
	str	r0, [r11, #-4]
	b	.LBB4_18
.LBB4_15:                               @   in Loop: Header=BB4_3 Depth=1
	movw	r0, :lower16:skip2.4
	movt	r0, :upper16:skip2.4
	ldr	r0, [r0]
	ldr	r1, [r11, #-16]
	add	r0, r1, r0
	str	r0, [r11, #-16]
	cmp	r0, #0
	blt	.LBB4_17
@ BB#16:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB4_18
.LBB4_17:                               @   in Loop: Header=BB4_3 Depth=1
	b	.LBB4_3
.LBB4_18:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end4:
	.size	bmhi_search, .Lfunc_end4-bmhi_search
	.cantunwind
	.fnend

	.globl	bmh_init
	.p2align	2
	.type	bmh_init,%function
	.code	32                      @ @bmh_init
bmh_init:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #56
	movw	r1, #0
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	movw	r3, :lower16:pat.5
	movt	r3, :upper16:pat.5
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	str	r0, [r3]
	ldr	r0, [r11, #-20]
	str	r2, [r11, #-32]         @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	bl	strlen
	ldr	r1, [r11, #-32]         @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [r11, #-24]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-24]
	cmp	r0, #255
	bgt	.LBB5_4
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	movw	r0, :lower16:skip.7
	movt	r0, :upper16:skip.7
	movw	r1, #2
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	ldr	r2, [r2]
	ldr	r3, [r11, #-24]
	movw	r12, :lower16:skip.7
	movt	r12, :upper16:skip.7
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB5_1
.LBB5_4:
	movw	r0, #0
	str	r0, [r11, #-24]
.LBB5_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	ldr	r1, [r11, #-24]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB5_8
@ BB#6:                                 @   in Loop: Header=BB5_5 Depth=1
	movw	r0, :lower16:skip.7
	movt	r0, :upper16:skip.7
	movw	r1, #2
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	ldr	r2, [r2]
	ldr	r3, [r11, #-24]
	sub	r2, r2, r3
	sub	r2, r2, #1
	movw	r12, :lower16:pat.5
	movt	r12, :upper16:pat.5
	ldr	r12, [r12]
	ldrb	r3, [r12, r3]
	mov	r12, r3
	movw	lr, :lower16:skip.7
	movt	lr, :upper16:skip.7
	add	r3, lr, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #24]           @ 4-byte Spill
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r12, [sp, #16]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB5_5
.LBB5_8:
	movw	r0, #0
	movw	r1, :lower16:skip2.8
	movt	r1, :upper16:skip2.8
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	movw	r3, #32767
	movw	r12, :lower16:skip.7
	movt	r12, :upper16:skip.7
	movw	lr, #2
	movw	r4, :lower16:pat.5
	movt	r4, :upper16:pat.5
	ldr	r4, [r4]
	movw	r5, :lower16:patlen.6
	movt	r5, :upper16:patlen.6
	ldr	r5, [r5]
	add	r4, r4, r5
	ldrb	r4, [r4, #-1]
	str	r4, [r11, #-28]
	mov	r5, r4
	movw	r6, :lower16:skip.7
	movt	r6, :upper16:skip.7
	add	r4, r6, r4, lsl #2
	str	r3, [r4]
	ldr	r2, [r2]
	str	r2, [r1]
	str	r0, [r11, #-24]
	str	r5, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
.LBB5_9:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	ldr	r1, [r11, #-24]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB5_14
@ BB#10:                                @   in Loop: Header=BB5_9 Depth=1
	movw	r0, :lower16:pat.5
	movt	r0, :upper16:pat.5
	ldr	r0, [r0]
	ldr	r1, [r11, #-24]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bne	.LBB5_12
@ BB#11:                                @   in Loop: Header=BB5_9 Depth=1
	movw	r0, :lower16:skip2.8
	movt	r0, :upper16:skip2.8
	movw	r1, :lower16:patlen.6
	movt	r1, :upper16:patlen.6
	ldr	r1, [r1]
	ldr	r2, [r11, #-24]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB5_12:                               @   in Loop: Header=BB5_9 Depth=1
	b	.LBB5_13
.LBB5_13:                               @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [r11, #-24]
	add	r0, r0, #1
	str	r0, [r11, #-24]
	b	.LBB5_9
.LBB5_14:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end5:
	.size	bmh_init, .Lfunc_end5-bmh_init
	.cantunwind
	.fnend

	.globl	bmh_search
	.p2align	2
	.type	bmh_search,%function
	.code	32                      @ @bmh_search
bmh_search:
	.fnstart
@ BB#0:
	sub	sp, sp, #40
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [sp, #28]
	sub	r0, r0, r1
	str	r0, [sp, #24]
	ldr	r0, [sp, #24]
	cmp	r0, #0
	blt	.LBB6_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB6_18
.LBB6_2:
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	str	r0, [sp, #32]
.LBB6_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_4 Depth 2
                                        @     Child Loop BB6_9 Depth 2
	b	.LBB6_4
.LBB6_4:                                @   Parent Loop BB6_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip.7
	movt	r0, :upper16:skip.7
	movw	r1, #2
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #24]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip.7
	movt	r12, :upper16:skip.7
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [sp, #24]
	add	r2, r12, r2
	str	r2, [sp, #24]
	cmp	r2, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	bge	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_4 Depth=2
	b	.LBB6_4
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	sub	r0, r0, r2
	cmp	r1, r0
	bge	.LBB6_8
@ BB#7:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB6_18
.LBB6_8:                                @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	movw	r1, #32767
	ldr	r2, [sp, #24]
	sub	r1, r2, r1
	str	r1, [sp, #24]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #20]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #16]
.LBB6_9:                                @   Parent Loop BB6_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #0
	mvn	r1, #0
	ldr	r2, [sp, #20]
	add	r1, r2, r1
	str	r1, [sp, #20]
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB6_11
@ BB#10:                                @   in Loop: Header=BB6_9 Depth=2
	movw	r0, :lower16:pat.5
	movt	r0, :upper16:pat.5
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #20]
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r0, [r0]
	ldr	r2, [sp, #20]
	add	r0, r0, r2
	ldrb	r0, [r0]
	cmp	r1, r0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB6_11:                               @   in Loop: Header=BB6_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB6_13
@ BB#12:                                @   in Loop: Header=BB6_9 Depth=2
	b	.LBB6_9
.LBB6_13:                               @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [sp, #20]
	cmp	r0, #0
	bge	.LBB6_15
@ BB#14:
	ldr	r0, [sp, #16]
	str	r0, [sp, #36]
	b	.LBB6_18
.LBB6_15:                               @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:skip2.8
	movt	r0, :upper16:skip2.8
	ldr	r0, [r0]
	ldr	r1, [sp, #24]
	add	r0, r1, r0
	str	r0, [sp, #24]
	cmp	r0, #0
	blt	.LBB6_17
@ BB#16:
	movw	r0, #0
	str	r0, [sp, #36]
	b	.LBB6_18
.LBB6_17:                               @   in Loop: Header=BB6_3 Depth=1
	b	.LBB6_3
.LBB6_18:
	ldr	r0, [sp, #36]
	add	sp, sp, #40
	bx	lr
.Lfunc_end6:
	.size	bmh_search, .Lfunc_end6-bmh_search
	.cantunwind
	.fnend

	.globl	init_search
	.p2align	2
	.type	init_search,%function
	.code	32                      @ @init_search
init_search:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #40
	movw	r1, #0
	movw	r2, :lower16:len
	movt	r2, :upper16:len
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	str	r2, [r11, #-12]         @ 4-byte Spill
	str	r1, [r11, #-16]         @ 4-byte Spill
	bl	strlen
	ldr	r1, [r11, #-12]         @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [r11, #-16]         @ 4-byte Reload
	str	r0, [r11, #-8]
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-8]
	cmp	r0, #255
	bhi	.LBB7_4
@ BB#2:                                 @   in Loop: Header=BB7_1 Depth=1
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	movw	r2, :lower16:len
	movt	r2, :upper16:len
	ldr	r2, [r2]
	ldr	r3, [r11, #-8]
	movw	r12, :lower16:table
	movt	r12, :upper16:table
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r1, [sp, #16]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB7_1 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB7_1
.LBB7_4:
	movw	r0, #0
	str	r0, [r11, #-8]
.LBB7_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:len
	movt	r0, :upper16:len
	ldr	r1, [r11, #-8]
	ldr	r0, [r0]
	cmp	r1, r0
	bhs	.LBB7_8
@ BB#6:                                 @   in Loop: Header=BB7_5 Depth=1
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	movw	r2, :lower16:len
	movt	r2, :upper16:len
	ldr	r2, [r2]
	ldr	r3, [r11, #-8]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r12, [r11, #-4]
	ldrb	r3, [r12, r3]
	mov	r12, r3
	movw	lr, :lower16:table
	movt	lr, :upper16:table
	add	r3, lr, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB7_5 Depth=1
	ldr	r0, [r11, #-8]
	add	r0, r0, #1
	str	r0, [r11, #-8]
	b	.LBB7_5
.LBB7_8:
	movw	r0, :lower16:findme
	movt	r0, :upper16:findme
	ldr	r1, [r11, #-4]
	str	r1, [r0]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end7:
	.size	init_search, .Lfunc_end7-init_search
	.cantunwind
	.fnend

	.globl	strsearch
	.p2align	2
	.type	strsearch,%function
	.code	32                      @ @strsearch
strsearch:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	movw	r1, :lower16:len
	movt	r1, :upper16:len
	str	r0, [r11, #-8]
	ldr	r0, [r1]
	sub	r0, r0, #1
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-8]
	bl	strlen
	str	r0, [sp, #24]
.LBB8_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB8_3 Depth 2
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #24]
	cmp	r0, r1
	bhs	.LBB8_13
@ BB#2:                                 @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_3
.LBB8_3:                                @   Parent Loop BB8_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #24]
	cmp	r1, r2
	str	r0, [sp, #20]           @ 4-byte Spill
	bhs	.LBB8_5
@ BB#4:                                 @   in Loop: Header=BB8_3 Depth=2
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-16]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:table
	movt	r12, :upper16:table
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [r11, #-12]
	cmp	r2, #0
	movw	r2, #0
	movhi	r2, #1
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
.LBB8_5:                                @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_7
@ BB#6:                                 @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [r11, #-12]
	ldr	r1, [r11, #-16]
	add	r0, r1, r0
	str	r0, [r11, #-16]
	b	.LBB8_3
.LBB8_7:                                @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-12]
	cmp	r0, r1
	bne	.LBB8_12
@ BB#8:                                 @   in Loop: Header=BB8_1 Depth=1
	movw	r0, :lower16:len
	movt	r0, :upper16:len
	movw	r1, :lower16:findme
	movt	r1, :upper16:findme
	ldr	r1, [r1]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-16]
	ldr	r12, [r0]
	sub	r3, r3, r12
	add	r3, r3, #1
	add	r2, r2, r3
	str	r2, [r11, #-20]
	ldr	r0, [r0]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #4]            @ 4-byte Reload
	bl	strncmp
	movw	r1, #0
	cmp	r1, r0
	bne	.LBB8_10
@ BB#9:
	ldr	r0, [r11, #-20]
	str	r0, [r11, #-4]
	b	.LBB8_14
.LBB8_10:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [r11, #-16]
	add	r0, r0, #1
	str	r0, [r11, #-16]
@ BB#11:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_12
.LBB8_12:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_1
.LBB8_13:
	movw	r0, #0
	str	r0, [r11, #-4]
.LBB8_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end8:
	.size	strsearch, .Lfunc_end8-strsearch
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
	sub	sp, sp, #2544
	sub	sp, sp, #8192
	movw	r0, #0
	movw	r1, :lower16:.Lmain.search_strings
	movt	r1, :upper16:.Lmain.search_strings
	movw	r2, #5328
	add	r3, sp, #68
	movw	r12, :lower16:.Lmain.find_strings
	movt	r12, :upper16:.Lmain.find_strings
	movw	lr, #5332
	sub	r10, r11, #5120
	sub	r4, r10, #228
	str	r0, [r11, #-12]
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r4
	str	r1, [sp, #56]           @ 4-byte Spill
	mov	r1, r12
	str	r2, [sp, #52]           @ 4-byte Spill
	mov	r2, lr
	str	r3, [sp, #48]           @ 4-byte Spill
	bl	memcpy
	ldr	r0, [sp, #48]           @ 4-byte Reload
	ldr	r1, [sp, #56]           @ 4-byte Reload
	ldr	r2, [sp, #52]           @ 4-byte Reload
	bl	memcpy
	ldr	r0, [sp, #60]           @ 4-byte Reload
	str	r0, [sp, #64]
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	sub	lr, r11, #5120
	sub	r1, lr, #228
	movw	r2, #2
	ldr	r3, [sp, #64]
	sub	lr, r11, #5120
	sub	r12, lr, #228
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3]
	cmp	r3, r0
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	beq	.LBB9_6
@ BB#2:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, :lower16:.L.str.211
	movt	r0, :upper16:.L.str.211
	add	r1, sp, #68
	movw	r2, #2
	ldr	r3, [sp, #64]
	sub	r4, r11, #5120
	sub	r12, r4, #228
	ldr	r3, [r12, r3, lsl #2]
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r3
	str	r12, [sp, #32]          @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	bl	init_search
	ldr	r0, [sp, #64]
	add	r1, sp, #68
	ldr	r0, [r1, r0, lsl #2]
	str	r1, [sp, #20]           @ 4-byte Spill
	bl	strsearch
	str	r0, [r11, #-16]
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #32]           @ 4-byte Reload
	ldr	r3, [r2, r1, lsl #2]
	movw	r12, :lower16:.L.str.212
	movt	r12, :upper16:.L.str.212
	movw	lr, :lower16:.L.str.213
	movt	lr, :upper16:.L.str.213
	cmp	r0, #0
	movne	lr, r12
	ldr	r0, [sp, #20]           @ 4-byte Reload
	add	r1, r0, r1, lsl #2
	ldr	r1, [r1]
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	mov	r2, lr
	ldr	r3, [sp, #16]           @ 4-byte Reload
	bl	printf
	movw	r1, #0
	ldr	r2, [r11, #-16]
	cmp	r2, r1
	str	r0, [sp, #12]           @ 4-byte Spill
	beq	.LBB9_4
@ BB#3:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, :lower16:.L.str.214
	movt	r0, :upper16:.L.str.214
	ldr	r1, [r11, #-16]
	bl	printf
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB9_4:                                @   in Loop: Header=BB9_1 Depth=1
	movw	r0, #10
	bl	putchar
	str	r0, [sp, #4]            @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #64]
	add	r0, r0, #1
	str	r0, [sp, #64]
	b	.LBB9_1
.LBB9_6:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end9:
	.size	main, .Lfunc_end9-main
	.cantunwind
	.fnend

	.type	lowervec,%object        @ @lowervec
	.data
	.globl	lowervec
lowervec:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177cueaaaaceeeiiiaae\221\222ooouuyou\233\234\235\236\237aiounn\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
	.size	lowervec, 256

	.type	pat,%object             @ @pat
	.local	pat
	.comm	pat,4,4
	.type	patlen,%object          @ @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,%object            @ @skip
	.local	skip
	.comm	skip,1024,4
	.type	skip2,%object           @ @skip2
	.local	skip2
	.comm	skip2,4,4
	.type	patlen.1,%object        @ @patlen.1
	.local	patlen.1
	.comm	patlen.1,4,4
	.type	pat.2,%object           @ @pat.2
	.local	pat.2
	.comm	pat.2,4,4
	.type	skip.3,%object          @ @skip.3
	.local	skip.3
	.comm	skip.3,1024,4
	.type	skip2.4,%object         @ @skip2.4
	.local	skip2.4
	.comm	skip2.4,4,4
	.type	pat.5,%object           @ @pat.5
	.local	pat.5
	.comm	pat.5,4,4
	.type	patlen.6,%object        @ @patlen.6
	.local	patlen.6
	.comm	patlen.6,4,4
	.type	skip.7,%object          @ @skip.7
	.local	skip.7
	.comm	skip.7,1024,4
	.type	skip2.8,%object         @ @skip2.8
	.local	skip2.8
	.comm	skip2.8,4,4
	.type	len,%object             @ @len
	.local	len
	.comm	len,4,4
	.type	table,%object           @ @table
	.local	table
	.comm	table,1024,4
	.type	findme,%object          @ @findme
	.local	findme
	.comm	findme,4,4
	.type	.Lmain.find_strings,%object @ @main.find_strings
	.section	.rodata,"a",%progbits
	.p2align	2
.Lmain.find_strings:
	.long	.L.str
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.long	.L.str.7
	.long	.L.str.8
	.long	.L.str.9
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.11
	.long	.L.str.12
	.long	.L.str.13
	.long	.L.str.14
	.long	.L.str.15
	.long	.L.str.16
	.long	.L.str.17
	.long	.L.str.18
	.long	.L.str.19
	.long	.L.str.20
	.long	.L.str.21
	.long	.L.str.19
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.36
	.long	.L.str.5
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.26
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.5
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.17
	.long	.L.str.52
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.59
	.long	.L.str.5
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.17
	.long	.L.str.66
	.long	.L.str.67
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.5
	.long	.L.str.59
	.long	.L.str.68
	.long	.L.str.69
	.long	.L.str.70
	.long	.L.str.71
	.long	.L.str.72
	.long	.L.str.73
	.long	.L.str.74
	.long	.L.str.75
	.long	.L.str.76
	.long	.L.str.77
	.long	.L.str.78
	.long	.L.str.79
	.long	.L.str.80
	.long	.L.str.81
	.long	.L.str.82
	.long	.L.str.83
	.long	.L.str.84
	.long	.L.str.85
	.long	.L.str.86
	.long	.L.str.52
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
	.long	0
	.size	.Lmain.find_strings, 5332

	.type	.Lmain.search_strings,%object @ @main.search_strings
	.p2align	2
.Lmain.search_strings:
	.long	.L.str.90
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.long	.L.str.91
	.long	.L.str.92
	.long	.L.str.93
	.long	.L.str.94
	.long	.L.str.95
	.long	.L.str.96
	.long	.L.str.97
	.long	.L.str.98
	.long	.L.str.99
	.long	.L.str.100
	.long	.L.str.101
	.long	.L.str.102
	.long	.L.str.103
	.long	.L.str.104
	.long	.L.str.105
	.long	.L.str.106
	.long	.L.str.107
	.long	.L.str.108
	.long	.L.str.109
	.long	.L.str.110
	.long	.L.str.111
	.long	.L.str.112
	.long	.L.str.113
	.long	.L.str.114
	.long	.L.str.115
	.long	.L.str.116
	.long	.L.str.117
	.long	.L.str.118
	.long	.L.str.119
	.long	.L.str.120
	.long	.L.str.121
	.long	.L.str.122
	.long	.L.str.123
	.long	.L.str.124
	.long	.L.str.125
	.long	.L.str.126
	.long	.L.str.127
	.long	.L.str.128
	.long	.L.str.129
	.long	.L.str.130
	.long	.L.str.131
	.long	.L.str.132
	.long	.L.str.133
	.long	.L.str.134
	.long	.L.str.135
	.long	.L.str.136
	.long	.L.str.137
	.long	.L.str.138
	.long	.L.str.139
	.long	.L.str.140
	.long	.L.str.141
	.long	.L.str.142
	.long	.L.str.143
	.long	.L.str.144
	.long	.L.str.145
	.long	.L.str.146
	.long	.L.str.147
	.long	.L.str.148
	.long	.L.str.149
	.long	.L.str.150
	.long	.L.str.151
	.long	.L.str.152
	.long	.L.str.153
	.long	.L.str.154
	.long	.L.str.155
	.long	.L.str.156
	.long	.L.str.157
	.long	.L.str.158
	.long	.L.str.159
	.long	.L.str.160
	.long	.L.str.161
	.long	.L.str.162
	.long	.L.str.163
	.long	.L.str.164
	.long	.L.str.52
	.long	.L.str.165
	.long	.L.str.166
	.long	.L.str.167
	.long	.L.str.168
	.long	.L.str.169
	.long	.L.str.170
	.long	.L.str.171
	.long	.L.str.172
	.long	.L.str.173
	.long	.L.str.174
	.long	.L.str.175
	.long	.L.str.176
	.long	.L.str.177
	.long	.L.str.178
	.long	.L.str.179
	.long	.L.str.180
	.long	.L.str.181
	.long	.L.str.182
	.long	.L.str.183
	.long	.L.str.184
	.long	.L.str.185
	.long	.L.str.186
	.long	.L.str.187
	.long	.L.str.188
	.long	.L.str.189
	.long	.L.str.190
	.long	.L.str.191
	.long	.L.str.192
	.long	.L.str.193
	.long	.L.str.194
	.long	.L.str.195
	.long	.L.str.196
	.long	.L.str.197
	.long	.L.str.198
	.long	.L.str.199
	.long	.L.str.200
	.long	.L.str.201
	.long	.L.str.202
	.long	.L.str.203
	.long	.L.str.204
	.long	.L.str.205
	.long	.L.str.206
	.long	.L.str.207
	.long	.L.str.208
	.long	.L.str.209
	.long	.L.str.210
	.size	.Lmain.search_strings, 5328

	.type	.L.str.212,%object      @ @.str.212
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.212:
	.zero	1
	.size	.L.str.212, 1

	.type	.L.str.213,%object      @ @.str.213
.L.str.213:
	.asciz	" not"
	.size	.L.str.213, 5

	.type	.L.str.211,%object      @ @.str.211
.L.str.211:
	.asciz	"\"%s\" is%s in \"%s\""
	.size	.L.str.211, 18

	.type	.L.str.214,%object      @ @.str.214
.L.str.214:
	.asciz	" [\"%s\"]"
	.size	.L.str.214, 8

	.type	.L.str.90,%object       @ @.str.90
.L.str.90:
	.asciz	"Kurt Vonneguts Commencement Address at"
	.size	.L.str.90, 39

	.type	.L.str.91,%object       @ @.str.91
.L.str.91:
	.asciz	"MIT Ladies and gentlemen of"
	.size	.L.str.91, 28

	.type	.L.str.92,%object       @ @.str.92
.L.str.92:
	.asciz	"the class of 97 Wear"
	.size	.L.str.92, 21

	.type	.L.str.93,%object       @ @.str.93
.L.str.93:
	.asciz	"sunscreen If I could offer"
	.size	.L.str.93, 27

	.type	.L.str.94,%object       @ @.str.94
.L.str.94:
	.asciz	"you only one tip for"
	.size	.L.str.94, 21

	.type	.L.str.95,%object       @ @.str.95
.L.str.95:
	.asciz	"the future sunscreen would be"
	.size	.L.str.95, 30

	.type	.L.str.96,%object       @ @.str.96
.L.str.96:
	.asciz	"it The longterm benefits of"
	.size	.L.str.96, 28

	.type	.L.str.97,%object       @ @.str.97
.L.str.97:
	.asciz	"sunscreen have been proved by"
	.size	.L.str.97, 30

	.type	.L.str.98,%object       @ @.str.98
.L.str.98:
	.asciz	"scientists whereas the rest of"
	.size	.L.str.98, 31

	.type	.L.str.99,%object       @ @.str.99
.L.str.99:
	.asciz	"my advice has no basis"
	.size	.L.str.99, 23

	.type	.L.str.100,%object      @ @.str.100
.L.str.100:
	.asciz	"more reliable than my own meandering experience"
	.size	.L.str.100, 48

	.type	.L.str.101,%object      @ @.str.101
.L.str.101:
	.asciz	"I will dispense this advice"
	.size	.L.str.101, 28

	.type	.L.str.102,%object      @ @.str.102
.L.str.102:
	.asciz	"now Enjoy the power and beauty"
	.size	.L.str.102, 31

	.type	.L.str.103,%object      @ @.str.103
.L.str.103:
	.asciz	"of your youth Oh never mind"
	.size	.L.str.103, 28

	.type	.L.str.104,%object      @ @.str.104
.L.str.104:
	.asciz	"You will not understand the power"
	.size	.L.str.104, 34

	.type	.L.str.105,%object      @ @.str.105
.L.str.105:
	.asciz	"and beauty of your youth until theyve"
	.size	.L.str.105, 38

	.type	.L.str.106,%object      @ @.str.106
.L.str.106:
	.asciz	"faded But trust me in"
	.size	.L.str.106, 22

	.type	.L.str.107,%object      @ @.str.107
.L.str.107:
	.asciz	"20 years"
	.size	.L.str.107, 9

	.type	.L.str.108,%object      @ @.str.108
.L.str.108:
	.asciz	"youll look"
	.size	.L.str.108, 11

	.type	.L.str.109,%object      @ @.str.109
.L.str.109:
	.asciz	"back at photos of yourself"
	.size	.L.str.109, 27

	.type	.L.str.110,%object      @ @.str.110
.L.str.110:
	.asciz	"and recall in a"
	.size	.L.str.110, 16

	.type	.L.str.111,%object      @ @.str.111
.L.str.111:
	.asciz	"way you cant grasp now how much"
	.size	.L.str.111, 32

	.type	.L.str.112,%object      @ @.str.112
.L.str.112:
	.asciz	"possibility lay before you"
	.size	.L.str.112, 27

	.type	.L.str.113,%object      @ @.str.113
.L.str.113:
	.asciz	"and how fabulous you really looked You"
	.size	.L.str.113, 39

	.type	.L.str.114,%object      @ @.str.114
.L.str.114:
	.asciz	"are not as fat"
	.size	.L.str.114, 15

	.type	.L.str.115,%object      @ @.str.115
.L.str.115:
	.asciz	"as you imagine Dont worry about"
	.size	.L.str.115, 32

	.type	.L.str.116,%object      @ @.str.116
.L.str.116:
	.asciz	"the future Or"
	.size	.L.str.116, 14

	.type	.L.str.117,%object      @ @.str.117
.L.str.117:
	.asciz	"worry but know that worrying is as effective"
	.size	.L.str.117, 45

	.type	.L.str.118,%object      @ @.str.118
.L.str.118:
	.asciz	"as trying to solve an algebra equation"
	.size	.L.str.118, 39

	.type	.L.str.119,%object      @ @.str.119
.L.str.119:
	.asciz	"by chewing bubble gum The real troubles in"
	.size	.L.str.119, 43

	.type	.L.str.120,%object      @ @.str.120
.L.str.120:
	.asciz	"your life are apt to"
	.size	.L.str.120, 21

	.type	.L.str.121,%object      @ @.str.121
.L.str.121:
	.asciz	"be things that never crossed your"
	.size	.L.str.121, 34

	.type	.L.str.122,%object      @ @.str.122
.L.str.122:
	.asciz	"worried mind the"
	.size	.L.str.122, 17

	.type	.L.str.123,%object      @ @.str.123
.L.str.123:
	.asciz	"kind that blindside you at"
	.size	.L.str.123, 27

	.type	.L.str.124,%object      @ @.str.124
.L.str.124:
	.asciz	"4 pm on some"
	.size	.L.str.124, 13

	.type	.L.str.125,%object      @ @.str.125
.L.str.125:
	.asciz	"idle Tuesday"
	.size	.L.str.125, 13

	.type	.L.str.126,%object      @ @.str.126
.L.str.126:
	.asciz	"Do one thing every day that"
	.size	.L.str.126, 28

	.type	.L.str.127,%object      @ @.str.127
.L.str.127:
	.asciz	"scares you Sing Dont be reckless with other"
	.size	.L.str.127, 44

	.type	.L.str.128,%object      @ @.str.128
.L.str.128:
	.asciz	"peoples hearts Dont put up"
	.size	.L.str.128, 27

	.type	.L.str.129,%object      @ @.str.129
.L.str.129:
	.asciz	"with people who are reckless"
	.size	.L.str.129, 29

	.type	.L.str.130,%object      @ @.str.130
.L.str.130:
	.asciz	"with yours Floss Dont waste your time"
	.size	.L.str.130, 38

	.type	.L.str.131,%object      @ @.str.131
.L.str.131:
	.asciz	"on jealousy Sometimes youre ahead sometimes youre behind"
	.size	.L.str.131, 57

	.type	.L.str.132,%object      @ @.str.132
.L.str.132:
	.asciz	"The race is long and in"
	.size	.L.str.132, 24

	.type	.L.str.133,%object      @ @.str.133
.L.str.133:
	.asciz	"the end its only with"
	.size	.L.str.133, 22

	.type	.L.str.134,%object      @ @.str.134
.L.str.134:
	.asciz	"yourself Remember compliments you receive"
	.size	.L.str.134, 42

	.type	.L.str.135,%object      @ @.str.135
.L.str.135:
	.asciz	"Forget the insults If you"
	.size	.L.str.135, 26

	.type	.L.str.136,%object      @ @.str.136
.L.str.136:
	.asciz	"succeed in doing this tell me how"
	.size	.L.str.136, 34

	.type	.L.str.137,%object      @ @.str.137
.L.str.137:
	.asciz	"Keep your old"
	.size	.L.str.137, 14

	.type	.L.str.138,%object      @ @.str.138
.L.str.138:
	.asciz	"love letters Throw away"
	.size	.L.str.138, 24

	.type	.L.str.139,%object      @ @.str.139
.L.str.139:
	.asciz	"your old bank statements"
	.size	.L.str.139, 25

	.type	.L.str.140,%object      @ @.str.140
.L.str.140:
	.asciz	"Stretch Dont feel guilty if you dont know"
	.size	.L.str.140, 42

	.type	.L.str.141,%object      @ @.str.141
.L.str.141:
	.asciz	"what you want to do with your"
	.size	.L.str.141, 30

	.type	.L.str.142,%object      @ @.str.142
.L.str.142:
	.asciz	"life The most interesting people I"
	.size	.L.str.142, 35

	.type	.L.str.143,%object      @ @.str.143
.L.str.143:
	.asciz	"know didnt know at 22"
	.size	.L.str.143, 22

	.type	.L.str.144,%object      @ @.str.144
.L.str.144:
	.asciz	"what they wanted"
	.size	.L.str.144, 17

	.type	.L.str.145,%object      @ @.str.145
.L.str.145:
	.asciz	"to do with their lives Some of"
	.size	.L.str.145, 31

	.type	.L.str.146,%object      @ @.str.146
.L.str.146:
	.asciz	"the most interesting"
	.size	.L.str.146, 21

	.type	.L.str.147,%object      @ @.str.147
.L.str.147:
	.asciz	"40yearolds I know still dont"
	.size	.L.str.147, 29

	.type	.L.str.148,%object      @ @.str.148
.L.str.148:
	.asciz	"Get plenty of calcium"
	.size	.L.str.148, 22

	.type	.L.str.149,%object      @ @.str.149
.L.str.149:
	.asciz	"Be kind to your knees Youll miss"
	.size	.L.str.149, 33

	.type	.L.str.150,%object      @ @.str.150
.L.str.150:
	.asciz	"them when theyre gone"
	.size	.L.str.150, 22

	.type	.L.str.151,%object      @ @.str.151
.L.str.151:
	.asciz	"Maybe youll marry"
	.size	.L.str.151, 18

	.type	.L.str.152,%object      @ @.str.152
.L.str.152:
	.asciz	"maybe you wont Maybe youll have children maybe"
	.size	.L.str.152, 47

	.type	.L.str.153,%object      @ @.str.153
.L.str.153:
	.asciz	"you wont Maybe youll divorce at 40 maybe youll dance"
	.size	.L.str.153, 53

	.type	.L.str.154,%object      @ @.str.154
.L.str.154:
	.asciz	"the funky chicken on"
	.size	.L.str.154, 21

	.type	.L.str.155,%object      @ @.str.155
.L.str.155:
	.asciz	"your 75th wedding anniversary Whatever"
	.size	.L.str.155, 39

	.type	.L.str.156,%object      @ @.str.156
.L.str.156:
	.asciz	"you do dont congratulate yourself too"
	.size	.L.str.156, 38

	.type	.L.str.157,%object      @ @.str.157
.L.str.157:
	.asciz	"much or berate yourself"
	.size	.L.str.157, 24

	.type	.L.str.158,%object      @ @.str.158
.L.str.158:
	.asciz	"either Your choices are half chance So"
	.size	.L.str.158, 39

	.type	.L.str.159,%object      @ @.str.159
.L.str.159:
	.asciz	"are everybody elses"
	.size	.L.str.159, 20

	.type	.L.str.160,%object      @ @.str.160
.L.str.160:
	.asciz	"Enjoy your body Use"
	.size	.L.str.160, 20

	.type	.L.str.161,%object      @ @.str.161
.L.str.161:
	.asciz	"it every way you can Dont"
	.size	.L.str.161, 26

	.type	.L.str.162,%object      @ @.str.162
.L.str.162:
	.asciz	"be afraid of it or of what"
	.size	.L.str.162, 27

	.type	.L.str.163,%object      @ @.str.163
.L.str.163:
	.asciz	"other people think of"
	.size	.L.str.163, 22

	.type	.L.str.164,%object      @ @.str.164
.L.str.164:
	.asciz	"it Its"
	.size	.L.str.164, 7

	.type	.L.str.52,%object       @ @.str.52
.L.str.52:
	.asciz	"the"
	.size	.L.str.52, 4

	.type	.L.str.165,%object      @ @.str.165
.L.str.165:
	.asciz	"greatest instrument youll ever"
	.size	.L.str.165, 31

	.type	.L.str.166,%object      @ @.str.166
.L.str.166:
	.asciz	"own Dance even if you have"
	.size	.L.str.166, 27

	.type	.L.str.167,%object      @ @.str.167
.L.str.167:
	.asciz	"nowhere to do it but your living"
	.size	.L.str.167, 33

	.type	.L.str.168,%object      @ @.str.168
.L.str.168:
	.asciz	"room Read the directions even if"
	.size	.L.str.168, 33

	.type	.L.str.169,%object      @ @.str.169
.L.str.169:
	.asciz	"you dont follow them Do not read"
	.size	.L.str.169, 33

	.type	.L.str.170,%object      @ @.str.170
.L.str.170:
	.asciz	"beauty magazines They will only make you"
	.size	.L.str.170, 41

	.type	.L.str.171,%object      @ @.str.171
.L.str.171:
	.asciz	"feel ugly Get to know your parents You never"
	.size	.L.str.171, 45

	.type	.L.str.172,%object      @ @.str.172
.L.str.172:
	.asciz	"know when theyll be gone for good Be"
	.size	.L.str.172, 37

	.type	.L.str.173,%object      @ @.str.173
.L.str.173:
	.asciz	"nice to your siblings Theyre your"
	.size	.L.str.173, 34

	.type	.L.str.174,%object      @ @.str.174
.L.str.174:
	.asciz	"best link to your"
	.size	.L.str.174, 18

	.type	.L.str.175,%object      @ @.str.175
.L.str.175:
	.asciz	"past and the people most likely"
	.size	.L.str.175, 32

	.type	.L.str.176,%object      @ @.str.176
.L.str.176:
	.asciz	"to stick with you"
	.size	.L.str.176, 18

	.type	.L.str.177,%object      @ @.str.177
.L.str.177:
	.asciz	"in the future Understand that"
	.size	.L.str.177, 30

	.type	.L.str.178,%object      @ @.str.178
.L.str.178:
	.asciz	"friends come and go but"
	.size	.L.str.178, 24

	.type	.L.str.179,%object      @ @.str.179
.L.str.179:
	.asciz	"with a precious few you should hold"
	.size	.L.str.179, 36

	.type	.L.str.180,%object      @ @.str.180
.L.str.180:
	.asciz	"on Work hard to bridge"
	.size	.L.str.180, 23

	.type	.L.str.181,%object      @ @.str.181
.L.str.181:
	.asciz	"the gaps in geography and lifestyle"
	.size	.L.str.181, 36

	.type	.L.str.182,%object      @ @.str.182
.L.str.182:
	.asciz	"because the older"
	.size	.L.str.182, 18

	.type	.L.str.183,%object      @ @.str.183
.L.str.183:
	.asciz	"you get the more you need the"
	.size	.L.str.183, 30

	.type	.L.str.184,%object      @ @.str.184
.L.str.184:
	.asciz	"people who knew you when you"
	.size	.L.str.184, 29

	.type	.L.str.185,%object      @ @.str.185
.L.str.185:
	.asciz	"were young Live"
	.size	.L.str.185, 16

	.type	.L.str.186,%object      @ @.str.186
.L.str.186:
	.asciz	"in New York City once but leave before"
	.size	.L.str.186, 39

	.type	.L.str.187,%object      @ @.str.187
.L.str.187:
	.asciz	"it makes you hard Live in"
	.size	.L.str.187, 26

	.type	.L.str.188,%object      @ @.str.188
.L.str.188:
	.asciz	"Northern California once but leave"
	.size	.L.str.188, 35

	.type	.L.str.189,%object      @ @.str.189
.L.str.189:
	.asciz	"before it makes you soft Travel"
	.size	.L.str.189, 32

	.type	.L.str.190,%object      @ @.str.190
.L.str.190:
	.asciz	"Accept certain inalienable truths Prices will rise"
	.size	.L.str.190, 51

	.type	.L.str.191,%object      @ @.str.191
.L.str.191:
	.asciz	"Politicians will philander You too will"
	.size	.L.str.191, 40

	.type	.L.str.192,%object      @ @.str.192
.L.str.192:
	.asciz	"get old And when you do youll"
	.size	.L.str.192, 30

	.type	.L.str.193,%object      @ @.str.193
.L.str.193:
	.asciz	"fantasize that when you were young prices were"
	.size	.L.str.193, 47

	.type	.L.str.194,%object      @ @.str.194
.L.str.194:
	.asciz	"reasonable politicians were noble and children respected"
	.size	.L.str.194, 57

	.type	.L.str.195,%object      @ @.str.195
.L.str.195:
	.asciz	"their elders Respect your elders"
	.size	.L.str.195, 33

	.type	.L.str.196,%object      @ @.str.196
.L.str.196:
	.asciz	"Dont expect anyone else to"
	.size	.L.str.196, 27

	.type	.L.str.197,%object      @ @.str.197
.L.str.197:
	.asciz	"support you Maybe you have a"
	.size	.L.str.197, 29

	.type	.L.str.198,%object      @ @.str.198
.L.str.198:
	.asciz	"trust fund Maybe youll have a wealthy"
	.size	.L.str.198, 38

	.type	.L.str.199,%object      @ @.str.199
.L.str.199:
	.asciz	"spouse But you never know when either"
	.size	.L.str.199, 38

	.type	.L.str.200,%object      @ @.str.200
.L.str.200:
	.asciz	"one might run out Dont mess"
	.size	.L.str.200, 28

	.type	.L.str.201,%object      @ @.str.201
.L.str.201:
	.asciz	"too much with your hair or by the"
	.size	.L.str.201, 34

	.type	.L.str.202,%object      @ @.str.202
.L.str.202:
	.asciz	"time youre 40 it will look 85 Be"
	.size	.L.str.202, 33

	.type	.L.str.203,%object      @ @.str.203
.L.str.203:
	.asciz	"careful whose advice you buy but be patient"
	.size	.L.str.203, 44

	.type	.L.str.204,%object      @ @.str.204
.L.str.204:
	.asciz	"with those who supply it Advice is a"
	.size	.L.str.204, 37

	.type	.L.str.205,%object      @ @.str.205
.L.str.205:
	.asciz	"form of nostalgia Dispensing it is"
	.size	.L.str.205, 35

	.type	.L.str.206,%object      @ @.str.206
.L.str.206:
	.asciz	"a way of fishing the past from"
	.size	.L.str.206, 31

	.type	.L.str.207,%object      @ @.str.207
.L.str.207:
	.asciz	"the disposal wiping it off painting"
	.size	.L.str.207, 36

	.type	.L.str.208,%object      @ @.str.208
.L.str.208:
	.asciz	"over the ugly parts"
	.size	.L.str.208, 20

	.type	.L.str.209,%object      @ @.str.209
.L.str.209:
	.asciz	"and recycling it for more than its"
	.size	.L.str.209, 35

	.type	.L.str.210,%object      @ @.str.210
.L.str.210:
	.asciz	"worth But trust me on the sunscreen"
	.size	.L.str.210, 36

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"Kur"
	.size	.L.str, 4

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"gent"
	.size	.L.str.1, 5

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"lass"
	.size	.L.str.2, 5

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"suns"
	.size	.L.str.3, 5

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"for"
	.size	.L.str.4, 4

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"xxx"
	.size	.L.str.5, 4

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"long"
	.size	.L.str.6, 5

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"have"
	.size	.L.str.7, 5

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"where"
	.size	.L.str.8, 6

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"xxxxxx"
	.size	.L.str.9, 7

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"pense"
	.size	.L.str.10, 6

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"pow"
	.size	.L.str.11, 4

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"xxxxx"
	.size	.L.str.12, 6

	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	"Yo"
	.size	.L.str.13, 3

	.type	.L.str.14,%object       @ @.str.14
.L.str.14:
	.asciz	"and"
	.size	.L.str.14, 4

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"faded"
	.size	.L.str.15, 6

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"20"
	.size	.L.str.16, 3

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"you"
	.size	.L.str.17, 4

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"bac"
	.size	.L.str.18, 4

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"an"
	.size	.L.str.19, 3

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"way"
	.size	.L.str.20, 4

	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	"possibili"
	.size	.L.str.21, 10

	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"fat"
	.size	.L.str.22, 4

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	"imag"
	.size	.L.str.23, 5

	.type	.L.str.24,%object       @ @.str.24
.L.str.24:
	.asciz	"th"
	.size	.L.str.24, 3

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"wor"
	.size	.L.str.25, 4

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"yo"
	.size	.L.str.26, 3

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"bxx"
	.size	.L.str.27, 4

	.type	.L.str.28,%object       @ @.str.28
.L.str.28:
	.asciz	"wo"
	.size	.L.str.28, 3

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	"kind"
	.size	.L.str.29, 5

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"4"
	.size	.L.str.30, 2

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"idle"
	.size	.L.str.31, 5

	.type	.L.str.32,%object       @ @.str.32
.L.str.32:
	.asciz	"Do"
	.size	.L.str.32, 3

	.type	.L.str.33,%object       @ @.str.33
.L.str.33:
	.asciz	"scare"
	.size	.L.str.33, 6

	.type	.L.str.34,%object       @ @.str.34
.L.str.34:
	.asciz	"people"
	.size	.L.str.34, 7

	.type	.L.str.35,%object       @ @.str.35
.L.str.35:
	.asciz	"wit"
	.size	.L.str.35, 4

	.type	.L.str.36,%object       @ @.str.36
.L.str.36:
	.asciz	"Th"
	.size	.L.str.36, 3

	.type	.L.str.37,%object       @ @.str.37
.L.str.37:
	.asciz	"yourself"
	.size	.L.str.37, 9

	.type	.L.str.38,%object       @ @.str.38
.L.str.38:
	.asciz	"Forget"
	.size	.L.str.38, 7

	.type	.L.str.39,%object       @ @.str.39
.L.str.39:
	.asciz	"succeed"
	.size	.L.str.39, 8

	.type	.L.str.40,%object       @ @.str.40
.L.str.40:
	.asciz	"Kee"
	.size	.L.str.40, 4

	.type	.L.str.41,%object       @ @.str.41
.L.str.41:
	.asciz	"lov"
	.size	.L.str.41, 4

	.type	.L.str.42,%object       @ @.str.42
.L.str.42:
	.asciz	"Stretc"
	.size	.L.str.42, 7

	.type	.L.str.43,%object       @ @.str.43
.L.str.43:
	.asciz	"what"
	.size	.L.str.43, 5

	.type	.L.str.44,%object       @ @.str.44
.L.str.44:
	.asciz	"life"
	.size	.L.str.44, 5

	.type	.L.str.45,%object       @ @.str.45
.L.str.45:
	.asciz	"kno"
	.size	.L.str.45, 4

	.type	.L.str.46,%object       @ @.str.46
.L.str.46:
	.asciz	"wha"
	.size	.L.str.46, 4

	.type	.L.str.47,%object       @ @.str.47
.L.str.47:
	.asciz	"40"
	.size	.L.str.47, 3

	.type	.L.str.48,%object       @ @.str.48
.L.str.48:
	.asciz	"Get"
	.size	.L.str.48, 4

	.type	.L.str.49,%object       @ @.str.49
.L.str.49:
	.asciz	"them"
	.size	.L.str.49, 5

	.type	.L.str.50,%object       @ @.str.50
.L.str.50:
	.asciz	"Maybe"
	.size	.L.str.50, 6

	.type	.L.str.51,%object       @ @.str.51
.L.str.51:
	.asciz	"may"
	.size	.L.str.51, 4

	.type	.L.str.53,%object       @ @.str.53
.L.str.53:
	.asciz	"your"
	.size	.L.str.53, 5

	.type	.L.str.54,%object       @ @.str.54
.L.str.54:
	.asciz	"congratulate"
	.size	.L.str.54, 13

	.type	.L.str.55,%object       @ @.str.55
.L.str.55:
	.asciz	"much"
	.size	.L.str.55, 5

	.type	.L.str.56,%object       @ @.str.56
.L.str.56:
	.asciz	"either"
	.size	.L.str.56, 7

	.type	.L.str.57,%object       @ @.str.57
.L.str.57:
	.asciz	"are"
	.size	.L.str.57, 4

	.type	.L.str.58,%object       @ @.str.58
.L.str.58:
	.asciz	"Enjoy"
	.size	.L.str.58, 6

	.type	.L.str.59,%object       @ @.str.59
.L.str.59:
	.asciz	"it"
	.size	.L.str.59, 3

	.type	.L.str.60,%object       @ @.str.60
.L.str.60:
	.asciz	"be"
	.size	.L.str.60, 3

	.type	.L.str.61,%object       @ @.str.61
.L.str.61:
	.asciz	"other"
	.size	.L.str.61, 6

	.type	.L.str.62,%object       @ @.str.62
.L.str.62:
	.asciz	"greatest"
	.size	.L.str.62, 9

	.type	.L.str.63,%object       @ @.str.63
.L.str.63:
	.asciz	"own"
	.size	.L.str.63, 4

	.type	.L.str.64,%object       @ @.str.64
.L.str.64:
	.asciz	"nowhere"
	.size	.L.str.64, 8

	.type	.L.str.65,%object       @ @.str.65
.L.str.65:
	.asciz	"room"
	.size	.L.str.65, 5

	.type	.L.str.66,%object       @ @.str.66
.L.str.66:
	.asciz	"beauty"
	.size	.L.str.66, 7

	.type	.L.str.67,%object       @ @.str.67
.L.str.67:
	.asciz	"feel"
	.size	.L.str.67, 5

	.type	.L.str.68,%object       @ @.str.68
.L.str.68:
	.asciz	"Northern"
	.size	.L.str.68, 9

	.type	.L.str.69,%object       @ @.str.69
.L.str.69:
	.asciz	"before"
	.size	.L.str.69, 7

	.type	.L.str.70,%object       @ @.str.70
.L.str.70:
	.asciz	"Accept"
	.size	.L.str.70, 7

	.type	.L.str.71,%object       @ @.str.71
.L.str.71:
	.asciz	"Politicians"
	.size	.L.str.71, 12

	.type	.L.str.72,%object       @ @.str.72
.L.str.72:
	.asciz	"get"
	.size	.L.str.72, 4

	.type	.L.str.73,%object       @ @.str.73
.L.str.73:
	.asciz	"size"
	.size	.L.str.73, 5

	.type	.L.str.74,%object       @ @.str.74
.L.str.74:
	.asciz	"reasonable"
	.size	.L.str.74, 11

	.type	.L.str.75,%object       @ @.str.75
.L.str.75:
	.asciz	"their"
	.size	.L.str.75, 6

	.type	.L.str.76,%object       @ @.str.76
.L.str.76:
	.asciz	"Dont"
	.size	.L.str.76, 5

	.type	.L.str.77,%object       @ @.str.77
.L.str.77:
	.asciz	"support"
	.size	.L.str.77, 8

	.type	.L.str.78,%object       @ @.str.78
.L.str.78:
	.asciz	"trust"
	.size	.L.str.78, 6

	.type	.L.str.79,%object       @ @.str.79
.L.str.79:
	.asciz	"spouse"
	.size	.L.str.79, 7

	.type	.L.str.80,%object       @ @.str.80
.L.str.80:
	.asciz	"one"
	.size	.L.str.80, 4

	.type	.L.str.81,%object       @ @.str.81
.L.str.81:
	.asciz	"too"
	.size	.L.str.81, 4

	.type	.L.str.82,%object       @ @.str.82
.L.str.82:
	.asciz	"time"
	.size	.L.str.82, 5

	.type	.L.str.83,%object       @ @.str.83
.L.str.83:
	.asciz	"careful"
	.size	.L.str.83, 8

	.type	.L.str.84,%object       @ @.str.84
.L.str.84:
	.asciz	"with"
	.size	.L.str.84, 5

	.type	.L.str.85,%object       @ @.str.85
.L.str.85:
	.asciz	"Dispensing"
	.size	.L.str.85, 11

	.type	.L.str.86,%object       @ @.str.86
.L.str.86:
	.asciz	"past"
	.size	.L.str.86, 5

	.type	.L.str.87,%object       @ @.str.87
.L.str.87:
	.asciz	"parts"
	.size	.L.str.87, 6

	.type	.L.str.88,%object       @ @.str.88
.L.str.88:
	.asciz	"more"
	.size	.L.str.88, 5

	.type	.L.str.89,%object       @ @.str.89
.L.str.89:
	.asciz	"me"
	.size	.L.str.89, 3


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
