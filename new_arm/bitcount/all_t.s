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
	.globl	alloc_bit_array
	.p2align	2
	.type	alloc_bit_array,%function
	.code	32                      @ @alloc_bit_array
alloc_bit_array:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #64
	bfc	sp, #0, #4
	movw	r1, #1
	movw	r2, #3
	movw	r3, #8
	str	r0, [sp, #44]
	mov	r12, r0
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r0, sp, #48
	vst1.64	{d16, d17}, [r0:128]
	add	r0, r12, #8
	sub	r0, r0, #1
	str	r1, [sp, #36]           @ 4-byte Spill
	mov	r1, r3
	add	r4, sp, #16
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	__udivsi3
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	calloc
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	alloc_bit_array, .Lfunc_end0-alloc_bit_array
	.cantunwind
	.fnend

	.globl	getbit
	.p2align	2
	.type	getbit,%function
	.code	32                      @ @getbit
getbit:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #112
	bfc	sp, #0, #4
	str	r0, [sp, #60]
	str	r1, [sp, #28]
	vdup.32	q8, r1
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0:128]
	asr	r2, r1, #31
	add	r1, r1, r2, lsr #29
	ldr	r2, [sp, #60]
	add	r3, r2, r1, asr #3
	str	r3, [sp, #60]
	ldrb	r1, [r2, r1, asr #3]
	mov	r2, r1
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r0:128]
	asr	r0, r3, #31
	add	r0, r3, r0, lsr #29
	bfc	r0, #0, #3
	sub	r0, r3, r0
	mov	r3, #1
	lsl	r0, r3, r0
	str	r1, [sp, #92]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r1, sp, #64
	vst1.32	{d16, d17}, [r1]
	and	r0, r2, r0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	and	r0, r0, #1
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end1:
	.size	getbit, .Lfunc_end1-getbit
	.cantunwind
	.fnend

	.globl	setbit
	.p2align	2
	.type	setbit,%function
	.code	32                      @ @setbit
setbit:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #224
	bfc	sp, #0, #4
	movw	r3, #8
	str	r0, [sp, #124]
	str	r1, [sp, #92]
	str	r2, [sp, #60]
	ldr	r0, [sp, #92]
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r1, sp, #96
	vst1.64	{d16, d17}, [r1:128]
	mov	r1, r3
	add	r4, sp, #32
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	ldr	r1, [sp, #124]
	add	r0, r1, r0
	str	r0, [sp, #124]
	ldr	r0, [sp, #60]
	cmp	r0, #0
	beq	.LBB2_2
@ BB#1:
	ldr	r0, [sp, #92]
	vdup.32	q8, r0
	add	r1, sp, #96
	vst1.64	{d16, d17}, [r1:128]
	asr	r1, r0, #31
	add	r1, r0, r1, lsr #29
	bfc	r1, #0, #3
	sub	r0, r0, r1
	mov	r1, #1
	lsl	r0, r1, r0
	ldr	r1, [sp, #124]
	ldrb	r2, [r1]
	mov	r3, r2
	str	r2, [sp, #204]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #176
	vst1.32	{d16, d17}, [r2]
	orr	r0, r3, r0
	strb	r0, [r1]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB2_3
.LBB2_2:
	ldr	r0, [sp, #92]
	vdup.32	q8, r0
	add	r1, sp, #96
	vst1.64	{d16, d17}, [r1:128]
	asr	r1, r0, #31
	add	r1, r0, r1, lsr #29
	bfc	r1, #0, #3
	sub	r0, r0, r1
	mov	r1, #1
	mvn	r0, r1, lsl r0
	ldr	r1, [sp, #124]
	ldrb	r2, [r1]
	mov	r3, r2
	str	r2, [sp, #156]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #128
	vst1.32	{d16, d17}, [r2]
	and	r0, r3, r0
	strb	r0, [r1]
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
.LBB2_3:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	setbit, .Lfunc_end2-setbit
	.cantunwind
	.fnend

	.globl	flipbit
	.p2align	2
	.type	flipbit,%function
	.code	32                      @ @flipbit
flipbit:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #112
	bfc	sp, #0, #4
	str	r0, [sp, #60]
	str	r1, [sp, #28]
	vdup.32	q8, r1
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0:128]
	asr	r2, r1, #31
	add	r1, r1, r2, lsr #29
	ldr	r2, [sp, #60]
	add	r1, r2, r1, asr #3
	str	r1, [sp, #60]
	ldr	r1, [sp, #28]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r0:128]
	asr	r0, r1, #31
	add	r0, r1, r0, lsr #29
	bfc	r0, #0, #3
	sub	r0, r1, r0
	mov	r1, #1
	lsl	r0, r1, r0
	ldr	r1, [sp, #60]
	ldrb	r2, [r1]
	mov	r3, r2
	str	r2, [sp, #92]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #64
	vst1.32	{d16, d17}, [r2]
	eor	r0, r3, r0
	strb	r0, [r1]
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit
	.cantunwind
	.fnend

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
	vmov.i32	q8, #0x0
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0]
	str	r1, [sp, #28]
	ldr	r0, [sp, #60]
	cmp	r0, #0
	beq	.LBB4_15
@ BB#1:
	b	.LBB4_2
.LBB4_2:                                @ =>This Inner Loop Header: Depth=1
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
	beq	.LBB4_7
@ BB#3:                                 @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_5
@ BB#4:                                 @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #124]
	b	.LBB4_6
.LBB4_5:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #124]
.LBB4_6:                                @   in Loop: Header=BB4_2 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #124]
	str	r0, [sp, #28]
@ BB#8:                                 @   in Loop: Header=BB4_2 Depth=1
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
	beq	.LBB4_13
@ BB#9:                                 @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_11
@ BB#10:                                @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #92]
	b	.LBB4_12
.LBB4_11:                               @   in Loop: Header=BB4_2 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #92]
.LBB4_12:                               @   in Loop: Header=BB4_2 Depth=1
	b	.LBB4_13
.LBB4_13:                               @   in Loop: Header=BB4_2 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #92]
	str	r1, [sp, #60]
	ldr	r1, [sp, #12]           @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB4_2
@ BB#14:
	b	.LBB4_15
.LBB4_15:
	ldr	r0, [sp, #28]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end4:
	.size	bit_count, .Lfunc_end4-bit_count
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
	beq	.LBB5_5
@ BB#1:
	ldr	r0, [sp]                @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_3
@ BB#2:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #44]
	b	.LBB5_4
.LBB5_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #44]
.LBB5_4:
	b	.LBB5_5
.LBB5_5:
	ldr	r0, [sp, #44]
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end5:
	.size	bitcount, .Lfunc_end5-bitcount
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
	sub	sp, sp, #432
	bfc	sp, #0, #4
	str	r0, [sp, #28]
	vdup.32	q8, r0
	add	r1, sp, #32
	vst1.64	{d16, d17}, [r1:128]
	and	r0, r0, #15
	movw	r2, :lower16:bits
	movt	r2, :upper16:bits
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #240
	ldrb	r3, [r2, r3, lsr #4]
	str	r0, [sp, #412]
	vdup.32	q8, r0
	add	r12, sp, #384
	vst1.32	{d16, d17}, [r12]
	str	r3, [sp, #364]
	vdup.32	q8, r3
	add	r12, sp, #336
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #3840
	ldrb	r3, [r2, r3, lsr #8]
	str	r3, [sp, #316]
	vdup.32	q8, r3
	add	r12, sp, #288
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #61440
	ldrb	r3, [r2, r3, lsr #12]
	str	r3, [sp, #268]
	vdup.32	q8, r3
	add	r12, sp, #240
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #983040
	ldrb	r3, [r2, r3, lsr #16]
	str	r3, [sp, #220]
	vdup.32	q8, r3
	add	r12, sp, #192
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #15728640
	ldrb	r3, [r2, r3, lsr #20]
	str	r3, [sp, #172]
	vdup.32	q8, r3
	add	r12, sp, #144
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	and	r3, r3, #251658240
	ldrb	r3, [r2, r3, lsr #24]
	str	r3, [sp, #124]
	vdup.32	q8, r3
	add	r12, sp, #96
	vst1.32	{d16, d17}, [r12]
	add	r0, r0, r3
	ldr	r3, [sp, #28]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r1, [r2, r3, lsr #28]
	mov	r2, r1
	str	r1, [sp, #76]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r1, sp, #48
	vst1.32	{d16, d17}, [r1]
	add	r0, r0, r2
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end6:
	.size	ntbl_bitcount, .Lfunc_end6-ntbl_bitcount
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
	sub	sp, sp, #240
	bfc	sp, #0, #4
	str	r0, [sp, #28]
	str	r0, [sp, #24]
	movw	r0, :lower16:bits
	movt	r0, :upper16:bits
	ldrb	r1, [sp, #24]
	ldrb	r2, [sp, #25]
	ldrb	r1, [r0, r1]
	ldrb	r2, [r0, r2]
	str	r1, [sp, #220]
	vdup.32	q8, r1
	add	r3, sp, #192
	vst1.32	{d16, d17}, [r3]
	str	r2, [sp, #172]
	vdup.32	q8, r2
	add	r3, sp, #144
	vst1.32	{d16, d17}, [r3]
	add	r1, r1, r2
	ldrb	r2, [sp, #27]
	ldrb	r2, [r0, r2]
	str	r2, [sp, #124]
	vdup.32	q8, r2
	add	r3, sp, #96
	vst1.32	{d16, d17}, [r3]
	add	r1, r1, r2
	ldrb	r2, [sp, #26]
	ldrb	r0, [r0, r2]
	mov	r2, r0
	str	r0, [sp, #76]
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r0, sp, #48
	vst1.32	{d16, d17}, [r0]
	add	r0, r1, r2
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end7:
	.size	BW_btbl_bitcount, .Lfunc_end7-BW_btbl_bitcount
	.cantunwind
	.fnend

	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,%function
	.code	32                      @ @AR_btbl_bitcount
AR_btbl_bitcount:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #240
	bfc	sp, #0, #4
	movw	r1, #3
	str	r0, [sp, #44]
	add	r0, sp, #44
	str	r0, [sp, #40]
	orr	r0, r0, #1
	str	r0, [sp, #40]
	ldrb	r0, [sp, #44]
	movw	r2, :lower16:bits
	movt	r2, :upper16:bits
	ldrb	r0, [r2, r0]
	str	r0, [sp, #12]
	ldr	r0, [sp, #40]
	add	r3, r0, #1
	str	r3, [sp, #40]
	ldrb	r0, [r0]
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #12]
	vdup.32	q8, r3
	add	r12, sp, #16
	vst1.64	{d16, d17}, [r12:128]
	str	r0, [sp, #188]
	vdup.32	q9, r0
	add	lr, sp, #160
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r0
	str	r0, [sp, #12]
	ldr	r0, [sp, #40]
	add	r3, r0, #1
	str	r3, [sp, #40]
	ldrb	r0, [r0]
	ldrb	r0, [r2, r0]
	ldr	r3, [sp, #12]
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [sp, #140]
	vdup.32	q9, r0
	add	lr, sp, #112
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r0
	str	r0, [sp, #12]
	ldr	r3, [sp, #40]
	ldrb	r3, [r3]
	ldrb	r2, [r2, r3]
	mov	r3, r2
	vld1.64	{d16, d17}, [r12:128]
	str	r2, [sp, #92]
	vdup.32	q9, r2
	add	r2, sp, #64
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
	str	r0, [sp, #220]
	cmp	r12, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB8_5
@ BB#1:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_3
@ BB#2:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #220]
	b	.LBB8_4
.LBB8_3:
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #220]
.LBB8_4:
	b	.LBB8_5
.LBB8_5:
	ldr	r0, [sp, #220]
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end8:
	.size	AR_btbl_bitcount, .Lfunc_end8-AR_btbl_bitcount
	.cantunwind
	.fnend

	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,%function
	.code	32                      @ @ntbl_bitcnt
ntbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #216
	bfc	sp, #0, #4
	movw	r1, #3
	movw	r2, #4
	str	r0, [sp, #76]
	vdup.32	q8, r0
	add	r3, sp, #80
	vst1.64	{d16, d17}, [r3:128]
	and	r0, r0, #15
	movw	r12, :lower16:bits.1
	movt	r12, :upper16:bits.1
	ldrb	r0, [r12, r0]
	str	r0, [sp, #44]
	ldr	r0, [sp, #76]
	vdup.32	q8, r0
	vst1.64	{d16, d17}, [r3:128]
	vshr.s32	q8, q8, #4
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d18, d16
	vmov.32	r3, d18[0]
	vmov.32	r12, d18[1]
	vmov.f64	d18, d17
	vmov.32	lr, d18[0]
	add	r12, r3, r12
	add	r12, r12, lr
	asr	r0, r0, #4
	mul	r1, r0, r1
	str	r0, [sp, #188]
	cmp	r12, r1
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	str	r12, [sp, #28]          @ 4-byte Spill
	beq	.LBB9_5
@ BB#1:
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB9_3
@ BB#2:
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #188]
	b	.LBB9_4
.LBB9_3:
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r0, [sp, #188]
.LBB9_4:
	b	.LBB9_5
.LBB9_5:
	movw	r0, #0
	ldr	r1, [sp, #188]
	str	r1, [sp, #76]
	ldr	r1, [sp, #36]           @ 4-byte Reload
	cmp	r0, r1
	beq	.LBB9_12
@ BB#6:
	movw	r0, #3
	ldr	r1, [sp, #76]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	bl	ntbl_bitcnt
	mov	r1, r0
	ldr	lr, [sp, #44]
	vdup.32	q8, lr
	add	r2, sp, #48
	vst1.64	{d16, d17}, [r2:128]
	str	r0, [sp, #124]
	vdup.32	q9, r0
	add	r0, sp, #96
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r2, d20[1]
	vmov.f64	d20, d17
	vmov.32	r3, d20[0]
	add	r2, r0, r2
	add	r2, r2, r3
	add	r1, lr, r1
	ldr	r3, [sp, #24]           @ 4-byte Reload
	mul	lr, r1, r3
	str	r1, [sp, #156]
	cmp	r2, lr
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB9_11
@ BB#7:
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB9_9
@ BB#8:
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #156]
	b	.LBB9_10
.LBB9_9:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #156]
.LBB9_10:
	b	.LBB9_11
.LBB9_11:
	ldr	r0, [sp, #156]
	str	r0, [sp, #44]
.LBB9_12:
	ldr	r0, [sp, #44]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end9:
	.size	ntbl_bitcnt, .Lfunc_end9-ntbl_bitcnt
	.cantunwind
	.fnend

	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,%function
	.code	32                      @ @btbl_bitcnt
btbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #256
	bfc	sp, #0, #4
	movw	r1, #3
	movw	r2, #8
	str	r0, [sp, #76]
	ldrb	r0, [sp, #76]
	str	r0, [sp, #172]
	vdup.32	q8, r0
	add	r3, sp, #144
	vst1.32	{d16, d17}, [r3]
	movw	r3, :lower16:bits.1
	movt	r3, :upper16:bits.1
	ldrb	r0, [r3, r0]
	str	r0, [sp, #44]
	ldr	r0, [sp, #76]
	vdup.32	q8, r0
	add	r3, sp, #80
	vst1.64	{d16, d17}, [r3:128]
	vshr.s32	q8, q8, #8
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d18, d16
	vmov.32	r3, d18[0]
	vmov.32	r12, d18[1]
	vmov.f64	d18, d17
	vmov.32	lr, d18[0]
	add	r12, r3, r12
	add	r12, r12, lr
	asr	r0, r0, #8
	mul	r1, r0, r1
	str	r0, [sp, #236]
	cmp	r12, r1
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r12, [sp, #32]          @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	beq	.LBB10_5
@ BB#1:
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_3
@ BB#2:
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #236]
	b	.LBB10_4
.LBB10_3:
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #236]
.LBB10_4:
	b	.LBB10_5
.LBB10_5:
	movw	r0, #0
	ldr	r1, [sp, #236]
	str	r1, [sp, #76]
	ldr	r1, [sp, #36]           @ 4-byte Reload
	cmp	r0, r1
	beq	.LBB10_12
@ BB#6:
	movw	r0, #3
	ldr	r1, [sp, #76]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	bl	btbl_bitcnt
	mov	r1, r0
	ldr	lr, [sp, #44]
	vdup.32	q8, lr
	add	r2, sp, #48
	vst1.64	{d16, d17}, [r2:128]
	str	r0, [sp, #124]
	vdup.32	q9, r0
	add	r0, sp, #96
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r2, d20[1]
	vmov.f64	d20, d17
	vmov.32	r3, d20[0]
	add	r2, r0, r2
	add	r2, r2, r3
	add	r1, lr, r1
	ldr	r3, [sp, #24]           @ 4-byte Reload
	mul	lr, r1, r3
	str	r1, [sp, #204]
	cmp	r2, lr
	str	r0, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	beq	.LBB10_11
@ BB#7:
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_9
@ BB#8:
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB10_10
.LBB10_9:
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #204]
.LBB10_10:
	b	.LBB10_11
.LBB10_11:
	ldr	r0, [sp, #204]
	str	r0, [sp, #44]
.LBB10_12:
	ldr	r0, [sp, #44]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end10:
	.size	btbl_bitcnt, .Lfunc_end10-btbl_bitcnt
	.cantunwind
	.fnend

	.globl	main
	.p2align	4
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #848
	bfc	sp, #0, #4
	vldr	d16, .LCPI11_3
	vmov.i32	q9, #0x0
	add	r2, sp, #576
	vst1.64	{d18, d19}, [r2]
	mov	r2, #0
	str	r2, [sp, #572]
	str	r0, [sp, #540]
	str	r1, [sp, #536]
	adr	r0, .LCPI11_4
	vld1.64	{d20, d21}, [r0:128]
	add	r0, sp, #416
	vst1.64	{d20, d21}, [r0]
	movw	r0, #65535
	movt	r0, #32751
	str	r0, [sp, #412]
	mvn	r0, #0
	str	r0, [sp, #408]
	add	r0, sp, #384
	vst1.64	{d18, d19}, [r0]
	vstr	d16, [sp, #376]
	ldr	r0, [sp, #540]
	cmp	r0, #2
	bge	.LBB11_2
@ BB#1:
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [sp, #152]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB11_2:
	movw	r0, #0
	ldr	r1, [sp, #536]
	ldr	r1, [r1, #4]
	str	r0, [sp, #148]          @ 4-byte Spill
	mov	r0, r1
	bl	atoi
	str	r0, [sp, #156]
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	bl	puts
	vmov.i32	q8, #0x0
	add	r1, sp, #352
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #148]          @ 4-byte Reload
	str	r1, [sp, #348]
	str	r0, [sp, #144]          @ 4-byte Spill
.LBB11_3:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB11_5 Depth 2
	ldr	r0, [sp, #348]
	cmp	r0, #7
	bge	.LBB11_41
@ BB#4:                                 @   in Loop: Header=BB11_3 Depth=1
	movw	r0, #0
	str	r0, [sp, #140]          @ 4-byte Spill
	bl	clock
	str	r0, [sp, #508]
	vmov.i32	q8, #0x0
	add	r0, sp, #224
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #220]
	add	r0, sp, #256
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #140]          @ 4-byte Reload
	str	r0, [sp, #252]
	bl	rand
	str	r0, [sp, #188]
.LBB11_5:                               @   Parent Loop BB11_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #252]
	ldr	r1, [sp, #156]
	cmp	r0, r1
	bge	.LBB11_23
@ BB#6:                                 @   in Loop: Header=BB11_5 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #348]
	movw	r2, :lower16:main.pBitCntFunc
	movt	r2, :upper16:main.pBitCntFunc
	ldr	r1, [r2, r1, lsl #2]
	ldr	r2, [sp, #188]
	str	r0, [sp, #136]          @ 4-byte Spill
	mov	r0, r2
	blx	r1
	mov	r1, r0
	ldr	r2, [sp, #220]
	vdup.32	q8, r2
	add	lr, sp, #224
	vst1.64	{d16, d17}, [lr:128]
	str	r0, [sp, #620]
	vdup.32	q9, r0
	add	r0, sp, #592
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r3, d20[0]
	add	lr, r0, lr
	add	r3, lr, r3
	add	r1, r2, r1
	ldr	r2, [sp, #136]          @ 4-byte Reload
	mul	lr, r1, r2
	str	r1, [sp, #828]
	cmp	r3, lr
	str	r0, [sp, #132]          @ 4-byte Spill
	str	r3, [sp, #128]          @ 4-byte Spill
	str	r1, [sp, #124]          @ 4-byte Spill
	beq	.LBB11_11
@ BB#7:                                 @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #128]          @ 4-byte Reload
	ldr	r1, [sp, #132]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB11_9
@ BB#8:                                 @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #124]          @ 4-byte Reload
	str	r0, [sp, #828]
	b	.LBB11_10
.LBB11_9:                               @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #132]          @ 4-byte Reload
	str	r0, [sp, #828]
.LBB11_10:                              @   in Loop: Header=BB11_5 Depth=2
	b	.LBB11_11
.LBB11_11:                              @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #828]
	str	r0, [sp, #220]
@ BB#12:                                @   in Loop: Header=BB11_5 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #252]
	vdup.32	q8, r1
	add	r2, sp, #256
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
	str	r1, [sp, #796]
	cmp	r3, r0
	str	r1, [sp, #120]          @ 4-byte Spill
	str	r3, [sp, #116]          @ 4-byte Spill
	str	r2, [sp, #112]          @ 4-byte Spill
	beq	.LBB11_17
@ BB#13:                                @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #116]          @ 4-byte Reload
	ldr	r1, [sp, #112]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB11_15
@ BB#14:                                @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #120]          @ 4-byte Reload
	str	r0, [sp, #796]
	b	.LBB11_16
.LBB11_15:                              @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #112]          @ 4-byte Reload
	str	r0, [sp, #796]
.LBB11_16:                              @   in Loop: Header=BB11_5 Depth=2
	b	.LBB11_17
.LBB11_17:                              @   in Loop: Header=BB11_5 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #796]
	str	r1, [sp, #252]
	ldr	r1, [sp, #188]
	vdup.32	q8, r1
	add	r2, sp, #192
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0xd
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #13
	mul	r0, r1, r0
	str	r1, [sp, #764]
	cmp	r3, r0
	str	r1, [sp, #108]          @ 4-byte Spill
	str	r3, [sp, #104]          @ 4-byte Spill
	str	r2, [sp, #100]          @ 4-byte Spill
	beq	.LBB11_22
@ BB#18:                                @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #104]          @ 4-byte Reload
	ldr	r1, [sp, #100]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB11_20
@ BB#19:                                @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #108]          @ 4-byte Reload
	str	r0, [sp, #764]
	b	.LBB11_21
.LBB11_20:                              @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #100]          @ 4-byte Reload
	str	r0, [sp, #764]
.LBB11_21:                              @   in Loop: Header=BB11_5 Depth=2
	b	.LBB11_22
.LBB11_22:                              @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [sp, #764]
	str	r0, [sp, #188]
	b	.LBB11_5
.LBB11_23:                              @   in Loop: Header=BB11_3 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, .LCPI11_2
	vstr	d16, [sp, #88]          @ 8-byte Spill
	vstr	d17, [sp, #80]          @ 8-byte Spill
	bl	clock
	str	r0, [sp, #476]
	vdup.32	q9, r0
	add	lr, sp, #480
	vst1.64	{d18, d19}, [lr:128]
	ldr	lr, [sp, #508]
	vdup.32	q9, lr
	add	r1, sp, #512
	vst1.64	{d18, d19}, [r1:128]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #664]
	add	r0, sp, #640
	vst1.32	{d18, d19}, [r0]
	vldr	d17, .LCPI11_2
	vdiv.f64	d17, d16, d17
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r0, sp, #448
	vst1.64	{d18, d19}, [r0]
	vmov.f64	d17, d18
	vmov.f64	d20, d19
	vadd.f64	d21, d17, d20
	vadd.f64	d20, d21, d20
	vldr	d21, [sp, #80]          @ 8-byte Reload
	vdiv.f64	d16, d16, d21
	vldr	d22, [sp, #88]          @ 8-byte Reload
	vmul.f64	d23, d16, d22
	vstr	d16, [sp, #728]
	vcmpe.f64	d20, d23
	vmrs	APSR_nzcv, fpscr
	vstr	d20, [sp, #72]          @ 8-byte Spill
	vstr	d17, [sp, #64]          @ 8-byte Spill
	vstr	d16, [sp, #56]          @ 8-byte Spill
	beq	.LBB11_30
@ BB#24:                                @   in Loop: Header=BB11_3 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #72]          @ 8-byte Reload
	vldr	d18, [sp, #64]          @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB11_28
@ BB#25:                                @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #56]          @ 8-byte Reload
	vstr	d16, [sp, #728]
	b	.LBB11_29
	.p2align	3
@ BB#26:
.LCPI11_3:
	.long	0                       @ double 0
	.long	0
	.p2align	4
@ BB#27:
.LCPI11_4:
	.long	4294967295              @ double 1.7976931348623157E+308
	.long	2146435071
	.long	4294967295              @ double 1.7976931348623157E+308
	.long	2146435071
.LBB11_28:                              @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #64]          @ 8-byte Reload
	vstr	d16, [sp, #728]
.LBB11_29:                              @   in Loop: Header=BB11_3 Depth=1
	b	.LBB11_30
.LBB11_30:                              @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #728]
	vstr	d16, [sp, #440]
	vldr	d16, [sp, #440]
	vldr	d17, [sp, #408]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB11_32
@ BB#31:                                @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #440]
	vstr	d16, [sp, #408]
	ldr	r0, [sp, #348]
	str	r0, [sp, #316]
.LBB11_32:                              @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #440]
	vldr	d17, [sp, #376]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB11_34
@ BB#33:                                @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [sp, #440]
	vstr	d16, [sp, #376]
	ldr	r0, [sp, #348]
	str	r0, [sp, #284]
.LBB11_34:                              @   in Loop: Header=BB11_3 Depth=1
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [sp, #348]
	movw	r12, :lower16:main.text
	movt	r12, :upper16:main.text
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3]
	vldr	d16, [sp, #440]
	ldr	r12, [sp, #220]
	str	r1, [sp, #52]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #48]           @ 4-byte Spill
	vmov	r2, r3, d16
	str	r12, [sp]
	bl	printf
	str	r0, [sp, #44]           @ 4-byte Spill
@ BB#35:                                @   in Loop: Header=BB11_3 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #348]
	vdup.32	q8, r1
	add	r2, sp, #352
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
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	beq	.LBB11_40
@ BB#36:                                @   in Loop: Header=BB11_3 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB11_38
@ BB#37:                                @   in Loop: Header=BB11_3 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r0, [sp, #700]
	b	.LBB11_39
.LBB11_38:                              @   in Loop: Header=BB11_3 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #700]
.LBB11_39:                              @   in Loop: Header=BB11_3 Depth=1
	b	.LBB11_40
.LBB11_40:                              @   in Loop: Header=BB11_3 Depth=1
	ldr	r0, [sp, #700]
	str	r0, [sp, #348]
	b	.LBB11_3
.LBB11_41:
	movw	r0, :lower16:.L.str.11
	movt	r0, :upper16:.L.str.11
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [sp, #316]
	movw	r12, :lower16:main.text
	movt	r12, :upper16:main.text
	ldr	r3, [r12, r3, lsl #2]
	movw	lr, :lower16:.L.str.10
	movt	lr, :upper16:.L.str.10
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, lr
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	str	r12, [sp, #20]          @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	bl	printf
	ldr	r1, [sp, #284]
	ldr	r2, [sp, #20]           @ 4-byte Reload
	add	r1, r2, r1, lsl #2
	ldr	r1, [r1]
	ldr	r3, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r3
	bl	printf
	movw	r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#42:
.LCPI11_2:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
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
	vmov.i32	q8, #0x0
	add	r0, sp, #48
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #44]
	add	r0, sp, #80
	vst1.64	{d16, d17}, [r0]
	str	r1, [sp, #76]
.LBB12_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	ldr	r1, [sp, #108]
	cmp	r1, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	beq	.LBB12_3
@ BB#2:                                 @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #76]
	cmp	r0, #32
	movw	r0, #0
	movlo	r0, #1
	str	r0, [sp, #40]           @ 4-byte Spill
.LBB12_3:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB12_21
@ BB#4:                                 @   in Loop: Header=BB12_1 Depth=1
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
	beq	.LBB12_9
@ BB#5:                                 @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_7
@ BB#6:                                 @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB12_8
.LBB12_7:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #204]
.LBB12_8:                               @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_9
.LBB12_9:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #204]
	str	r0, [sp, #44]
@ BB#10:                                @   in Loop: Header=BB12_1 Depth=1
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
	beq	.LBB12_15
@ BB#11:                                @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_13
@ BB#12:                                @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #172]
	b	.LBB12_14
.LBB12_13:                              @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #172]
.LBB12_14:                              @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_15
.LBB12_15:                              @   in Loop: Header=BB12_1 Depth=1
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
	beq	.LBB12_20
@ BB#16:                                @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_18
@ BB#17:                                @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #140]
	b	.LBB12_19
.LBB12_18:                              @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #140]
.LBB12_19:                              @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_20
.LBB12_20:                              @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #140]
	str	r0, [sp, #108]
	b	.LBB12_1
.LBB12_21:
	ldr	r0, [sp, #44]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end12:
	.size	bit_shifter, .Lfunc_end12-bit_shifter
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
	bne	.LBB13_2
@ BB#1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB13_5
.LBB13_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	fopen
	movw	r1, #0
	ldr	lr, [sp]
	str	r0, [lr]
	ldr	r0, [sp]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.LBB13_4
@ BB#3:
	ldr	r0, [sp]
	bl	free
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB13_5
.LBB13_4:
	movw	r0, #0
	ldr	r1, [sp]
	strb	r0, [r1, #5]
	ldr	r1, [sp]
	strb	r0, [r1, #7]
	ldr	r0, [sp]
	str	r0, [r11, #-4]
.LBB13_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end13:
	.size	bfopen, .Lfunc_end13-bfopen
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
	sub	sp, sp, #136
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #12]
	ldr	r0, [sp, #12]
	ldrb	r0, [r0, #5]
	cmp	r1, r0
	bne	.LBB14_2
@ BB#1:
	ldr	r0, [sp, #12]
	ldr	r0, [r0]
	bl	fgetc
	movw	lr, #8
	ldr	r1, [sp, #12]
	strb	r0, [r1, #4]
	ldr	r0, [sp, #12]
	strb	lr, [r0, #5]
.LBB14_2:
	movw	r0, #1
	movw	r1, #255
	ldr	r2, [sp, #12]
	ldrb	r3, [r2, #5]
	add	r1, r3, r1
	strb	r1, [r2, #5]
	ldr	r1, [sp, #12]
	ldrb	r1, [r1, #4]
	ldr	r2, [sp, #12]
	ldrb	r2, [r2, #5]
	lsl	r0, r0, r2
	and	r0, r1, r0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end14:
	.size	bfread, .Lfunc_end14-bfread
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
	sub	sp, sp, #152
	bfc	sp, #0, #4
	movw	r2, #8
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #7]
	cmp	r2, r0
	bne	.LBB15_2
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
.LBB15_2:
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
.Lfunc_end15:
	.size	bfwrite, .Lfunc_end15-bfwrite
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
.Lfunc_end16:
	.size	bfclose, .Lfunc_end16-bfclose
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
	beq	.LBB17_5
@ BB#1:
	ldr	r0, [sp, #52]           @ 4-byte Reload
	ldr	r1, [sp, #48]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB17_3
@ BB#2:
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r0, [sp, #252]
	b	.LBB17_4
.LBB17_3:
	ldr	r0, [sp, #48]           @ 4-byte Reload
	str	r0, [sp, #252]
.LBB17_4:
	b	.LBB17_5
.LBB17_5:
	movw	r0, #0
	ldr	r1, [sp, #252]
	str	r1, [sp, #60]
	vmov.i32	q8, #0x0
	add	r1, sp, #96
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #92]
.LBB17_6:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #60]
	cmp	r0, r1
	bge	.LBB17_14
@ BB#7:                                 @   in Loop: Header=BB17_6 Depth=1
	movw	r0, #32
	ldr	r1, [sp, #216]
	add	r2, r1, #1
	str	r2, [sp, #216]
	strb	r0, [r1]
@ BB#8:                                 @   in Loop: Header=BB17_6 Depth=1
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
	beq	.LBB17_13
@ BB#9:                                 @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB17_11
@ BB#10:                                @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #220]
	b	.LBB17_12
.LBB17_11:                              @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #220]
.LBB17_12:                              @   in Loop: Header=BB17_6 Depth=1
	b	.LBB17_13
.LBB17_13:                              @   in Loop: Header=BB17_6 Depth=1
	ldr	r0, [sp, #220]
	str	r0, [sp, #92]
	b	.LBB17_6
.LBB17_14:
	b	.LBB17_15
.LBB17_15:                              @ =>This Inner Loop Header: Depth=1
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
	blt	.LBB17_20
@ BB#16:                                @   in Loop: Header=BB17_15 Depth=1
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
	bne	.LBB17_19
@ BB#17:                                @   in Loop: Header=BB17_15 Depth=1
	ldr	r0, [sp, #156]
	cmp	r0, #0
	beq	.LBB17_19
@ BB#18:                                @   in Loop: Header=BB17_15 Depth=1
	movw	r0, #32
	ldr	r1, [sp, #216]
	add	r2, r1, #1
	str	r2, [sp, #216]
	strb	r0, [r1]
.LBB17_19:                              @   in Loop: Header=BB17_15 Depth=1
	b	.LBB17_15
.LBB17_20:
	movw	r0, #0
	ldr	r1, [sp, #216]
	strb	r0, [r1]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end17:
	.size	bitstring, .Lfunc_end17-bitstring
	.cantunwind
	.fnend

	.globl	bstr_i
	.p2align	2
	.type	bstr_i,%function
	.code	32                      @ @bstr_i
bstr_i:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #184
	bfc	sp, #0, #4
	movw	r1, #0
	str	r0, [sp, #92]
	vmov.i32	q8, #0x0
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0]
	str	r1, [sp, #28]
.LBB18_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	movw	r1, #0
	ldr	r2, [sp, #92]
	cmp	r2, r1
	str	r0, [sp, #24]           @ 4-byte Spill
	beq	.LBB18_4
@ BB#2:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #92]
	ldrb	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	beq	.LBB18_4
@ BB#3:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, :lower16:.L.str.12
	movt	r0, :upper16:.L.str.12
	ldr	r1, [sp, #92]
	ldrb	r1, [r1]
	bl	strchr
	movw	r1, #0
	cmp	r0, r1
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #24]           @ 4-byte Spill
.LBB18_4:                               @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB18_11
@ BB#5:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #92]
	add	r2, r1, #1
	str	r2, [sp, #92]
	ldrb	r1, [r1]
	str	r1, [sp, #124]
	vdup.32	q8, r1
	add	r2, sp, #96
	vst1.32	{d16, d17}, [r2]
	vmov.i32	q9, #0x30
	vsub.i32	q8, q8, q9
	add	r2, sp, #64
	vst1.64	{d16, d17}, [r2]
	sub	r1, r1, #48
	str	r1, [sp, #60]
	ldr	r1, [sp, #28]
	vdup.32	q8, r1
	add	r3, sp, #32
	vst1.64	{d16, d17}, [r3:128]
	vshl.i32	q8, q8, #1
	vmov.i32	q9, #0x1
	vst1.64	{d16, d17}, [r3]
	lsl	r1, r1, #1
	str	r1, [sp, #28]
	ldr	r12, [sp, #60]
	vld1.64	{d16, d17}, [r2:128]
	vand	q8, q8, q9
	and	r2, r12, #1
	vld1.64	{d18, d19}, [r3:128]
	vorr	q8, q9, q8
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	orr	r1, r1, r2
	mul	r0, r1, r0
	str	r1, [sp, #156]
	cmp	r12, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r12, [sp, #12]          @ 4-byte Spill
	beq	.LBB18_10
@ BB#6:                                 @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB18_8
@ BB#7:                                 @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #156]
	b	.LBB18_9
.LBB18_8:                               @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #156]
.LBB18_9:                               @   in Loop: Header=BB18_1 Depth=1
	b	.LBB18_10
.LBB18_10:                              @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #156]
	str	r0, [sp, #28]
	b	.LBB18_1
.LBB18_11:
	ldr	r0, [sp, #28]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end18:
	.size	bstr_i, .Lfunc_end18-bstr_i
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
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
