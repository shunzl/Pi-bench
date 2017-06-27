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
	.globl	bit_count
	.p2align	2
	.type	bit_count,%function
	.code	32                      @ @bit_count
bit_count:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #152
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #60]
	str	r1, [sp, #28]
	ldr	r0, [sp, #60]
	cmp	r0, #0
	beq	.LBB0_15
@ BB#1:
	b	.LBB0_2
.LBB0_2:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #3
	ldr	r1, [sp, #28]
	vdup.32	q8, r1
	add	r2, sp, #32
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
	str	r1, [sp, #124]
	cmp	r3, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB0_7
@ BB#3:                                 @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_5
@ BB#4:                                 @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #124]
	b	.LBB0_6
.LBB0_5:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #124]
.LBB0_6:                                @   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #124]
	str	r0, [sp, #28]
@ BB#8:                                 @   in Loop: Header=BB0_2 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #60]
	vdup.32	q8, r1
	add	r2, sp, #64
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #60]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vsub.i32	q9, q8, q9
	sub	r3, r3, #1
	vand	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r2, r12
	add	r12, r12, lr
	and	r1, r1, r3
	mul	r0, r1, r0
	str	r1, [sp, #92]
	cmp	r12, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB0_13
@ BB#9:                                 @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_11
@ BB#10:                                @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #92]
	b	.LBB0_12
.LBB0_11:                               @   in Loop: Header=BB0_2 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #92]
.LBB0_12:                               @   in Loop: Header=BB0_2 Depth=1
	b	.LBB0_13
.LBB0_13:                               @   in Loop: Header=BB0_2 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #92]
	str	r1, [sp, #60]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB0_2
@ BB#14:
	b	.LBB0_15
.LBB0_15:
	ldr	r0, [sp, #28]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	bit_count, .Lfunc_end0-bit_count
	.cantunwind
	.fnend

	.globl	bitcount
	.p2align	2
	.type	bitcount,%function
	.code	32                      @ @bitcount
bitcount:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #72
	bfc	sp, #0, #4
	movw	r1, #3
	str	r0, [sp, #12]
	vdup.32	q8, r0
	add	r2, sp, #16
	vst1.64	{d16, d17}, [r2:128]
	vmov.i8	q9, #0xaa
	vand	q8, q8, q9
	movw	r3, #43690
	movt	r3, #43690
	and	r0, r0, r3
	ldr	r3, [sp, #12]
	vdup.32	q9, r3
	vst1.64	{d18, d19}, [r2:128]
	vmov.i8	q10, #0x55
	vand	q9, q9, q10
	movw	r12, #21845
	movt	r12, #21845
	and	r3, r3, r12
	vsra.u32	q9, q8, #1
	vst1.64	{d18, d19}, [r2]
	add	r0, r3, r0, lsr #1
	str	r0, [sp, #12]
	vld1.64	{d16, d17}, [r2:128]
	vmov.i8	q9, #0xcc
	vand	q9, q8, q9
	movw	r3, #52428
	movt	r3, #52428
	and	r3, r0, r3
	vmov.i8	q10, #0x33
	vand	q8, q8, q10
	movw	r12, #13107
	movt	r12, #13107
	and	r0, r0, r12
	vsra.u32	q8, q9, #2
	vst1.64	{d16, d17}, [r2]
	add	r0, r0, r3, lsr #2
	str	r0, [sp, #12]
	vld1.64	{d16, d17}, [r2:128]
	vmov.i8	q9, #0xf0
	vand	q9, q8, q9
	movw	r3, #61680
	movt	r3, #28912
	and	r3, r0, r3
	vmov.i8	q10, #0xf
	vand	q8, q8, q10
	movw	r12, #3855
	movt	r12, #3855
	and	r0, r0, r12
	vsra.u32	q8, q9, #4
	vst1.64	{d16, d17}, [r2]
	add	r0, r0, r3, lsr #4
	str	r0, [sp, #12]
	vld1.64	{d16, d17}, [r2:128]
	vorr	q9, q8, q8
	vbic.i16	q9, #0xff
	movw	r3, #65280
	movt	r3, #7936
	and	r3, r0, r3
	vbic.i16	q8, #0xff00
	uxtb16	r0, r0
	vsra.u32	q8, q9, #8
	vst1.64	{d16, d17}, [r2]
	add	r0, r0, r3, lsr #8
	str	r0, [sp, #12]
	vld1.64	{d16, d17}, [r2:128]
	vmvn.i32	q9, #0xffff
	vand	q9, q8, q9
	lsr	r3, r0, #16
	vmov.i32	q10, #0xffff
	vand	q8, q8, q10
	uxth	r0, r0
	vsra.u32	q8, q9, #16
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d22, d16
	vmov.32	r2, d22[0]
	vmov.32	r12, d22[1]
	vmov.f64	d22, d17
	vmov.32	lr, d22[0]
	add	r12, r2, r12
	add	r12, r12, lr
	add	r0, r3, r0
	mul	r1, r0, r1
	str	r0, [sp, #44]
	cmp	r12, r1
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r12, [sp]               @ 4-byte Spill
	beq	.LBB1_5
@ BB#1:
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_3
@ BB#2:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #44]
	b	.LBB1_4
.LBB1_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #44]
.LBB1_4:
	b	.LBB1_5
.LBB1_5:
	ldr	r0, [sp, #44]
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	bitcount, .Lfunc_end1-bitcount
	.cantunwind
	.fnend

	.globl	ntbl_bitcount
	.p2align	2
	.type	ntbl_bitcount,%function
	.code	32                      @ @ntbl_bitcount
ntbl_bitcount:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #176
	bfc	sp, #0, #4
	str	r0, [sp, #156]
	vdup.32	q8, r0
	add	r1, sp, #160
	vst1.64	{d16, d17}, [r1:128]
	and	r0, r0, #15
	movw	r2, :lower16:bits
	movt	r2, :upper16:bits
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #240
	ldrb	r3, [r2, r3, lsr #4]
	vdup.32	q8, r0
	add	r12, sp, #128
	vst1.32	{d16, d17}, [r12]
	vdup.32	q8, r3
	add	r12, sp, #112
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #3840
	ldrb	r3, [r2, r3, lsr #8]
	vdup.32	q8, r3
	add	r12, sp, #96
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #61440
	ldrb	r3, [r2, r3, lsr #12]
	vdup.32	q8, r3
	add	r12, sp, #80
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #983040
	ldrb	r3, [r2, r3, lsr #16]
	vdup.32	q8, r3
	add	r12, sp, #64
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #15728640
	ldrb	r3, [r2, r3, lsr #20]
	vdup.32	q8, r3
	add	r12, sp, #48
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #251658240
	ldrb	r3, [r2, r3, lsr #24]
	vdup.32	q8, r3
	add	r12, sp, #32
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r1, [r2, r3, lsr #28]
	mov	r2, r1
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r1, sp, #16
	vst1.32	{d16, d17}, [r1]
	add	r0, r0, r2
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	ntbl_bitcount, .Lfunc_end2-ntbl_bitcount
	.cantunwind
	.fnend

	.globl	BW_btbl_bitcount
	.p2align	2
	.type	BW_btbl_bitcount,%function
	.code	32                      @ @BW_btbl_bitcount
BW_btbl_bitcount:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #112
	bfc	sp, #0, #4
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	movw	r0, :lower16:bits
	movt	r0, :upper16:bits
	ldrb	r1, [sp, #88]
	ldrb	r2, [sp, #89]
	ldrb	r1, [r0, r1]
	ldrb	r2, [r0, r2]
	vdup.32	q8, r1
	add	r3, sp, #64
	vst1.32	{d16, d17}, [r3]
	vdup.32	q8, r2
	add	r3, sp, #48
	vst1.32	{d16, d17}, [r3]
	add	r1, r1, r2
	ldrb	r2, [sp, #91]
	ldrb	r2, [r0, r2]
	vdup.32	q8, r2
	add	r3, sp, #32
	vst1.32	{d16, d17}, [r3]
	add	r1, r1, r2
	ldrb	r2, [sp, #90]
	ldrb	r0, [r0, r2]
	mov	r2, r0
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r0, sp, #16
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, r2
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end3:
	.size	BW_btbl_bitcount, .Lfunc_end3-BW_btbl_bitcount
	.cantunwind
	.fnend

	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,%function
	.code	32                      @ @AR_btbl_bitcount
AR_btbl_bitcount:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #168
	bfc	sp, #0, #4
	movw	r1, #3
	str	r0, [sp, #108]
	add	r0, sp, #108
	str	r0, [sp, #104]
	orr	r0, r0, #1
	str	r0, [sp, #104]
	ldrb	r0, [sp, #108]
	movw	r2, :lower16:bits
	movt	r2, :upper16:bits
	ldrb	r0, [r2, r0]
	str	r0, [sp, #76]
	ldr	r0, [sp, #104]
	add	r3, r0, #1
	str	r3, [sp, #104]
	ldrb	r0, [r0]
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #76]
	vdup.32	q8, r3
	add	r12, sp, #80
	vst1.64	{d16, d17}, [r12:128]
	vdup.32	q9, r0
	add	lr, sp, #48
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r0
	str	r0, [sp, #76]
	ldr	r0, [sp, #104]
	add	r3, r0, #1
	str	r3, [sp, #104]
	ldrb	r0, [r0]
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #76]
	vld1.64	{d16, d17}, [r12:128]
	vdup.32	q9, r0
	add	lr, sp, #32
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r0
	str	r0, [sp, #76]
	ldr	r3, [sp, #104]
	ldrb	r3, [r3]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	vld1.64	{d16, d17}, [r12:128]
	vdup.32	q9, r2
	add	r2, sp, #16
	vst1.32	{d18, d19}, [r2]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r2, r12
	add	r12, r12, lr
	add	r0, r0, r3
	mul	r1, r0, r1
	str	r0, [sp, #140]
	cmp	r12, r1
	str	r0, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB4_5
@ BB#1:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_3
@ BB#2:
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #140]
	b	.LBB4_4
.LBB4_3:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #140]
.LBB4_4:
	b	.LBB4_5
.LBB4_5:
	ldr	r0, [sp, #140]
	str	r0, [sp, #76]
	ldr	r0, [sp, #76]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end4:
	.size	AR_btbl_bitcount, .Lfunc_end4-AR_btbl_bitcount
	.cantunwind
	.fnend

	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,%function
	.code	32                      @ @ntbl_bitcnt
ntbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #184
	bfc	sp, #0, #4
	mov	r6, sp
	add	r1, r6, #60
	movw	r2, #3
	movw	r3, #4
	str	r0, [r1, #32]
	vdup.32	q8, r0
	add	r12, r6, #96
	vst1.64	{d16, d17}, [r12:128]
	and	r0, r0, #15
	movw	lr, :lower16:bits.1
	movt	lr, :upper16:bits.1
	ldrb	r0, [lr, r0]
	str	r0, [r1]
	ldr	r0, [r1, #32]
	vdup.32	q8, r0
	vst1.64	{d16, d17}, [r12:128]
	vshr.s32	q8, q8, #4
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d18, d16
	vmov.32	r12, d18[0]
	vmov.32	lr, d18[1]
	vmov.f64	d18, d17
	vmov.32	r4, d18[0]
	add	lr, r12, lr
	add	lr, lr, r4
	asr	r0, r0, #4
	mul	r2, r0, r2
	str	r0, [r1, #96]
	cmp	lr, r2
	str	r1, [r6, #44]           @ 4-byte Spill
	str	r12, [r6, #40]          @ 4-byte Spill
	str	r0, [r6, #36]           @ 4-byte Spill
	str	r3, [r6, #32]           @ 4-byte Spill
	str	lr, [r6, #28]           @ 4-byte Spill
	beq	.LBB5_5
@ BB#1:
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r6, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_3
@ BB#2:
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB5_4
.LBB5_3:
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #96]
.LBB5_4:
	b	.LBB5_5
.LBB5_5:
	movw	r0, #0
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #96]
	str	r2, [r1, #32]
	ldr	r2, [r6, #36]           @ 4-byte Reload
	cmp	r0, r2
	beq	.LBB5_12
@ BB#6:
	movw	r0, #3
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #32]
	str	r0, [r6, #24]           @ 4-byte Spill
	mov	r0, r2
	bl	ntbl_bitcnt
	mov	r1, r0
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	lr, [r2]
	vdup.32	q8, lr
	add	r3, r6, #64
	vst1.64	{d16, d17}, [r3:128]
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	vdup.32	q9, r0
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r0, r3
	add	r3, r3, r12
	add	r1, lr, r1
	ldr	r12, [r6, #24]          @ 4-byte Reload
	mul	lr, r1, r12
	str	r1, [r2, #64]
	cmp	r3, lr
	str	r0, [r6, #20]           @ 4-byte Spill
	str	r3, [r6, #16]           @ 4-byte Spill
	str	r1, [r6, #12]           @ 4-byte Spill
	beq	.LBB5_11
@ BB#7:
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_9
@ BB#8:
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
	b	.LBB5_10
.LBB5_9:
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB5_10:
	b	.LBB5_11
.LBB5_11:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	str	r1, [r0]
.LBB5_12:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r0, [r0]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end5:
	.size	ntbl_bitcnt, .Lfunc_end5-ntbl_bitcnt
	.cantunwind
	.fnend

	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,%function
	.code	32                      @ @btbl_bitcnt
btbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #200
	bfc	sp, #0, #4
	mov	r6, sp
	add	r1, r6, #76
	movw	r2, #3
	movw	r3, #8
	str	r0, [r1, #32]
	ldrb	r0, [r1, #32]
	vdup.32	q8, r0
	add	r12, r6, #48
	vst1.32	{d16, d17}, [r12]
	movw	r12, :lower16:bits.1
	movt	r12, :upper16:bits.1
	ldrb	r0, [r12, r0]
	str	r0, [r1]
	ldr	r0, [r1, #32]
	vdup.32	q8, r0
	add	r12, r6, #112
	vst1.64	{d16, d17}, [r12:128]
	vshr.s32	q8, q8, #8
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d18, d16
	vmov.32	r12, d18[0]
	vmov.32	lr, d18[1]
	vmov.f64	d18, d17
	vmov.32	r4, d18[0]
	add	lr, r12, lr
	add	lr, lr, r4
	asr	r0, r0, #8
	mul	r2, r0, r2
	str	r0, [r1, #96]
	cmp	lr, r2
	str	r1, [r6, #44]           @ 4-byte Spill
	str	r3, [r6, #40]           @ 4-byte Spill
	str	r0, [r6, #36]           @ 4-byte Spill
	str	lr, [r6, #32]           @ 4-byte Spill
	str	r12, [r6, #28]          @ 4-byte Spill
	beq	.LBB6_5
@ BB#1:
	ldr	r0, [r6, #32]           @ 4-byte Reload
	ldr	r1, [r6, #28]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_3
@ BB#2:
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB6_4
.LBB6_3:
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #96]
.LBB6_4:
	b	.LBB6_5
.LBB6_5:
	movw	r0, #0
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #96]
	str	r2, [r1, #32]
	ldr	r2, [r6, #36]           @ 4-byte Reload
	cmp	r0, r2
	beq	.LBB6_12
@ BB#6:
	movw	r0, #3
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #32]
	str	r0, [r6, #24]           @ 4-byte Spill
	mov	r0, r2
	bl	btbl_bitcnt
	mov	r1, r0
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	lr, [r2]
	vdup.32	q8, lr
	add	r3, r6, #80
	vst1.64	{d16, d17}, [r3:128]
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	vdup.32	q9, r0
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r0, r3
	add	r3, r3, r12
	add	r1, lr, r1
	ldr	r12, [r6, #24]          @ 4-byte Reload
	mul	lr, r1, r12
	str	r1, [r2, #64]
	cmp	r3, lr
	str	r0, [r6, #20]           @ 4-byte Spill
	str	r3, [r6, #16]           @ 4-byte Spill
	str	r1, [r6, #12]           @ 4-byte Spill
	beq	.LBB6_11
@ BB#7:
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_9
@ BB#8:
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
	b	.LBB6_10
.LBB6_9:
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB6_10:
	b	.LBB6_11
.LBB6_11:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	str	r1, [r0]
.LBB6_12:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r0, [r0]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end6:
	.size	btbl_bitcnt, .Lfunc_end6-btbl_bitcnt
	.cantunwind
	.fnend

	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #744
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #140
	vldr	s0, .LCPI7_3
	vldr	s2, .LCPI7_4
	movw	r3, #0
	str	r3, [r2, #416]
	str	r0, [r2, #384]
	str	r1, [r2, #380]
	vstr	s2, [r2, #256]
	vstr	s0, [r2, #224]
	ldr	r0, [r2, #384]
	cmp	r0, #2
	str	r2, [r6, #124]          @ 4-byte Spill
	bge	.LBB7_2
@ BB#1:
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [r6, #120]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB7_2:
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #380]
	ldr	r0, [r1, #4]
	bl	atoi
	movw	r1, :lower16:.L.str.8
	movt	r1, :upper16:.L.str.8
	ldr	lr, [r6, #124]          @ 4-byte Reload
	str	r0, [lr]
	mov	r0, r1
	bl	puts
	movw	r1, #0
	ldr	lr, [r6, #124]          @ 4-byte Reload
	str	r1, [lr, #192]
	str	r0, [r6, #116]          @ 4-byte Spill
.LBB7_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB7_5 Depth 2
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #7
	bge	.LBB7_41
@ BB#4:                                 @   in Loop: Header=BB7_3 Depth=1
	bl	clock
	movw	lr, #0
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #352]
	str	lr, [r1, #64]
	str	lr, [r1, #96]
	bl	rand
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #32]
.LBB7_5:                                @   Parent Loop BB7_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #96]
	ldr	r2, [r0]
	cmp	r1, r2
	bge	.LBB7_25
@ BB#6:                                 @   in Loop: Header=BB7_5 Depth=2
	movw	r0, #3
	ldr	r1, [r6, #124]          @ 4-byte Reload
	ldr	r2, [r1, #192]
	movw	r3, :lower16:main.pBitCntFunc
	movt	r3, :upper16:main.pBitCntFunc
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r1, #32]
	str	r0, [r6, #112]          @ 4-byte Spill
	mov	r0, r3
	blx	r2
	mov	r1, r0
	ldr	r2, [r6, #124]          @ 4-byte Reload
	ldr	r3, [r2, #64]
	vdup.32	q8, r3
	add	lr, r6, #208
	vst1.64	{d16, d17}, [lr:128]
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	vdup.32	q9, r0
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r0, r12
	add	r12, r12, lr
	add	r1, r3, r1
	ldr	r3, [r6, #112]          @ 4-byte Reload
	mul	lr, r1, r3
	str	r1, [r2, #576]
	cmp	r12, lr
	str	r0, [r6, #108]          @ 4-byte Spill
	str	r12, [r6, #104]         @ 4-byte Spill
	str	r1, [r6, #100]          @ 4-byte Spill
	beq	.LBB7_11
@ BB#7:                                 @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #104]          @ 4-byte Reload
	ldr	r1, [r6, #108]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_9
@ BB#8:                                 @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #100]          @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #576]
	b	.LBB7_10
.LBB7_9:                                @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #108]          @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #576]
.LBB7_10:                               @   in Loop: Header=BB7_5 Depth=2
	b	.LBB7_11
.LBB7_11:                               @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #576]
	str	r1, [r0, #64]
@ BB#12:                                @   in Loop: Header=BB7_5 Depth=2
	movw	r0, #3
	ldr	r1, [r6, #124]          @ 4-byte Reload
	ldr	r2, [r1, #96]
	vdup.32	q8, r2
	add	r3, r6, #240
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
	str	r2, [r1, #544]
	cmp	r12, r0
	str	r2, [r6, #96]           @ 4-byte Spill
	str	r12, [r6, #92]          @ 4-byte Spill
	str	r3, [r6, #88]           @ 4-byte Spill
	beq	.LBB7_17
@ BB#13:                                @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r6, #88]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_15
@ BB#14:                                @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #96]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #544]
	b	.LBB7_16
.LBB7_15:                               @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #544]
.LBB7_16:                               @   in Loop: Header=BB7_5 Depth=2
	b	.LBB7_17
.LBB7_17:                               @   in Loop: Header=BB7_5 Depth=2
	movw	r0, #3
	ldr	r1, [r6, #124]          @ 4-byte Reload
	ldr	r2, [r1, #544]
	str	r2, [r1, #96]
	ldr	r2, [r1, #32]
	vdup.32	q8, r2
	add	r3, r6, #176
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0xd
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r2, r2, #13
	mul	r0, r2, r0
	str	r2, [r1, #512]
	cmp	r12, r0
	str	r2, [r6, #84]           @ 4-byte Spill
	str	r12, [r6, #80]          @ 4-byte Spill
	str	r3, [r6, #76]           @ 4-byte Spill
	beq	.LBB7_22
@ BB#18:                                @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #80]           @ 4-byte Reload
	ldr	r1, [r6, #76]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_20
@ BB#19:                                @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #84]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #512]
	b	.LBB7_21
.LBB7_20:                               @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #76]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #512]
.LBB7_21:                               @   in Loop: Header=BB7_5 Depth=2
	b	.LBB7_22
.LBB7_22:                               @   in Loop: Header=BB7_5 Depth=2
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #512]
	str	r1, [r0, #32]
	b	.LBB7_5
	.p2align	2
@ BB#23:
.LCPI7_3:
	.long	0                       @ float 0
	.p2align	2
@ BB#24:
.LCPI7_4:
	.long	2139095040              @ float +Inf
.LBB7_25:                               @   in Loop: Header=BB7_3 Depth=1
	vmov.f32	s0, #3.000000e+00
	vldr	s2, .LCPI7_2
	vstr	s0, [r6, #72]           @ 4-byte Spill
	vstr	s2, [r6, #68]           @ 4-byte Spill
	bl	clock
	ldr	lr, [r6, #124]          @ 4-byte Reload
	str	r0, [lr, #320]
	vdup.32	q8, r0
	add	r1, r6, #464
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [lr, #352]
	vdup.32	q8, r1
	add	r2, r6, #496
	vst1.64	{d16, d17}, [r2:128]
	sub	r0, r0, r1
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	mov	r1, sp
	sub	r1, r1, #16
	bfc	r1, #0, #4
	mov	sp, r1
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	vst1.32	{d16, d17}, [r1]
	vorr	q1, q8, q8
	vmov.f32	s2, s7
	vldr	s8, .LCPI7_2
	vdiv.f32	s2, s2, s8
	vmov.f32	s10, s6
	vdiv.f32	s10, s10, s8
	vmov.f32	s12, s5
	vdiv.f32	s12, s12, s8
	vmov.f32	s14, s4
	vdiv.f32	s8, s14, s8
	vmov.f64	d2, d4
	vmov.f32	s5, s12
	vmov.f32	s6, s10
	vmov.f32	s7, s2
	add	r0, r6, #432
	vst1.64	{d2, d3}, [r0]
	vmov.f32	s2, s4
	vmov.f32	s8, s5
	vmov.f32	s10, s6
	vadd.f32	s8, s2, s8
	vadd.f32	s8, s8, s10
	vldr	s10, [r6, #68]          @ 4-byte Reload
	vdiv.f32	s0, s0, s10
	vldr	s12, [r6, #72]          @ 4-byte Reload
	vmul.f32	s14, s0, s12
	vstr	s0, [lr, #480]
	vcmpe.f32	s8, s14
	vmrs	APSR_nzcv, fpscr
	vstr	s8, [r6, #64]           @ 4-byte Spill
	vstr	s2, [r6, #60]           @ 4-byte Spill
	vstr	s0, [r6, #56]           @ 4-byte Spill
	beq	.LBB7_30
@ BB#26:                                @   in Loop: Header=BB7_3 Depth=1
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r6, #64]           @ 4-byte Reload
	vldr	s4, [r6, #60]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB7_28
@ BB#27:                                @   in Loop: Header=BB7_3 Depth=1
	vldr	s0, [r6, #56]           @ 4-byte Reload
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vstr	s0, [r0, #480]
	b	.LBB7_29
.LBB7_28:                               @   in Loop: Header=BB7_3 Depth=1
	vldr	s0, [r6, #60]           @ 4-byte Reload
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vstr	s0, [r0, #480]
.LBB7_29:                               @   in Loop: Header=BB7_3 Depth=1
	b	.LBB7_30
.LBB7_30:                               @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vldr	s0, [r0, #480]
	vstr	s0, [r0, #288]
	vldr	s0, [r0, #288]
	vldr	s2, [r0, #256]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB7_32
@ BB#31:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vldr	s0, [r0, #288]
	vstr	s0, [r0, #256]
	ldr	r1, [r0, #192]
	str	r1, [r0, #160]
.LBB7_32:                               @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vldr	s0, [r0, #288]
	vldr	s2, [r0, #224]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	ble	.LBB7_34
@ BB#33:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	vldr	s0, [r0, #288]
	vstr	s0, [r0, #224]
	ldr	r1, [r0, #192]
	str	r1, [r0, #128]
.LBB7_34:                               @   in Loop: Header=BB7_3 Depth=1
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [r6, #124]          @ 4-byte Reload
	ldr	r12, [r3, #192]
	movw	lr, :lower16:main.text
	movt	lr, :upper16:main.text
	add	r12, lr, r12, lsl #2
	ldr	r12, [r12]
	vldr	s0, [r3, #288]
	vcvt.f64.f32	d16, s0
	ldr	lr, [r3, #64]
	sub	sp, sp, #8
	str	r1, [r6, #52]           @ 4-byte Spill
	mov	r1, r12
	str	r2, [r6, #48]           @ 4-byte Spill
	vmov	r2, r3, d16
	str	lr, [sp]
	bl	printf
	add	sp, sp, #8
	str	r0, [r6, #44]           @ 4-byte Spill
@ BB#35:                                @   in Loop: Header=BB7_3 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #124]          @ 4-byte Reload
	ldr	r2, [r1, #192]
	vdup.32	q8, r2
	add	r3, r6, #336
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
	str	r2, [r1, #448]
	cmp	r12, r0
	str	r2, [r6, #40]           @ 4-byte Spill
	str	r12, [r6, #36]          @ 4-byte Spill
	str	r3, [r6, #32]           @ 4-byte Spill
	beq	.LBB7_40
@ BB#36:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_38
@ BB#37:                                @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #448]
	b	.LBB7_39
.LBB7_38:                               @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #32]           @ 4-byte Reload
	ldr	r1, [r6, #124]          @ 4-byte Reload
	str	r0, [r1, #448]
.LBB7_39:                               @   in Loop: Header=BB7_3 Depth=1
	b	.LBB7_40
.LBB7_40:                               @   in Loop: Header=BB7_3 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r0, #448]
	str	r1, [r0, #192]
	b	.LBB7_3
.LBB7_41:
	movw	r0, :lower16:.L.str.11
	movt	r0, :upper16:.L.str.11
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [r6, #124]          @ 4-byte Reload
	ldr	r12, [r3, #160]
	movw	lr, :lower16:main.text
	movt	lr, :upper16:main.text
	ldr	r12, [lr, r12, lsl #2]
	movw	r4, :lower16:.L.str.10
	movt	r4, :upper16:.L.str.10
	str	r0, [r6, #28]           @ 4-byte Spill
	mov	r0, r4
	str	r1, [r6, #24]           @ 4-byte Spill
	mov	r1, r12
	str	lr, [r6, #20]           @ 4-byte Spill
	str	r2, [r6, #16]           @ 4-byte Spill
	bl	printf
	ldr	r1, [r6, #124]          @ 4-byte Reload
	ldr	r2, [r1, #128]
	ldr	r3, [r6, #20]           @ 4-byte Reload
	add	r2, r3, r2, lsl #2
	ldr	r1, [r2]
	ldr	r2, [r6, #28]           @ 4-byte Reload
	str	r0, [r6, #12]           @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r1, #0
	str	r0, [r6, #8]            @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	2
@ BB#42:
.LCPI7_2:
	.long	1232348160              @ float 1.0E+6
.Lfunc_end7:
	.size	main, .Lfunc_end7-main
	.cantunwind
	.fnend

	.p2align	2
	.type	bit_shifter,%function
	.code	32                      @ @bit_shifter
bit_shifter:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #232
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #108]
	str	r1, [sp, #44]
	str	r1, [sp, #76]
.LBB8_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	ldr	r1, [sp, #108]
	cmp	r1, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	beq	.LBB8_3
@ BB#2:                                 @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #32
	movw	r0, #0
	movlo	r0, #1
	str	r0, [sp, #40]           @ 4-byte Spill
.LBB8_3:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB8_21
@ BB#4:                                 @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #108]
	vdup.32	q8, r1
	add	r2, sp, #112
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vand	q8, q8, q9
	and	r1, r1, #1
	ldr	r2, [sp, #44]
	vdup.32	q9, r2
	add	r3, sp, #48
	vst1.64	{d18, d19}, [r3:128]
	vadd.i32	q8, q9, q8
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
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	str	r12, [sp, #28]          @ 4-byte Spill
	beq	.LBB8_9
@ BB#5:                                 @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_7
@ BB#6:                                 @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB8_8
.LBB8_7:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #204]
.LBB8_8:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_9
.LBB8_9:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #204]
	str	r0, [sp, #44]
@ BB#10:                                @   in Loop: Header=BB8_1 Depth=1
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
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB8_15
@ BB#11:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_13
@ BB#12:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #172]
	b	.LBB8_14
.LBB8_13:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #172]
.LBB8_14:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_15
.LBB8_15:                               @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #3
	movw	r1, #1
	ldr	r2, [sp, #172]
	str	r2, [sp, #76]
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r3, sp, #112
	vst1.64	{d16, d17}, [r3:128]
	vshr.s32	q8, q8, #1
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d18, d16
	vmov.32	r3, d18[0]
	vmov.32	r12, d18[1]
	vmov.f64	d18, d17
	vmov.32	lr, d18[0]
	add	r12, r3, r12
	add	r12, r12, lr
	asr	r2, r2, #1
	mul	r0, r2, r0
	str	r2, [sp, #140]
	cmp	r12, r0
	str	r2, [sp, #12]           @ 4-byte Spill
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
	beq	.LBB8_20
@ BB#16:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_18
@ BB#17:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #140]
	b	.LBB8_19
.LBB8_18:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #140]
.LBB8_19:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_20
.LBB8_20:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #140]
	str	r0, [sp, #108]
	b	.LBB8_1
.LBB8_21:
	ldr	r0, [sp, #44]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end8:
	.size	bit_shifter, .Lfunc_end8-bit_shifter
	.cantunwind
	.fnend

	.globl	bfopen
	.p2align	2
	.type	bfopen,%function
	.code	32                      @ @bfopen
bfopen:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r2, #8
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r0, r2
	bl	malloc
	movw	r1, #0
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r1, r0
	bne	.LBB9_2
@ BB#1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_5
.LBB9_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	fopen
	movw	r1, #0
	ldr	lr, [sp]
	str	r0, [lr]
	ldr	r0, [sp]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.LBB9_4
@ BB#3:
	ldr	r0, [sp]
	bl	free
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB9_5
.LBB9_4:
	movw	r0, #0
	ldr	r1, [sp]
	strb	r0, [r1, #5]
	ldr	r1, [sp]
	strb	r0, [r1, #7]
	ldr	r0, [sp]
	str	r0, [r11, #-4]
.LBB9_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end9:
	.size	bfopen, .Lfunc_end9-bfopen
	.cantunwind
	.fnend

	.globl	bfread
	.p2align	2
	.type	bfread,%function
	.code	32                      @ @bfread
bfread:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #5]
	cmp	r1, r0
	bne	.LBB10_2
@ BB#1:
	ldr	r0, [sp, #8]
	ldr	r0, [r0]
	bl	fgetc
	movw	lr, #8
	ldr	r1, [sp, #8]
	strb	r0, [r1, #4]
	ldr	r0, [sp, #8]
	strb	lr, [r0, #5]
.LBB10_2:
	movw	r0, #1
	movw	r1, #255
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #5]
	add	r1, r3, r1
	strb	r1, [r2, #5]
	ldr	r1, [sp, #8]
	ldrb	r1, [r1, #4]
	ldr	r2, [sp, #8]
	ldrb	r2, [r2, #5]
	lsl	r0, r0, r2
	and	r0, r1, r0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end10:
	.size	bfread, .Lfunc_end10-bfread
	.cantunwind
	.fnend

	.globl	bfwrite
	.p2align	2
	.type	bfwrite,%function
	.code	32                      @ @bfwrite
bfwrite:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	bfc	sp, #0, #4
	movw	r2, #8
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #7]
	cmp	r2, r0
	bne	.LBB11_2
@ BB#1:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #6]
	ldr	r1, [sp, #8]
	ldr	r1, [r1]
	bl	fputc
	movw	r1, #0
	ldr	lr, [sp, #8]
	strb	r1, [lr, #7]
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB11_2:
	movw	r0, #1
	movw	r1, #1
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #7]
	add	r1, r3, r1
	strb	r1, [r2, #7]
	ldr	r1, [sp, #8]
	ldrb	r2, [r1, #6]
	lsl	r2, r2, #1
	strb	r2, [r1, #6]
	ldr	r1, [sp, #12]
	and	r1, r1, #1
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #6]
	orr	r1, r3, r1
	strb	r1, [r2, #6]
	str	r0, [sp]                @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end11:
	.size	bfwrite, .Lfunc_end11-bfwrite
	.cantunwind
	.fnend

	.globl	bfclose
	.p2align	2
	.type	bfclose,%function
	.code	32                      @ @bfclose
bfclose:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	bl	fclose
	ldr	lr, [sp, #4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, lr
	bl	free
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end12:
	.size	bfclose, .Lfunc_end12-bfclose
	.cantunwind
	.fnend

	.globl	bitstring
	.p2align	2
	.type	bitstring,%function
	.code	32                      @ @bitstring
bitstring:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #272
	bfc	sp, #0, #4
	movw	r12, #3
	str	r0, [sp, #216]
	str	r1, [sp, #188]
	str	r2, [sp, #156]
	str	r3, [sp, #124]
	mov	r0, r3
	vdup.32	q8, r3
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #156]
	vdup.32	q8, r1
	add	r2, sp, #160
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #156]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	vsra.s32	q8, q8, #2
	add	r1, r1, r3, asr #2
	ldr	r3, [sp, #156]
	vdup.32	q9, r3
	vst1.64	{d18, d19}, [r2:128]
	asr	r2, r3, #31
	add	r2, r3, r2, lsr #30
	bfc	r2, #0, #2
	sub	r2, r3, r2
	sub	r3, r1, #1
	cmp	r2, #0
	movne	r3, r1
	add	r1, sp, #64
	vst1.64	{d16, d17}, [r1]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r2, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r2, r1, r2
	add	r2, r2, lr
	sub	r0, r0, r3
	mul	r3, r0, r12
	str	r0, [sp, #252]
	cmp	r2, r3
	str	r0, [sp, #56]           @ 4-byte Spill
	str	r2, [sp, #52]           @ 4-byte Spill
	str	r1, [sp, #48]           @ 4-byte Spill
	beq	.LBB13_5
@ BB#1:
	ldr	r0, [sp, #52]           @ 4-byte Reload
	ldr	r1, [sp, #48]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_3
@ BB#2:
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r0, [sp, #252]
	b	.LBB13_4
.LBB13_3:
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #252]
.LBB13_4:
	b	.LBB13_5
.LBB13_5:
	movw	r0, #0
	ldr	r1, [sp, #252]
	str	r1, [sp, #60]
	str	r0, [sp, #92]
.LBB13_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #60]
	cmp	r0, r1
	bge	.LBB13_14
@ BB#7:                                 @   in Loop: Header=BB13_6 Depth=1
	movw	r0, #32
	ldr	r1, [sp, #216]
	add	r2, r1, #1
	str	r2, [sp, #216]
	strb	r0, [r1]
@ BB#8:                                 @   in Loop: Header=BB13_6 Depth=1
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
	str	r1, [sp, #220]
	cmp	r3, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	beq	.LBB13_13
@ BB#9:                                 @   in Loop: Header=BB13_6 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_11
@ BB#10:                                @   in Loop: Header=BB13_6 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #220]
	b	.LBB13_12
.LBB13_11:                              @   in Loop: Header=BB13_6 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #220]
.LBB13_12:                              @   in Loop: Header=BB13_6 Depth=1
	b	.LBB13_13
.LBB13_13:                              @   in Loop: Header=BB13_6 Depth=1
	ldr	r0, [sp, #220]
	str	r0, [sp, #92]
	b	.LBB13_6
.LBB13_14:
	b	.LBB13_15
.LBB13_15:                              @ =>This Inner Loop Header: Depth=1
	mvn	r0, #0
	ldr	r1, [sp, #156]
	vdup.32	q8, r1
	add	r2, sp, #160
	vst1.64	{d16, d17}, [r2:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #156]
	cmp	r0, #0
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB13_20
@ BB#16:                                @   in Loop: Header=BB13_15 Depth=1
	movw	r1, #4
	ldr	r0, [sp, #188]
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r2, sp, #192
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #156]
	asr	r0, r0, r2
	and	r0, r0, #1
	add	r0, r0, #48
	ldr	r2, [sp, #216]
	add	r3, r2, #1
	str	r3, [sp, #216]
	strb	r0, [r2]
	ldr	r0, [sp, #156]
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	bl	__modsi3
	cmp	r0, #0
	bne	.LBB13_19
@ BB#17:                                @   in Loop: Header=BB13_15 Depth=1
	ldr	r0, [sp, #156]
	cmp	r0, #0
	beq	.LBB13_19
@ BB#18:                                @   in Loop: Header=BB13_15 Depth=1
	movw	r0, #32
	ldr	r1, [sp, #216]
	add	r2, r1, #1
	str	r2, [sp, #216]
	strb	r0, [r1]
.LBB13_19:                              @   in Loop: Header=BB13_15 Depth=1
	b	.LBB13_15
.LBB13_20:
	movw	r0, #0
	ldr	r1, [sp, #216]
	strb	r0, [r1]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end13:
	.size	bitstring, .Lfunc_end13-bitstring
	.cantunwind
	.fnend

	.globl	bstr_i
	.p2align	2
	.type	bstr_i,%function
	.code	32                      @ @bstr_i
bstr_i:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #136
	bfc	sp, #0, #4
	mov	r6, sp
	add	r1, r6, #44
	movw	r2, #0
	str	r0, [r1, #60]
	str	r2, [r1]
	str	r1, [r6, #28]           @ 4-byte Spill
.LBB14_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	movw	r1, #0
	ldr	r2, [r6, #28]           @ 4-byte Reload
	ldr	r3, [r2, #60]
	cmp	r3, r1
	str	r0, [r6, #24]           @ 4-byte Spill
	beq	.LBB14_4
@ BB#2:                                 @   in Loop: Header=BB14_1 Depth=1
	movw	r0, #0
	ldr	r1, [r6, #28]           @ 4-byte Reload
	ldr	r2, [r1, #60]
	ldrb	r2, [r2]
	cmp	r2, #0
	str	r0, [r6, #24]           @ 4-byte Spill
	beq	.LBB14_4
@ BB#3:                                 @   in Loop: Header=BB14_1 Depth=1
	movw	r0, :lower16:.L.str.12
	movt	r0, :upper16:.L.str.12
	ldr	r1, [r6, #28]           @ 4-byte Reload
	ldr	r2, [r1, #60]
	ldrb	r1, [r2]
	bl	strchr
	movw	r1, #0
	cmp	r0, r1
	movw	r0, #0
	movne	r0, #1
	str	r0, [r6, #24]           @ 4-byte Spill
.LBB14_4:                               @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB14_11
@ BB#5:                                 @   in Loop: Header=BB14_1 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #28]           @ 4-byte Reload
	ldr	r2, [r1, #60]
	add	r3, r2, #1
	str	r3, [r1, #60]
	ldrb	r2, [r2]
	mov	r3, sp
	sub	r3, r3, #16
	bfc	r3, #0, #4
	mov	sp, r3
	vdup.32	q8, r2
	vst1.32	{d16, d17}, [r3]
	vmov.i32	q9, #0x30
	vsub.i32	q8, q8, q9
	add	r3, r6, #80
	vst1.64	{d16, d17}, [r3]
	sub	r2, r2, #48
	str	r2, [r1, #32]
	ldr	r2, [r1]
	vdup.32	q8, r2
	add	r12, r6, #48
	vst1.64	{d16, d17}, [r12:128]
	vshl.i32	q8, q8, #1
	vmov.i32	q9, #0x1
	vst1.64	{d16, d17}, [r12]
	lsl	r2, r2, #1
	str	r2, [r1]
	ldr	lr, [r1, #32]
	vld1.64	{d16, d17}, [r3:128]
	vand	q8, q8, q9
	and	r3, lr, #1
	vld1.64	{d18, d19}, [r12:128]
	vorr	q8, q9, q8
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r12, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r4, d20[0]
	add	lr, r12, lr
	add	lr, lr, r4
	orr	r2, r2, r3
	mul	r0, r2, r0
	str	r2, [r1, #64]
	cmp	lr, r0
	str	r2, [r6, #20]           @ 4-byte Spill
	str	r12, [r6, #16]          @ 4-byte Spill
	str	lr, [r6, #12]           @ 4-byte Spill
	beq	.LBB14_10
@ BB#6:                                 @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_8
@ BB#7:                                 @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #28]           @ 4-byte Reload
	str	r0, [r1, #64]
	b	.LBB14_9
.LBB14_8:                               @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #28]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB14_9:                               @   in Loop: Header=BB14_1 Depth=1
	b	.LBB14_10
.LBB14_10:                              @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	str	r1, [r0]
	b	.LBB14_1
.LBB14_11:
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r0, [r0]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end14:
	.size	bstr_i, .Lfunc_end14-bstr_i
	.cantunwind
	.fnend

	.type	bits,%object            @ @bits
	.data
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,%object          @ @bits.1
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,%object        @ @.str.7
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	main.pBitCntFunc,%object @ @main.pBitCntFunc
	.data
	.p2align	2
main.pBitCntFunc:
	.long	bit_count
	.long	bitcount
	.long	ntbl_bitcnt
	.long	ntbl_bitcount
	.long	BW_btbl_bitcount
	.long	AR_btbl_bitcount
	.long	bit_shifter
	.size	main.pBitCntFunc, 28

	.type	main.text,%object       @ @main.text
	.p2align	2
main.text:
	.long	.L.str
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.size	main.text, 28

	.type	.L.str.9,%object        @ @.str.9
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.9:
	.asciz	"%-38s> Time: %7.3f sec.; Bits: %ld\n"
	.size	.L.str.9, 36

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"\nBest  > %s\n"
	.size	.L.str.10, 13

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"Worst > %s\n"
	.size	.L.str.11, 12

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"01"
	.size	.L.str.12, 3


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
