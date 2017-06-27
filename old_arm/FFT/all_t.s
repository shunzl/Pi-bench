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
	bhs	.LBB0_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #60]
	b	.LBB0_5
.LBB0_2:
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
	beq	.LBB0_4
@ BB#3:
	movw	r0, #0
	str	r0, [sp, #60]
	b	.LBB0_5
.LBB0_4:
	movw	r0, #1
	str	r0, [sp, #60]
.LBB0_5:
	ldr	r0, [sp, #60]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end0:
	.size	IsPowerOfTwo, .Lfunc_end0-IsPowerOfTwo
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
	bhs	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #76]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r0, #0
	str	r0, [sp, #44]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
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
	beq	.LBB1_5
@ BB#4:
	ldr	r0, [sp, #44]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.LBB1_5:                                @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_3 Depth=1
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
	beq	.LBB1_11
@ BB#7:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_9
@ BB#8:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #108]
	b	.LBB1_10
.LBB1_9:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #108]
.LBB1_10:                               @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_11
.LBB1_11:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #108]
	str	r0, [sp, #44]
	b	.LBB1_3
.Lfunc_end1:
	.size	NumberOfBitsNeeded, .Lfunc_end1-NumberOfBitsNeeded
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
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #108]
	cmp	r0, r1
	bhs	.LBB2_19
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
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
	beq	.LBB2_7
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_5
@ BB#4:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r0, [sp, #236]
	b	.LBB2_6
.LBB2_5:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #236]
.LBB2_6:                                @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_7
.LBB2_7:                                @   in Loop: Header=BB2_1 Depth=1
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
	beq	.LBB2_12
@ BB#8:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_10
@ BB#9:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #204]
	b	.LBB2_11
.LBB2_10:                               @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #204]
.LBB2_11:                               @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_12
.LBB2_12:                               @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #204]
	str	r0, [sp, #140]
@ BB#13:                                @   in Loop: Header=BB2_1 Depth=1
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
	beq	.LBB2_18
@ BB#14:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_16
@ BB#15:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #172]
	b	.LBB2_17
.LBB2_16:                               @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #172]
.LBB2_17:                               @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_18
.LBB2_18:                               @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #172]
	str	r0, [sp, #76]
	b	.LBB2_1
.LBB2_19:
	ldr	r0, [sp, #44]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end2:
	.size	ReverseBits, .Lfunc_end2-ReverseBits
	.cantunwind
	.fnend

	.globl	Index_to_frequency
	.p2align	3
	.type	Index_to_frequency,%function
	.code	32                      @ @Index_to_frequency
Index_to_frequency:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #432
	bfc	sp, #0, #4
	str	r0, [sp, #124]
	str	r1, [sp, #92]
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #124]
	cmp	r0, r1
	blo	.LBB3_2
@ BB#1:
	vldr	d16, .LCPI3_0
	vstr	d16, [sp, #152]
	b	.LBB3_16
.LBB3_2:
	movw	r0, #1
	movw	r1, #2
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #124]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r12, sp, #128
	vst1.64	{d16, d17}, [r12:128]
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, r3
	add	r4, sp, #64
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	str	r2, [sp, #60]           @ 4-byte Spill
	bl	__udivsi3
	ldr	r1, [sp, #60]           @ 4-byte Reload
	cmp	r1, r0
	bhi	.LBB3_9
@ BB#3:
	vmov.f64	d16, #3.000000e+00
	vldr	s0, [sp, #92]
	vcvt.f64.u32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vldr	s0, [sp, #124]
	vcvt.f64.u32	d20, s0
	vmov.f64	d22, d20
	vmov.f64	d23, d20
	vstr	d17, [sp, #344]
	add	r0, sp, #320
	vst1.32	{d18, d19}, [r0]
	vstr	d20, [sp, #296]
	add	r0, sp, #272
	vst1.32	{d22, d23}, [r0]
	vdiv.f64	d21, d17, d20
	vmov.f64	d18, d21
	vmov.f64	d19, d21
	add	r0, sp, #160
	vst1.64	{d18, d19}, [r0]
	vmov.f64	d21, d18
	vmov.f64	d24, d19
	vadd.f64	d25, d21, d24
	vadd.f64	d24, d25, d24
	vdiv.f64	d17, d17, d20
	vmul.f64	d16, d17, d16
	vstr	d17, [sp, #408]
	vcmpe.f64	d24, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #48]          @ 8-byte Spill
	vstr	d24, [sp, #40]          @ 8-byte Spill
	vstr	d21, [sp, #32]          @ 8-byte Spill
	beq	.LBB3_8
@ BB#4:
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #40]          @ 8-byte Reload
	vldr	d18, [sp, #32]          @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB3_6
@ BB#5:
	vldr	d16, [sp, #48]          @ 8-byte Reload
	vstr	d16, [sp, #408]
	b	.LBB3_7
.LBB3_6:
	vldr	d16, [sp, #32]          @ 8-byte Reload
	vstr	d16, [sp, #408]
.LBB3_7:
	b	.LBB3_8
.LBB3_8:
	vldr	d16, [sp, #408]
	vstr	d16, [sp, #152]
	b	.LBB3_16
.LBB3_9:
	b	.LBB3_10
.LBB3_10:
	vmov.f64	d16, #3.000000e+00
	ldr	r0, [sp, #124]
	vdup.32	q9, r0
	add	r1, sp, #128
	vst1.64	{d18, d19}, [r1:128]
	ldr	r1, [sp, #92]
	vdup.32	q9, r1
	add	r2, sp, #96
	vst1.64	{d18, d19}, [r2:128]
	sub	r0, r0, r1
	vmov	s0, r0
	vcvt.f64.u32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vstr	d17, [sp, #248]
	add	r0, sp, #224
	vst1.32	{d18, d19}, [r0]
	vneg.f64	d17, d17
	vldr	s0, [sp, #124]
	vcvt.f64.u32	d20, s0
	vmov.f64	d18, d20
	vmov.f64	d19, d20
	vstr	d20, [sp, #200]
	add	r0, sp, #176
	vst1.32	{d18, d19}, [r0]
	vdiv.f64	d21, d17, d20
	vmov.f64	d18, d21
	vmov.f64	d19, d21
	add	r0, sp, #160
	vst1.64	{d18, d19}, [r0]
	vmov.f64	d21, d18
	vmov.f64	d22, d19
	vadd.f64	d23, d21, d22
	vadd.f64	d22, d23, d22
	vdiv.f64	d17, d17, d20
	vmul.f64	d16, d17, d16
	vstr	d17, [sp, #376]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #24]          @ 8-byte Spill
	vstr	d22, [sp, #16]          @ 8-byte Spill
	vstr	d21, [sp, #8]           @ 8-byte Spill
	beq	.LBB3_15
@ BB#11:
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #16]          @ 8-byte Reload
	vldr	d18, [sp, #8]           @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB3_13
@ BB#12:
	vldr	d16, [sp, #24]          @ 8-byte Reload
	vstr	d16, [sp, #376]
	b	.LBB3_14
.LBB3_13:
	vldr	d16, [sp, #8]           @ 8-byte Reload
	vstr	d16, [sp, #376]
.LBB3_14:
	b	.LBB3_15
.LBB3_15:
	vldr	d16, [sp, #376]
	vstr	d16, [sp, #152]
.LBB3_16:
	vldr	d16, [sp, #152]
	vmov	r0, r1, d16
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#17:
.LCPI3_0:
	.long	0                       @ double 0
	.long	0
.Lfunc_end3:
	.size	Index_to_frequency, .Lfunc_end3-Index_to_frequency
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
	sub	sp, sp, #1600
	bfc	sp, #0, #4
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	vldr	d16, .LCPI4_2
	str	r0, [sp, #892]
	str	r1, [sp, #860]
	str	r2, [sp, #856]
	str	r3, [sp, #852]
	str	lr, [sp, #848]
	str	r12, [sp, #844]
	vstr	d16, [sp, #584]
	ldr	r0, [sp, #892]
	bl	IsPowerOfTwo
	cmp	r0, #0
	bne	.LBB4_2
@ BB#1:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #892]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #212]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB4_2:
	ldr	r0, [sp, #860]
	cmp	r0, #0
	beq	.LBB4_4
@ BB#3:
	vldr	d16, [sp, #584]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r0, sp, #592
	vst1.64	{d18, d19}, [r0:128]
	vneg.f64	d17, d16
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vorr	q10, q9, q9
	vst1.64	{d18, d19}, [r0]
	vneg.f64	d16, d16
	vstr	d16, [sp, #584]
	add	lr, sp, #192
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
.LBB4_4:
	movw	r1, :lower16:.L.str.1.2
	movt	r1, :upper16:.L.str.1.2
	ldr	r0, [sp, #856]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	ldr	r0, [sp, #848]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	ldr	r0, [sp, #844]
	bl	CheckPointer
	ldr	r0, [sp, #892]
	bl	NumberOfBitsNeeded
	movw	r1, #0
	str	r0, [sp, #812]
	str	r1, [sp, #780]
.LBB4_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #780]
	ldr	r1, [sp, #892]
	cmp	r0, r1
	bhs	.LBB4_13
@ BB#6:                                 @   in Loop: Header=BB4_5 Depth=1
	movw	r0, #0
	movw	r1, #2
	ldr	r2, [sp, #780]
	ldr	r3, [sp, #812]
	str	r0, [sp, #188]          @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #184]          @ 4-byte Spill
	mov	r1, r3
	bl	ReverseBits
	str	r0, [sp, #748]
	ldr	r1, [sp, #856]
	ldr	r2, [sp, #780]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	ldr	r1, [sp, #848]
	mov	r2, r0
	add	r0, r1, r0, lsl #2
	vstr	s0, [r0]
	ldr	r0, [sp, #852]
	ldr	r1, [sp, #188]          @ 4-byte Reload
	cmp	r0, r1
	str	r2, [sp, #180]          @ 4-byte Spill
	bne	.LBB4_8
@ BB#7:                                 @   in Loop: Header=BB4_5 Depth=1
	vldr	d16, .LCPI4_3
	vstr	d16, [sp, #168]         @ 8-byte Spill
	b	.LBB4_9
.LBB4_8:                                @   in Loop: Header=BB4_5 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #852]
	ldr	r2, [sp, #780]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	str	r0, [sp, #164]          @ 4-byte Spill
	vstr	d16, [sp, #168]         @ 8-byte Spill
.LBB4_9:                                @   in Loop: Header=BB4_5 Depth=1
	vldr	d16, [sp, #168]         @ 8-byte Reload
	movw	r0, #2
	vcvt.f32.f64	s0, d16
	ldr	r1, [sp, #844]
	ldr	r2, [sp, #748]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	str	r0, [sp, #160]          @ 4-byte Spill
@ BB#10:                                @   in Loop: Header=BB4_5 Depth=1
	ldr	r0, [sp, #780]
	vdup.32	q8, r0
	add	r1, sp, #784
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #780]
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB4_5
	.p2align	3
@ BB#11:
.LCPI4_2:
	.long	1413754136              @ double 6.2831853071795862
	.long	1075388923
	.p2align	3
@ BB#12:
.LCPI4_3:
	.long	0                       @ double 0
	.long	0
.LBB4_13:
	movw	r0, #2
	movw	r1, #1
	str	r1, [sp, #620]
	str	r0, [sp, #652]
.LBB4_14:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_16 Depth 2
                                        @       Child Loop BB4_18 Depth 3
	ldr	r0, [sp, #652]
	ldr	r1, [sp, #892]
	cmp	r0, r1
	bhi	.LBB4_40
@ BB#15:                                @   in Loop: Header=BB4_14 Depth=1
	movw	r0, #0
	vmov.f64	d16, #2.000000e+00
	vldr	d17, [sp, #584]
	vldr	s0, [sp, #652]
	vcvt.f64.u32	d18, s0
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r1, sp, #592
	vld1.64	{d22, d23}, [r1:128]
	add	r4, sp, #1024
	vstr	d18, [r4, #392]
	add	r1, sp, #1392
	vst1.32	{d20, d21}, [r1]
	vmov.f64	d19, d23
	vdiv.f64	d19, d19, d18
	vmov.f64	d24, d22
	vdiv.f64	d24, d24, d18
	vmov.f64	d20, d24
	vmov.f64	d21, d19
	add	r1, sp, #496
	vst1.64	{d20, d21}, [r1]
	vdiv.f64	d17, d17, d18
	vstr	d17, [sp, #488]
	vmov.f64	d18, #-2.000000e+00
	vmul.f64	d17, d17, d18
	vmov	r1, r2, d17
	str	r0, [sp, #140]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d18, [sp, #128]         @ 8-byte Spill
	vstr	d16, [sp, #120]         @ 8-byte Spill
	bl	sin
	str	r0, [sp, #456]
	str	r1, [sp, #460]
	vldr	d16, [sp, #488]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	sin
	str	r0, [sp, #424]
	str	r1, [sp, #428]
	vldr	d16, [sp, #488]
	vldr	d17, [sp, #128]         @ 8-byte Reload
	vmul.f64	d16, d16, d17
	vmov	r0, r1, d16
	bl	cos
	str	r0, [sp, #392]
	str	r1, [sp, #396]
	vldr	d16, [sp, #488]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #360]
	add	r0, sp, #368
	vst1.64	{d20, d21}, [r0:128]
	vadd.f64	d17, d16, d16
	vmov.f64	d20, d17
	vmov.f64	d21, d17
	vorr	q11, q10, q10
	add	r0, sp, #336
	vst1.64	{d20, d21}, [r0]
	vldr	d17, [sp, #120]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vstr	d16, [sp, #328]
	ldr	r0, [sp, #140]          @ 4-byte Reload
	str	r0, [sp, #780]
	add	lr, sp, #96
	vst1.64	{d22, d23}, [lr:128]    @ 16-byte Spill
.LBB4_16:                               @   Parent Loop BB4_14 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB4_18 Depth 3
	ldr	r0, [sp, #780]
	ldr	r1, [sp, #892]
	cmp	r0, r1
	bhs	.LBB4_33
@ BB#17:                                @   in Loop: Header=BB4_16 Depth=2
	movw	r0, #0
	vldr	d16, [sp, #392]
	vstr	d16, [sp, #320]
	vldr	d16, [sp, #360]
	vstr	d16, [sp, #312]
	vldr	d16, [sp, #456]
	vstr	d16, [sp, #296]
	vldr	d16, [sp, #424]
	vstr	d16, [sp, #288]
	ldr	r1, [sp, #780]
	str	r1, [sp, #748]
	str	r0, [sp, #684]
.LBB4_18:                               @   Parent Loop BB4_14 Depth=1
                                        @     Parent Loop BB4_16 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #684]
	ldr	r1, [sp, #620]
	cmp	r0, r1
	bhs	.LBB4_31
@ BB#19:                                @   in Loop: Header=BB4_18 Depth=3
	movw	r0, #2
	vldr	d16, [sp, #328]
	vldr	d17, [sp, #312]
	vldr	d18, [sp, #320]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #304]
	vldr	d16, [sp, #312]
	vstr	d16, [sp, #320]
	vldr	d16, [sp, #304]
	vstr	d16, [sp, #312]
	vldr	d16, [sp, #328]
	vldr	d17, [sp, #288]
	vldr	d18, [sp, #296]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #280]
	vldr	d16, [sp, #288]
	vstr	d16, [sp, #296]
	vldr	d16, [sp, #280]
	vstr	d16, [sp, #288]
	ldr	r1, [sp, #748]
	ldr	r2, [sp, #620]
	add	r1, r1, r2
	str	r1, [sp, #716]
	vldr	d16, [sp, #304]
	ldr	r2, [sp, #848]
	add	r2, r2, r1, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #280]
	ldr	r2, [sp, #844]
	add	r1, r2, r1, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [sp, #552]
	vldr	d16, [sp, #304]
	ldr	r1, [sp, #844]
	ldr	r2, [sp, #716]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #280]
	ldr	r1, [sp, #848]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	vstr	d16, [sp, #520]
	ldr	r1, [sp, #848]
	ldr	r2, [sp, #748]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [sp, #552]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [sp, #716]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	ldr	r1, [sp, #844]
	ldr	r2, [sp, #748]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [sp, #520]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [sp, #716]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	vldr	d16, [sp, #552]
	ldr	r1, [sp, #848]
	ldr	r2, [sp, #748]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [sp, #520]
	ldr	r1, [sp, #844]
	ldr	r2, [sp, #748]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	str	r0, [sp, #92]           @ 4-byte Spill
@ BB#20:                                @   in Loop: Header=BB4_18 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #748]
	vdup.32	q8, r1
	add	r2, sp, #752
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
	str	r1, [sp, #1548]
	cmp	r3, r0
	str	r1, [sp, #88]           @ 4-byte Spill
	str	r3, [sp, #84]           @ 4-byte Spill
	str	r2, [sp, #80]           @ 4-byte Spill
	beq	.LBB4_25
@ BB#21:                                @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #84]           @ 4-byte Reload
	ldr	r1, [sp, #80]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_23
@ BB#22:                                @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #88]           @ 4-byte Reload
	str	r0, [sp, #1548]
	b	.LBB4_24
.LBB4_23:                               @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #80]           @ 4-byte Reload
	str	r0, [sp, #1548]
.LBB4_24:                               @   in Loop: Header=BB4_18 Depth=3
	b	.LBB4_25
.LBB4_25:                               @   in Loop: Header=BB4_18 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #1548]
	str	r1, [sp, #748]
	ldr	r1, [sp, #684]
	vdup.32	q8, r1
	add	r2, sp, #688
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
	str	r1, [sp, #1516]
	cmp	r3, r0
	str	r1, [sp, #76]           @ 4-byte Spill
	str	r3, [sp, #72]           @ 4-byte Spill
	str	r2, [sp, #68]           @ 4-byte Spill
	beq	.LBB4_30
@ BB#26:                                @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #72]           @ 4-byte Reload
	ldr	r1, [sp, #68]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_28
@ BB#27:                                @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #76]           @ 4-byte Reload
	str	r0, [sp, #1516]
	b	.LBB4_29
.LBB4_28:                               @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #68]           @ 4-byte Reload
	str	r0, [sp, #1516]
.LBB4_29:                               @   in Loop: Header=BB4_18 Depth=3
	b	.LBB4_30
.LBB4_30:                               @   in Loop: Header=BB4_18 Depth=3
	ldr	r0, [sp, #1516]
	str	r0, [sp, #684]
	b	.LBB4_18
.LBB4_31:                               @   in Loop: Header=BB4_16 Depth=2
	b	.LBB4_32
.LBB4_32:                               @   in Loop: Header=BB4_16 Depth=2
	ldr	r0, [sp, #652]
	vdup.32	q8, r0
	add	r1, sp, #656
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #780]
	add	r2, sp, #784
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #780]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB4_16
.LBB4_33:                               @   in Loop: Header=BB4_14 Depth=1
	ldr	r0, [sp, #652]
	str	r0, [sp, #620]
@ BB#34:                                @   in Loop: Header=BB4_14 Depth=1
	movw	r0, #3
	movw	r1, #1
	ldr	r2, [sp, #652]
	vdup.32	q8, r2
	add	r3, sp, #656
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
	str	r2, [sp, #1484]
	cmp	r12, r0
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	str	r12, [sp, #36]          @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	beq	.LBB4_39
@ BB#35:                                @   in Loop: Header=BB4_14 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_37
@ BB#36:                                @   in Loop: Header=BB4_14 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #1484]
	b	.LBB4_38
.LBB4_37:                               @   in Loop: Header=BB4_14 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #1484]
.LBB4_38:                               @   in Loop: Header=BB4_14 Depth=1
	b	.LBB4_39
.LBB4_39:                               @   in Loop: Header=BB4_14 Depth=1
	ldr	r0, [sp, #1484]
	str	r0, [sp, #652]
	b	.LBB4_14
.LBB4_40:
	ldr	r0, [sp, #860]
	cmp	r0, #0
	beq	.LBB4_51
@ BB#41:
	movw	r0, #0
	ldr	r1, [sp, #892]
	vmov	s0, r1
	vcvt.f64.u32	d16, s0
	vstr	d16, [sp, #216]
	str	r0, [sp, #780]
.LBB4_42:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #780]
	ldr	r1, [sp, #892]
	cmp	r0, r1
	bhs	.LBB4_50
@ BB#43:                                @   in Loop: Header=BB4_42 Depth=1
	vldr	d16, [sp, #216]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r0, sp, #224
	vst1.64	{d18, d19}, [r0:128]
	ldr	r1, [sp, #848]
	ldr	r2, [sp, #780]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vstr	d17, [sp, #984]
	add	r2, sp, #960
	vst1.32	{d18, d19}, [r2]
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [sp, #216]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vst1.64	{d18, d19}, [r0:128]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #780]
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	vstr	d17, [sp, #936]
	vorr	q10, q9, q9
	add	r1, sp, #912
	vst1.32	{d18, d19}, [r1]
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0]
	add	lr, sp, #16
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
@ BB#44:                                @   in Loop: Header=BB4_42 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #780]
	add	r2, sp, #784
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
	str	r1, [sp, #1452]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB4_49
@ BB#45:                                @   in Loop: Header=BB4_42 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_47
@ BB#46:                                @   in Loop: Header=BB4_42 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #1452]
	b	.LBB4_48
.LBB4_47:                               @   in Loop: Header=BB4_42 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #1452]
.LBB4_48:                               @   in Loop: Header=BB4_42 Depth=1
	b	.LBB4_49
.LBB4_49:                               @   in Loop: Header=BB4_42 Depth=1
	ldr	r0, [sp, #1452]
	str	r0, [sp, #780]
	b	.LBB4_42
.LBB4_50:
	b	.LBB4_51
.LBB4_51:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
@ BB#52:
.Lfunc_end4:
	.size	fft_float, .Lfunc_end4-fft_float
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
	bne	.LBB5_2
@ BB#1:
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #8]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB5_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end5:
	.size	CheckPointer, .Lfunc_end5-CheckPointer
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
	sub	sp, sp, #1072
	bfc	sp, #0, #4
	movw	r2, #0
	str	r2, [sp, #460]
	str	r0, [sp, #428]
	str	r1, [sp, #424]
	str	r2, [sp, #252]
	ldr	r0, [sp, #428]
	cmp	r0, #3
	bge	.LBB6_2
@ BB#1:
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	bl	printf
	movw	lr, :lower16:.L.str.1.6
	movt	lr, :upper16:.L.str.1.6
	str	r0, [sp, #248]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.2.7
	movt	lr, :upper16:.L.str.2.7
	str	r0, [sp, #244]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.3.8
	movt	lr, :upper16:.L.str.3.8
	str	r0, [sp, #240]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	mvn	lr, #0
	str	r0, [sp, #236]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB6_2:
	ldr	r0, [sp, #428]
	cmp	r0, #4
	bne	.LBB6_4
@ BB#3:
	movw	r1, :lower16:.L.str.4.9
	movt	r1, :upper16:.L.str.4.9
	movw	r2, #2
	ldr	r0, [sp, #424]
	ldr	r0, [r0, #12]
	bl	strncmp
	mvn	r1, #0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	eor	r0, r0, r1
	and	r0, r0, #1
	str	r0, [sp, #252]
.LBB6_4:
	b	.LBB6_5
.LBB6_5:
	movw	r0, #2
	ldr	r1, [sp, #424]
	ldr	r1, [r1, #8]
	str	r0, [sp, #232]          @ 4-byte Spill
	mov	r0, r1
	bl	atoi
	str	r0, [sp, #396]
	ldr	r0, [sp, #424]
	ldr	r0, [r0, #4]
	bl	atoi
	str	r0, [sp, #364]
	mov	r0, #1
	bl	srand
	ldr	r0, [sp, #396]
	vdup.32	q8, r0
	add	r1, sp, #400
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	str	r1, [sp, #228]          @ 4-byte Spill
	bl	malloc
	str	r0, [sp, #296]
	ldr	r0, [sp, #396]
	vdup.32	q8, r0
	ldr	r1, [sp, #228]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [sp, #292]
	ldr	r0, [sp, #396]
	vdup.32	q8, r0
	ldr	r1, [sp, #228]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [sp, #288]
	ldr	r0, [sp, #396]
	vdup.32	q8, r0
	ldr	r1, [sp, #228]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [sp, #284]
	ldr	r0, [sp, #364]
	vdup.32	q8, r0
	add	r1, sp, #368
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	str	r1, [sp, #224]          @ 4-byte Spill
	bl	malloc
	str	r0, [sp, #280]
	ldr	r0, [sp, #364]
	vdup.32	q8, r0
	ldr	r1, [sp, #224]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	lsl	r0, r0, #2
	bl	malloc
	movw	r1, #0
	str	r0, [sp, #276]
	str	r1, [sp, #332]
.LBB6_6:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #332]
	ldr	r1, [sp, #364]
	cmp	r0, r1
	bhs	.LBB6_9
@ BB#7:                                 @   in Loop: Header=BB6_6 Depth=1
	movw	r0, #2
	str	r0, [sp, #220]          @ 4-byte Spill
	bl	rand
	str	r0, [sp, #700]
	vdup.32	q8, r0
	add	lr, sp, #672
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
	ldr	r0, [sp, #280]
	ldr	r1, [sp, #332]
	add	r0, r0, r1, lsl #2
	vstr	s0, [r0]
	str	r2, [sp, #216]          @ 4-byte Spill
	str	lr, [sp, #212]          @ 4-byte Spill
	bl	rand
	str	r0, [sp, #652]
	vdup.32	q8, r0
	add	r1, sp, #624
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [sp, #212]          @ 4-byte Reload
	smmul	r2, r0, r1
	asr	lr, r2, #6
	add	r2, lr, r2, lsr #31
	ldr	lr, [sp, #216]          @ 4-byte Reload
	mls	r0, r2, lr, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [sp, #276]
	ldr	r2, [sp, #332]
	add	r0, r0, r2, lsl #2
	vstr	s0, [r0]
@ BB#8:                                 @   in Loop: Header=BB6_6 Depth=1
	ldr	r0, [sp, #332]
	vdup.32	q8, r0
	add	r1, sp, #336
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #332]
	add	lr, sp, #192
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB6_6
.LBB6_9:
	movw	r0, #0
	str	r0, [sp, #332]
.LBB6_10:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_12 Depth 2
	ldr	r0, [sp, #332]
	ldr	r1, [sp, #396]
	cmp	r0, r1
	bhs	.LBB6_25
@ BB#11:                                @   in Loop: Header=BB6_10 Depth=1
	movw	r0, #0
	vldr	s0, .LCPI6_1
	movw	r1, #2
	ldr	r2, [sp, #296]
	ldr	r3, [sp, #332]
	add	r2, r2, r3, lsl #2
	vstr	s0, [r2]
	str	r0, [sp, #300]
	str	r1, [sp, #188]          @ 4-byte Spill
.LBB6_12:                               @   Parent Loop BB6_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #300]
	ldr	r1, [sp, #364]
	cmp	r0, r1
	bhs	.LBB6_23
@ BB#13:                                @   in Loop: Header=BB6_12 Depth=2
	movw	r1, #2
	str	r1, [sp, #184]          @ 4-byte Spill
	bl	rand
	mov	r1, r0
	str	r0, [sp, #604]
	vdup.32	q8, r0
	vorr	q9, q8, q8
	add	r0, sp, #576
	vst1.32	{d16, d17}, [r0]
	mov	r0, r1
	ldr	r1, [sp, #184]          @ 4-byte Reload
	add	r4, sp, #160
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__modsi3
	cmp	r0, #0
	beq	.LBB6_15
@ BB#14:                                @   in Loop: Header=BB6_12 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #280]
	ldr	r2, [sp, #300]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	ldr	r1, [sp, #276]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vldr	s2, [sp, #332]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r1, r2, d17
	str	r0, [sp, #156]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d16, [sp, #144]         @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #144]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [sp, #296]
	ldr	r1, [sp, #332]
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0]
	b	.LBB6_16
.LBB6_15:                               @   in Loop: Header=BB6_12 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #280]
	ldr	r2, [sp, #300]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	ldr	r1, [sp, #276]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vldr	s2, [sp, #332]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r1, r2, d17
	str	r0, [sp, #140]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d16, [sp, #128]         @ 8-byte Spill
	bl	sin
	vmov	d16, r0, r1
	vldr	d17, [sp, #128]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [sp, #296]
	ldr	r1, [sp, #332]
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0]
.LBB6_16:                               @   in Loop: Header=BB6_12 Depth=2
	vldr	s0, .LCPI6_0
	movw	r0, #2
	ldr	r1, [sp, #292]
	ldr	r2, [sp, #332]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	str	r0, [sp, #124]          @ 4-byte Spill
@ BB#17:                                @   in Loop: Header=BB6_12 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #300]
	vdup.32	q8, r1
	add	r2, sp, #304
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
	str	r1, [sp, #1052]
	cmp	r3, r0
	str	r1, [sp, #120]          @ 4-byte Spill
	str	r3, [sp, #116]          @ 4-byte Spill
	str	r2, [sp, #112]          @ 4-byte Spill
	beq	.LBB6_22
@ BB#18:                                @   in Loop: Header=BB6_12 Depth=2
	ldr	r0, [sp, #116]          @ 4-byte Reload
	ldr	r1, [sp, #112]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_20
@ BB#19:                                @   in Loop: Header=BB6_12 Depth=2
	ldr	r0, [sp, #120]          @ 4-byte Reload
	str	r0, [sp, #1052]
	b	.LBB6_21
.LBB6_20:                               @   in Loop: Header=BB6_12 Depth=2
	ldr	r0, [sp, #112]          @ 4-byte Reload
	str	r0, [sp, #1052]
.LBB6_21:                               @   in Loop: Header=BB6_12 Depth=2
	b	.LBB6_22
.LBB6_22:                               @   in Loop: Header=BB6_12 Depth=2
	ldr	r0, [sp, #1052]
	str	r0, [sp, #300]
	b	.LBB6_12
.LBB6_23:                               @   in Loop: Header=BB6_10 Depth=1
	b	.LBB6_24
.LBB6_24:                               @   in Loop: Header=BB6_10 Depth=1
	ldr	r0, [sp, #332]
	add	r1, sp, #336
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #332]
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB6_10
.LBB6_25:
	movw	r0, :lower16:fft_float
	movt	r0, :upper16:fft_float
	ldr	r1, [sp, #396]
	ldr	r2, [sp, #252]
	ldr	r3, [sp, #296]
	ldr	r12, [sp, #292]
	ldr	lr, [sp, #288]
	ldr	r4, [sp, #284]
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	str	lr, [sp]
	str	r4, [sp, #4]
	ldr	r12, [sp, #92]          @ 4-byte Reload
	blx	r12
	movw	r1, :lower16:.L.str.5.10
	movt	r1, :upper16:.L.str.5.10
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	movw	r1, #0
	str	r1, [sp, #332]
	str	r0, [sp, #84]           @ 4-byte Spill
.LBB6_26:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #332]
	ldr	r1, [sp, #396]
	cmp	r0, r1
	bhs	.LBB6_29
@ BB#27:                                @   in Loop: Header=BB6_26 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [sp, #288]
	ldr	r3, [sp, #332]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [sp, #80]           @ 4-byte Spill
	bl	printf
	str	r0, [sp, #76]           @ 4-byte Spill
@ BB#28:                                @   in Loop: Header=BB6_26 Depth=1
	ldr	r0, [sp, #332]
	add	r1, sp, #336
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #332]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB6_26
.LBB6_29:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #0
	str	lr, [sp, #332]
	str	r0, [sp, #40]           @ 4-byte Spill
.LBB6_30:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #332]
	ldr	r1, [sp, #396]
	cmp	r0, r1
	bhs	.LBB6_39
@ BB#31:                                @   in Loop: Header=BB6_30 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [sp, #284]
	ldr	r3, [sp, #332]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [sp, #36]           @ 4-byte Spill
	bl	printf
	str	r0, [sp, #32]           @ 4-byte Spill
@ BB#32:                                @   in Loop: Header=BB6_30 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #332]
	add	r2, sp, #336
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
	str	r1, [sp, #1020]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB6_38
@ BB#33:                                @   in Loop: Header=BB6_30 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_36
@ BB#34:                                @   in Loop: Header=BB6_30 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #1020]
	b	.LBB6_37
	.p2align	2
@ BB#35:
.LCPI6_1:
	.long	0                       @ float 0
.LBB6_36:                               @   in Loop: Header=BB6_30 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #1020]
.LBB6_37:                               @   in Loop: Header=BB6_30 Depth=1
	b	.LBB6_38
.LBB6_38:                               @   in Loop: Header=BB6_30 Depth=1
	ldr	r0, [sp, #1020]
	str	r0, [sp, #332]
	b	.LBB6_30
.LBB6_39:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	ldr	lr, [sp, #296]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, lr
	bl	free
	ldr	r0, [sp, #292]
	bl	free
	ldr	r0, [sp, #288]
	bl	free
	ldr	r0, [sp, #284]
	bl	free
	ldr	r0, [sp, #280]
	bl	free
	ldr	r0, [sp, #276]
	bl	free
	movw	r0, #0
	bl	exit
	.p2align	2
@ BB#40:
.LCPI6_0:
	.long	0                       @ float 0
.Lfunc_end6:
	.size	main, .Lfunc_end6-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\n"
	.size	.L.str, 73

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Error in fft():  NumSamples=%u is not power of two\n"
	.size	.L.str.1, 52

	.type	.L.str.1.2,%object      @ @.str.1.2
.L.str.1.2:
	.asciz	"RealIn"
	.size	.L.str.1.2, 7

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"RealOut"
	.size	.L.str.2, 8

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"ImagOut"
	.size	.L.str.3, 8

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Error in fft_float():  %s == NULL\n"
	.size	.L.str.4, 35

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Usage: fft <waves> <length> -i\n"
	.size	.L.str.5, 32

	.type	.L.str.1.6,%object      @ @.str.1.6
.L.str.1.6:
	.asciz	"-i performs an inverse fft\n"
	.size	.L.str.1.6, 28

	.type	.L.str.2.7,%object      @ @.str.2.7
.L.str.2.7:
	.asciz	"make <waves> random sinusoids"
	.size	.L.str.2.7, 30

	.type	.L.str.3.8,%object      @ @.str.3.8
.L.str.3.8:
	.asciz	"<length> is the number of samples\n"
	.size	.L.str.3.8, 35

	.type	.L.str.4.9,%object      @ @.str.4.9
.L.str.4.9:
	.asciz	"-i"
	.size	.L.str.4.9, 3

	.type	.L.str.5.10,%object     @ @.str.5.10
.L.str.5.10:
	.asciz	"RealOut:\n"
	.size	.L.str.5.10, 10

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


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
