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
	.file	"all_large_t.bc"
	.globl	main
	.p2align	4
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #904
	bfc	sp, #0, #5
	mov	r6, sp
	add	r0, r6, #588
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r2, #0
	ldr	r3, .LCPI0_26
	vmov.f64	d16, #-3.000000e+01
	vldr	d17, .LCPI0_27
	vmov.f64	d18, #-1.050000e+01
	vmov.f64	d19, #1.000000e+00
	str	r2, [r0, #192]
	vstr	d19, [r0, #180]
	vstr	d18, [r0, #172]
	vstr	d17, [r0, #164]
	vstr	d16, [r0, #156]
	str	r3, [r0, #32]
	str	r2, [r0]
	str	r0, [r6, #572]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	add	r1, r6, #684
	add	r2, r6, #720
	ldr	r3, [r6, #572]          @ 4-byte Reload
	vldr	d16, [r3, #180]
	vldr	d17, [r3, #172]
	vldr	d18, [r3, #164]
	vldr	d19, [r3, #156]
	sub	sp, sp, #24
	str	r0, [r6, #568]          @ 4-byte Spill
	str	r1, [r6, #564]          @ 4-byte Spill
	vmov	r0, r1, d16
	str	r2, [r6, #560]          @ 4-byte Spill
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	lr, [r6, #564]          @ 4-byte Reload
	str	lr, [sp, #16]
	ldr	r12, [r6, #560]         @ 4-byte Reload
	str	r12, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #556]          @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #552]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #548]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #544]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	vdup.32	q8, r1
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #528
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
.LBB0_4:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vmov.f64	d16, #-3.000000e+01
	vmov.f64	d17, #1.700000e+01
	vmov.f64	d18, #-4.500000e+00
	vmov.f64	d19, #1.000000e+00
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #524]          @ 4-byte Spill
	str	r1, [r6, #520]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #520]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #516]          @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #512]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #508]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #504]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #480
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_5
.LBB0_8:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vmov.f64	d16, #-3.100000e+01
	vmov.f64	d17, #2.200000e+01
	vmov.f64	d18, #-3.500000e+00
	vmov.f64	d19, #1.000000e+00
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #476]          @ 4-byte Spill
	str	r1, [r6, #472]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #472]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #468]          @ 4-byte Spill
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_21
@ BB#10:                                @   in Loop: Header=BB0_9 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #464]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #460]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #456]          @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #432
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_9
	.p2align	3
@ BB#12:
.LCPI0_27:
	.long	0                       @ double 32
	.long	1077936128
	.p2align	3
@ BB#13:
.LCPI0_28:
	.long	0                       @ double -35
	.long	3225518080
	.p2align	3
@ BB#14:
.LCPI0_29:
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.p2align	3
@ BB#15:
.LCPI0_30:
	.long	2061584302              @ double 12.34
	.long	1076407828
	.p2align	3
@ BB#16:
.LCPI0_31:
	.long	2576980378              @ double -23.600000000000001
	.long	3224869273
	.p2align	3
@ BB#17:
.LCPI0_32:
	.long	3264175145              @ double -67.890000000000001
	.long	3226532085
	.p2align	3
@ BB#18:
.LCPI0_33:
	.long	0                       @ double 34
	.long	1078001664
	.p2align	3
@ BB#19:
.LCPI0_34:
	.long	1030792151              @ double 8.6699999999999999
	.long	1075926794
	.p2align	3
@ BB#20:
.LCPI0_35:
	.long	0                       @ double 45
	.long	1078362112
.LBB0_21:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vldr	d16, .LCPI0_28
	vmov.f64	d17, #1.000000e+00
	vldr	d18, .LCPI0_29
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d17, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #428]          @ 4-byte Spill
	str	r1, [r6, #424]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #424]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #420]          @ 4-byte Spill
.LBB0_22:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_25
@ BB#23:                                @   in Loop: Header=BB0_22 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #416]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #412]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #408]          @ 4-byte Spill
@ BB#24:                                @   in Loop: Header=BB0_22 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #384
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_22
.LBB0_25:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vmov.f64	d16, #1.200000e+01
	vmov.f64	d17, #5.000000e+00
	vldr	d18, .LCPI0_30
	vmov.f64	d19, #3.000000e+00
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #380]          @ 4-byte Spill
	str	r1, [r6, #376]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #376]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #372]          @ 4-byte Spill
.LBB0_26:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_29
@ BB#27:                                @   in Loop: Header=BB0_26 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #368]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #364]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #360]          @ 4-byte Spill
@ BB#28:                                @   in Loop: Header=BB0_26 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #336
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_26
.LBB0_29:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vldr	d16, .LCPI0_31
	vmov.f64	d17, #6.000000e+00
	vldr	d18, .LCPI0_32
	vmov.f64	d19, #-8.000000e+00
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #332]          @ 4-byte Spill
	str	r1, [r6, #328]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #328]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #324]          @ 4-byte Spill
.LBB0_30:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_33
@ BB#31:                                @   in Loop: Header=BB0_30 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #320]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #316]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #312]          @ 4-byte Spill
@ BB#32:                                @   in Loop: Header=BB0_30 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_30
.LBB0_33:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vldr	d16, .LCPI0_33
	vmov.f64	d17, #7.500000e+00
	vldr	d18, .LCPI0_34
	vldr	d19, .LCPI0_35
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #284]          @ 4-byte Spill
	str	r1, [r6, #280]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #280]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #276]          @ 4-byte Spill
.LBB0_34:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_37
@ BB#35:                                @   in Loop: Header=BB0_34 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #272]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #268]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #264]          @ 4-byte Spill
@ BB#36:                                @   in Loop: Header=BB0_34 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_34
.LBB0_37:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #684
	add	r1, r6, #720
	vmov.f64	d16, #1.600000e+01
	vldr	d17, .LCPI0_36
	vldr	d18, .LCPI0_37
	vmov.f64	d19, #-1.200000e+01
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vstr	d19, [r2, #180]
	vstr	d18, [r2, #172]
	vstr	d17, [r2, #164]
	vstr	d16, [r2, #156]
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #236]          @ 4-byte Spill
	str	r1, [r6, #232]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #232]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #228]          @ 4-byte Spill
.LBB0_38:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_41
@ BB#39:                                @   in Loop: Header=BB0_38 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #224]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #220]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #216]          @ 4-byte Spill
@ BB#40:                                @   in Loop: Header=BB0_38 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #192
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_38
.LBB0_41:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	vmov.f64	d16, #1.000000e+00
	ldr	lr, [r6, #572]          @ 4-byte Reload
	vstr	d16, [lr, #180]
	str	r0, [r6, #188]          @ 4-byte Spill
.LBB0_42:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_44 Depth 2
                                        @       Child Loop BB0_46 Depth 3
                                        @         Child Loop BB0_48 Depth 4
                                        @           Child Loop BB0_50 Depth 5
	vmov.f64	d16, #1.000000e+01
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #180]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_65
@ BB#43:                                @   in Loop: Header=BB0_42 Depth=1
	vmov.f64	d16, #1.000000e+01
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vstr	d16, [r0, #172]
.LBB0_44:                               @   Parent Loop BB0_42 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_46 Depth 3
                                        @         Child Loop BB0_48 Depth 4
                                        @           Child Loop BB0_50 Depth 5
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d16, [r0, #172]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_59
@ BB#45:                                @   in Loop: Header=BB0_44 Depth=2
	vmov.f64	d16, #5.000000e+00
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vstr	d16, [r0, #164]
.LBB0_46:                               @   Parent Loop BB0_42 Depth=1
                                        @     Parent Loop BB0_44 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_48 Depth 4
                                        @           Child Loop BB0_50 Depth 5
	vmov.f64	d16, #1.500000e+01
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #164]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_57
@ BB#47:                                @   in Loop: Header=BB0_46 Depth=3
	vmov.f64	d16, #-1.000000e+00
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vstr	d16, [r0, #156]
.LBB0_48:                               @   Parent Loop BB0_42 Depth=1
                                        @     Parent Loop BB0_44 Depth=2
                                        @       Parent Loop BB0_46 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB0_50 Depth 5
	vmov.f64	d16, #-5.000000e+00
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #156]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_55
@ BB#49:                                @   in Loop: Header=BB0_48 Depth=4
	add	r0, r6, #684
	add	r1, r6, #720
	ldr	r2, [r6, #572]          @ 4-byte Reload
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #184]          @ 4-byte Spill
	str	r1, [r6, #180]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	r12, [r6, #184]         @ 4-byte Reload
	str	r12, [sp, #16]
	ldr	lr, [r6, #180]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #572]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #176]          @ 4-byte Spill
.LBB0_50:                               @   Parent Loop BB0_42 Depth=1
                                        @     Parent Loop BB0_44 Depth=2
                                        @       Parent Loop BB0_46 Depth=3
                                        @         Parent Loop BB0_48 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_53
@ BB#51:                                @   in Loop: Header=BB0_50 Depth=5
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #720
	movw	r2, #3
	ldr	r3, [r6, #572]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #720
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #172]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #168]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #164]          @ 4-byte Spill
@ BB#52:                                @   in Loop: Header=BB0_50 Depth=5
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #656
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
	str	r1, [r0, #64]
	add	lr, r6, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_50
.LBB0_53:                               @   in Loop: Header=BB0_48 Depth=4
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	str	r0, [r6, #140]          @ 4-byte Spill
@ BB#54:                                @   in Loop: Header=BB0_48 Depth=4
	vldr	d16, .LCPI0_38
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #156]
	vsub.f64	d16, d17, d16
	vstr	d16, [r0, #156]
	b	.LBB0_48
.LBB0_55:                               @   in Loop: Header=BB0_46 Depth=3
	b	.LBB0_56
.LBB0_56:                               @   in Loop: Header=BB0_46 Depth=3
	vldr	d16, .LCPI0_39
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #164]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #164]
	b	.LBB0_46
.LBB0_57:                               @   in Loop: Header=BB0_44 Depth=2
	b	.LBB0_58
.LBB0_58:                               @   in Loop: Header=BB0_44 Depth=2
	vmov.f64	d16, #2.500000e-01
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #172]
	vsub.f64	d16, d17, d16
	vstr	d16, [r0, #172]
	b	.LBB0_44
.LBB0_59:                               @   in Loop: Header=BB0_42 Depth=1
	b	.LBB0_60
.LBB0_60:                               @   in Loop: Header=BB0_42 Depth=1
	vmov.f64	d16, #1.000000e+00
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #180]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #180]
	b	.LBB0_42
	.p2align	3
@ BB#61:
.LCPI0_36:
	.long	858993459               @ double 5.2999999999999998
	.long	1075131187
	.p2align	3
@ BB#62:
.LCPI0_37:
	.long	858993459               @ double -1.7
	.long	3220910899
	.p2align	3
@ BB#63:
.LCPI0_38:
	.long	446676599               @ double 0.45100000000000001
	.long	1071439151
	.p2align	3
@ BB#64:
.LCPI0_39:
	.long	3092376453              @ double 0.60999999999999999
	.long	1071875358
.LBB0_65:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	bl	printf
	movw	lr, #0
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	lr, [r1, #64]
	str	r0, [r6, #136]          @ 4-byte Spill
.LBB0_66:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI0_12
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r2, [r1, #64]
	cmp	r2, r0
	bge	.LBB0_74
@ BB#67:                                @   in Loop: Header=BB0_66 Depth=1
	add	r1, r6, #612
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r0, [r0, #64]
	bl	usqrt
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r1, #64]
	ldr	lr, [r6, #572]          @ 4-byte Reload
	ldr	r2, [lr, #24]
	bl	printf
	str	r0, [r6, #132]          @ 4-byte Spill
@ BB#68:                                @   in Loop: Header=BB0_66 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r2, [r1, #64]
	add	r3, r6, #656
	vld1.64	{d16, d17}, [r3:128]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	mov	r4, #2
	str	r4, [r12, #-8]
	vmov.i32	q9, #0x2
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
	add	r2, r2, #2
	mul	r0, r2, r0
	str	r2, [r1, #256]
	cmp	r12, r0
	str	r2, [r6, #128]          @ 4-byte Spill
	str	r12, [r6, #124]         @ 4-byte Spill
	str	r3, [r6, #120]          @ 4-byte Spill
	beq	.LBB0_73
@ BB#69:                                @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [r6, #124]          @ 4-byte Reload
	ldr	r1, [r6, #120]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_71
@ BB#70:                                @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [r6, #120]          @ 4-byte Reload
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	r0, [r1, #256]
	b	.LBB0_72
.LBB0_71:                               @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [r6, #128]          @ 4-byte Reload
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	r0, [r1, #256]
.LBB0_72:                               @   in Loop: Header=BB0_66 Depth=1
	b	.LBB0_73
.LBB0_73:                               @   in Loop: Header=BB0_66 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #256]
	str	r1, [r0, #64]
	b	.LBB0_66
.LBB0_74:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	ldr	lr, .LCPI0_0
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	lr, [r1, #32]
	str	r0, [r6, #116]          @ 4-byte Spill
.LBB0_75:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI0_13
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r2, [r1, #32]
	cmp	r2, r0
	bhs	.LBB0_83
@ BB#76:                                @   in Loop: Header=BB0_75 Depth=1
	add	r1, r6, #612
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r0, [r0, #32]
	bl	usqrt
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r1, #32]
	ldr	lr, [r6, #572]          @ 4-byte Reload
	ldr	r2, [lr, #24]
	bl	printf
	str	r0, [r6, #112]          @ 4-byte Spill
@ BB#77:                                @   in Loop: Header=BB0_75 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #572]          @ 4-byte Reload
	ldr	r2, [r1, #32]
	vdup.32	q8, r2
	add	r3, r6, #624
	vst1.64	{d16, d17}, [r3:128]
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
	str	r2, [r1, #224]
	cmp	r12, r0
	str	r2, [r6, #108]          @ 4-byte Spill
	str	r12, [r6, #104]         @ 4-byte Spill
	str	r3, [r6, #100]          @ 4-byte Spill
	beq	.LBB0_82
@ BB#78:                                @   in Loop: Header=BB0_75 Depth=1
	ldr	r0, [r6, #104]          @ 4-byte Reload
	ldr	r1, [r6, #100]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_80
@ BB#79:                                @   in Loop: Header=BB0_75 Depth=1
	ldr	r0, [r6, #100]          @ 4-byte Reload
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	r0, [r1, #224]
	b	.LBB0_81
.LBB0_80:                               @   in Loop: Header=BB0_75 Depth=1
	ldr	r0, [r6, #108]          @ 4-byte Reload
	ldr	r1, [r6, #572]          @ 4-byte Reload
	str	r0, [r1, #224]
.LBB0_81:                               @   in Loop: Header=BB0_75 Depth=1
	b	.LBB0_82
.LBB0_82:                               @   in Loop: Header=BB0_75 Depth=1
	ldr	r0, [r6, #572]          @ 4-byte Reload
	ldr	r1, [r0, #224]
	str	r1, [r0, #32]
	b	.LBB0_75
.LBB0_83:
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	bl	printf
	vldr	d16, .LCPI0_14
	ldr	lr, [r6, #572]          @ 4-byte Reload
	vstr	d16, [lr, #124]
	str	r0, [r6, #96]           @ 4-byte Spill
.LBB0_84:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_15
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_88
@ BB#85:                                @   in Loop: Header=BB0_84 Depth=1
	vmov.f64	d16, #1.000000e+00
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vldr	d18, [r0, #124]
	vmov	r0, r1, d16
	vstr	d18, [r6, #88]          @ 8-byte Spill
	vstr	d17, [r6, #80]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	vldr	d17, .LCPI0_20
	vmov.f64	d18, #4.000000e+00
	vmul.f64	d16, d18, d16
	vldr	d18, [r6, #88]          @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vdiv.f64	d16, d16, d17
	sub	sp, sp, #8
	vldr	d17, [r6, #80]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	add	sp, sp, #8
	str	r0, [r6, #76]           @ 4-byte Spill
@ BB#86:                                @   in Loop: Header=BB0_84 Depth=1
	vldr	d16, .LCPI0_23
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #124]
	b	.LBB0_84
	.p2align	2
@ BB#87:
.LCPI0_26:
	.long	1072497001              @ 0x3fed0169
.LBB0_88:
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:puts
	movt	r1, :upper16:puts
	blx	r1
	vldr	d16, .LCPI0_14
	ldr	r1, [r6, #572]          @ 4-byte Reload
	vstr	d16, [r1, #124]
	str	r0, [r6, #72]           @ 4-byte Spill
.LBB0_89:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_16
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vmov.f64	d18, #1.000000e+00
	vmov	r0, r1, d18
	vstr	d16, [r6, #64]          @ 8-byte Spill
	vstr	d17, [r6, #56]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	mov	r0, sp
	sub	r1, r0, #8
	mov	sp, r1
	mov	r1, sp
	sub	r1, r1, #32
	bfc	r1, #0, #5
	mov	sp, r1
	movw	lr, #0
	movt	lr, #16400
	str	lr, [r0, #-4]
	mov	lr, #0
	str	lr, [r0, #-8]
	adr	r0, .LCPI0_17
	vld1.64	{d20, d21}, [r0:128]
	vst1.32	{d20, d21}, [r1]!
	vst1.32	{d20, d21}, [r1]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	mov	r0, sp
	sub	r1, r0, #8
	mov	sp, r1
	mov	r1, sp
	sub	r1, r1, #32
	bfc	r1, #0, #5
	mov	sp, r1
	mov	r2, #1073741824
	str	r2, [r0, #-4]
	str	lr, [r0, #-8]
	adr	r0, .LCPI0_18
	vld1.64	{d20, d21}, [r0:128]
	vst1.32	{d20, d21}, [r1]!
	vst1.32	{d20, d21}, [r1]
	vadd.f64	d16, d16, d16
	mov	r0, sp
	sub	r1, r0, #8
	mov	sp, r1
	mov	r1, sp
	sub	r1, r1, #32
	bfc	r1, #0, #5
	mov	sp, r1
	movw	r2, #50935
	movt	r2, #16048
	str	r2, [r0, #-4]
	movw	r2, #60813
	movt	r2, #41141
	str	r2, [r0, #-8]
	adr	r0, .LCPI0_19
	vld1.64	{d20, d21}, [r0:128]
	vst1.32	{d20, d21}, [r1]!
	vst1.32	{d20, d21}, [r1]
	vldr	d17, [r6, #64]          @ 8-byte Reload
	vadd.f64	d16, d16, d17
	vldr	d18, [r6, #56]          @ 8-byte Reload
	vcmpe.f64	d18, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_92
@ BB#90:                                @   in Loop: Header=BB0_89 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, .LCPI0_20
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d18, [r0, #124]
	vldr	d19, [r0, #124]
	vmul.f64	d17, d19, d17
	vmov	r0, r1, d16
	vstr	d17, [r6, #48]          @ 8-byte Spill
	vstr	d18, [r6, #40]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d17, d16
	vldr	d17, [r6, #48]          @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	sub	sp, sp, #8
	vldr	d17, [r6, #40]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	add	sp, sp, #8
	str	r0, [r6, #36]           @ 4-byte Spill
@ BB#91:                                @   in Loop: Header=BB0_89 Depth=1
	vldr	d16, .LCPI0_21
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [r6, #24]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	mov	r0, sp
	sub	r1, r0, #8
	mov	sp, r1
	mov	r1, sp
	sub	r1, r1, #32
	bfc	r1, #0, #5
	mov	sp, r1
	movw	lr, #0
	movt	lr, #16400
	str	lr, [r0, #-4]
	mov	lr, #0
	str	lr, [r0, #-8]
	adr	r0, .LCPI0_17
	vld1.64	{d18, d19}, [r0:128]
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d18, d19}, [r1]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	mov	r0, sp
	sub	r1, r0, #8
	mov	sp, r1
	mov	r1, sp
	sub	r1, r1, #32
	bfc	r1, #0, #5
	mov	sp, r1
	movw	r2, #32768
	movt	r2, #16566
	str	r2, [r0, #-4]
	str	lr, [r0, #-8]
	adr	r0, .LCPI0_22
	vld1.64	{d18, d19}, [r0:128]
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d18, d19}, [r1]
	vldr	d17, [r6, #24]          @ 8-byte Reload
	vdiv.f64	d16, d16, d17
	ldr	r0, [r6, #572]          @ 4-byte Reload
	vldr	d20, [r0, #124]
	vadd.f64	d16, d20, d16
	vstr	d16, [r0, #124]
	b	.LBB0_89
.LBB0_92:
	movw	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	4
@ BB#93:
.LCPI0_17:
	.long	0                       @ double 4
	.long	1074790400
	.long	0                       @ double 4
	.long	1074790400
.LCPI0_18:
	.long	0                       @ double 2
	.long	1073741824
	.long	0                       @ double 2
	.long	1073741824
.LCPI0_19:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_22:
	.long	0                       @ double 5760
	.long	1085702144
	.long	0                       @ double 5760
	.long	1085702144
.LCPI0_14:
	.long	0                       @ double 0
	.long	0
.LCPI0_15:
	.long	0                       @ double 360
	.long	1081507840
.LCPI0_16:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_20:
	.long	0                       @ double 180
	.long	1080459264
.LCPI0_21:
	.long	0                       @ double 5760
	.long	1085702144
.LCPI0_23:
	.long	3539053052              @ double 0.001
	.long	1062232653
.LCPI0_0:
	.long	1072497001              @ 0x3fed0169
.LCPI0_12:
	.long	100000                  @ 0x186a0
.LCPI0_13:
	.long	1072513385              @ 0x3fed4169
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.globl	rad2deg
	.p2align	3
	.type	rad2deg,%function
	.code	32                      @ @rad2deg
rad2deg:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	vmov	d16, r0, r1
	vstr	d16, [sp, #8]
	vldr	d17, .LCPI1_0
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [sp]               @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, [sp]               @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	vmov	r0, r1, d16
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#1:
.LCPI1_0:
	.long	0                       @ double 180
	.long	1080459264
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg
	.cantunwind
	.fnend

	.globl	deg2rad
	.p2align	4
	.type	deg2rad,%function
	.code	32                      @ @deg2rad
deg2rad:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	bfc	sp, #0, #5
	vmov	d16, r0, r1
	vstr	d16, [sp, #48]
	vmov.f64	d16, #1.000000e+00
	vmov	r0, r1, d16
	bl	atan
	vmov	d16, r0, r1
	movw	r0, #0
	movt	r0, #16400
	str	r0, [sp, #44]
	mov	r0, #0
	str	r0, [sp, #40]
	adr	r0, .LCPI2_0
	vld1.64	{d18, d19}, [r0:128]
	mov	r0, sp
	orr	r1, r0, #16
	vst1.32	{d18, d19}, [r1]
	vst1.32	{d18, d19}, [r0]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #48]
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI2_1
	vdiv.f64	d16, d16, d17
	vmov	r0, r1, d16
	mov	sp, r11
	pop	{r11, pc}
	.p2align	4
@ BB#1:
.LCPI2_0:
	.long	0                       @ double 4
	.long	1074790400
	.long	0                       @ double 4
	.long	1074790400
.LCPI2_1:
	.long	0                       @ double 180
	.long	1080459264
.Lfunc_end2:
	.size	deg2rad, .Lfunc_end2-deg2rad
	.cantunwind
	.fnend

	.globl	SolveCubic
	.p2align	3
	.type	SolveCubic,%function
	.code	32                      @ @SolveCubic
SolveCubic:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #240
	vmov	d16, r2, r3
	vmov	d17, r0, r1
	ldr	r0, [r11, #28]
	ldr	r1, [r11, #24]
	vldr	d18, [r11, #16]
	vldr	d19, [r11, #8]
	vldr	d20, .LCPI3_0
	vmov.f64	d21, #2.700000e+01
	vmov.f64	d22, #9.000000e+00
	vmov.f64	d23, #2.000000e+00
	vmov.f64	d24, #3.000000e+00
	vstr	d17, [r11, #-40]
	vstr	d16, [r11, #-48]
	vstr	d19, [r11, #-56]
	vstr	d18, [r11, #-64]
	str	r1, [r11, #-68]
	str	r0, [r11, #-72]
	vldr	d16, [r11, #-48]
	vldr	d17, [r11, #-40]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-80]
	vldr	d16, [r11, #-56]
	vldr	d17, [r11, #-40]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-88]
	vldr	d16, [r11, #-64]
	vldr	d17, [r11, #-40]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-96]
	vldr	d16, [r11, #-80]
	vldr	d17, [r11, #-80]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-88]
	vmul.f64	d17, d24, d17
	vsub.f64	d16, d16, d17
	vdiv.f64	d16, d16, d22
	vstr	d16, [r11, #-104]
	vldr	d16, [r11, #-80]
	vmul.f64	d16, d23, d16
	vldr	d17, [r11, #-80]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-80]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-80]
	vmul.f64	d17, d22, d17
	vldr	d18, [r11, #-88]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vldr	d17, [r11, #-96]
	vmul.f64	d17, d21, d17
	vadd.f64	d16, d16, d17
	vdiv.f64	d16, d16, d20
	vstr	d16, [r11, #-112]
	vldr	d16, [r11, #-112]
	vldr	d17, [r11, #-112]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-104]
	vldr	d18, [r11, #-104]
	vmul.f64	d17, d17, d18
	vldr	d18, [r11, #-104]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [sp, #120]
	vldr	d16, [sp, #120]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB3_2
@ BB#1:
	movw	r0, #3
	ldr	r1, [r11, #-68]
	str	r0, [r1]
	vldr	d16, [r11, #-112]
	vldr	d17, [r11, #-104]
	vldr	d18, [r11, #-104]
	vmul.f64	d17, d17, d18
	vldr	d18, [r11, #-104]
	vmul.f64	d17, d17, d18
	vmov	r0, r1, d17
	vstr	d16, [sp, #104]         @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #104]         @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	acos
	vmov	d16, r0, r1
	vmov.f64	d17, #1.000000e+00
	vmov.f64	d18, #-2.000000e+00
	vmov.f64	d19, #3.000000e+00
	vstr	d16, [sp, #112]
	vldr	d16, [r11, #-104]
	vmov	r0, r1, d16
	vstr	d19, [sp, #96]          @ 8-byte Spill
	vstr	d17, [sp, #88]          @ 8-byte Spill
	vstr	d18, [sp, #80]          @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #80]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #112]
	vldr	d19, [sp, #96]          @ 8-byte Reload
	vdiv.f64	d18, d18, d19
	vmov	r0, r1, d18
	vstr	d16, [sp, #72]          @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #72]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [r11, #-80]
	vldr	d18, [sp, #96]          @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-72]
	vstr	d16, [r0]
	vldr	d16, [r11, #-104]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #80]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #112]
	vldr	d19, [sp, #88]          @ 8-byte Reload
	vmov	r0, r1, d19
	vstr	d16, [sp, #64]          @ 8-byte Spill
	vstr	d18, [sp, #56]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d17, #1.000000e+00
	vmov.f64	d18, #-2.000000e+00
	vmov.f64	d19, #3.000000e+00
	vmov.f64	d20, #2.000000e+00
	vmov.f64	d21, #4.000000e+00
	vmul.f64	d16, d21, d16
	vmul.f64	d16, d20, d16
	vldr	d20, [sp, #56]          @ 8-byte Reload
	vadd.f64	d16, d20, d16
	vdiv.f64	d16, d16, d19
	vmov	r0, r1, d16
	vstr	d19, [sp, #48]          @ 8-byte Spill
	vstr	d17, [sp, #40]          @ 8-byte Spill
	vstr	d18, [sp, #32]          @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #64]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [r11, #-80]
	vldr	d18, [sp, #48]          @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-72]
	vstr	d16, [r0, #8]
	vldr	d16, [r11, #-104]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #32]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #112]
	vldr	d19, [sp, #40]          @ 8-byte Reload
	vmov	r0, r1, d19
	vstr	d16, [sp, #24]          @ 8-byte Spill
	vstr	d18, [sp, #16]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d17, #3.000000e+00
	vmov.f64	d18, #4.000000e+00
	vmul.f64	d16, d18, d16
	vmul.f64	d16, d18, d16
	vldr	d18, [sp, #16]          @ 8-byte Reload
	vadd.f64	d16, d18, d16
	vdiv.f64	d16, d16, d17
	vmov	r0, r1, d16
	vstr	d17, [sp, #8]           @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #24]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [r11, #-80]
	vldr	d18, [sp, #8]           @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-72]
	vstr	d16, [r0, #16]
	b	.LBB3_3
.LBB3_2:
	vldr	d16, .LCPI3_1
	movw	r0, #1
	ldr	r1, [r11, #-68]
	str	r0, [r1]
	vldr	d17, [sp, #120]
	vmov	r0, r1, d17
	vstr	d16, [sp]               @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [r11, #-112]
	vabs.f64	d17, d17
	vadd.f64	d16, d16, d17
	vmov	r0, r1, d16
	vldr	d16, [sp]               @ 8-byte Reload
	vmov	r2, r3, d16
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d17, #3.000000e+00
	movw	r0, #1
	ldr	r1, [r11, #-72]
	vstr	d16, [r1]
	vldr	d16, [r11, #-104]
	ldr	r1, [r11, #-72]
	vldr	d18, [r1]
	vdiv.f64	d16, d16, d18
	ldr	r1, [r11, #-72]
	vldr	d18, [r1]
	vadd.f64	d16, d18, d16
	vstr	d16, [r1]
	vldr	d16, [r11, #-112]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	movmi	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-72]
	vldr	d18, [r0]
	vmul.f64	d16, d18, d16
	vstr	d16, [r0]
	vldr	d16, [r11, #-80]
	vdiv.f64	d16, d16, d17
	ldr	r0, [r11, #-72]
	vldr	d17, [r0]
	vsub.f64	d16, d17, d16
	vstr	d16, [r0]
.LBB3_3:
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#4:
.LCPI3_0:
	.long	0                       @ double 54
	.long	1078657024
.LCPI3_1:
	.long	1431655765              @ double 0.33333333333333331
	.long	1070945621
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic
	.cantunwind
	.fnend

	.globl	usqrt
	.p2align	2
	.type	usqrt,%function
	.code	32                      @ @usqrt
usqrt:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #384
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #108
	movw	r3, #0
	str	r0, [r2, #128]
	str	r1, [r2, #124]
	str	r3, [r2, #96]
	str	r3, [r2, #64]
	str	r3, [r2, #32]
	str	r3, [r2]
	str	r2, [r6, #92]           @ 4-byte Spill
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0]
	cmp	r1, #32
	bge	.LBB4_26
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	movw	r1, #2
	ldr	r2, [r6, #92]           @ 4-byte Reload
	ldr	r3, [r2, #64]
	vdup.32	q8, r3
	add	r12, r6, #176
	vst1.64	{d16, d17}, [r12:128]
	mov	lr, sp
	sub	r4, lr, #8
	mov	sp, r4
	mov	r4, sp
	sub	r4, r4, #16
	bfc	r4, #0, #4
	mov	sp, r4
	mov	r5, #2
	str	r5, [lr, #-8]
	vmov.i32	q9, #0x2
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q8, q8, #2
	lsl	r3, r3, #2
	ldr	lr, [r2, #128]
	vdup.32	q10, lr
	add	r4, r6, #240
	vst1.64	{d20, d21}, [r4:128]
	mov	r7, sp
	sub	r8, r7, #8
	mov	sp, r8
	mov	r8, sp
	sub	r8, r8, #16
	bfc	r8, #0, #4
	mov	sp, r8
	mov	r9, #-1073741824
	str	r9, [r7, #-8]
	vmov.i32	q11, #0xc0000000
	vst1.32	{d22, d23}, [r8]
	vand	q10, q10, q11
	mov	r7, sp
	sub	r8, r7, #8
	mov	sp, r8
	mov	r8, sp
	sub	r8, r8, #16
	bfc	r8, #0, #4
	mov	sp, r8
	mov	r9, #30
	str	r9, [r7, #-8]
	vmov.i32	q11, #0x1e
	vst1.32	{d22, d23}, [r8]
	vneg.s32	q11, q11
	vshl.u32	q10, q10, q11
	vadd.i32	q8, q8, q10
	vst1.64	{d16, d17}, [r12]
	orr	r3, r3, lr, lsr #30
	str	r3, [r2, #64]
	ldr	r3, [r2, #128]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r4:128]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	str	r5, [r12, #-8]
	vst1.32	{d18, d19}, [lr]
	vshl.i32	q8, q8, #2
	vst1.64	{d16, d17}, [r4]
	vmov.f64	d24, d16
	vmov.32	r12, d24[0]
	vmov.32	lr, d24[1]
	vmov.f64	d24, d17
	vmov.32	r4, d24[0]
	add	lr, r12, lr
	add	lr, lr, r4
	lsl	r3, r3, #2
	mul	r0, r3, r0
	str	r3, [r2, #256]
	cmp	lr, r0
	str	r3, [r6, #88]           @ 4-byte Spill
	str	r1, [r6, #84]           @ 4-byte Spill
	str	r12, [r6, #80]          @ 4-byte Spill
	str	lr, [r6, #76]           @ 4-byte Spill
	beq	.LBB4_7
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #76]           @ 4-byte Reload
	ldr	r1, [r6, #80]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_5
@ BB#4:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #80]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #256]
	b	.LBB4_6
.LBB4_5:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #256]
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #256]
	str	r1, [r0, #128]
	ldr	r1, [r0, #96]
	vdup.32	q8, r1
	add	r2, r6, #208
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
	vshl.i32	q8, q8, #1
	vst1.64	{d16, d17}, [r2]
	lsl	r3, r1, #1
	str	r3, [r0, #96]
	vld1.64	{d16, d17}, [r2:128]
	mov	r2, sp
	sub	r3, r2, #8
	mov	sp, r3
	mov	r3, sp
	sub	r3, r3, #16
	bfc	r3, #0, #4
	mov	sp, r3
	str	lr, [r2, #-8]
	vst1.32	{d18, d19}, [r3]
	vshl.i32	q8, q8, #1
	lsl	r1, r1, #2
	mov	r2, sp
	sub	r3, r2, #8
	mov	sp, r3
	mov	r3, sp
	sub	r3, r3, #16
	bfc	r3, #0, #4
	mov	sp, r3
	str	lr, [r2, #-8]
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	add	r2, r6, #144
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #32]
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #32]
	cmp	r1, r2
	add	lr, r6, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blo	.LBB4_19
@ BB#8:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #92]           @ 4-byte Reload
	ldr	r2, [r1, #32]
	ldr	r3, [r1, #64]
	add	r12, r6, #176
	vld1.64	{d16, d17}, [r12:128]
	add	lr, r6, #144
	vld1.64	{d18, d19}, [lr:128]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r12, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r4, d20[0]
	add	lr, r12, lr
	add	lr, lr, r4
	sub	r2, r3, r2
	mul	r0, r2, r0
	str	r2, [r1, #224]
	cmp	lr, r0
	str	r2, [r6, #44]           @ 4-byte Spill
	str	r12, [r6, #40]          @ 4-byte Spill
	str	lr, [r6, #36]           @ 4-byte Spill
	beq	.LBB4_13
@ BB#9:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_11
@ BB#10:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #224]
	b	.LBB4_12
.LBB4_11:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #224]
.LBB4_12:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_13
.LBB4_13:                               @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #92]           @ 4-byte Reload
	ldr	r2, [r1, #224]
	str	r2, [r1, #64]
	ldr	r2, [r1, #96]
	add	r3, r6, #208
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
	str	r2, [r1, #192]
	cmp	r12, r0
	str	r2, [r6, #32]           @ 4-byte Spill
	str	r12, [r6, #28]          @ 4-byte Spill
	str	r3, [r6, #24]           @ 4-byte Spill
	beq	.LBB4_18
@ BB#14:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #28]           @ 4-byte Reload
	ldr	r1, [r6, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_16
@ BB#15:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #192]
	b	.LBB4_17
.LBB4_16:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #32]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #192]
.LBB4_17:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_18
.LBB4_18:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #192]
	str	r1, [r0, #96]
.LBB4_19:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_20
.LBB4_20:                               @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #92]           @ 4-byte Reload
	ldr	r2, [r1]
	vdup.32	q8, r2
	add	r3, r6, #112
	vst1.64	{d16, d17}, [r3:128]
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
	str	r2, [r1, #160]
	cmp	r12, r0
	str	r2, [r6, #20]           @ 4-byte Spill
	str	r12, [r6, #16]          @ 4-byte Spill
	str	r3, [r6, #12]           @ 4-byte Spill
	beq	.LBB4_25
@ BB#21:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #12]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_23
@ BB#22:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #160]
	b	.LBB4_24
.LBB4_23:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #160]
.LBB4_24:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_25
.LBB4_25:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #160]
	str	r1, [r0]
	b	.LBB4_1
.LBB4_26:
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #124]
	ldr	r2, [r0, #96]
	str	r2, [r1]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end4:
	.size	usqrt, .Lfunc_end4-usqrt
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"********* CUBIC FUNCTIONS ***********\n"
	.size	.L.str, 39

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"********* INTEGER SQR ROOTS ***********\n"
	.size	.L.str.4, 41

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"sqrt(%lX) = %X\n"
	.size	.L.str.6, 16

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"********* ANGLE CONVERSION ***********\n"
	.size	.L.str.7, 40

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"%3.0f degrees = %.12f radians\n"
	.size	.L.str.8, 31

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"%.12f radians = %3.0f degrees\n"
	.size	.L.str.10, 31


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
