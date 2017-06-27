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
	.file	"all_small.bc"
	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #424
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	movw	r1, #0
	ldr	r2, .LCPI0_0
	vldr	d16, .LCPI0_8
	vmov.f64	d17, #1.000000e+00
	vldr	d18, .LCPI0_9
	vmov.f64	d19, #-3.100000e+01
	vmov.f64	d20, #2.200000e+01
	vmov.f64	d21, #-3.500000e+00
	vmov.f64	d22, #-3.000000e+01
	vmov.f64	d23, #1.700000e+01
	vmov.f64	d24, #-4.500000e+00
	vldr	d25, .LCPI0_10
	vmov.f64	d26, #-1.050000e+01
	str	r1, [r11, #-12]
	vstr	d17, [r11, #-24]
	vstr	d26, [r11, #-32]
	vstr	d25, [r11, #-40]
	vstr	d22, [r11, #-48]
	vstr	d17, [r11, #-56]
	vstr	d24, [r11, #-64]
	vstr	d23, [r11, #-72]
	vstr	d22, [r11, #-80]
	vstr	d17, [r11, #-88]
	vstr	d21, [r11, #-96]
	vstr	d20, [r11, #-104]
	vstr	d19, [r11, #-112]
	vstr	d17, [r11, #-120]
	vstr	d18, [r11, #-128]
	vstr	d17, [r11, #-136]
	vstr	d16, [r11, #-144]
	str	r2, [r11, #-188]
	str	r1, [r11, #-200]
	bl	printf
	sub	r1, r11, #180
	sub	r2, r11, #168
	vldr	d16, [r11, #-24]
	vldr	d17, [r11, #-32]
	vldr	d18, [r11, #-40]
	vldr	d19, [r11, #-48]
	str	r0, [r11, #-204]        @ 4-byte Spill
	str	r1, [r11, #-208]        @ 4-byte Spill
	vmov	r0, r1, d16
	str	r2, [r11, #-212]        @ 4-byte Spill
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	lr, [r11, #-208]        @ 4-byte Reload
	str	lr, [sp, #16]
	ldr	r12, [r11, #-212]       @ 4-byte Reload
	str	r12, [sp, #20]
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-184]
	str	r0, [sp, #216]          @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-180]
	cmp	r0, r1
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	sub	r1, r11, #168
	movw	r2, #3
	ldr	r3, [r11, #-184]
	sub	r12, r11, #168
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #212]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #208]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #204]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_1
.LBB0_4:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	sub	lr, r11, #180
	sub	r1, r11, #168
	vldr	d16, [r11, #-56]
	vldr	d17, [r11, #-64]
	vldr	d18, [r11, #-72]
	vldr	d19, [r11, #-80]
	str	r0, [sp, #200]          @ 4-byte Spill
	str	r1, [sp, #196]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [sp, #196]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-184]
	str	r0, [sp, #192]          @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-180]
	cmp	r0, r1
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	sub	r1, r11, #168
	movw	r2, #3
	ldr	r3, [r11, #-184]
	sub	r12, r11, #168
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #188]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #184]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #180]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_5
.LBB0_8:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	sub	lr, r11, #180
	sub	r1, r11, #168
	vldr	d16, [r11, #-88]
	vldr	d17, [r11, #-96]
	vldr	d18, [r11, #-104]
	vldr	d19, [r11, #-112]
	str	r0, [sp, #176]          @ 4-byte Spill
	str	r1, [sp, #172]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [sp, #172]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-184]
	str	r0, [sp, #168]          @ 4-byte Spill
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-180]
	cmp	r0, r1
	bge	.LBB0_12
@ BB#10:                                @   in Loop: Header=BB0_9 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	sub	r1, r11, #168
	movw	r2, #3
	ldr	r3, [r11, #-184]
	sub	r12, r11, #168
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #164]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #160]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #156]          @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_9
.LBB0_12:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	sub	lr, r11, #180
	sub	r1, r11, #168
	vldr	d16, [r11, #-120]
	vldr	d17, [r11, #-128]
	vldr	d18, [r11, #-136]
	vldr	d19, [r11, #-144]
	str	r0, [sp, #152]          @ 4-byte Spill
	str	r1, [sp, #148]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [sp, #148]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-184]
	str	r0, [sp, #144]          @ 4-byte Spill
.LBB0_13:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-180]
	cmp	r0, r1
	bge	.LBB0_19
@ BB#14:                                @   in Loop: Header=BB0_13 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	sub	r1, r11, #168
	movw	r2, #3
	ldr	r3, [r11, #-184]
	sub	r12, r11, #168
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #140]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #136]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #132]          @ 4-byte Spill
@ BB#15:                                @   in Loop: Header=BB0_13 Depth=1
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_13
	.p2align	3
@ BB#16:
.LCPI0_8:
	.long	0                       @ double -35
	.long	3225518080
	.p2align	3
@ BB#17:
.LCPI0_9:
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.p2align	3
@ BB#18:
.LCPI0_10:
	.long	0                       @ double 32
	.long	1077936128
.LBB0_19:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	vmov.f64	d16, #1.000000e+00
	vstr	d16, [r11, #-24]
	str	r0, [sp, #128]          @ 4-byte Spill
.LBB0_20:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_22 Depth 2
                                        @       Child Loop BB0_24 Depth 3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #1.000000e+01
	vldr	d17, [r11, #-24]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_39
@ BB#21:                                @   in Loop: Header=BB0_20 Depth=1
	vmov.f64	d16, #1.000000e+01
	vstr	d16, [r11, #-32]
.LBB0_22:                               @   Parent Loop BB0_20 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_24 Depth 3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	vldr	d16, [r11, #-32]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_37
@ BB#23:                                @   in Loop: Header=BB0_22 Depth=2
	vmov.f64	d16, #5.000000e+00
	vstr	d16, [r11, #-40]
.LBB0_24:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #1.500000e+01
	vldr	d17, [r11, #-40]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_35
@ BB#25:                                @   in Loop: Header=BB0_24 Depth=3
	vmov.f64	d16, #-1.000000e+00
	vstr	d16, [r11, #-48]
.LBB0_26:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @       Parent Loop BB0_24 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #-1.100000e+01
	vldr	d17, [r11, #-48]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_33
@ BB#27:                                @   in Loop: Header=BB0_26 Depth=4
	sub	r0, r11, #180
	sub	r1, r11, #168
	vldr	d16, [r11, #-24]
	vldr	d17, [r11, #-32]
	vldr	d18, [r11, #-40]
	vldr	d19, [r11, #-48]
	str	r0, [sp, #124]          @ 4-byte Spill
	str	r1, [sp, #120]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	r12, [sp, #124]         @ 4-byte Reload
	str	r12, [sp, #16]
	ldr	lr, [sp, #120]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	str	r1, [r11, #-184]
	str	r0, [sp, #116]          @ 4-byte Spill
.LBB0_28:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @       Parent Loop BB0_24 Depth=3
                                        @         Parent Loop BB0_26 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-180]
	cmp	r0, r1
	bge	.LBB0_31
@ BB#29:                                @   in Loop: Header=BB0_28 Depth=5
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	sub	r1, r11, #168
	movw	r2, #3
	ldr	r3, [r11, #-184]
	sub	r12, r11, #168
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #112]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #108]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #104]          @ 4-byte Spill
@ BB#30:                                @   in Loop: Header=BB0_28 Depth=5
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_28
.LBB0_31:                               @   in Loop: Header=BB0_26 Depth=4
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	str	r0, [sp, #100]          @ 4-byte Spill
@ BB#32:                                @   in Loop: Header=BB0_26 Depth=4
	vmov.f64	d16, #-1.000000e+00
	vldr	d17, [r11, #-48]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-48]
	b	.LBB0_26
.LBB0_33:                               @   in Loop: Header=BB0_24 Depth=3
	b	.LBB0_34
.LBB0_34:                               @   in Loop: Header=BB0_24 Depth=3
	vmov.f64	d16, #5.000000e-01
	vldr	d17, [r11, #-40]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-40]
	b	.LBB0_24
.LBB0_35:                               @   in Loop: Header=BB0_22 Depth=2
	b	.LBB0_36
.LBB0_36:                               @   in Loop: Header=BB0_22 Depth=2
	vmov.f64	d16, #-1.000000e+00
	vldr	d17, [r11, #-32]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-32]
	b	.LBB0_22
.LBB0_37:                               @   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_38
.LBB0_38:                               @   in Loop: Header=BB0_20 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, [r11, #-24]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-24]
	b	.LBB0_20
.LBB0_39:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	bl	printf
	movw	lr, #0
	str	lr, [r11, #-184]
	str	r0, [sp, #96]           @ 4-byte Spill
.LBB0_40:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #1001
	ldr	r1, [r11, #-184]
	cmp	r1, r0
	bge	.LBB0_43
@ BB#41:                                @   in Loop: Header=BB0_40 Depth=1
	sub	r1, r11, #196
	ldr	r0, [r11, #-184]
	bl	usqrt
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	ldr	r1, [r11, #-184]
	ldr	r2, [r11, #-196]
	bl	printf
	str	r0, [sp, #92]           @ 4-byte Spill
@ BB#42:                                @   in Loop: Header=BB0_40 Depth=1
	ldr	r0, [r11, #-184]
	add	r0, r0, #1
	str	r0, [r11, #-184]
	b	.LBB0_40
.LBB0_43:
	sub	r1, r11, #196
	ldr	r0, [r11, #-188]
	bl	usqrt
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	ldr	r1, [r11, #-188]
	ldr	r2, [r11, #-196]
	bl	printf
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	str	r0, [sp, #88]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vldr	d16, .LCPI0_4
	vstr	d16, [r11, #-176]
	str	r0, [sp, #84]           @ 4-byte Spill
.LBB0_44:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_5
	vldr	d17, [r11, #-176]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_47
@ BB#45:                                @   in Loop: Header=BB0_44 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, [r11, #-176]
	vldr	d18, [r11, #-176]
	vmov	r0, r1, d16
	vstr	d18, [sp, #72]          @ 8-byte Spill
	vstr	d17, [sp, #64]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	vldr	d17, .LCPI0_7
	vmov.f64	d18, #4.000000e+00
	vmul.f64	d16, d18, d16
	vldr	d18, [sp, #72]          @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vdiv.f64	d16, d16, d17
	vldr	d17, [sp, #64]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	str	r0, [sp, #60]           @ 4-byte Spill
@ BB#46:                                @   in Loop: Header=BB0_44 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, [r11, #-176]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-176]
	b	.LBB0_44
.LBB0_47:
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:puts
	movt	r1, :upper16:puts
	blx	r1
	vldr	d16, .LCPI0_4
	vstr	d16, [r11, #-176]
	str	r0, [sp, #56]           @ 4-byte Spill
.LBB0_48:                               @ =>This Inner Loop Header: Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, [r11, #-176]
	vmov	r0, r1, d16
	vstr	d17, [sp, #48]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vldr	d17, .LCPI0_6
	vmov.f64	d18, #2.000000e+00
	vmov.f64	d19, #4.000000e+00
	vmul.f64	d16, d19, d16
	vmul.f64	d16, d18, d16
	vadd.f64	d16, d16, d17
	vldr	d17, [sp, #48]          @ 8-byte Reload
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_51
@ BB#49:                                @   in Loop: Header=BB0_48 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, .LCPI0_7
	vldr	d18, [r11, #-176]
	vldr	d19, [r11, #-176]
	vmul.f64	d17, d19, d17
	vmov	r0, r1, d16
	vstr	d17, [sp, #40]          @ 8-byte Spill
	vstr	d18, [sp, #32]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d17, d16
	vldr	d17, [sp, #40]          @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	vldr	d17, [sp, #32]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#50:                                @   in Loop: Header=BB0_48 Depth=1
	vmov.f64	d16, #1.000000e+00
	vmov	r0, r1, d16
	bl	atan
	vmov	d16, r0, r1
	vldr	d17, .LCPI0_7
	vmov.f64	d18, #4.000000e+00
	vmul.f64	d16, d18, d16
	vdiv.f64	d16, d16, d17
	vldr	d17, [r11, #-176]
	vadd.f64	d16, d17, d16
	vstr	d16, [r11, #-176]
	b	.LBB0_48
.LBB0_51:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#52:
.LCPI0_4:
	.long	0                       @ double 0
	.long	0
.LCPI0_5:
	.long	0                       @ double 360
	.long	1081507840
.LCPI0_6:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_7:
	.long	0                       @ double 180
	.long	1080459264
.LCPI0_0:
	.long	1072497001              @ 0x3fed0169
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
	.p2align	3
	.type	deg2rad,%function
	.code	32                      @ @deg2rad
deg2rad:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	vmov	d16, r0, r1
	vstr	d16, [sp]
	vmov.f64	d16, #1.000000e+00
	vmov	r0, r1, d16
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, [sp]
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI2_0
	vdiv.f64	d16, d16, d17
	vmov	r0, r1, d16
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#1:
.LCPI2_0:
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
	sub	sp, sp, #208
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
	vstr	d17, [r11, #-8]
	vstr	d16, [r11, #-16]
	vstr	d19, [r11, #-24]
	vstr	d18, [r11, #-32]
	str	r1, [r11, #-36]
	str	r0, [r11, #-40]
	vldr	d16, [r11, #-16]
	vldr	d17, [r11, #-8]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-48]
	vldr	d16, [r11, #-24]
	vldr	d17, [r11, #-8]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-56]
	vldr	d16, [r11, #-32]
	vldr	d17, [r11, #-8]
	vdiv.f64	d16, d16, d17
	vstr	d16, [r11, #-64]
	vldr	d16, [r11, #-48]
	vldr	d17, [r11, #-48]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-56]
	vmul.f64	d17, d24, d17
	vsub.f64	d16, d16, d17
	vdiv.f64	d16, d16, d22
	vstr	d16, [r11, #-72]
	vldr	d16, [r11, #-48]
	vmul.f64	d16, d23, d16
	vldr	d17, [r11, #-48]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-48]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-48]
	vmul.f64	d17, d22, d17
	vldr	d18, [r11, #-56]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vldr	d17, [r11, #-64]
	vmul.f64	d17, d21, d17
	vadd.f64	d16, d16, d17
	vdiv.f64	d16, d16, d20
	vstr	d16, [r11, #-80]
	vldr	d16, [r11, #-80]
	vldr	d17, [r11, #-80]
	vmul.f64	d16, d16, d17
	vldr	d17, [r11, #-72]
	vldr	d18, [r11, #-72]
	vmul.f64	d17, d17, d18
	vldr	d18, [r11, #-72]
	vmul.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	vstr	d16, [r11, #-88]
	vldr	d16, [r11, #-88]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB3_2
@ BB#1:
	movw	r0, #3
	ldr	r1, [r11, #-36]
	str	r0, [r1]
	vldr	d16, [r11, #-80]
	vldr	d17, [r11, #-72]
	vldr	d18, [r11, #-72]
	vmul.f64	d17, d17, d18
	vldr	d18, [r11, #-72]
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
	vstr	d16, [r11, #-96]
	vldr	d16, [r11, #-72]
	vmov	r0, r1, d16
	vstr	d19, [sp, #96]          @ 8-byte Spill
	vstr	d17, [sp, #88]          @ 8-byte Spill
	vstr	d18, [sp, #80]          @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #80]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [r11, #-96]
	vldr	d19, [sp, #96]          @ 8-byte Reload
	vdiv.f64	d18, d18, d19
	vmov	r0, r1, d18
	vstr	d16, [sp, #72]          @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vldr	d17, [sp, #72]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [r11, #-48]
	vldr	d18, [sp, #96]          @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-40]
	vstr	d16, [r0]
	vldr	d16, [r11, #-72]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #80]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [r11, #-96]
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
	vldr	d17, [r11, #-48]
	vldr	d18, [sp, #48]          @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-40]
	vstr	d16, [r0, #8]
	vldr	d16, [r11, #-72]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [sp, #32]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [r11, #-96]
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
	vldr	d17, [r11, #-48]
	vldr	d18, [sp, #8]           @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [r11, #-40]
	vstr	d16, [r0, #16]
	b	.LBB3_3
.LBB3_2:
	vldr	d16, .LCPI3_1
	movw	r0, #1
	ldr	r1, [r11, #-36]
	str	r0, [r1]
	vldr	d17, [r11, #-88]
	vmov	r0, r1, d17
	vstr	d16, [sp]               @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vldr	d17, [r11, #-80]
	vabs.f64	d17, d17
	vadd.f64	d16, d16, d17
	vmov	r0, r1, d16
	vldr	d16, [sp]               @ 8-byte Reload
	vmov	r2, r3, d16
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d17, #3.000000e+00
	movw	r0, #1
	ldr	r1, [r11, #-40]
	vstr	d16, [r1]
	vldr	d16, [r11, #-72]
	ldr	r1, [r11, #-40]
	vldr	d18, [r1]
	vdiv.f64	d16, d16, d18
	ldr	r1, [r11, #-40]
	vldr	d18, [r1]
	vadd.f64	d16, d18, d16
	vstr	d16, [r1]
	vldr	d16, [r11, #-80]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	movmi	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-40]
	vldr	d18, [r0]
	vmul.f64	d16, d18, d16
	vstr	d16, [r0]
	vldr	d16, [r11, #-48]
	vdiv.f64	d16, d16, d17
	ldr	r0, [r11, #-40]
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
	sub	sp, sp, #36
	movw	r2, #0
	str	r0, [sp, #32]
	str	r1, [sp, #28]
	str	r2, [sp, #24]
	str	r2, [sp, #20]
	str	r2, [sp, #16]
	str	r2, [sp, #12]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #32
	bge	.LBB4_6
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #1
	movw	r1, #2
	movw	r2, #30
	ldr	r3, [sp, #20]
	lsl	r3, r3, #2
	ldr	r12, [sp, #32]
	and	r12, r12, #-1073741824
	lsr	r12, r12, #30
	add	r3, r3, r12
	str	r3, [sp, #20]
	ldr	r3, [sp, #32]
	lsl	r3, r3, #2
	str	r3, [sp, #32]
	ldr	r3, [sp, #24]
	lsl	r3, r3, #1
	str	r3, [sp, #24]
	ldr	r3, [sp, #24]
	lsl	r3, r3, #1
	add	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	ldr	r12, [sp, #16]
	cmp	r3, r12
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	blo	.LBB4_4
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	sub	r0, r1, r0
	str	r0, [sp, #20]
	ldr	r0, [sp, #24]
	add	r0, r0, #1
	str	r0, [sp, #24]
.LBB4_4:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_5
.LBB4_5:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB4_1
.LBB4_6:
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #24]
	str	r1, [r0]
	add	sp, sp, #36
	bx	lr
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
	.asciz	"\nsqrt(%lX) = %X\n"
	.size	.L.str.6, 17

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
