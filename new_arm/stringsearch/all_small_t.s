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
	.file	"all_small_t.bc"
	.globl	bmha_init
	.p2align	2
	.type	bmha_init,%function
	.code	32                      @ @bmha_init
bmha_init:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #160
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #136]
	movw	r2, :lower16:pat
	movt	r2, :upper16:pat
	str	r0, [r2]
	ldr	r0, [sp, #136]
	str	r1, [sp, #72]           @ 4-byte Spill
	bl	strlen
	movw	r1, :lower16:patlen
	movt	r1, :upper16:patlen
	str	r0, [r1]
	vmov.i32	q8, #0x0
	add	r0, sp, #112
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #72]           @ 4-byte Reload
	str	r0, [sp, #108]
.LBB0_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_3 Depth 2
	ldr	r0, [sp, #108]
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
	ldr	r12, [sp, #108]
	movw	lr, :lower16:skip
	movt	lr, :upper16:skip
	add	r12, lr, r12, lsl #2
	str	r3, [r12]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #76]
	str	r2, [sp, #68]           @ 4-byte Spill
	str	r1, [sp, #64]           @ 4-byte Spill
.LBB0_3:                                @   Parent Loop BB0_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #76]
	cmp	r0, #0
	blt	.LBB0_8
@ BB#4:                                 @   in Loop: Header=BB0_3 Depth=2
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:pat
	movt	r1, :upper16:pat
	ldr	r2, [sp, #108]
	and	r2, r2, #255
	add	r2, r0, r2
	ldrb	r2, [r2]
	ldr	r1, [r1]
	ldr	r3, [sp, #76]
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
	ldr	r1, [sp, #76]
	vdup.32	q8, r1
	add	r2, sp, #80
	vst1.64	{d16, d17}, [r2:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #76]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_3
.LBB0_8:                                @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #0
	blt	.LBB0_10
@ BB#9:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:skip
	movt	r0, :upper16:skip
	movw	r1, #2
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	ldr	r2, [r2]
	ldr	r3, [sp, #76]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r3, [sp, #108]
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
.LBB0_10:                               @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	ldr	r1, [sp, #76]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bne	.LBB0_12
@ BB#11:                                @   in Loop: Header=BB0_1 Depth=1
	movw	r0, #32767
	movw	r1, :lower16:skip
	movt	r1, :upper16:skip
	movw	r2, #2
	ldr	r3, [sp, #108]
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r3, r12, r3, lsl #2
	str	r0, [r3]
	str	r2, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
.LBB0_12:                               @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_13
.LBB0_13:                               @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #108]
	vdup.32	q8, r0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #108]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
.LBB0_14:
	movw	r0, #0
	movw	r1, :lower16:patlen
	movt	r1, :upper16:patlen
	ldr	r1, [r1]
	movw	r2, :lower16:skip2
	movt	r2, :upper16:skip2
	str	r1, [r2]
	vmov.i32	q8, #0x0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #108]
.LBB0_15:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	ldr	r1, [sp, #108]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB0_25
@ BB#16:                                @   in Loop: Header=BB0_15 Depth=1
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:patlen
	movt	r1, :upper16:patlen
	movw	r2, :lower16:pat
	movt	r2, :upper16:pat
	ldr	r3, [r2]
	ldr	r12, [sp, #108]
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
	ldr	r2, [sp, #108]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB0_18:                               @   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_19
.LBB0_19:                               @   in Loop: Header=BB0_15 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #108]
	add	r2, sp, #112
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
	str	r1, [sp, #140]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB0_24
@ BB#20:                                @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_22
@ BB#21:                                @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #140]
	b	.LBB0_23
.LBB0_22:                               @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #140]
.LBB0_23:                               @   in Loop: Header=BB0_15 Depth=1
	b	.LBB0_24
.LBB0_24:                               @   in Loop: Header=BB0_15 Depth=1
	ldr	r0, [sp, #140]
	str	r0, [sp, #108]
	b	.LBB0_15
.LBB0_25:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #224
	bfc	sp, #0, #4
	movw	r2, :lower16:patlen
	movt	r2, :upper16:patlen
	str	r0, [sp, #164]
	str	r1, [sp, #140]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [sp, #140]
	sub	r0, r0, r1
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB1_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB1_23
.LBB1_2:
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #164]
	add	r0, r1, r0
	str	r0, [sp, #164]
.LBB1_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_4 Depth 2
                                        @     Child Loop BB1_9 Depth 2
	b	.LBB1_4
.LBB1_4:                                @   Parent Loop BB1_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip
	movt	r0, :upper16:skip
	movw	r1, #2
	ldr	r2, [sp, #164]
	ldr	r3, [sp, #108]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip
	movt	r12, :upper16:skip
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [sp, #108]
	add	r2, r12, r2
	str	r2, [sp, #108]
	cmp	r2, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r1, [sp, #64]           @ 4-byte Spill
	str	r3, [sp, #60]           @ 4-byte Spill
	bge	.LBB1_6
@ BB#5:                                 @   in Loop: Header=BB1_4 Depth=2
	b	.LBB1_4
.LBB1_6:                                @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	sub	r0, r0, r2
	cmp	r1, r0
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB1_8
@ BB#7:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB1_23
.LBB1_8:                                @   in Loop: Header=BB1_3 Depth=1
	movw	r0, :lower16:patlen
	movt	r0, :upper16:patlen
	movw	r1, #32767
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r3, sp, #112
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x7fff
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	sub	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #76]
	ldr	r0, [sp, #164]
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #76]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #72]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB1_9:                                @   Parent Loop BB1_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #76]
	vdup.32	q8, r2
	add	r3, sp, #80
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
	str	r1, [sp, #204]
	cmp	r12, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	beq	.LBB1_14
@ BB#10:                                @   in Loop: Header=BB1_9 Depth=2
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_12
@ BB#11:                                @   in Loop: Header=BB1_9 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB1_13
.LBB1_12:                               @   in Loop: Header=BB1_9 Depth=2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #204]
.LBB1_13:                               @   in Loop: Header=BB1_9 Depth=2
	b	.LBB1_14
.LBB1_14:                               @   in Loop: Header=BB1_9 Depth=2
	movw	r0, #0
	ldr	r1, [sp, #204]
	str	r1, [sp, #76]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB1_16
@ BB#15:                                @   in Loop: Header=BB1_9 Depth=2
	movw	r0, :lower16:lowervec
	movt	r0, :upper16:lowervec
	movw	r1, :lower16:pat
	movt	r1, :upper16:pat
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #76]
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r2, r0, r2
	ldrb	r2, [r2]
	ldr	r1, [r1]
	ldr	r3, [sp, #76]
	add	r1, r1, r3
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r2, r0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB1_16:                               @   in Loop: Header=BB1_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_18
@ BB#17:                                @   in Loop: Header=BB1_9 Depth=2
	b	.LBB1_9
.LBB1_18:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #0
	bge	.LBB1_20
@ BB#19:
	ldr	r0, [sp, #72]
	str	r0, [sp, #168]
	b	.LBB1_23
.LBB1_20:                               @   in Loop: Header=BB1_3 Depth=1
	movw	r0, :lower16:skip2
	movt	r0, :upper16:skip2
	ldr	r0, [r0]
	ldr	r1, [sp, #108]
	add	r0, r1, r0
	str	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB1_22
@ BB#21:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB1_23
.LBB1_22:                               @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_3
.LBB1_23:
	ldr	r0, [sp, #168]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	sub	sp, sp, #248
	bfc	sp, #0, #4
	movw	r1, :lower16:patlen.1
	movt	r1, :upper16:patlen.1
	movw	r2, :lower16:pat.2
	movt	r2, :upper16:pat.2
	str	r0, [sp, #216]
	ldr	r0, [sp, #216]
	str	r2, [sp, #152]          @ 4-byte Spill
	str	r1, [sp, #148]          @ 4-byte Spill
	bl	strlen
	ldr	r1, [sp, #148]          @ 4-byte Reload
	str	r0, [r1]
	ldr	r0, [sp, #152]          @ 4-byte Reload
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
	str	r0, [sp, #144]          @ 4-byte Spill
@ BB#3:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #188]
.LBB2_4:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [sp, #188]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB2_7
@ BB#5:                                 @   in Loop: Header=BB2_4 Depth=1
	ldr	r0, [sp, #216]
	ldr	r1, [sp, #188]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	toupper
	movw	r1, :lower16:pat.2
	movt	r1, :upper16:pat.2
	ldr	r1, [r1]
	ldr	lr, [sp, #188]
	add	r1, r1, lr
	strb	r0, [r1]
@ BB#6:                                 @   in Loop: Header=BB2_4 Depth=1
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
	add	lr, sp, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_4
.LBB2_7:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #188]
.LBB2_8:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #188]
	cmp	r0, #255
	bgt	.LBB2_11
@ BB#9:                                 @   in Loop: Header=BB2_8 Depth=1
	movw	r0, :lower16:skip.3
	movt	r0, :upper16:skip.3
	movw	r1, #2
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	ldr	r2, [r2]
	ldr	r3, [sp, #188]
	movw	r12, :lower16:skip.3
	movt	r12, :upper16:skip.3
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #124]          @ 4-byte Spill
	str	r1, [sp, #120]          @ 4-byte Spill
@ BB#10:                                @   in Loop: Header=BB2_8 Depth=1
	ldr	r0, [sp, #188]
	add	r1, sp, #192
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #188]
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_8
.LBB2_11:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #188]
.LBB2_12:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [sp, #188]
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
	ldr	r12, [sp, #188]
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
	ldr	r3, [sp, #188]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r12, [lr]
	ldrb	r3, [r12, r3]
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r3
	str	r2, [sp, #88]           @ 4-byte Spill
	str	r1, [sp, #84]           @ 4-byte Spill
	str	r4, [sp, #80]           @ 4-byte Spill
	bl	tolower
	mov	r1, r0
	ldr	r2, [sp, #80]           @ 4-byte Reload
	add	r0, r2, r0, lsl #2
	ldr	r3, [sp, #88]           @ 4-byte Reload
	str	r3, [r0]
	str	r1, [sp, #76]           @ 4-byte Spill
@ BB#14:                                @   in Loop: Header=BB2_12 Depth=1
	ldr	r0, [sp, #188]
	add	r1, sp, #192
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #188]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
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
	str	r4, [sp, #156]
	movw	r5, :lower16:skip.3
	movt	r5, :upper16:skip.3
	movw	r6, #32767
	str	r6, [r5, r4, lsl #2]
	ldr	r4, [sp, #156]
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r4
	str	r5, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
	str	lr, [sp, #20]           @ 4-byte Spill
	bl	tolower
	mov	r1, r0
	ldr	r2, [sp, #40]           @ 4-byte Reload
	add	r0, r2, r0, lsl #2
	ldr	r3, [sp, #28]           @ 4-byte Reload
	str	r3, [r0]
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r12, [r0]
	ldr	lr, [sp, #36]           @ 4-byte Reload
	str	r12, [lr]
	ldr	r12, [sp, #44]          @ 4-byte Reload
	str	r12, [sp, #188]
	str	r1, [sp, #16]           @ 4-byte Spill
.LBB2_16:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	ldr	r1, [sp, #188]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB2_26
@ BB#17:                                @   in Loop: Header=BB2_16 Depth=1
	movw	r0, :lower16:pat.2
	movt	r0, :upper16:pat.2
	ldr	r0, [r0]
	ldr	r1, [sp, #188]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #156]
	cmp	r0, r1
	bne	.LBB2_19
@ BB#18:                                @   in Loop: Header=BB2_16 Depth=1
	movw	r0, :lower16:skip2.4
	movt	r0, :upper16:skip2.4
	movw	r1, :lower16:patlen.1
	movt	r1, :upper16:patlen.1
	ldr	r1, [r1]
	ldr	r2, [sp, #188]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB2_19:                               @   in Loop: Header=BB2_16 Depth=1
	b	.LBB2_20
.LBB2_20:                               @   in Loop: Header=BB2_16 Depth=1
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
	str	r1, [sp, #220]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB2_25
@ BB#21:                                @   in Loop: Header=BB2_16 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_23
@ BB#22:                                @   in Loop: Header=BB2_16 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #220]
	b	.LBB2_24
.LBB2_23:                               @   in Loop: Header=BB2_16 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #220]
.LBB2_24:                               @   in Loop: Header=BB2_16 Depth=1
	b	.LBB2_25
.LBB2_25:                               @   in Loop: Header=BB2_16 Depth=1
	ldr	r0, [sp, #220]
	str	r0, [sp, #188]
	b	.LBB2_16
.LBB2_26:
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #224
	bfc	sp, #0, #4
	movw	r2, :lower16:patlen.1
	movt	r2, :upper16:patlen.1
	str	r0, [sp, #164]
	str	r1, [sp, #140]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [sp, #140]
	sub	r0, r0, r1
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB4_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB4_23
.LBB4_2:
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #164]
	add	r0, r1, r0
	str	r0, [sp, #164]
.LBB4_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_4 Depth 2
                                        @     Child Loop BB4_9 Depth 2
	b	.LBB4_4
.LBB4_4:                                @   Parent Loop BB4_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip.3
	movt	r0, :upper16:skip.3
	movw	r1, #2
	ldr	r2, [sp, #164]
	ldr	r3, [sp, #108]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip.3
	movt	r12, :upper16:skip.3
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [sp, #108]
	add	r2, r12, r2
	str	r2, [sp, #108]
	cmp	r2, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r1, [sp, #64]           @ 4-byte Spill
	str	r3, [sp, #60]           @ 4-byte Spill
	bge	.LBB4_6
@ BB#5:                                 @   in Loop: Header=BB4_4 Depth=2
	b	.LBB4_4
.LBB4_6:                                @   in Loop: Header=BB4_3 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	sub	r0, r0, r2
	cmp	r1, r0
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB4_8
@ BB#7:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB4_23
.LBB4_8:                                @   in Loop: Header=BB4_3 Depth=1
	movw	r0, :lower16:patlen.1
	movt	r0, :upper16:patlen.1
	movw	r1, #32767
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r3, sp, #112
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x7fff
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	sub	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #76]
	ldr	r0, [sp, #164]
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #76]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #72]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB4_9:                                @   Parent Loop BB4_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #76]
	vdup.32	q8, r2
	add	r3, sp, #80
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
	str	r1, [sp, #204]
	cmp	r12, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	beq	.LBB4_14
@ BB#10:                                @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_12
@ BB#11:                                @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB4_13
.LBB4_12:                               @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #204]
.LBB4_13:                               @   in Loop: Header=BB4_9 Depth=2
	b	.LBB4_14
.LBB4_14:                               @   in Loop: Header=BB4_9 Depth=2
	movw	r0, #0
	ldr	r1, [sp, #204]
	str	r1, [sp, #76]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB4_16
@ BB#15:                                @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #76]
	add	r0, r0, r1
	ldrb	r0, [r0]
	bl	toupper
	movw	r1, :lower16:pat.2
	movt	r1, :upper16:pat.2
	ldr	r1, [r1]
	ldr	lr, [sp, #76]
	add	r1, r1, lr
	ldrb	r1, [r1]
	cmp	r0, r1
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB4_16:                               @   in Loop: Header=BB4_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB4_18
@ BB#17:                                @   in Loop: Header=BB4_9 Depth=2
	b	.LBB4_9
.LBB4_18:                               @   in Loop: Header=BB4_3 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #0
	bge	.LBB4_20
@ BB#19:
	ldr	r0, [sp, #72]
	str	r0, [sp, #168]
	b	.LBB4_23
.LBB4_20:                               @   in Loop: Header=BB4_3 Depth=1
	movw	r0, :lower16:skip2.4
	movt	r0, :upper16:skip2.4
	ldr	r0, [r0]
	ldr	r1, [sp, #108]
	add	r0, r1, r0
	str	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB4_22
@ BB#21:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB4_23
.LBB4_22:                               @   in Loop: Header=BB4_3 Depth=1
	b	.LBB4_3
.LBB4_23:
	ldr	r0, [sp, #168]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	sub	sp, sp, #184
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #152]
	movw	r2, :lower16:pat.5
	movt	r2, :upper16:pat.5
	str	r0, [r2]
	ldr	r0, [sp, #152]
	str	r1, [sp, #88]           @ 4-byte Spill
	bl	strlen
	movw	r1, :lower16:patlen.6
	movt	r1, :upper16:patlen.6
	str	r0, [r1]
	vmov.i32	q8, #0x0
	add	r0, sp, #128
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #88]           @ 4-byte Reload
	str	r0, [sp, #124]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #124]
	cmp	r0, #255
	bgt	.LBB5_4
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	movw	r0, :lower16:skip.7
	movt	r0, :upper16:skip.7
	movw	r1, #2
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	ldr	r2, [r2]
	ldr	r3, [sp, #124]
	movw	r12, :lower16:skip.7
	movt	r12, :upper16:skip.7
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #84]           @ 4-byte Spill
	str	r1, [sp, #80]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #124]
	vdup.32	q8, r0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #124]
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_1
.LBB5_4:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #124]
.LBB5_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	ldr	r1, [sp, #124]
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
	ldr	r3, [sp, #124]
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
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r1, [sp, #56]           @ 4-byte Spill
	str	r12, [sp, #52]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB5_5 Depth=1
	ldr	r0, [sp, #124]
	add	r1, sp, #128
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #124]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
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
	str	r4, [sp, #92]
	mov	r5, r4
	movw	r6, :lower16:skip.7
	movt	r6, :upper16:skip.7
	add	r4, r6, r4, lsl #2
	str	r3, [r4]
	ldr	r2, [r2]
	str	r2, [r1]
	str	r0, [sp, #124]
	str	r5, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
	str	lr, [sp, #20]           @ 4-byte Spill
.LBB5_9:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	ldr	r1, [sp, #124]
	ldr	r0, [r0]
	sub	r0, r0, #1
	cmp	r1, r0
	bge	.LBB5_19
@ BB#10:                                @   in Loop: Header=BB5_9 Depth=1
	movw	r0, :lower16:pat.5
	movt	r0, :upper16:pat.5
	ldr	r0, [r0]
	ldr	r1, [sp, #124]
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [sp, #92]
	cmp	r0, r1
	bne	.LBB5_12
@ BB#11:                                @   in Loop: Header=BB5_9 Depth=1
	movw	r0, :lower16:skip2.8
	movt	r0, :upper16:skip2.8
	movw	r1, :lower16:patlen.6
	movt	r1, :upper16:patlen.6
	ldr	r1, [r1]
	ldr	r2, [sp, #124]
	sub	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [r0]
.LBB5_12:                               @   in Loop: Header=BB5_9 Depth=1
	b	.LBB5_13
.LBB5_13:                               @   in Loop: Header=BB5_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #124]
	add	r2, sp, #128
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
	str	r1, [sp, #156]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB5_18
@ BB#14:                                @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_16
@ BB#15:                                @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #156]
	b	.LBB5_17
.LBB5_16:                               @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #156]
.LBB5_17:                               @   in Loop: Header=BB5_9 Depth=1
	b	.LBB5_18
.LBB5_18:                               @   in Loop: Header=BB5_9 Depth=1
	ldr	r0, [sp, #156]
	str	r0, [sp, #124]
	b	.LBB5_9
.LBB5_19:
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #224
	bfc	sp, #0, #4
	movw	r2, :lower16:patlen.6
	movt	r2, :upper16:patlen.6
	str	r0, [sp, #164]
	str	r1, [sp, #140]
	ldr	r0, [r2]
	sub	r0, r0, #1
	ldr	r1, [sp, #140]
	sub	r0, r0, r1
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB6_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB6_23
.LBB6_2:
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #164]
	add	r0, r1, r0
	str	r0, [sp, #164]
.LBB6_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_4 Depth 2
                                        @     Child Loop BB6_9 Depth 2
	b	.LBB6_4
.LBB6_4:                                @   Parent Loop BB6_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:skip.7
	movt	r0, :upper16:skip.7
	movw	r1, #2
	ldr	r2, [sp, #164]
	ldr	r3, [sp, #108]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:skip.7
	movt	r12, :upper16:skip.7
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	ldr	r12, [sp, #108]
	add	r2, r12, r2
	str	r2, [sp, #108]
	cmp	r2, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r1, [sp, #64]           @ 4-byte Spill
	str	r3, [sp, #60]           @ 4-byte Spill
	bge	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_4 Depth=2
	b	.LBB6_4
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=1
	movw	r0, #32767
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	sub	r0, r0, r2
	cmp	r1, r0
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB6_8
@ BB#7:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB6_23
.LBB6_8:                                @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:patlen.6
	movt	r0, :upper16:patlen.6
	movw	r1, #32767
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r3, sp, #112
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x7fff
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	sub	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r0, [r0]
	sub	r0, r0, #1
	str	r0, [sp, #76]
	ldr	r0, [sp, #164]
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #76]
	sub	r1, r1, r2
	add	r0, r0, r1
	str	r0, [sp, #72]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB6_9:                                @   Parent Loop BB6_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #76]
	vdup.32	q8, r2
	add	r3, sp, #80
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
	str	r1, [sp, #204]
	cmp	r12, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	beq	.LBB6_14
@ BB#10:                                @   in Loop: Header=BB6_9 Depth=2
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_12
@ BB#11:                                @   in Loop: Header=BB6_9 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB6_13
.LBB6_12:                               @   in Loop: Header=BB6_9 Depth=2
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #204]
.LBB6_13:                               @   in Loop: Header=BB6_9 Depth=2
	b	.LBB6_14
.LBB6_14:                               @   in Loop: Header=BB6_9 Depth=2
	movw	r0, #0
	ldr	r1, [sp, #204]
	str	r1, [sp, #76]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r1, #0
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB6_16
@ BB#15:                                @   in Loop: Header=BB6_9 Depth=2
	movw	r0, :lower16:pat.5
	movt	r0, :upper16:pat.5
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r0, [r0]
	ldr	r2, [sp, #76]
	add	r0, r0, r2
	ldrb	r0, [r0]
	cmp	r1, r0
	movw	r0, #0
	moveq	r0, #1
	str	r0, [sp]                @ 4-byte Spill
.LBB6_16:                               @   in Loop: Header=BB6_9 Depth=2
	ldr	r0, [sp]                @ 4-byte Reload
	tst	r0, #1
	beq	.LBB6_18
@ BB#17:                                @   in Loop: Header=BB6_9 Depth=2
	b	.LBB6_9
.LBB6_18:                               @   in Loop: Header=BB6_3 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #0
	bge	.LBB6_20
@ BB#19:
	ldr	r0, [sp, #72]
	str	r0, [sp, #168]
	b	.LBB6_23
.LBB6_20:                               @   in Loop: Header=BB6_3 Depth=1
	movw	r0, :lower16:skip2.8
	movt	r0, :upper16:skip2.8
	ldr	r0, [r0]
	ldr	r1, [sp, #108]
	add	r0, r1, r0
	str	r0, [sp, #108]
	cmp	r0, #0
	blt	.LBB6_22
@ BB#21:
	movw	r0, #0
	str	r0, [sp, #168]
	b	.LBB6_23
.LBB6_22:                               @   in Loop: Header=BB6_3 Depth=1
	b	.LBB6_3
.LBB6_23:
	ldr	r0, [sp, #168]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #112
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #88]
	str	r1, [sp, #56]           @ 4-byte Spill
	bl	strlen
	movw	r1, :lower16:len
	movt	r1, :upper16:len
	str	r0, [r1]
	vmov.i32	q8, #0x0
	add	r0, sp, #64
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r0, [sp, #60]
.LBB7_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #60]
	cmp	r0, #255
	bhi	.LBB7_4
@ BB#2:                                 @   in Loop: Header=BB7_1 Depth=1
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	movw	r2, :lower16:len
	movt	r2, :upper16:len
	ldr	r2, [r2]
	ldr	r3, [sp, #60]
	movw	r12, :lower16:table
	movt	r12, :upper16:table
	add	r3, r12, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB7_1 Depth=1
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
	b	.LBB7_1
.LBB7_4:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #60]
.LBB7_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:len
	movt	r0, :upper16:len
	ldr	r1, [sp, #60]
	ldr	r0, [r0]
	cmp	r1, r0
	bhs	.LBB7_13
@ BB#6:                                 @   in Loop: Header=BB7_5 Depth=1
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	movw	r2, :lower16:len
	movt	r2, :upper16:len
	ldr	r2, [r2]
	ldr	r3, [sp, #60]
	sub	r2, r2, r3
	sub	r2, r2, #1
	ldr	r12, [sp, #88]
	ldrb	r3, [r12, r3]
	mov	r12, r3
	movw	lr, :lower16:table
	movt	lr, :upper16:table
	add	r3, lr, r3, lsl #2
	str	r2, [r3]
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB7_5 Depth=1
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
	str	r1, [sp, #92]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB7_12
@ BB#8:                                 @   in Loop: Header=BB7_5 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_10
@ BB#9:                                 @   in Loop: Header=BB7_5 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #92]
	b	.LBB7_11
.LBB7_10:                               @   in Loop: Header=BB7_5 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #92]
.LBB7_11:                               @   in Loop: Header=BB7_5 Depth=1
	b	.LBB7_12
.LBB7_12:                               @   in Loop: Header=BB7_5 Depth=1
	ldr	r0, [sp, #92]
	str	r0, [sp, #60]
	b	.LBB7_5
.LBB7_13:
	movw	r0, :lower16:findme
	movt	r0, :upper16:findme
	ldr	r1, [sp, #88]
	str	r1, [r0]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #176
	bfc	sp, #0, #4
	movw	r1, :lower16:len
	movt	r1, :upper16:len
	str	r0, [sp, #148]
	ldr	r0, [r1]
	sub	r0, r0, #1
	str	r0, [sp, #92]
	ldr	r0, [sp, #148]
	bl	strlen
	str	r0, [sp, #60]
.LBB8_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB8_3 Depth 2
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #60]
	cmp	r0, r1
	bhs	.LBB8_18
@ BB#2:                                 @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_3
.LBB8_3:                                @   Parent Loop BB8_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #0
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #60]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	bhs	.LBB8_5
@ BB#4:                                 @   in Loop: Header=BB8_3 Depth=2
	movw	r0, :lower16:table
	movt	r0, :upper16:table
	movw	r1, #2
	ldr	r2, [sp, #148]
	ldr	r3, [sp, #92]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	movw	r12, :lower16:table
	movt	r12, :upper16:table
	add	r2, r12, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [sp, #124]
	cmp	r2, #0
	movw	r2, #0
	movhi	r2, #1
	str	r0, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
	str	r3, [sp, #44]           @ 4-byte Spill
	str	r2, [sp, #56]           @ 4-byte Spill
.LBB8_5:                                @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #56]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_7
@ BB#6:                                 @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #124]
	vdup.32	q8, r0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #92]
	vdup.32	q8, r2
	add	r3, sp, #96
	vst1.64	{d16, d17}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r0
	str	r0, [sp, #92]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB8_3
.LBB8_7:                                @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #124]
	cmp	r0, r1
	bne	.LBB8_17
@ BB#8:                                 @   in Loop: Header=BB8_1 Depth=1
	movw	r0, :lower16:len
	movt	r0, :upper16:len
	movw	r1, :lower16:findme
	movt	r1, :upper16:findme
	ldr	r1, [r1]
	ldr	r2, [sp, #148]
	ldr	r3, [sp, #92]
	ldr	r12, [r0]
	sub	r3, r3, r12
	add	r3, r3, #1
	add	r2, r2, r3
	str	r2, [sp, #88]
	ldr	r0, [r0]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #12]           @ 4-byte Reload
	bl	strncmp
	movw	r1, #0
	cmp	r1, r0
	bne	.LBB8_10
@ BB#9:
	ldr	r0, [sp, #88]
	str	r0, [sp, #152]
	b	.LBB8_19
.LBB8_10:                               @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #92]
	add	r2, sp, #96
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
	str	r1, [sp, #156]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB8_15
@ BB#11:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_13
@ BB#12:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #156]
	b	.LBB8_14
.LBB8_13:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #156]
.LBB8_14:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_15
.LBB8_15:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #156]
	str	r0, [sp, #92]
@ BB#16:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_17
.LBB8_17:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_1
.LBB8_18:
	movw	r0, #0
	str	r0, [sp, #152]
.LBB8_19:
	ldr	r0, [sp, #152]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #640
	bfc	sp, #0, #4
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #592
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #588]
	movw	r1, :lower16:.Lmain.find_strings
	movt	r1, :upper16:.Lmain.find_strings
	add	r2, sp, #352
	mov	r3, #232
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r3
	add	r4, sp, #64
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	bl	memcpy
	movw	r1, :lower16:.Lmain.search_strings
	movt	r1, :upper16:.Lmain.search_strings
	add	r2, sp, #124
	mov	r3, #228
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r3
	bl	memcpy
	add	r1, sp, #96
	add	lr, sp, #64
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #88]           @ 4-byte Reload
	str	r1, [sp, #92]
	str	r0, [sp, #56]           @ 4-byte Spill
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	add	r1, sp, #352
	movw	r2, #2
	ldr	r3, [sp, #92]
	add	r12, sp, #352
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3]
	cmp	r3, r0
	str	r2, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
	beq	.LBB9_11
@ BB#2:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, :lower16:.L.str.104
	movt	r0, :upper16:.L.str.104
	add	r1, sp, #124
	movw	r2, #2
	ldr	r3, [sp, #92]
	add	r12, sp, #352
	ldr	r3, [r12, r3, lsl #2]
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r3
	str	r12, [sp, #40]          @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	bl	init_search
	ldr	r0, [sp, #92]
	add	r1, sp, #124
	ldr	r0, [r1, r0, lsl #2]
	str	r1, [sp, #28]           @ 4-byte Spill
	bl	strsearch
	str	r0, [sp, #584]
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r3, [r2, r1, lsl #2]
	movw	r12, :lower16:.L.str.105
	movt	r12, :upper16:.L.str.105
	movw	lr, :lower16:.L.str.106
	movt	lr, :upper16:.L.str.106
	cmp	r0, #0
	movne	lr, r12
	ldr	r0, [sp, #28]           @ 4-byte Reload
	add	r1, r0, r1, lsl #2
	ldr	r1, [r1]
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	mov	r2, lr
	ldr	r3, [sp, #24]           @ 4-byte Reload
	bl	printf
	movw	r1, #0
	ldr	r2, [sp, #584]
	cmp	r2, r1
	str	r0, [sp, #20]           @ 4-byte Spill
	beq	.LBB9_4
@ BB#3:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, :lower16:.L.str.107
	movt	r0, :upper16:.L.str.107
	ldr	r1, [sp, #584]
	bl	printf
	str	r0, [sp, #16]           @ 4-byte Spill
.LBB9_4:                                @   in Loop: Header=BB9_1 Depth=1
	movw	r0, #10
	bl	putchar
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#5:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #92]
	vdup.32	q8, r1
	add	r2, sp, #96
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
	str	r1, [sp, #620]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB9_10
@ BB#6:                                 @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB9_8
@ BB#7:                                 @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #620]
	b	.LBB9_9
.LBB9_8:                                @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #620]
.LBB9_9:                                @   in Loop: Header=BB9_1 Depth=1
	b	.LBB9_10
.LBB9_10:                               @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #620]
	str	r0, [sp, #92]
	b	.LBB9_1
.LBB9_11:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	.long	.L.str.22
	.long	.L.str.23
	.long	.L.str.24
	.long	.L.str.25
	.long	.L.str.26
	.long	.L.str.27
	.long	.L.str.28
	.long	.L.str.26
	.long	.L.str.29
	.long	.L.str.30
	.long	.L.str.31
	.long	.L.str.32
	.long	.L.str.33
	.long	.L.str.34
	.long	.L.str.35
	.long	.L.str.18
	.long	.L.str.36
	.long	.L.str.37
	.long	.L.str.38
	.long	.L.str.39
	.long	.L.str.40
	.long	.L.str.41
	.long	.L.str.42
	.long	.L.str.43
	.long	.L.str.44
	.long	.L.str.45
	.long	.L.str.46
	.long	.L.str.47
	.long	.L.str.48
	.long	.L.str.49
	.long	.L.str.50
	.long	.L.str.51
	.long	.L.str.52
	.long	0
	.size	.Lmain.find_strings, 232

	.type	.Lmain.search_strings,%object @ @main.search_strings
	.p2align	2
.Lmain.search_strings:
	.long	.L.str.53
	.long	.L.str.54
	.long	.L.str.55
	.long	.L.str.56
	.long	.L.str.57
	.long	.L.str.58
	.long	.L.str.58
	.long	.L.str.58
	.long	.L.str.58
	.long	.L.str.58
	.long	.L.str.9
	.long	.L.str.10
	.long	.L.str.59
	.long	.L.str.60
	.long	.L.str.61
	.long	.L.str.62
	.long	.L.str.63
	.long	.L.str.64
	.long	.L.str.65
	.long	.L.str.66
	.long	.L.str.67
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
	.long	.L.str.87
	.long	.L.str.88
	.long	.L.str.89
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
	.size	.Lmain.search_strings, 228

	.type	.L.str.105,%object      @ @.str.105
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.105:
	.zero	1
	.size	.L.str.105, 1

	.type	.L.str.106,%object      @ @.str.106
.L.str.106:
	.asciz	" not"
	.size	.L.str.106, 5

	.type	.L.str.104,%object      @ @.str.104
.L.str.104:
	.asciz	"\"%s\" is%s in \"%s\""
	.size	.L.str.104, 18

	.type	.L.str.107,%object      @ @.str.107
.L.str.107:
	.asciz	" [\"%s\"]"
	.size	.L.str.107, 8

	.type	.L.str.53,%object       @ @.str.53
.L.str.53:
	.asciz	"cabbie"
	.size	.L.str.53, 7

	.type	.L.str.54,%object       @ @.str.54
.L.str.54:
	.asciz	"your"
	.size	.L.str.54, 5

	.type	.L.str.55,%object       @ @.str.55
.L.str.55:
	.asciz	"It isn't here"
	.size	.L.str.55, 14

	.type	.L.str.56,%object       @ @.str.56
.L.str.56:
	.asciz	"But it is here"
	.size	.L.str.56, 15

	.type	.L.str.57,%object       @ @.str.57
.L.str.57:
	.asciz	"hodad"
	.size	.L.str.57, 6

	.type	.L.str.58,%object       @ @.str.58
.L.str.58:
	.asciz	"yoohoo"
	.size	.L.str.58, 7

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"xx"
	.size	.L.str.9, 3

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"x"
	.size	.L.str.10, 2

	.type	.L.str.59,%object       @ @.str.59
.L.str.59:
	.asciz	"."
	.size	.L.str.59, 2

	.type	.L.str.60,%object       @ @.str.60
.L.str.60:
	.asciz	"In recent years, the field of photonic "
	.size	.L.str.60, 40

	.type	.L.str.61,%object       @ @.str.61
.L.str.61:
	.asciz	"crystals has found new"
	.size	.L.str.61, 23

	.type	.L.str.62,%object       @ @.str.62
.L.str.62:
	.asciz	"applications in the RF and microwave"
	.size	.L.str.62, 37

	.type	.L.str.63,%object       @ @.str.63
.L.str.63:
	.asciz	"regime. A new type of metallic"
	.size	.L.str.63, 31

	.type	.L.str.64,%object       @ @.str.64
.L.str.64:
	.asciz	"electromagnetic crystal has been"
	.size	.L.str.64, 33

	.type	.L.str.65,%object       @ @.str.65
.L.str.65:
	.asciz	"developed that is having a"
	.size	.L.str.65, 27

	.type	.L.str.66,%object       @ @.str.66
.L.str.66:
	.asciz	"significant impact on the field of"
	.size	.L.str.66, 35

	.type	.L.str.67,%object       @ @.str.67
.L.str.67:
	.asciz	"antennas. It consists of a"
	.size	.L.str.67, 27

	.type	.L.str.68,%object       @ @.str.68
.L.str.68:
	.asciz	"conductive surface, covered with a"
	.size	.L.str.68, 35

	.type	.L.str.69,%object       @ @.str.69
.L.str.69:
	.asciz	"special texture which alters its"
	.size	.L.str.69, 33

	.type	.L.str.70,%object       @ @.str.70
.L.str.70:
	.asciz	"electromagnetic properties. Made of solid"
	.size	.L.str.70, 42

	.type	.L.str.71,%object       @ @.str.71
.L.str.71:
	.asciz	"metal, the structure"
	.size	.L.str.71, 21

	.type	.L.str.72,%object       @ @.str.72
.L.str.72:
	.asciz	"conducts DC currents, but over a"
	.size	.L.str.72, 33

	.type	.L.str.73,%object       @ @.str.73
.L.str.73:
	.asciz	"particular frequency range it does"
	.size	.L.str.73, 35

	.type	.L.str.74,%object       @ @.str.74
.L.str.74:
	.asciz	"not conduct AC currents. It does not"
	.size	.L.str.74, 37

	.type	.L.str.75,%object       @ @.str.75
.L.str.75:
	.asciz	"reverse the phase of reflected"
	.size	.L.str.75, 31

	.type	.L.str.76,%object       @ @.str.76
.L.str.76:
	.asciz	"waves, and the effective image currents"
	.size	.L.str.76, 40

	.type	.L.str.77,%object       @ @.str.77
.L.str.77:
	.asciz	"appear in-phase, rather than"
	.size	.L.str.77, 29

	.type	.L.str.78,%object       @ @.str.78
.L.str.78:
	.asciz	"out-of-phase as they are on normal"
	.size	.L.str.78, 35

	.type	.L.str.79,%object       @ @.str.79
.L.str.79:
	.asciz	"conductors. Furthermore, surface"
	.size	.L.str.79, 33

	.type	.L.str.80,%object       @ @.str.80
.L.str.80:
	.asciz	"waves do not propagate, and instead"
	.size	.L.str.80, 36

	.type	.L.str.81,%object       @ @.str.81
.L.str.81:
	.asciz	"radiate efficiently into free"
	.size	.L.str.81, 30

	.type	.L.str.82,%object       @ @.str.82
.L.str.82:
	.asciz	"space. This new material, termed a"
	.size	.L.str.82, 35

	.type	.L.str.83,%object       @ @.str.83
.L.str.83:
	.asciz	"high-impedance surface, provides"
	.size	.L.str.83, 33

	.type	.L.str.84,%object       @ @.str.84
.L.str.84:
	.asciz	"a useful new ground plane for novel"
	.size	.L.str.84, 36

	.type	.L.str.85,%object       @ @.str.85
.L.str.85:
	.asciz	"low-profile antennas and other"
	.size	.L.str.85, 31

	.type	.L.str.86,%object       @ @.str.86
.L.str.86:
	.asciz	"electromagnetic structures."
	.size	.L.str.86, 28

	.type	.L.str.87,%object       @ @.str.87
.L.str.87:
	.asciz	"The recent protests about the Michigamua"
	.size	.L.str.87, 41

	.type	.L.str.88,%object       @ @.str.88
.L.str.88:
	.asciz	"student organization have raised an"
	.size	.L.str.88, 36

	.type	.L.str.89,%object       @ @.str.89
.L.str.89:
	.asciz	"important question as to the proper nature"
	.size	.L.str.89, 43

	.type	.L.str.90,%object       @ @.str.90
.L.str.90:
	.asciz	"and scope of University involvement"
	.size	.L.str.90, 36

	.type	.L.str.91,%object       @ @.str.91
.L.str.91:
	.asciz	"with student organizations. Accordingly"
	.size	.L.str.91, 40

	.type	.L.str.92,%object       @ @.str.92
.L.str.92:
	.asciz	"the panel described in my Statement of"
	.size	.L.str.92, 39

	.type	.L.str.93,%object       @ @.str.93
.L.str.93:
	.asciz	"February 25, 2000 that is considering the"
	.size	.L.str.93, 42

	.type	.L.str.94,%object       @ @.str.94
.L.str.94:
	.asciz	"question of privileged space also will"
	.size	.L.str.94, 39

	.type	.L.str.95,%object       @ @.str.95
.L.str.95:
	.asciz	"consider under what circumstances and in"
	.size	.L.str.95, 41

	.type	.L.str.96,%object       @ @.str.96
.L.str.96:
	.asciz	"what ways the University, its"
	.size	.L.str.96, 30

	.type	.L.str.97,%object       @ @.str.97
.L.str.97:
	.asciz	"administrators and faculty members should"
	.size	.L.str.97, 42

	.type	.L.str.98,%object       @ @.str.98
.L.str.98:
	.asciz	"be associated with such organizations"
	.size	.L.str.98, 38

	.type	.L.str.99,%object       @ @.str.99
.L.str.99:
	.asciz	"and it will recommend guiding principles"
	.size	.L.str.99, 41

	.type	.L.str.100,%object      @ @.str.100
.L.str.100:
	.asciz	"in this regard. The University's"
	.size	.L.str.100, 33

	.type	.L.str.101,%object      @ @.str.101
.L.str.101:
	.asciz	"Executive Officers and I will then decide"
	.size	.L.str.101, 42

	.type	.L.str.102,%object      @ @.str.102
.L.str.102:
	.asciz	"whether and how to implement such"
	.size	.L.str.102, 34

	.type	.L.str.103,%object      @ @.str.103
.L.str.103:
	.asciz	"principles."
	.size	.L.str.103, 12

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"abb"
	.size	.L.str, 4

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"you"
	.size	.L.str.1, 4

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"not"
	.size	.L.str.2, 4

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"it"
	.size	.L.str.3, 3

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"dad"
	.size	.L.str.4, 4

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"yoo"
	.size	.L.str.5, 4

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"hoo"
	.size	.L.str.6, 4

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"oo"
	.size	.L.str.7, 3

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"oh"
	.size	.L.str.8, 3

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"field"
	.size	.L.str.11, 6

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"new"
	.size	.L.str.12, 4

	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	"row"
	.size	.L.str.13, 4

	.type	.L.str.14,%object       @ @.str.14
.L.str.14:
	.asciz	"regime"
	.size	.L.str.14, 7

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"boom"
	.size	.L.str.15, 5

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"that"
	.size	.L.str.16, 5

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"impact"
	.size	.L.str.17, 7

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"and"
	.size	.L.str.18, 4

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"zoom"
	.size	.L.str.19, 5

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"texture"
	.size	.L.str.20, 8

	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	"magnet"
	.size	.L.str.21, 7

	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"doom"
	.size	.L.str.22, 5

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	"loom"
	.size	.L.str.23, 5

	.type	.L.str.24,%object       @ @.str.24
.L.str.24:
	.asciz	"freq"
	.size	.L.str.24, 5

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"current"
	.size	.L.str.25, 8

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"phase"
	.size	.L.str.26, 6

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"images"
	.size	.L.str.27, 7

	.type	.L.str.28,%object       @ @.str.28
.L.str.28:
	.asciz	"appears"
	.size	.L.str.28, 8

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	"conductor"
	.size	.L.str.29, 10

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"wavez"
	.size	.L.str.30, 6

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"normal"
	.size	.L.str.31, 7

	.type	.L.str.32,%object       @ @.str.32
.L.str.32:
	.asciz	"free"
	.size	.L.str.32, 5

	.type	.L.str.33,%object       @ @.str.33
.L.str.33:
	.asciz	"termed"
	.size	.L.str.33, 7

	.type	.L.str.34,%object       @ @.str.34
.L.str.34:
	.asciz	"provide"
	.size	.L.str.34, 8

	.type	.L.str.35,%object       @ @.str.35
.L.str.35:
	.asciz	"for"
	.size	.L.str.35, 4

	.type	.L.str.36,%object       @ @.str.36
.L.str.36:
	.asciz	"struct"
	.size	.L.str.36, 7

	.type	.L.str.37,%object       @ @.str.37
.L.str.37:
	.asciz	"about"
	.size	.L.str.37, 6

	.type	.L.str.38,%object       @ @.str.38
.L.str.38:
	.asciz	"have"
	.size	.L.str.38, 5

	.type	.L.str.39,%object       @ @.str.39
.L.str.39:
	.asciz	"proper"
	.size	.L.str.39, 7

	.type	.L.str.40,%object       @ @.str.40
.L.str.40:
	.asciz	"involve"
	.size	.L.str.40, 8

	.type	.L.str.41,%object       @ @.str.41
.L.str.41:
	.asciz	"describedly"
	.size	.L.str.41, 12

	.type	.L.str.42,%object       @ @.str.42
.L.str.42:
	.asciz	"thats"
	.size	.L.str.42, 6

	.type	.L.str.43,%object       @ @.str.43
.L.str.43:
	.asciz	"spaces"
	.size	.L.str.43, 7

	.type	.L.str.44,%object       @ @.str.44
.L.str.44:
	.asciz	"circumstance"
	.size	.L.str.44, 13

	.type	.L.str.45,%object       @ @.str.45
.L.str.45:
	.asciz	"the"
	.size	.L.str.45, 4

	.type	.L.str.46,%object       @ @.str.46
.L.str.46:
	.asciz	"member"
	.size	.L.str.46, 7

	.type	.L.str.47,%object       @ @.str.47
.L.str.47:
	.asciz	"such"
	.size	.L.str.47, 5

	.type	.L.str.48,%object       @ @.str.48
.L.str.48:
	.asciz	"guide"
	.size	.L.str.48, 6

	.type	.L.str.49,%object       @ @.str.49
.L.str.49:
	.asciz	"regard"
	.size	.L.str.49, 7

	.type	.L.str.50,%object       @ @.str.50
.L.str.50:
	.asciz	"officers"
	.size	.L.str.50, 9

	.type	.L.str.51,%object       @ @.str.51
.L.str.51:
	.asciz	"implement"
	.size	.L.str.51, 10

	.type	.L.str.52,%object       @ @.str.52
.L.str.52:
	.asciz	"principalities"
	.size	.L.str.52, 15


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
