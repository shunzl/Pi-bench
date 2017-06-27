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
	.globl	IsPowerOfTwo
	.p2align	2
	.type	IsPowerOfTwo,%function
	.code	32                      @ @IsPowerOfTwo
IsPowerOfTwo:
	.fnstart
@ BB#0:
	sub	sp, sp, #8
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r0, #2
	bhs	.LBB0_2
@ BB#1:
	movw	r0, #0
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_2:
	ldr	r0, [sp]
	ldr	r1, [sp]
	sub	r1, r1, #1
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LBB0_4
@ BB#3:
	movw	r0, #0
	str	r0, [sp, #4]
	b	.LBB0_5
.LBB0_4:
	movw	r0, #1
	str	r0, [sp, #4]
.LBB0_5:
	ldr	r0, [sp, #4]
	add	sp, sp, #8
	bx	lr
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	cmp	r0, #2
	bhs	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r0, #0
	str	r0, [sp, #8]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-4]
	ldr	r2, [sp, #8]
	lsl	r0, r0, r2
	and	r0, r1, r0
	cmp	r0, #0
	beq	.LBB1_5
@ BB#4:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, pc}
.LBB1_5:                                @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_6
.LBB1_6:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
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
	sub	sp, sp, #20
	movw	r2, #0
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	str	r2, [sp, #4]
	str	r2, [sp, #8]
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	bhs	.LBB2_4
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #4]
	lsl	r1, r1, #1
	ldr	r2, [sp, #16]
	and	r2, r2, #1
	orr	r1, r1, r2
	str	r1, [sp, #4]
	ldr	r1, [sp, #16]
	lsr	r1, r1, #1
	str	r1, [sp, #16]
	str	r0, [sp]                @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB2_1
.LBB2_4:
	ldr	r0, [sp, #4]
	add	sp, sp, #20
	bx	lr
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #12]
	cmp	r0, r1
	blo	.LBB3_2
@ BB#1:
	vldr	d16, .LCPI3_0
	vstr	d16, [r11, #-8]
	b	.LBB3_6
.LBB3_2:
	movw	r0, #1
	movw	r1, #2
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r3
	str	r2, [sp]                @ 4-byte Spill
	bl	__udivsi3
	ldr	r1, [sp]                @ 4-byte Reload
	cmp	r1, r0
	bhi	.LBB3_4
@ BB#3:
	ldr	r0, [sp, #8]
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
	ldr	r0, [sp, #12]
	vmov	s0, r0
	vcvt.f64.u32	d17, s0
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-8]
	b	.LBB3_6
.LBB3_4:
	b	.LBB3_5
.LBB3_5:
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	sub	r0, r0, r1
	vmov	s0, r0
	vcvt.f64.u32	d16, s0
	vneg.f64	d16, d16
	ldr	r0, [sp, #12]
	vmov	s0, r0
	vcvt.f64.u32	d17, s0
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-8]
.LBB3_6:
	vldr	d16, [r11, #-8]
	vmov	r0, r1, d16
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#7:
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #264
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	vldr	d16, .LCPI4_2
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	str	lr, [r11, #-20]
	str	r12, [r11, #-24]
	vstr	d16, [r11, #-64]
	ldr	r0, [r11, #-4]
	bl	IsPowerOfTwo
	cmp	r0, #0
	bne	.LBB4_2
@ BB#1:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #68]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB4_2:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB4_4
@ BB#3:
	vldr	d16, [r11, #-64]
	vneg.f64	d16, d16
	vstr	d16, [r11, #-64]
.LBB4_4:
	movw	r1, :lower16:.L.str.1.2
	movt	r1, :upper16:.L.str.1.2
	ldr	r0, [r11, #-12]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	ldr	r0, [r11, #-20]
	bl	CheckPointer
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	ldr	r0, [r11, #-24]
	bl	CheckPointer
	ldr	r0, [r11, #-4]
	bl	NumberOfBitsNeeded
	movw	r1, #0
	str	r0, [r11, #-28]
	str	r1, [r11, #-32]
.LBB4_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-4]
	cmp	r0, r1
	bhs	.LBB4_12
@ BB#6:                                 @   in Loop: Header=BB4_5 Depth=1
	movw	r0, #0
	movw	r1, #2
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-28]
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #60]           @ 4-byte Spill
	mov	r1, r3
	bl	ReverseBits
	str	r0, [r11, #-36]
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-32]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	ldr	r1, [r11, #-20]
	mov	r2, r0
	add	r0, r1, r0, lsl #2
	vstr	s0, [r0]
	ldr	r0, [r11, #-16]
	ldr	r1, [sp, #64]           @ 4-byte Reload
	cmp	r0, r1
	str	r2, [sp, #56]           @ 4-byte Spill
	bne	.LBB4_8
@ BB#7:                                 @   in Loop: Header=BB4_5 Depth=1
	vldr	d16, .LCPI4_1
	vstr	d16, [sp, #48]          @ 8-byte Spill
	b	.LBB4_9
.LBB4_8:                                @   in Loop: Header=BB4_5 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-32]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	str	r0, [sp, #44]           @ 4-byte Spill
	vstr	d16, [sp, #48]          @ 8-byte Spill
.LBB4_9:                                @   in Loop: Header=BB4_5 Depth=1
	vldr	d16, [sp, #48]          @ 8-byte Reload
	movw	r0, #2
	vcvt.f32.f64	s0, d16
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-36]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	str	r0, [sp, #40]           @ 4-byte Spill
@ BB#10:                                @   in Loop: Header=BB4_5 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB4_5
	.p2align	3
@ BB#11:
.LCPI4_2:
	.long	1413754136              @ double 6.2831853071795862
	.long	1075388923
.LBB4_12:
	movw	r0, #2
	movw	r1, #1
	str	r1, [r11, #-52]
	str	r0, [r11, #-48]
.LBB4_13:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_15 Depth 2
                                        @       Child Loop BB4_17 Depth 3
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-4]
	cmp	r0, r1
	bhi	.LBB4_24
@ BB#14:                                @   in Loop: Header=BB4_13 Depth=1
	movw	r0, #0
	vmov.f64	d16, #2.000000e+00
	vmov.f64	d17, #-2.000000e+00
	vldr	d18, [r11, #-64]
	ldr	r1, [r11, #-48]
	vmov	s0, r1
	vcvt.f64.u32	d19, s0
	vdiv.f64	d18, d18, d19
	vstr	d18, [r11, #-88]
	vldr	d18, [r11, #-88]
	vmul.f64	d18, d17, d18
	vmov	r1, r2, d18
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d17, [sp, #24]          @ 8-byte Spill
	vstr	d16, [sp, #16]          @ 8-byte Spill
	bl	sin
	vmov	d16, r0, r1
	vstr	d16, [r11, #-96]
	vldr	d16, [r11, #-88]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	sin
	vmov	d16, r0, r1
	vstr	d16, [r11, #-104]
	vldr	d16, [r11, #-88]
	vldr	d17, [sp, #24]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vstr	d16, [r11, #-112]
	vldr	d16, [r11, #-88]
	vneg.f64	d16, d16
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vstr	d16, [r11, #-120]
	vldr	d16, [r11, #-120]
	vldr	d17, [sp, #16]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vstr	d16, [r11, #-128]
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [r11, #-32]
.LBB4_15:                               @   Parent Loop BB4_13 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB4_17 Depth 3
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-4]
	cmp	r0, r1
	bhs	.LBB4_22
@ BB#16:                                @   in Loop: Header=BB4_15 Depth=2
	movw	r0, #0
	vldr	d16, [r11, #-112]
	vstr	d16, [sp, #128]
	vldr	d16, [r11, #-120]
	vstr	d16, [sp, #120]
	vldr	d16, [r11, #-96]
	vstr	d16, [sp, #104]
	vldr	d16, [r11, #-104]
	vstr	d16, [sp, #96]
	ldr	r1, [r11, #-32]
	str	r1, [r11, #-36]
	str	r0, [r11, #-44]
.LBB4_17:                               @   Parent Loop BB4_13 Depth=1
                                        @     Parent Loop BB4_15 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-52]
	cmp	r0, r1
	bhs	.LBB4_20
@ BB#18:                                @   in Loop: Header=BB4_17 Depth=3
	movw	r0, #2
	vldr	d16, [r11, #-128]
	vldr	d17, [sp, #120]
	vldr	d18, [sp, #128]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #112]
	vldr	d16, [sp, #120]
	vstr	d16, [sp, #128]
	vldr	d16, [sp, #112]
	vstr	d16, [sp, #120]
	vldr	d16, [r11, #-128]
	vldr	d17, [sp, #96]
	vldr	d18, [sp, #104]
	vmul.f64	d16, d16, d17
	vsub.f64	d16, d16, d18
	vstr	d16, [sp, #88]
	vldr	d16, [sp, #96]
	vstr	d16, [sp, #104]
	vldr	d16, [sp, #88]
	vstr	d16, [sp, #96]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-52]
	add	r1, r1, r2
	str	r1, [r11, #-40]
	vldr	d16, [sp, #112]
	ldr	r2, [r11, #-20]
	add	r2, r2, r1, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #88]
	ldr	r2, [r11, #-24]
	add	r1, r2, r1, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r11, #-72]
	vldr	d16, [sp, #112]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-40]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #88]
	ldr	r1, [r11, #-20]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d18, s0
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	vstr	d16, [r11, #-80]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-36]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [r11, #-72]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [r11, #-40]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-36]
	add	r2, r1, r2, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vldr	d17, [r11, #-80]
	vsub.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	ldr	r2, [r11, #-40]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	vldr	d16, [r11, #-72]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-36]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [r11, #-80]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-36]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#19:                                @   in Loop: Header=BB4_17 Depth=3
	ldr	r0, [r11, #-36]
	add	r0, r0, #1
	str	r0, [r11, #-36]
	ldr	r0, [r11, #-44]
	add	r0, r0, #1
	str	r0, [r11, #-44]
	b	.LBB4_17
.LBB4_20:                               @   in Loop: Header=BB4_15 Depth=2
	b	.LBB4_21
.LBB4_21:                               @   in Loop: Header=BB4_15 Depth=2
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-32]
	add	r0, r1, r0
	str	r0, [r11, #-32]
	b	.LBB4_15
.LBB4_22:                               @   in Loop: Header=BB4_13 Depth=1
	ldr	r0, [r11, #-48]
	str	r0, [r11, #-52]
@ BB#23:                                @   in Loop: Header=BB4_13 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-48]
	lsl	r1, r1, #1
	str	r1, [r11, #-48]
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB4_13
.LBB4_24:
	ldr	r0, [r11, #-8]
	cmp	r0, #0
	beq	.LBB4_30
@ BB#25:
	movw	r0, #0
	ldr	r1, [r11, #-4]
	vmov	s0, r1
	vcvt.f64.u32	d16, s0
	vstr	d16, [sp, #72]
	str	r0, [r11, #-32]
.LBB4_26:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-4]
	cmp	r0, r1
	bhs	.LBB4_29
@ BB#27:                                @   in Loop: Header=BB4_26 Depth=1
	movw	r0, #2
	vldr	d16, [sp, #72]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-32]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	vldr	d16, [sp, #72]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-32]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d17, s0
	vdiv.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r1]
	str	r0, [sp, #4]            @ 4-byte Spill
@ BB#28:                                @   in Loop: Header=BB4_26 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB4_26
.LBB4_29:
	b	.LBB4_30
.LBB4_30:
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#31:
.LCPI4_1:
	.long	0                       @ double 0
	.long	0
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
	sub	sp, sp, #176
	movw	r2, #0
	str	r2, [r11, #-12]
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [r11, #-64]
	ldr	r0, [r11, #-16]
	cmp	r0, #3
	bge	.LBB6_2
@ BB#1:
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	bl	printf
	movw	lr, :lower16:.L.str.1.6
	movt	lr, :upper16:.L.str.1.6
	str	r0, [r11, #-68]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.2.7
	movt	lr, :upper16:.L.str.2.7
	str	r0, [r11, #-72]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.3.8
	movt	lr, :upper16:.L.str.3.8
	str	r0, [r11, #-76]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	mvn	lr, #0
	str	r0, [r11, #-80]         @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB6_2:
	ldr	r0, [r11, #-16]
	cmp	r0, #4
	bne	.LBB6_4
@ BB#3:
	movw	r1, :lower16:.L.str.4.9
	movt	r1, :upper16:.L.str.4.9
	movw	r2, #2
	ldr	r0, [r11, #-20]
	ldr	r0, [r0, #12]
	bl	strncmp
	mvn	r1, #0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	eor	r0, r0, r1
	and	r0, r0, #1
	str	r0, [r11, #-64]
.LBB6_4:
	b	.LBB6_5
.LBB6_5:
	movw	r0, #2
	ldr	r1, [r11, #-20]
	ldr	r1, [r1, #8]
	str	r0, [r11, #-84]         @ 4-byte Spill
	mov	r0, r1
	bl	atoi
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-20]
	ldr	r0, [r0, #4]
	bl	atoi
	str	r0, [r11, #-28]
	mov	r0, #1
	bl	srand
	ldr	r0, [r11, #-24]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [r11, #-40]
	ldr	r0, [r11, #-24]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [r11, #-44]
	ldr	r0, [r11, #-24]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [r11, #-48]
	ldr	r0, [r11, #-24]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-28]
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-28]
	lsl	r0, r0, #2
	bl	malloc
	movw	r1, #0
	str	r0, [r11, #-60]
	str	r1, [r11, #-32]
.LBB6_6:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bhs	.LBB6_9
@ BB#7:                                 @   in Loop: Header=BB6_6 Depth=1
	movw	r0, #2
	str	r0, [r11, #-88]         @ 4-byte Spill
	bl	rand
	movw	lr, #19923
	movt	lr, #4194
	smmul	r1, r0, lr
	asr	r2, r1, #6
	add	r1, r2, r1, lsr #31
	mov	r2, #1000
	mls	r0, r1, r2, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-32]
	add	r0, r0, r1, lsl #2
	vstr	s0, [r0]
	str	r2, [sp, #92]           @ 4-byte Spill
	str	lr, [sp, #88]           @ 4-byte Spill
	bl	rand
	ldr	r1, [sp, #88]           @ 4-byte Reload
	smmul	r2, r0, r1
	asr	lr, r2, #6
	add	r2, lr, r2, lsr #31
	ldr	lr, [sp, #92]           @ 4-byte Reload
	mls	r0, r2, lr, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-60]
	ldr	r2, [r11, #-32]
	add	r0, r0, r2, lsl #2
	vstr	s0, [r0]
@ BB#8:                                 @   in Loop: Header=BB6_6 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB6_6
.LBB6_9:
	movw	r0, #0
	str	r0, [r11, #-32]
.LBB6_10:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_12 Depth 2
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	bhs	.LBB6_20
@ BB#11:                                @   in Loop: Header=BB6_10 Depth=1
	movw	r0, #0
	vldr	s0, .LCPI6_0
	movw	r1, #2
	ldr	r2, [r11, #-40]
	ldr	r3, [r11, #-32]
	add	r2, r2, r3, lsl #2
	vstr	s0, [r2]
	str	r0, [r11, #-36]
	str	r1, [sp, #84]           @ 4-byte Spill
.LBB6_12:                               @   Parent Loop BB6_10 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-36]
	ldr	r1, [r11, #-28]
	cmp	r0, r1
	bhs	.LBB6_18
@ BB#13:                                @   in Loop: Header=BB6_12 Depth=2
	bl	rand
	movw	r1, #2
	bl	__modsi3
	cmp	r0, #0
	beq	.LBB6_15
@ BB#14:                                @   in Loop: Header=BB6_12 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-36]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	ldr	r1, [r11, #-60]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vldr	s2, [r11, #-32]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r1, r2, d17
	str	r0, [sp, #80]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d16, [sp, #72]          @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #72]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-32]
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0]
	b	.LBB6_16
.LBB6_15:                               @   in Loop: Header=BB6_12 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-36]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vcvt.f64.f32	d16, s0
	ldr	r1, [r11, #-60]
	add	r1, r1, r2, lsl #2
	vldr	s0, [r1]
	vldr	s2, [r11, #-32]
	vcvt.f32.u32	s2, s2
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r1, r2, d17
	str	r0, [sp, #68]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d16, [sp, #56]          @ 8-byte Spill
	bl	sin
	vmov	d16, r0, r1
	vldr	d17, [sp, #56]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	ldr	r0, [r11, #-40]
	ldr	r1, [r11, #-32]
	add	r0, r0, r1, lsl #2
	vldr	s0, [r0]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.f32.f64	s0, d16
	vstr	s0, [r0]
.LBB6_16:                               @   in Loop: Header=BB6_12 Depth=2
	vldr	s0, .LCPI6_0
	movw	r0, #2
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-32]
	add	r1, r1, r2, lsl #2
	vstr	s0, [r1]
	str	r0, [sp, #52]           @ 4-byte Spill
@ BB#17:                                @   in Loop: Header=BB6_12 Depth=2
	ldr	r0, [r11, #-36]
	add	r0, r0, #1
	str	r0, [r11, #-36]
	b	.LBB6_12
.LBB6_18:                               @   in Loop: Header=BB6_10 Depth=1
	b	.LBB6_19
.LBB6_19:                               @   in Loop: Header=BB6_10 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB6_10
.LBB6_20:
	movw	r0, :lower16:fft_float
	movt	r0, :upper16:fft_float
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	ldr	r3, [r11, #-40]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-48]
	ldr	r4, [r11, #-52]
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	str	lr, [sp]
	str	r4, [sp, #4]
	ldr	r12, [sp, #48]          @ 4-byte Reload
	blx	r12
	movw	r1, :lower16:.L.str.5.10
	movt	r1, :upper16:.L.str.5.10
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-32]
	str	r0, [sp, #40]           @ 4-byte Spill
.LBB6_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	bhs	.LBB6_24
@ BB#22:                                @   in Loop: Header=BB6_21 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [r11, #-48]
	ldr	r3, [r11, #-32]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [sp, #36]           @ 4-byte Spill
	bl	printf
	str	r0, [sp, #32]           @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB6_21 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB6_21
.LBB6_24:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #0
	str	lr, [r11, #-32]
	str	r0, [sp, #24]           @ 4-byte Spill
.LBB6_25:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-32]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	bhs	.LBB6_28
@ BB#26:                                @   in Loop: Header=BB6_25 Depth=1
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	movw	r1, #2
	ldr	r2, [r11, #-52]
	ldr	r3, [r11, #-32]
	add	r2, r2, r3, lsl #2
	vldr	s0, [r2]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	str	r1, [sp, #20]           @ 4-byte Spill
	bl	printf
	str	r0, [sp, #16]           @ 4-byte Spill
@ BB#27:                                @   in Loop: Header=BB6_25 Depth=1
	ldr	r0, [r11, #-32]
	add	r0, r0, #1
	str	r0, [r11, #-32]
	b	.LBB6_25
.LBB6_28:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	ldr	lr, [r11, #-40]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, lr
	bl	free
	ldr	r0, [r11, #-44]
	bl	free
	ldr	r0, [r11, #-48]
	bl	free
	ldr	r0, [r11, #-52]
	bl	free
	ldr	r0, [r11, #-56]
	bl	free
	ldr	r0, [r11, #-60]
	bl	free
	movw	r0, #0
	bl	exit
	.p2align	2
@ BB#29:
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
