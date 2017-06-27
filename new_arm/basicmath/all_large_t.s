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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #1632
	bfc	sp, #0, #4
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #1200
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #1196]
	adr	r2, .LCPI0_41
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #1168
	vst1.64	{d18, d19}, [r2]
	movw	r2, #0
	movt	r2, #16368
	str	r2, [sp, #1164]
	str	r1, [sp, #1160]
	adr	r2, .LCPI0_42
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #1136
	vst1.64	{d18, d19}, [r2]
	movw	r2, #0
	movt	r2, #49189
	str	r2, [sp, #1132]
	str	r1, [sp, #1128]
	adr	r2, .LCPI0_43
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #1104
	vst1.64	{d18, d19}, [r2]
	movw	r2, #0
	movt	r2, #16448
	str	r2, [sp, #1100]
	str	r1, [sp, #1096]
	adr	r2, .LCPI0_44
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #1072
	vst1.64	{d18, d19}, [r2]
	movw	r2, #0
	movt	r2, #49214
	str	r2, [sp, #1068]
	str	r1, [sp, #1064]
	adr	r2, .LCPI0_45
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #928
	vst1.64	{d18, d19}, [r2]
	movw	r2, #361
	movt	r2, #16365
	str	r2, [sp, #924]
	add	r2, sp, #896
	vst1.64	{d16, d17}, [r2]
	str	r1, [sp, #892]
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	str	r0, [sp, #888]          @ 4-byte Spill
	mov	r0, r1
	add	r4, sp, #864
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	bl	printf
	add	r4, sp, #1024
	vldr	d20, [r4, #136]
	add	r4, sp, #1024
	vldr	d21, [r4, #104]
	add	r4, sp, #1024
	vldr	d22, [r4, #72]
	add	r4, sp, #1024
	vldr	d23, [r4, #40]
	mov	r1, sp
	add	r2, sp, #1040
	str	r2, [r1, #20]
	add	r2, sp, #988
	str	r2, [r1, #16]
	vstr	d23, [r1, #8]
	vstr	d22, [r1]
	vmov	r1, r2, d20
	vmov	lr, r3, d21
	str	r0, [sp, #860]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	add	r1, sp, #960
	add	lr, sp, #864
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #888]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #856]          @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #852]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #848]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #844]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #956]
	vdup.32	q8, r0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #816
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
.LBB0_4:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #812]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_41
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #16368
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_46
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #49170
	str	lr, [sp, #1132]
	str	r1, [sp, #1128]
	adr	lr, .LCPI0_47
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1104
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16433
	str	lr, [sp, #1100]
	str	r1, [sp, #1096]
	adr	lr, .LCPI0_44
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1072
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #49214
	str	lr, [sp, #1068]
	str	r1, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	r2, sp
	str	lr, [r2, #12]
	str	r1, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d20, [r2]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #808]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #812]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #804]          @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_24
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #800]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #796]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #792]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #768
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_5
	.p2align	4
@ BB#8:
.LCPI0_41:
	.long	0                       @ double 1
	.long	1072693248
	.long	0                       @ double 1
	.long	1072693248
	.p2align	4
@ BB#9:
.LCPI0_42:
	.long	0                       @ double -10.5
	.long	3223650304
	.long	0                       @ double -10.5
	.long	3223650304
	.p2align	4
@ BB#10:
.LCPI0_43:
	.long	0                       @ double 32
	.long	1077936128
	.long	0                       @ double 32
	.long	1077936128
	.p2align	4
@ BB#11:
.LCPI0_44:
	.long	0                       @ double -30
	.long	3225288704
	.long	0                       @ double -30
	.long	3225288704
	.p2align	4
@ BB#12:
.LCPI0_45:
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.p2align	4
@ BB#13:
.LCPI0_46:
	.long	0                       @ double -4.5
	.long	3222405120
	.long	0                       @ double -4.5
	.long	3222405120
	.p2align	4
@ BB#14:
.LCPI0_47:
	.long	0                       @ double 17
	.long	1076953088
	.long	0                       @ double 17
	.long	1076953088
	.p2align	4
@ BB#15:
.LCPI0_48:
	.long	0                       @ double -3.5
	.long	3222011904
	.long	0                       @ double -3.5
	.long	3222011904
	.p2align	4
@ BB#16:
.LCPI0_49:
	.long	0                       @ double 22
	.long	1077280768
	.long	0                       @ double 22
	.long	1077280768
	.p2align	4
@ BB#17:
.LCPI0_50:
	.long	0                       @ double -31
	.long	3225354240
	.long	0                       @ double -31
	.long	3225354240
	.p2align	4
@ BB#18:
.LCPI0_51:
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.p2align	4
@ BB#19:
.LCPI0_52:
	.long	0                       @ double -35
	.long	3225518080
	.long	0                       @ double -35
	.long	3225518080
	.p2align	4
@ BB#20:
.LCPI0_53:
	.long	0                       @ double 3
	.long	1074266112
	.long	0                       @ double 3
	.long	1074266112
	.p2align	4
@ BB#21:
.LCPI0_54:
	.long	2061584302              @ double 12.34
	.long	1076407828
	.long	2061584302              @ double 12.34
	.long	1076407828
	.p2align	4
@ BB#22:
.LCPI0_55:
	.long	0                       @ double 5
	.long	1075052544
	.long	0                       @ double 5
	.long	1075052544
	.p2align	4
@ BB#23:
.LCPI0_56:
	.long	0                       @ double 12
	.long	1076363264
	.long	0                       @ double 12
	.long	1076363264
.LBB0_24:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #764]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_41
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #16368
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_48
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #49164
	str	lr, [sp, #1132]
	str	r1, [sp, #1128]
	adr	lr, .LCPI0_49
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1104
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16438
	str	lr, [sp, #1100]
	str	r1, [sp, #1096]
	adr	lr, .LCPI0_50
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1072
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #49215
	str	lr, [sp, #1068]
	str	r1, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	r2, sp
	str	lr, [r2, #12]
	str	r1, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d20, [r2]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #760]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #764]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #756]          @ 4-byte Spill
.LBB0_25:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_28
@ BB#26:                                @   in Loop: Header=BB0_25 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #752]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #748]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #744]          @ 4-byte Spill
@ BB#27:                                @   in Loop: Header=BB0_25 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #720
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_25
.LBB0_28:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #716]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_41
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #16368
	str	r1, [sp, #1164]
	mov	lr, #0
	str	lr, [sp, #1160]
	adr	r2, .LCPI0_51
	vld1.64	{d18, d19}, [r2:128]
	add	r2, sp, #1136
	vst1.64	{d18, d19}, [r2]
	movw	r2, #26214
	movt	r2, #49195
	str	r2, [sp, #1132]
	movw	r2, #26214
	movt	r2, #26214
	str	r2, [sp, #1128]
	add	r2, sp, #1104
	vst1.64	{d16, d17}, [r2]
	str	r1, [sp, #1100]
	str	lr, [sp, #1096]
	adr	r1, .LCPI0_52
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1072
	vst1.64	{d16, d17}, [r1]
	movw	r1, #32768
	movt	r1, #49217
	str	r1, [sp, #1068]
	str	lr, [sp, #1064]
	add	r4, sp, #1024
	vldr	d20, [r4, #136]
	add	r4, sp, #1024
	vldr	d21, [r4, #104]
	add	r4, sp, #1024
	vldr	d22, [r4, #72]
	mov	r2, sp
	str	r1, [r2, #12]
	str	lr, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d22, [r2]
	vmov	r1, r2, d20
	vmov	lr, r3, d21
	str	r0, [sp, #712]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #716]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #708]          @ 4-byte Spill
.LBB0_29:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_32
@ BB#30:                                @   in Loop: Header=BB0_29 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #704]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #700]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #696]          @ 4-byte Spill
@ BB#31:                                @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #672
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_29
.LBB0_32:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #668]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_53
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #16392
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_54
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #44564
	movt	lr, #16424
	str	lr, [sp, #1132]
	movw	lr, #18350
	movt	lr, #31457
	str	lr, [sp, #1128]
	adr	lr, .LCPI0_55
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1104
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16404
	str	lr, [sp, #1100]
	str	r1, [sp, #1096]
	adr	lr, .LCPI0_56
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1072
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16424
	str	lr, [sp, #1068]
	str	r1, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	r2, sp
	str	lr, [r2, #12]
	str	r1, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d20, [r2]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #664]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #668]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #660]          @ 4-byte Spill
.LBB0_33:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_36
@ BB#34:                                @   in Loop: Header=BB0_33 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #656]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #652]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #648]          @ 4-byte Spill
@ BB#35:                                @   in Loop: Header=BB0_33 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #624
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_33
.LBB0_36:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #620]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_57
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #49184
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_58
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #63733
	movt	lr, #49232
	str	lr, [sp, #1132]
	movw	lr, #23593
	movt	lr, #49807
	str	lr, [sp, #1128]
	adr	lr, .LCPI0_59
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1104
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16408
	str	lr, [sp, #1100]
	str	r1, [sp, #1096]
	adr	r1, .LCPI0_60
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1072
	vst1.64	{d16, d17}, [r1]
	movw	r1, #39321
	movt	r1, #49207
	str	r1, [sp, #1068]
	movw	lr, #39322
	movt	lr, #39321
	str	lr, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	r2, sp
	str	r1, [r2, #12]
	str	lr, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d20, [r2]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #616]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #620]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #612]          @ 4-byte Spill
.LBB0_37:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_40
@ BB#38:                                @   in Loop: Header=BB0_37 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #608]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #604]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #600]          @ 4-byte Spill
@ BB#39:                                @   in Loop: Header=BB0_37 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #576
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_37
.LBB0_40:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #572]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_61
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #32768
	movt	r1, #16454
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_62
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #22282
	movt	lr, #16417
	str	lr, [sp, #1132]
	movw	lr, #41943
	movt	lr, #15728
	str	lr, [sp, #1128]
	adr	lr, .LCPI0_63
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1104
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16414
	str	lr, [sp, #1100]
	str	r1, [sp, #1096]
	adr	lr, .LCPI0_64
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1072
	vst1.64	{d16, d17}, [lr]
	movw	lr, #0
	movt	lr, #16449
	str	lr, [sp, #1068]
	str	r1, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	r2, sp
	str	lr, [r2, #12]
	str	r1, [r2, #8]
	add	r1, sp, #1040
	str	r1, [r2, #20]
	add	r1, sp, #988
	str	r1, [r2, #16]
	vstr	d20, [r2]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #568]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #572]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #564]          @ 4-byte Spill
.LBB0_41:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_61
@ BB#42:                                @   in Loop: Header=BB0_41 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #560]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #556]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #552]          @ 4-byte Spill
@ BB#43:                                @   in Loop: Header=BB0_41 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #528
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_41
	.p2align	4
@ BB#44:
.LCPI0_57:
	.long	0                       @ double -8
	.long	3223322624
	.long	0                       @ double -8
	.long	3223322624
	.p2align	4
@ BB#45:
.LCPI0_58:
	.long	3264175145              @ double -67.890000000000001
	.long	3226532085
	.long	3264175145              @ double -67.890000000000001
	.long	3226532085
	.p2align	4
@ BB#46:
.LCPI0_59:
	.long	0                       @ double 6
	.long	1075314688
	.long	0                       @ double 6
	.long	1075314688
	.p2align	4
@ BB#47:
.LCPI0_60:
	.long	2576980378              @ double -23.600000000000001
	.long	3224869273
	.long	2576980378              @ double -23.600000000000001
	.long	3224869273
	.p2align	4
@ BB#48:
.LCPI0_61:
	.long	0                       @ double 45
	.long	1078362112
	.long	0                       @ double 45
	.long	1078362112
	.p2align	4
@ BB#49:
.LCPI0_62:
	.long	1030792151              @ double 8.6699999999999999
	.long	1075926794
	.long	1030792151              @ double 8.6699999999999999
	.long	1075926794
	.p2align	4
@ BB#50:
.LCPI0_63:
	.long	0                       @ double 7.5
	.long	1075707904
	.long	0                       @ double 7.5
	.long	1075707904
	.p2align	4
@ BB#51:
.LCPI0_64:
	.long	0                       @ double 34
	.long	1078001664
	.long	0                       @ double 34
	.long	1078001664
	.p2align	4
@ BB#52:
.LCPI0_65:
	.long	0                       @ double -12
	.long	3223846912
	.long	0                       @ double -12
	.long	3223846912
	.p2align	4
@ BB#53:
.LCPI0_66:
	.long	858993459               @ double -1.7
	.long	3220910899
	.long	858993459               @ double -1.7
	.long	3220910899
	.p2align	4
@ BB#54:
.LCPI0_67:
	.long	858993459               @ double 5.2999999999999998
	.long	1075131187
	.long	858993459               @ double 5.2999999999999998
	.long	1075131187
	.p2align	4
@ BB#55:
.LCPI0_68:
	.long	0                       @ double 16
	.long	1076887552
	.long	0                       @ double 16
	.long	1076887552
	.p2align	4
@ BB#56:
.LCPI0_69:
	.long	0                       @ double 1
	.long	1072693248
	.long	0                       @ double 1
	.long	1072693248
	.p2align	4
@ BB#57:
.LCPI0_70:
	.long	0                       @ double 10
	.long	1076101120
	.long	0                       @ double 10
	.long	1076101120
	.p2align	4
@ BB#58:
.LCPI0_71:
	.long	0                       @ double 5
	.long	1075052544
	.long	0                       @ double 5
	.long	1075052544
	.p2align	4
@ BB#59:
.LCPI0_72:
	.long	0                       @ double -1
	.long	3220176896
	.long	0                       @ double -1
	.long	3220176896
	.p2align	3
@ BB#60:
.LCPI0_73:
	.long	446676599               @ double 0.45100000000000001
	.long	1071439151
.LBB0_61:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #524]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_65
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #1168
	vst1.64	{d16, d17}, [r1]
	movw	r1, #0
	movt	r1, #49192
	str	r1, [sp, #1164]
	mov	r1, #0
	str	r1, [sp, #1160]
	adr	lr, .LCPI0_66
	vld1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1136
	vst1.64	{d16, d17}, [lr]
	movw	lr, #13107
	movt	lr, #49147
	str	lr, [sp, #1132]
	movw	lr, #13107
	movt	lr, #13107
	str	lr, [sp, #1128]
	adr	r2, .LCPI0_67
	vld1.64	{d16, d17}, [r2:128]
	add	r2, sp, #1104
	vst1.64	{d16, d17}, [r2]
	movw	r2, #13107
	movt	r2, #16405
	str	r2, [sp, #1100]
	str	lr, [sp, #1096]
	adr	r2, .LCPI0_68
	vld1.64	{d16, d17}, [r2:128]
	add	r2, sp, #1072
	vst1.64	{d16, d17}, [r2]
	movw	r2, #0
	movt	r2, #16432
	str	r2, [sp, #1068]
	str	r1, [sp, #1064]
	add	r4, sp, #1024
	vldr	d18, [r4, #136]
	add	r4, sp, #1024
	vldr	d19, [r4, #104]
	add	r4, sp, #1024
	vldr	d20, [r4, #72]
	mov	lr, sp
	str	r2, [lr, #12]
	str	r1, [lr, #8]
	add	r1, sp, #1040
	str	r1, [lr, #20]
	add	r1, sp, #988
	str	r1, [lr, #16]
	vstr	d20, [lr]
	vmov	r1, r2, d18
	vmov	lr, r3, d19
	str	r0, [sp, #520]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #524]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #516]          @ 4-byte Spill
.LBB0_62:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_65
@ BB#63:                                @   in Loop: Header=BB0_62 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #512]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #508]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #504]          @ 4-byte Spill
@ BB#64:                                @   in Loop: Header=BB0_62 Depth=1
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #480
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_62
.LBB0_65:
	vmov.f64	d16, #1.000000e+00
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	vstr	d16, [sp, #472]         @ 8-byte Spill
	bl	printf
	adr	lr, .LCPI0_69
	vld1.64	{d18, d19}, [lr:128]
	add	lr, sp, #1168
	vst1.64	{d18, d19}, [lr]
	vldr	d16, [sp, #472]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #136]
	str	r0, [sp, #468]          @ 4-byte Spill
.LBB0_66:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_68 Depth 2
                                        @       Child Loop BB0_70 Depth 3
                                        @         Child Loop BB0_72 Depth 4
                                        @           Child Loop BB0_74 Depth 5
	vmov.f64	d16, #1.000000e+01
	add	lr, sp, #1024
	vldr	d17, [lr, #136]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_105
@ BB#67:                                @   in Loop: Header=BB0_66 Depth=1
	vmov.f64	d16, #1.000000e+01
	adr	r0, .LCPI0_70
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1136
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #104]
.LBB0_68:                               @   Parent Loop BB0_66 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_70 Depth 3
                                        @         Child Loop BB0_72 Depth 4
                                        @           Child Loop BB0_74 Depth 5
	add	lr, sp, #1024
	vldr	d16, [lr, #104]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_98
@ BB#69:                                @   in Loop: Header=BB0_68 Depth=2
	vmov.f64	d16, #5.000000e+00
	adr	r0, .LCPI0_71
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1104
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #72]
.LBB0_70:                               @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_68 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_72 Depth 4
                                        @           Child Loop BB0_74 Depth 5
	vmov.f64	d16, #1.500000e+01
	add	lr, sp, #1024
	vldr	d17, [lr, #72]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_91
@ BB#71:                                @   in Loop: Header=BB0_70 Depth=3
	vmov.f64	d16, #-1.000000e+00
	adr	r0, .LCPI0_72
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1072
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #40]
.LBB0_72:                               @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_68 Depth=2
                                        @       Parent Loop BB0_70 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB0_74 Depth 5
	vmov.f64	d16, #-5.000000e+00
	add	lr, sp, #1024
	vldr	d17, [lr, #40]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_84
@ BB#73:                                @   in Loop: Header=BB0_72 Depth=4
	movw	r0, #0
	add	r4, sp, #1024
	vldr	d16, [r4, #136]
	add	r4, sp, #1024
	vldr	d17, [r4, #104]
	add	r4, sp, #1024
	vldr	d18, [r4, #72]
	add	r4, sp, #1024
	vldr	d19, [r4, #40]
	mov	r1, sp
	add	r2, sp, #1040
	str	r2, [r1, #20]
	add	r2, sp, #988
	str	r2, [r1, #16]
	vstr	d19, [r1, #8]
	vstr	d18, [r1]
	vmov	r1, r2, d16
	vmov	r3, r12, d17
	str	r0, [sp, #464]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q10, #0x0
	add	r1, sp, #960
	vst1.64	{d20, d21}, [r1]
	ldr	r1, [sp, #464]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #460]          @ 4-byte Spill
.LBB0_74:                               @   Parent Loop BB0_66 Depth=1
                                        @     Parent Loop BB0_68 Depth=2
                                        @       Parent Loop BB0_70 Depth=3
                                        @         Parent Loop BB0_72 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [sp, #956]
	ldr	r1, [sp, #988]
	cmp	r0, r1
	bge	.LBB0_77
@ BB#75:                                @   in Loop: Header=BB0_74 Depth=5
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #1040
	movw	r2, #3
	ldr	r3, [sp, #956]
	add	r12, sp, #1040
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #456]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #452]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #448]          @ 4-byte Spill
@ BB#76:                                @   in Loop: Header=BB0_74 Depth=5
	ldr	r0, [sp, #956]
	add	r1, sp, #960
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #956]
	add	lr, sp, #432
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_74
.LBB0_77:                               @   in Loop: Header=BB0_72 Depth=4
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	str	r0, [sp, #428]          @ 4-byte Spill
@ BB#78:                                @   in Loop: Header=BB0_72 Depth=4
	vmov.f64	d16, #3.000000e+00
	vldr	d17, .LCPI0_73
	add	lr, sp, #1024
	vldr	d18, [lr, #40]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1072
	vst1.64	{d20, d21}, [r0:128]
	vldr	d19, .LCPI0_73
	vsub.f64	d19, d18, d19
	vmov.f64	d20, d19
	vmov.f64	d21, d19
	vst1.64	{d20, d21}, [r0]
	vmov.f64	d19, d20
	vmov.f64	d22, d21
	vadd.f64	d23, d19, d22
	vadd.f64	d22, d23, d22
	vsub.f64	d17, d18, d17
	vmul.f64	d16, d17, d16
	add	lr, sp, #1024
	vstr	d17, [lr, #584]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #416]         @ 8-byte Spill
	vstr	d19, [sp, #408]         @ 8-byte Spill
	vstr	d22, [sp, #400]         @ 8-byte Spill
	beq	.LBB0_83
@ BB#79:                                @   in Loop: Header=BB0_72 Depth=4
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #400]         @ 8-byte Reload
	vldr	d18, [sp, #408]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_81
@ BB#80:                                @   in Loop: Header=BB0_72 Depth=4
	vldr	d16, [sp, #416]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #584]
	b	.LBB0_82
.LBB0_81:                               @   in Loop: Header=BB0_72 Depth=4
	vldr	d16, [sp, #408]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #584]
.LBB0_82:                               @   in Loop: Header=BB0_72 Depth=4
	b	.LBB0_83
.LBB0_83:                               @   in Loop: Header=BB0_72 Depth=4
	add	lr, sp, #1024
	vldr	d16, [lr, #584]
	add	lr, sp, #1024
	vstr	d16, [lr, #40]
	b	.LBB0_72
.LBB0_84:                               @   in Loop: Header=BB0_70 Depth=3
	b	.LBB0_85
.LBB0_85:                               @   in Loop: Header=BB0_70 Depth=3
	vmov.f64	d16, #3.000000e+00
	vldr	d17, .LCPI0_74
	add	lr, sp, #1024
	vldr	d18, [lr, #72]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1104
	vst1.64	{d20, d21}, [r0:128]
	vldr	d19, .LCPI0_74
	vadd.f64	d19, d18, d19
	vmov.f64	d20, d19
	vmov.f64	d21, d19
	vst1.64	{d20, d21}, [r0]
	vmov.f64	d19, d20
	vmov.f64	d22, d21
	vadd.f64	d23, d19, d22
	vadd.f64	d22, d23, d22
	vadd.f64	d17, d18, d17
	vmul.f64	d16, d17, d16
	add	lr, sp, #1024
	vstr	d17, [lr, #552]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #392]         @ 8-byte Spill
	vstr	d19, [sp, #384]         @ 8-byte Spill
	vstr	d22, [sp, #376]         @ 8-byte Spill
	beq	.LBB0_90
@ BB#86:                                @   in Loop: Header=BB0_70 Depth=3
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #376]         @ 8-byte Reload
	vldr	d18, [sp, #384]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_88
@ BB#87:                                @   in Loop: Header=BB0_70 Depth=3
	vldr	d16, [sp, #392]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #552]
	b	.LBB0_89
.LBB0_88:                               @   in Loop: Header=BB0_70 Depth=3
	vldr	d16, [sp, #384]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #552]
.LBB0_89:                               @   in Loop: Header=BB0_70 Depth=3
	b	.LBB0_90
.LBB0_90:                               @   in Loop: Header=BB0_70 Depth=3
	add	lr, sp, #1024
	vldr	d16, [lr, #552]
	add	lr, sp, #1024
	vstr	d16, [lr, #72]
	b	.LBB0_70
.LBB0_91:                               @   in Loop: Header=BB0_68 Depth=2
	b	.LBB0_92
.LBB0_92:                               @   in Loop: Header=BB0_68 Depth=2
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #2.500000e-01
	add	lr, sp, #1024
	vldr	d18, [lr, #104]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1136
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #2.500000e-01
	vsub.f64	d19, d18, d19
	vmov.f64	d20, d19
	vmov.f64	d21, d19
	vst1.64	{d20, d21}, [r0]
	vmov.f64	d19, d20
	vmov.f64	d22, d21
	vadd.f64	d23, d19, d22
	vadd.f64	d22, d23, d22
	vsub.f64	d17, d18, d17
	vmul.f64	d16, d17, d16
	add	lr, sp, #1024
	vstr	d17, [lr, #520]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #368]         @ 8-byte Spill
	vstr	d19, [sp, #360]         @ 8-byte Spill
	vstr	d22, [sp, #352]         @ 8-byte Spill
	beq	.LBB0_97
@ BB#93:                                @   in Loop: Header=BB0_68 Depth=2
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #352]         @ 8-byte Reload
	vldr	d18, [sp, #360]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_95
@ BB#94:                                @   in Loop: Header=BB0_68 Depth=2
	vldr	d16, [sp, #368]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #520]
	b	.LBB0_96
.LBB0_95:                               @   in Loop: Header=BB0_68 Depth=2
	vldr	d16, [sp, #360]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #520]
.LBB0_96:                               @   in Loop: Header=BB0_68 Depth=2
	b	.LBB0_97
.LBB0_97:                               @   in Loop: Header=BB0_68 Depth=2
	add	lr, sp, #1024
	vldr	d16, [lr, #520]
	add	lr, sp, #1024
	vstr	d16, [lr, #104]
	b	.LBB0_68
.LBB0_98:                               @   in Loop: Header=BB0_66 Depth=1
	b	.LBB0_99
.LBB0_99:                               @   in Loop: Header=BB0_66 Depth=1
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #1.000000e+00
	add	lr, sp, #1024
	vldr	d18, [lr, #136]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1168
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #1.000000e+00
	vadd.f64	d19, d18, d19
	vmov.f64	d20, d19
	vmov.f64	d21, d19
	vst1.64	{d20, d21}, [r0]
	vmov.f64	d19, d20
	vmov.f64	d22, d21
	vadd.f64	d23, d19, d22
	vadd.f64	d22, d23, d22
	vadd.f64	d17, d18, d17
	vmul.f64	d16, d17, d16
	add	lr, sp, #1024
	vstr	d17, [lr, #488]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #344]         @ 8-byte Spill
	vstr	d19, [sp, #336]         @ 8-byte Spill
	vstr	d22, [sp, #328]         @ 8-byte Spill
	beq	.LBB0_104
@ BB#100:                               @   in Loop: Header=BB0_66 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #328]         @ 8-byte Reload
	vldr	d18, [sp, #336]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_102
@ BB#101:                               @   in Loop: Header=BB0_66 Depth=1
	vldr	d16, [sp, #344]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #488]
	b	.LBB0_103
.LBB0_102:                              @   in Loop: Header=BB0_66 Depth=1
	vldr	d16, [sp, #336]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #488]
.LBB0_103:                              @   in Loop: Header=BB0_66 Depth=1
	b	.LBB0_104
.LBB0_104:                              @   in Loop: Header=BB0_66 Depth=1
	add	lr, sp, #1024
	vldr	d16, [lr, #488]
	add	lr, sp, #1024
	vstr	d16, [lr, #136]
	b	.LBB0_66
.LBB0_105:
	movw	r0, #0
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	str	r0, [sp, #324]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #960
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #324]          @ 4-byte Reload
	str	r1, [sp, #956]
	str	r0, [sp, #320]          @ 4-byte Spill
.LBB0_106:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI0_28
	ldr	r1, [sp, #956]
	cmp	r1, r0
	bge	.LBB0_116
@ BB#107:                               @   in Loop: Header=BB0_106 Depth=1
	add	r1, sp, #916
	ldr	r0, [sp, #956]
	bl	usqrt
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	ldr	r1, [sp, #956]
	ldr	r2, [sp, #916]
	bl	printf
	str	r0, [sp, #316]          @ 4-byte Spill
@ BB#108:                               @   in Loop: Header=BB0_106 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #956]
	add	r2, sp, #960
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x2
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	r12, d20[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #2
	mul	r0, r1, r0
	str	r1, [sp, #1484]
	cmp	r3, r0
	str	r1, [sp, #312]          @ 4-byte Spill
	str	r3, [sp, #308]          @ 4-byte Spill
	str	r2, [sp, #304]          @ 4-byte Spill
	beq	.LBB0_113
@ BB#109:                               @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #308]          @ 4-byte Reload
	ldr	r1, [sp, #304]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_111
@ BB#110:                               @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #312]          @ 4-byte Reload
	str	r0, [sp, #1484]
	b	.LBB0_112
.LBB0_111:                              @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #304]          @ 4-byte Reload
	str	r0, [sp, #1484]
.LBB0_112:                              @   in Loop: Header=BB0_106 Depth=1
	b	.LBB0_113
.LBB0_113:                              @   in Loop: Header=BB0_106 Depth=1
	ldr	r0, [sp, #1484]
	str	r0, [sp, #956]
	b	.LBB0_106
	.p2align	3
@ BB#114:
.LCPI0_74:
	.long	3092376453              @ double 0.60999999999999999
	.long	1071875358
	.p2align	4
@ BB#115:
.LCPI0_75:
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
.LBB0_116:
	ldr	r0, .LCPI0_29
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #300]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	adr	r1, .LCPI0_75
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #928
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #300]          @ 4-byte Reload
	str	r1, [sp, #924]
	str	r0, [sp, #296]          @ 4-byte Spill
.LBB0_117:                              @ =>This Inner Loop Header: Depth=1
	ldr	r0, .LCPI0_30
	ldr	r1, [sp, #924]
	cmp	r1, r0
	bhs	.LBB0_125
@ BB#118:                               @   in Loop: Header=BB0_117 Depth=1
	add	r1, sp, #916
	ldr	r0, [sp, #924]
	bl	usqrt
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	ldr	r1, [sp, #924]
	ldr	r2, [sp, #916]
	bl	printf
	str	r0, [sp, #292]          @ 4-byte Spill
@ BB#119:                               @   in Loop: Header=BB0_117 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	add	r2, sp, #928
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
	str	r1, [sp, #1452]
	cmp	r3, r0
	str	r1, [sp, #288]          @ 4-byte Spill
	str	r3, [sp, #284]          @ 4-byte Spill
	str	r2, [sp, #280]          @ 4-byte Spill
	beq	.LBB0_124
@ BB#120:                               @   in Loop: Header=BB0_117 Depth=1
	ldr	r0, [sp, #284]          @ 4-byte Reload
	ldr	r1, [sp, #280]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_122
@ BB#121:                               @   in Loop: Header=BB0_117 Depth=1
	ldr	r0, [sp, #288]          @ 4-byte Reload
	str	r0, [sp, #1452]
	b	.LBB0_123
.LBB0_122:                              @   in Loop: Header=BB0_117 Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	str	r0, [sp, #1452]
.LBB0_123:                              @   in Loop: Header=BB0_117 Depth=1
	b	.LBB0_124
.LBB0_124:                              @   in Loop: Header=BB0_117 Depth=1
	ldr	r0, [sp, #1452]
	str	r0, [sp, #924]
	b	.LBB0_117
.LBB0_125:
	vldr	d16, .LCPI0_31
	movw	r0, :lower16:.L.str.7
	movt	r0, :upper16:.L.str.7
	vstr	d16, [sp, #272]         @ 8-byte Spill
	bl	printf
	vmov.i32	q9, #0x0
	add	lr, sp, #1024
	vst1.64	{d18, d19}, [lr]
	vldr	d16, [sp, #272]         @ 8-byte Reload
	vstr	d16, [sp, #1016]
	str	r0, [sp, #268]          @ 4-byte Spill
.LBB0_126:                              @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_32
	vldr	d17, [sp, #1016]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_129
@ BB#127:                               @   in Loop: Header=BB0_126 Depth=1
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	vldr	d16, .LCPI0_34
	vmov.f64	d17, #4.000000e+00
	vldr	d18, [sp, #1016]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	vmov.f64	d19, d18
	add	r1, sp, #1024
	vst1.64	{d20, d21}, [r1:128]
	vmov.f64	d22, #1.000000e+00
	vmov	r1, r2, d22
	str	r0, [sp, #264]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d19, [sp, #256]         @ 8-byte Spill
	vstr	d16, [sp, #248]         @ 8-byte Spill
	vstr	d17, [sp, #240]         @ 8-byte Spill
	vstr	d18, [sp, #232]         @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	add	r4, sp, #1024
	vstr	d16, [r4, #360]
	vorr	q12, q10, q10
	add	r0, sp, #1360
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #240]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #232]         @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vldr	d19, [sp, #248]         @ 8-byte Reload
	vdiv.f64	d16, d16, d19
	ldr	r0, [sp, #264]          @ 4-byte Reload
	vldr	d22, [sp, #256]         @ 8-byte Reload
	vmov	r2, r3, d22
	vstr	d16, [sp]
	add	r4, sp, #208
	vst1.64	{d24, d25}, [r4:128]    @ 16-byte Spill
	bl	printf
	str	r0, [sp, #204]          @ 4-byte Spill
@ BB#128:                               @   in Loop: Header=BB0_126 Depth=1
	vldr	d16, .LCPI0_36
	vldr	d17, [sp, #1016]
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r0, sp, #1024
	vst1.64	{d18, d19}, [r0:128]
	vldr	d20, .LCPI0_36
	vadd.f64	d20, d17, d20
	vmov.f64	d18, d20
	vmov.f64	d19, d20
	vorr	q11, q9, q9
	vst1.64	{d18, d19}, [r0]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #1016]
	add	lr, sp, #176
	vst1.64	{d22, d23}, [lr:128]    @ 16-byte Spill
	b	.LBB0_126
.LBB0_129:
	vldr	d16, .LCPI0_31
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	vstr	d16, [sp, #168]         @ 8-byte Spill
	bl	puts
	vmov.i32	q9, #0x0
	add	lr, sp, #1024
	vst1.64	{d18, d19}, [lr]
	vldr	d16, [sp, #168]         @ 8-byte Reload
	vstr	d16, [sp, #1016]
	str	r0, [sp, #164]          @ 4-byte Spill
.LBB0_130:                              @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_33
	vmov.f64	d17, #2.000000e+00
	vmov.f64	d18, #4.000000e+00
	vldr	d19, [sp, #1016]
	vmov.f64	d20, #1.000000e+00
	vmov	r0, r1, d20
	vstr	d16, [sp, #152]         @ 8-byte Spill
	vstr	d17, [sp, #144]         @ 8-byte Spill
	vstr	d18, [sp, #136]         @ 8-byte Spill
	vstr	d19, [sp, #128]         @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d22, d16
	vmov.f64	d23, d16
	add	lr, sp, #1024
	vstr	d16, [lr, #312]
	vorr	q12, q11, q11
	add	r0, sp, #1312
	vst1.32	{d22, d23}, [r0]
	vldr	d17, [sp, #136]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #144]         @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vldr	d19, [sp, #152]         @ 8-byte Reload
	vadd.f64	d16, d16, d19
	vldr	d20, [sp, #128]         @ 8-byte Reload
	vcmpe.f64	d20, d16
	vmrs	APSR_nzcv, fpscr
	add	lr, sp, #112
	vst1.64	{d24, d25}, [lr:128]    @ 16-byte Spill
	bhi	.LBB0_138
@ BB#131:                               @   in Loop: Header=BB0_130 Depth=1
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	vmov.f64	d16, #4.000000e+00
	vldr	d17, [sp, #1016]
	vldr	d18, .LCPI0_34
	vmul.f64	d18, d17, d18
	vmov.f64	d19, #1.000000e+00
	vmov	r1, r2, d19
	str	r0, [sp, #108]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	vstr	d18, [sp, #96]          @ 8-byte Spill
	vstr	d16, [sp, #88]          @ 8-byte Spill
	vstr	d17, [sp, #80]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	add	r4, sp, #1024
	vstr	d16, [r4, #264]
	vorr	q11, q10, q10
	add	r0, sp, #1264
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #88]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #96]          @ 8-byte Reload
	vdiv.f64	d16, d18, d16
	ldr	r0, [sp, #108]          @ 4-byte Reload
	vldr	d18, [sp, #80]          @ 8-byte Reload
	vmov	r2, r3, d18
	vstr	d16, [sp]
	add	r4, sp, #64
	vst1.64	{d22, d23}, [r4:128]    @ 16-byte Spill
	bl	printf
	str	r0, [sp, #60]           @ 4-byte Spill
@ BB#132:                               @   in Loop: Header=BB0_130 Depth=1
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [sp, #48]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	lr, sp, #1024
	vstr	d16, [lr, #216]
	add	r0, sp, #1216
	vst1.32	{d18, d19}, [r0]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI0_35
	vdiv.f64	d16, d16, d17
	vldr	d17, [sp, #1016]
	add	r0, sp, #1024
	vld1.64	{d18, d19}, [r0:128]
	vmov.f64	d20, d19
	vadd.f64	d20, d20, d16
	vmov.f64	d21, d18
	vadd.f64	d21, d21, d16
	vmov.f64	d18, d21
	vmov.f64	d19, d20
	vst1.64	{d18, d19}, [r0]
	vmov.f64	d20, d18
	vmov.f64	d21, d19
	vadd.f64	d22, d20, d21
	vadd.f64	d21, d22, d21
	vadd.f64	d16, d17, d16
	vldr	d17, [sp, #48]          @ 8-byte Reload
	vmul.f64	d22, d16, d17
	add	lr, sp, #1024
	vstr	d16, [lr, #392]
	vcmpe.f64	d21, d22
	vmrs	APSR_nzcv, fpscr
	vstr	d20, [sp, #40]          @ 8-byte Spill
	vstr	d21, [sp, #32]          @ 8-byte Spill
	vstr	d16, [sp, #24]          @ 8-byte Spill
	beq	.LBB0_137
@ BB#133:                               @   in Loop: Header=BB0_130 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #32]          @ 8-byte Reload
	vldr	d18, [sp, #40]          @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_135
@ BB#134:                               @   in Loop: Header=BB0_130 Depth=1
	vldr	d16, [sp, #24]          @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #392]
	b	.LBB0_136
.LBB0_135:                              @   in Loop: Header=BB0_130 Depth=1
	vldr	d16, [sp, #40]          @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #392]
.LBB0_136:                              @   in Loop: Header=BB0_130 Depth=1
	b	.LBB0_137
.LBB0_137:                              @   in Loop: Header=BB0_130 Depth=1
	add	lr, sp, #1024
	vldr	d16, [lr, #392]
	vstr	d16, [sp, #1016]
	b	.LBB0_130
.LBB0_138:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#139:
.LCPI0_31:
	.long	0                       @ double 0
	.long	0
.LCPI0_32:
	.long	0                       @ double 360
	.long	1081507840
.LCPI0_33:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_34:
	.long	0                       @ double 180
	.long	1080459264
.LCPI0_35:
	.long	0                       @ double 5760
	.long	1085702144
.LCPI0_36:
	.long	3539053052              @ double 0.001
	.long	1062232653
.LCPI0_28:
	.long	100000                  @ 0x186a0
.LCPI0_29:
	.long	1072497001              @ 0x3fed0169
.LCPI0_30:
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
	sub	sp, sp, #88
	bfc	sp, #0, #4
	vmov	d16, r0, r1
	vstr	d16, [sp, #8]
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r0, sp, #16
	vst1.64	{d18, d19}, [r0:128]
	vldr	d17, .LCPI1_0
	vmul.f64	d16, d16, d17
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [sp]               @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #56]
	add	r0, sp, #32
	vst1.32	{d18, d19}, [r0]
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
	sub	sp, sp, #88
	bfc	sp, #0, #4
	vmov	d16, r0, r1
	vstr	d16, [sp, #8]
	vmov.f64	d16, #1.000000e+00
	vmov	r0, r1, d16
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #56]
	add	r0, sp, #32
	vst1.32	{d18, d19}, [r0]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, [sp, #8]
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r0, sp, #16
	vst1.64	{d18, d19}, [r0:128]
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #1232
	bfc	sp, #0, #4
	add	lr, sp, #1024
	add	r12, lr, #184
	vmov	d16, r2, r3
	vmov	d17, r0, r1
	ldr	r0, [r11, #28]
	ldr	r1, [r11, #24]
	vldr	d18, [r11, #16]
	vldr	d19, [r11, #8]
	vmov.f64	d20, #3.000000e+00
	vstr	d17, [sp, #504]
	vstr	d16, [sp, #472]
	vstr	d19, [sp, #440]
	vstr	d18, [sp, #408]
	str	r1, [sp, #404]
	str	r0, [sp, #400]
	vldr	d16, [sp, #472]
	vmov.f64	d22, d16
	vmov.f64	d23, d16
	add	r0, sp, #480
	vst1.64	{d22, d23}, [r0:128]
	vldr	d17, [sp, #504]
	vmov.f64	d22, d17
	vmov.f64	d23, d17
	add	r1, sp, #512
	vst1.64	{d22, d23}, [r1:128]
	vld1.64	{d22, d23}, [r0:128]
	vmov.f64	d18, d23
	vdiv.f64	d18, d18, d17
	vmov.f64	d19, d22
	vdiv.f64	d19, d19, d17
	vmov.f64	d22, d19
	vmov.f64	d23, d18
	add	r0, sp, #384
	vst1.64	{d22, d23}, [r0]
	vdiv.f64	d16, d16, d17
	vstr	d16, [sp, #376]
	vldr	d16, [sp, #440]
	vmov.f64	d22, d16
	vmov.f64	d23, d16
	add	r2, sp, #448
	vst1.64	{d22, d23}, [r2:128]
	vldr	d17, [sp, #504]
	vmov.f64	d22, d17
	vmov.f64	d23, d17
	vst1.64	{d22, d23}, [r1:128]
	vld1.64	{d22, d23}, [r2:128]
	vmov.f64	d18, d23
	vdiv.f64	d18, d18, d17
	vmov.f64	d19, d22
	vdiv.f64	d19, d19, d17
	vmov.f64	d22, d19
	vmov.f64	d23, d18
	add	r2, sp, #352
	vst1.64	{d22, d23}, [r2]
	vdiv.f64	d16, d16, d17
	vstr	d16, [sp, #344]
	vldr	d16, [sp, #408]
	vmov.f64	d22, d16
	vmov.f64	d23, d16
	add	r3, sp, #416
	vst1.64	{d22, d23}, [r3:128]
	vldr	d17, [sp, #504]
	vmov.f64	d22, d17
	vmov.f64	d23, d17
	vst1.64	{d22, d23}, [r1:128]
	vld1.64	{d22, d23}, [r3:128]
	vmov.f64	d18, d23
	vdiv.f64	d18, d18, d17
	vmov.f64	d19, d22
	vdiv.f64	d19, d19, d17
	vmov.f64	d22, d19
	vmov.f64	d23, d18
	add	r1, sp, #320
	vst1.64	{d22, d23}, [r1]
	vdiv.f64	d16, d16, d17
	vstr	d16, [sp, #312]
	vldr	d16, [sp, #376]
	vld1.64	{d22, d23}, [r0:128]
	vmov.f64	d17, d23
	vmul.f64	d17, d17, d17
	vmov.f64	d18, d22
	vmul.f64	d18, d18, d18
	vmul.f64	d16, d16, d16
	vldr	d19, [sp, #344]
	vld1.64	{d22, d23}, [r2:128]
	vmov.f64	d21, d23
	vmov.f64	d24, #3.000000e+00
	vmul.f64	d21, d21, d24
	vmov.f64	d25, d22
	vmul.f64	d25, d25, d24
	vmul.f64	d19, d19, d24
	vsub.f64	d18, d18, d25
	vsub.f64	d17, d17, d21
	vsub.f64	d16, d16, d19
	vmov.f64	d19, #9.000000e+00
	vdiv.f64	d17, d17, d19
	vdiv.f64	d18, d18, d19
	vmov.f64	d22, d18
	vmov.f64	d23, d17
	add	r3, sp, #288
	vst1.64	{d22, d23}, [r3]
	vdiv.f64	d16, d16, d19
	vstr	d16, [sp, #280]
	vldr	d16, [sp, #376]
	vld1.64	{d22, d23}, [r0:128]
	vmov.f64	d17, d22
	vadd.f64	d18, d17, d17
	vmov.f64	d21, d23
	vadd.f64	d24, d21, d21
	vadd.f64	d25, d16, d16
	vmul.f64	d24, d24, d21
	vmul.f64	d18, d18, d17
	vmul.f64	d25, d25, d16
	vmul.f64	d18, d18, d17
	vmul.f64	d24, d24, d21
	vmul.f64	d25, d25, d16
	vmul.f64	d21, d21, d19
	vmul.f64	d17, d17, d19
	vmul.f64	d16, d16, d19
	vldr	d19, [sp, #344]
	vld1.64	{d22, d23}, [r2:128]
	vmov.f64	d26, d22
	vmul.f64	d17, d17, d26
	vmov.f64	d26, d23
	vmul.f64	d21, d21, d26
	vmul.f64	d16, d16, d19
	vsub.f64	d19, d24, d21
	vsub.f64	d17, d18, d17
	vsub.f64	d16, d25, d16
	vldr	d18, [sp, #312]
	vld1.64	{d22, d23}, [r1:128]
	vmov.f64	d21, d23
	vmov.f64	d24, #2.700000e+01
	vmul.f64	d21, d21, d24
	vmov.f64	d25, d22
	vmul.f64	d25, d25, d24
	vmul.f64	d18, d18, d24
	vadd.f64	d17, d17, d25
	vadd.f64	d19, d19, d21
	vadd.f64	d16, d16, d18
	vldr	d18, .LCPI3_2
	vdiv.f64	d19, d19, d18
	vdiv.f64	d17, d17, d18
	vmov.f64	d22, d17
	vmov.f64	d23, d19
	add	r0, sp, #256
	vst1.64	{d22, d23}, [r0]
	vdiv.f64	d16, d16, d18
	vstr	d16, [sp, #248]
	vld1.64	{d22, d23}, [r0:128]
	vmov.f64	d17, d22
	vmul.f64	d17, d17, d17
	vmov.f64	d18, d23
	vmul.f64	d18, d18, d18
	vmul.f64	d16, d16, d16
	vldr	d19, [sp, #280]
	vld1.64	{d22, d23}, [r3:128]
	vmov.f64	d21, d23
	vmul.f64	d24, d21, d21
	vmov.f64	d25, d22
	vmul.f64	d26, d25, d25
	vmul.f64	d27, d19, d19
	vmul.f64	d25, d26, d25
	vmul.f64	d21, d24, d21
	vmul.f64	d19, d27, d19
	vsub.f64	d18, d18, d21
	vsub.f64	d17, d17, d25
	vmov.f64	d22, d17
	vmov.f64	d23, d18
	add	r0, sp, #224
	vst1.64	{d22, d23}, [r0]
	vmov.f64	d17, d22
	vmov.f64	d18, d23
	vadd.f64	d21, d17, d18
	vadd.f64	d18, d21, d18
	vsub.f64	d16, d16, d19
	vmul.f64	d19, d16, d20
	vstr	d16, [r12]
	vcmpe.f64	d18, d19
	vmrs	APSR_nzcv, fpscr
	str	r12, [sp, #180]         @ 4-byte Spill
	vstr	d16, [sp, #168]         @ 8-byte Spill
	vstr	d17, [sp, #160]         @ 8-byte Spill
	vstr	d18, [sp, #152]         @ 8-byte Spill
	beq	.LBB3_5
@ BB#1:
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #152]         @ 8-byte Reload
	vldr	d18, [sp, #160]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB3_3
@ BB#2:
	vldr	d16, [sp, #168]         @ 8-byte Reload
	ldr	r0, [sp, #180]          @ 4-byte Reload
	vstr	d16, [r0]
	b	.LBB3_4
.LBB3_3:
	vldr	d16, [sp, #160]         @ 8-byte Reload
	ldr	r0, [sp, #180]          @ 4-byte Reload
	vstr	d16, [r0]
.LBB3_4:
	b	.LBB3_5
.LBB3_5:
	ldr	r0, [sp, #180]          @ 4-byte Reload
	vldr	d16, [r0]
	vstr	d16, [sp, #216]
	vldr	d16, [sp, #216]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB3_8
@ BB#6:
	vmov.f64	d16, #3.000000e+00
	ldr	r0, [sp, #404]
	mov	r1, #3
	str	r1, [r0]
	vldr	d17, [sp, #248]
	vldr	d18, [sp, #280]
	vmul.f64	d19, d18, d18
	vmul.f64	d18, d19, d18
	vmov	r0, r1, d18
	vstr	d16, [sp, #144]         @ 8-byte Spill
	vstr	d17, [sp, #136]         @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	add	r4, sp, #1024
	vstr	d16, [r4, #8]
	add	r0, sp, #1008
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #136]         @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	acos
	str	r0, [sp, #184]
	str	r1, [sp, #188]
	vldr	d16, [sp, #280]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #984]
	add	r0, sp, #960
	vst1.32	{d20, d21}, [r0]
	vmov.f64	d17, #-2.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d18, [sp, #184]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #192
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #3.000000e+00
	vdiv.f64	d18, d18, d19
	vmov	r1, lr, d18
	str	r0, [sp, #132]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	vstr	d17, [sp, #120]         @ 8-byte Spill
	vstr	d16, [sp, #112]         @ 8-byte Spill
	vstr	d19, [sp, #104]         @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #936]
	add	r0, sp, #912
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #112]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [sp, #376]
	vldr	d18, [sp, #104]         @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [sp, #400]
	vstr	d16, [r0]
	vldr	d16, [sp, #280]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #888]
	add	r0, sp, #864
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #120]         @ 8-byte Reload
	vmul.f64	d16, d16, d17
	vldr	d18, [sp, #184]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	ldr	r0, [sp, #132]          @ 4-byte Reload
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #1.000000e+00
	vmov	r1, lr, d19
	mov	r0, r1
	str	r1, [sp, #100]          @ 4-byte Spill
	mov	r1, lr
	vstr	d16, [sp, #88]          @ 8-byte Spill
	vstr	d18, [sp, #80]          @ 8-byte Spill
	str	lr, [sp, #76]           @ 4-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #840]
	add	r0, sp, #816
	vst1.32	{d20, d21}, [r0]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vadd.f64	d16, d16, d16
	vldr	d18, [sp, #80]          @ 8-byte Reload
	vadd.f64	d16, d18, d16
	vldr	d19, [sp, #104]         @ 8-byte Reload
	vdiv.f64	d16, d16, d19
	vmov	r0, r1, d16
	vstr	d17, [sp, #64]          @ 8-byte Spill
	bl	cos
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #792]
	add	r0, sp, #768
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #88]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [sp, #376]
	vldr	d18, [sp, #104]         @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [sp, #400]
	vstr	d16, [r0, #8]
	vldr	d16, [sp, #280]
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #744]
	add	r0, sp, #720
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #120]         @ 8-byte Reload
	vmul.f64	d16, d16, d17
	vldr	d18, [sp, #184]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	ldr	r0, [sp, #132]          @ 4-byte Reload
	vst1.64	{d20, d21}, [r0:128]
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, [sp, #76]           @ 4-byte Reload
	vstr	d16, [sp, #56]          @ 8-byte Spill
	vstr	d18, [sp, #48]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #696]
	add	r0, sp, #672
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #64]          @ 8-byte Reload
	vmul.f64	d16, d16, d17
	vmul.f64	d16, d16, d17
	vldr	d18, [sp, #48]          @ 8-byte Reload
	vadd.f64	d16, d18, d16
	vldr	d19, [sp, #104]         @ 8-byte Reload
	vdiv.f64	d16, d16, d19
	vmov	r0, r1, d16
	bl	cos
	vmov	d16, r0, r1
	vmov.f64	d20, d16
	vmov.f64	d21, d16
	vstr	d16, [sp, #648]
	vorr	q11, q10, q10
	add	r0, sp, #624
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #56]          @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d17, [sp, #376]
	vldr	d18, [sp, #144]         @ 8-byte Reload
	vdiv.f64	d17, d17, d18
	vsub.f64	d16, d16, d17
	ldr	r0, [sp, #400]
	vstr	d16, [r0, #16]
	add	lr, sp, #32
	vst1.64	{d22, d23}, [lr:128]    @ 16-byte Spill
	b	.LBB3_9
	.p2align	3
@ BB#7:
.LCPI3_2:
	.long	0                       @ double 54
	.long	1078657024
.LBB3_8:
	vldr	d16, .LCPI3_1
	ldr	r0, [sp, #404]
	mov	r1, #1
	str	r1, [r0]
	vldr	d17, [sp, #216]
	vmov	r0, r1, d17
	vstr	d16, [sp, #24]          @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vldr	d17, [sp, #248]
	vabs.f64	d17, d17
	vmov.f64	d20, d17
	vmov.f64	d21, d17
	vstr	d16, [sp, #600]
	add	r0, sp, #576
	vst1.32	{d18, d19}, [r0]
	vstr	d17, [sp, #552]
	vorr	q9, q10, q10
	add	r0, sp, #528
	vst1.32	{d20, d21}, [r0]
	vadd.f64	d16, d16, d17
	vmov	r0, r1, d16
	vldr	d16, [sp, #24]          @ 8-byte Reload
	vmov	r2, r3, d16
	vst1.64	{d18, d19}, [sp:128]    @ 16-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d17, #3.000000e+00
	movw	r0, #1
	ldr	r1, [sp, #400]
	vstr	d16, [r1]
	vldr	d16, [sp, #280]
	ldr	r1, [sp, #400]
	vldr	d22, [r1]
	vdiv.f64	d16, d16, d22
	ldr	r1, [sp, #400]
	vldr	d22, [r1]
	vadd.f64	d16, d22, d16
	vstr	d16, [r1]
	vldr	d16, [sp, #248]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	movmi	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #400]
	vldr	d22, [r0]
	vmul.f64	d16, d22, d16
	vstr	d16, [r0]
	vldr	d16, [sp, #376]
	vdiv.f64	d16, d16, d17
	ldr	r0, [sp, #400]
	vldr	d17, [r0]
	vsub.f64	d16, d17, d16
	vstr	d16, [r0]
.LBB3_9:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#10:
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #368
	bfc	sp, #0, #4
	movw	r2, #0
	str	r0, [sp, #220]
	str	r1, [sp, #216]
	vmov.i32	q8, #0x0
	add	r0, sp, #192
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #188]
	add	r1, sp, #160
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #156]
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #124]
	add	r0, sp, #96
	vst1.64	{d16, d17}, [r0]
	str	r2, [sp, #92]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #92]
	cmp	r0, #32
	bge	.LBB4_26
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	movw	r1, #2
	ldr	r2, [sp, #156]
	vdup.32	q8, r2
	add	r3, sp, #160
	vst1.64	{d16, d17}, [r3:128]
	vshl.i32	q8, q8, #2
	lsl	r2, r2, #2
	ldr	r12, [sp, #220]
	vdup.32	q9, r12
	add	lr, sp, #224
	vst1.64	{d18, d19}, [lr:128]
	vmov.i32	q10, #0xc0000000
	vand	q9, q9, q10
	vsra.u32	q8, q9, #30
	vst1.64	{d16, d17}, [r3]
	orr	r2, r2, r12, lsr #30
	str	r2, [sp, #156]
	ldr	r2, [sp, #220]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [lr:128]
	vshl.i32	q8, q8, #2
	vst1.64	{d16, d17}, [lr]
	vmov.f64	d22, d16
	vmov.32	r3, d22[0]
	vmov.32	r12, d22[1]
	vmov.f64	d22, d17
	vmov.32	lr, d22[0]
	add	r12, r3, r12
	add	r12, r12, lr
	lsl	r2, r2, #2
	mul	r0, r2, r0
	str	r2, [sp, #348]
	cmp	r12, r0
	str	r2, [sp, #88]           @ 4-byte Spill
	str	r1, [sp, #84]           @ 4-byte Spill
	str	r3, [sp, #80]           @ 4-byte Spill
	str	r12, [sp, #76]          @ 4-byte Spill
	beq	.LBB4_7
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #80]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_5
@ BB#4:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #88]           @ 4-byte Reload
	str	r0, [sp, #348]
	b	.LBB4_6
.LBB4_5:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #80]           @ 4-byte Reload
	str	r0, [sp, #348]
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #348]
	str	r0, [sp, #220]
	ldr	r0, [sp, #188]
	vdup.32	q8, r0
	add	r1, sp, #192
	vst1.64	{d16, d17}, [r1:128]
	vshl.i32	q8, q8, #1
	vmov.i32	q9, #0x1
	vst1.64	{d16, d17}, [r1]
	lsl	r2, r0, #1
	str	r2, [sp, #188]
	vld1.64	{d16, d17}, [r1:128]
	vshl.i32	q8, q8, #1
	lsl	r0, r0, #2
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #124]
	ldr	r0, [sp, #156]
	ldr	r1, [sp, #124]
	cmp	r0, r1
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blo	.LBB4_19
@ BB#8:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #124]
	ldr	r2, [sp, #156]
	add	r3, sp, #160
	vld1.64	{d16, d17}, [r3:128]
	add	r12, sp, #128
	vld1.64	{d18, d19}, [r12:128]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	vmov.f64	d20, d16
	vmov.32	r3, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r3, r12
	add	r12, r12, lr
	sub	r1, r2, r1
	mul	r0, r1, r0
	str	r1, [sp, #316]
	cmp	r12, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r12, [sp, #36]          @ 4-byte Spill
	beq	.LBB4_13
@ BB#9:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_11
@ BB#10:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #44]           @ 4-byte Reload
	str	r0, [sp, #316]
	b	.LBB4_12
.LBB4_11:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #40]           @ 4-byte Reload
	str	r0, [sp, #316]
.LBB4_12:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_13
.LBB4_13:                               @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #316]
	str	r1, [sp, #156]
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
	str	r1, [sp, #284]
	cmp	r3, r0
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	str	r2, [sp, #24]           @ 4-byte Spill
	beq	.LBB4_18
@ BB#14:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_16
@ BB#15:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	str	r0, [sp, #284]
	b	.LBB4_17
.LBB4_16:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #284]
.LBB4_17:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_18
.LBB4_18:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #284]
	str	r0, [sp, #188]
.LBB4_19:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_20
.LBB4_20:                               @   in Loop: Header=BB4_1 Depth=1
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
	str	r1, [sp, #252]
	cmp	r3, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	beq	.LBB4_25
@ BB#21:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_23
@ BB#22:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #252]
	b	.LBB4_24
.LBB4_23:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #252]
.LBB4_24:                               @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_25
.LBB4_25:                               @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #252]
	str	r0, [sp, #92]
	b	.LBB4_1
.LBB4_26:
	ldr	r0, [sp, #216]
	ldr	r1, [sp, #188]
	str	r1, [r0]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
