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
	.globl	main
	.p2align	4
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #1776
	bfc	sp, #0, #4
	add	lr, sp, #1024
	add	r0, lr, #568
	movw	r1, #0
	vmov.i32	q8, #0x0
	add	r2, sp, #1376
	vst1.64	{d16, d17}, [r2]
	mov	r2, #0
	str	r2, [sp, #1372]
	adr	r3, .LCPI0_19
	vld1.64	{d18, d19}, [r3:128]
	add	r3, sp, #1344
	vst1.64	{d18, d19}, [r3]
	movw	r3, #0
	movt	r3, #16368
	str	r3, [sp, #1340]
	str	r2, [sp, #1336]
	adr	r12, .LCPI0_20
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #1312
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #49189
	str	r12, [sp, #1308]
	str	r2, [sp, #1304]
	adr	r12, .LCPI0_21
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #1280
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #16448
	str	r12, [sp, #1276]
	str	r2, [sp, #1272]
	adr	r12, .LCPI0_22
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #1248
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #49214
	str	r12, [sp, #1244]
	str	r2, [sp, #1240]
	add	lr, sp, #1216
	vst1.64	{d18, d19}, [lr]
	str	r3, [sp, #1212]
	str	r2, [sp, #1208]
	adr	lr, .LCPI0_23
	vld1.64	{d22, d23}, [lr:128]
	add	lr, sp, #1184
	vst1.64	{d22, d23}, [lr]
	movw	lr, #0
	movt	lr, #49170
	str	lr, [sp, #1180]
	str	r2, [sp, #1176]
	adr	lr, .LCPI0_24
	vld1.64	{d22, d23}, [lr:128]
	add	lr, sp, #1152
	vst1.64	{d22, d23}, [lr]
	movw	lr, #0
	movt	lr, #16433
	str	lr, [sp, #1148]
	str	r2, [sp, #1144]
	add	lr, sp, #1120
	vst1.64	{d20, d21}, [lr]
	str	r12, [sp, #1116]
	str	r2, [sp, #1112]
	add	r12, sp, #1088
	vst1.64	{d18, d19}, [r12]
	str	r3, [sp, #1084]
	str	r2, [sp, #1080]
	adr	r12, .LCPI0_25
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #1056
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #49164
	str	r12, [sp, #1052]
	str	r2, [sp, #1048]
	adr	r12, .LCPI0_26
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #1024
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #16438
	str	r12, [sp, #1020]
	str	r2, [sp, #1016]
	adr	r12, .LCPI0_27
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #992
	vst1.64	{d20, d21}, [r12]
	movw	r12, #0
	movt	r12, #49215
	str	r12, [sp, #988]
	str	r2, [sp, #984]
	add	r12, sp, #960
	vst1.64	{d18, d19}, [r12]
	str	r3, [sp, #956]
	str	r2, [sp, #952]
	adr	r12, .LCPI0_28
	vld1.64	{d20, d21}, [r12:128]
	add	r12, sp, #928
	vst1.64	{d20, d21}, [r12]
	movw	r12, #26214
	movt	r12, #49195
	str	r12, [sp, #924]
	movw	r12, #26214
	movt	r12, #26214
	str	r12, [sp, #920]
	add	r12, sp, #896
	vst1.64	{d18, d19}, [r12]
	str	r3, [sp, #892]
	str	r2, [sp, #888]
	adr	r3, .LCPI0_29
	vld1.64	{d18, d19}, [r3:128]
	add	r3, sp, #864
	vst1.64	{d18, d19}, [r3]
	movw	r3, #32768
	movt	r3, #49217
	str	r3, [sp, #860]
	str	r2, [sp, #856]
	adr	r3, .LCPI0_30
	vld1.64	{d18, d19}, [r3:128]
	add	r3, sp, #720
	vst1.64	{d18, d19}, [r3]
	movw	r3, #361
	movt	r3, #16365
	str	r3, [sp, #716]
	add	r3, sp, #688
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #684]
	movw	r2, :lower16:.L.str
	movt	r2, :upper16:.L.str
	str	r0, [sp, #680]          @ 4-byte Spill
	mov	r0, r2
	add	r4, sp, #656
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	str	r1, [sp, #652]          @ 4-byte Spill
	bl	printf
	add	r4, sp, #1024
	vldr	d24, [r4, #312]
	add	r4, sp, #1024
	vldr	d25, [r4, #280]
	add	r4, sp, #1024
	vldr	d26, [r4, #248]
	add	r4, sp, #1024
	vldr	d27, [r4, #216]
	mov	r1, sp
	add	r2, sp, #832
	str	r2, [r1, #20]
	add	r2, sp, #780
	str	r2, [r1, #16]
	vstr	d27, [r1, #8]
	vstr	d26, [r1]
	vmov	r1, r2, d24
	vmov	r3, r12, d25
	str	r0, [sp, #648]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	add	r1, sp, #752
	add	lr, sp, #656
	vld1.64	{d16, d17}, [lr:128]    @ 16-byte Reload
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #652]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #644]          @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #780]
	cmp	r0, r1
	bge	.LBB0_20
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #832
	movw	r2, #3
	ldr	r3, [sp, #748]
	add	r12, sp, #832
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #640]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #636]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #632]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #748]
	vdup.32	q8, r0
	add	r1, sp, #752
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #748]
	add	lr, sp, #608
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
	.p2align	4
@ BB#4:
.LCPI0_19:
	.long	0                       @ double 1
	.long	1072693248
	.long	0                       @ double 1
	.long	1072693248
	.p2align	4
@ BB#5:
.LCPI0_20:
	.long	0                       @ double -10.5
	.long	3223650304
	.long	0                       @ double -10.5
	.long	3223650304
	.p2align	4
@ BB#6:
.LCPI0_21:
	.long	0                       @ double 32
	.long	1077936128
	.long	0                       @ double 32
	.long	1077936128
	.p2align	4
@ BB#7:
.LCPI0_22:
	.long	0                       @ double -30
	.long	3225288704
	.long	0                       @ double -30
	.long	3225288704
	.p2align	4
@ BB#8:
.LCPI0_23:
	.long	0                       @ double -4.5
	.long	3222405120
	.long	0                       @ double -4.5
	.long	3222405120
	.p2align	4
@ BB#9:
.LCPI0_24:
	.long	0                       @ double 17
	.long	1076953088
	.long	0                       @ double 17
	.long	1076953088
	.p2align	4
@ BB#10:
.LCPI0_25:
	.long	0                       @ double -3.5
	.long	3222011904
	.long	0                       @ double -3.5
	.long	3222011904
	.p2align	4
@ BB#11:
.LCPI0_26:
	.long	0                       @ double 22
	.long	1077280768
	.long	0                       @ double 22
	.long	1077280768
	.p2align	4
@ BB#12:
.LCPI0_27:
	.long	0                       @ double -31
	.long	3225354240
	.long	0                       @ double -31
	.long	3225354240
	.p2align	4
@ BB#13:
.LCPI0_28:
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.p2align	4
@ BB#14:
.LCPI0_29:
	.long	0                       @ double -35
	.long	3225518080
	.long	0                       @ double -35
	.long	3225518080
	.p2align	4
@ BB#15:
.LCPI0_30:
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.long	1072497001              @ 0x3fed0169
	.p2align	4
@ BB#16:
.LCPI0_31:
	.long	0                       @ double 10
	.long	1076101120
	.long	0                       @ double 10
	.long	1076101120
	.p2align	4
@ BB#17:
.LCPI0_32:
	.long	0                       @ double 5
	.long	1075052544
	.long	0                       @ double 5
	.long	1075052544
	.p2align	4
@ BB#18:
.LCPI0_33:
	.long	0                       @ double -1
	.long	3220176896
	.long	0                       @ double -1
	.long	3220176896
	.p2align	4
@ BB#19:
.LCPI0_34:
	.long	0                       @ double 1
	.long	1072693248
	.long	0                       @ double 1
	.long	1072693248
.LBB0_20:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #604]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	add	r4, sp, #1024
	vldr	d16, [r4, #184]
	add	r4, sp, #1024
	vldr	d17, [r4, #152]
	add	r4, sp, #1024
	vldr	d18, [r4, #120]
	add	r4, sp, #1024
	vldr	d19, [r4, #88]
	mov	r1, sp
	add	lr, sp, #832
	str	lr, [r1, #20]
	add	lr, sp, #780
	str	lr, [r1, #16]
	vstr	d19, [r1, #8]
	vstr	d18, [r1]
	vmov	r1, lr, d16
	vmov	r2, r3, d17
	str	r0, [sp, #600]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q10, #0x0
	add	r1, sp, #752
	vst1.64	{d20, d21}, [r1]
	ldr	r1, [sp, #604]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #596]          @ 4-byte Spill
.LBB0_21:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #780]
	cmp	r0, r1
	bge	.LBB0_24
@ BB#22:                                @   in Loop: Header=BB0_21 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #832
	movw	r2, #3
	ldr	r3, [sp, #748]
	add	r12, sp, #832
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #592]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #588]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #584]          @ 4-byte Spill
@ BB#23:                                @   in Loop: Header=BB0_21 Depth=1
	ldr	r0, [sp, #748]
	add	r1, sp, #752
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #748]
	add	lr, sp, #560
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_21
.LBB0_24:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #556]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	add	r4, sp, #1024
	vldr	d16, [r4, #56]
	add	r4, sp, #1024
	vldr	d17, [r4, #24]
	vldr	d18, [sp, #1016]
	vldr	d19, [sp, #984]
	mov	r1, sp
	add	lr, sp, #832
	str	lr, [r1, #20]
	add	lr, sp, #780
	str	lr, [r1, #16]
	vstr	d19, [r1, #8]
	vstr	d18, [r1]
	vmov	r1, lr, d16
	vmov	r2, r3, d17
	str	r0, [sp, #552]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q10, #0x0
	add	r1, sp, #752
	vst1.64	{d20, d21}, [r1]
	ldr	r1, [sp, #556]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #548]          @ 4-byte Spill
.LBB0_25:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #780]
	cmp	r0, r1
	bge	.LBB0_28
@ BB#26:                                @   in Loop: Header=BB0_25 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #832
	movw	r2, #3
	ldr	r3, [sp, #748]
	add	r12, sp, #832
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #544]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #540]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #536]          @ 4-byte Spill
@ BB#27:                                @   in Loop: Header=BB0_25 Depth=1
	ldr	r0, [sp, #748]
	add	r1, sp, #752
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #748]
	add	lr, sp, #512
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_25
.LBB0_28:
	movw	r0, #0
	movw	r1, :lower16:.L.str.3
	movt	r1, :upper16:.L.str.3
	str	r0, [sp, #508]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vldr	d16, [sp, #952]
	vldr	d17, [sp, #920]
	vldr	d18, [sp, #888]
	vldr	d19, [sp, #856]
	mov	r1, sp
	add	lr, sp, #832
	str	lr, [r1, #20]
	add	lr, sp, #780
	str	lr, [r1, #16]
	vstr	d19, [r1, #8]
	vstr	d18, [r1]
	vmov	r1, lr, d16
	vmov	r2, r3, d17
	str	r0, [sp, #504]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q10, #0x0
	add	r1, sp, #752
	vst1.64	{d20, d21}, [r1]
	ldr	r1, [sp, #508]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #500]          @ 4-byte Spill
.LBB0_29:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #780]
	cmp	r0, r1
	bge	.LBB0_32
@ BB#30:                                @   in Loop: Header=BB0_29 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #832
	movw	r2, #3
	ldr	r3, [sp, #748]
	add	r12, sp, #832
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #496]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #492]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #488]          @ 4-byte Spill
@ BB#31:                                @   in Loop: Header=BB0_29 Depth=1
	ldr	r0, [sp, #748]
	add	r1, sp, #752
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #748]
	add	lr, sp, #464
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_29
.LBB0_32:
	vmov.f64	d16, #1.000000e+00
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	vstr	d16, [sp, #456]         @ 8-byte Spill
	bl	printf
	adr	lr, .LCPI0_34
	vld1.64	{d18, d19}, [lr:128]
	add	lr, sp, #1344
	vst1.64	{d18, d19}, [lr]
	vldr	d16, [sp, #456]         @ 8-byte Reload
	add	lr, sp, #1024
	vstr	d16, [lr, #312]
	str	r0, [sp, #452]          @ 4-byte Spill
.LBB0_33:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_35 Depth 2
                                        @       Child Loop BB0_37 Depth 3
                                        @         Child Loop BB0_39 Depth 4
                                        @           Child Loop BB0_41 Depth 5
	vmov.f64	d16, #1.000000e+01
	add	lr, sp, #1024
	vldr	d17, [lr, #312]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_72
@ BB#34:                                @   in Loop: Header=BB0_33 Depth=1
	vmov.f64	d16, #1.000000e+01
	adr	r0, .LCPI0_31
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1312
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #280]
.LBB0_35:                               @   Parent Loop BB0_33 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_37 Depth 3
                                        @         Child Loop BB0_39 Depth 4
                                        @           Child Loop BB0_41 Depth 5
	add	lr, sp, #1024
	vldr	d16, [lr, #280]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_65
@ BB#36:                                @   in Loop: Header=BB0_35 Depth=2
	vmov.f64	d16, #5.000000e+00
	adr	r0, .LCPI0_32
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1280
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #248]
.LBB0_37:                               @   Parent Loop BB0_33 Depth=1
                                        @     Parent Loop BB0_35 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_39 Depth 4
                                        @           Child Loop BB0_41 Depth 5
	vmov.f64	d16, #1.500000e+01
	add	lr, sp, #1024
	vldr	d17, [lr, #248]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_58
@ BB#38:                                @   in Loop: Header=BB0_37 Depth=3
	vmov.f64	d16, #-1.000000e+00
	adr	r0, .LCPI0_33
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #1248
	vst1.64	{d18, d19}, [r0]
	add	lr, sp, #1024
	vstr	d16, [lr, #216]
.LBB0_39:                               @   Parent Loop BB0_33 Depth=1
                                        @     Parent Loop BB0_35 Depth=2
                                        @       Parent Loop BB0_37 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB0_41 Depth 5
	vmov.f64	d16, #-1.100000e+01
	add	lr, sp, #1024
	vldr	d17, [lr, #216]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_51
@ BB#40:                                @   in Loop: Header=BB0_39 Depth=4
	movw	r0, #0
	add	r4, sp, #1024
	vldr	d16, [r4, #312]
	add	r4, sp, #1024
	vldr	d17, [r4, #280]
	add	r4, sp, #1024
	vldr	d18, [r4, #248]
	add	r4, sp, #1024
	vldr	d19, [r4, #216]
	mov	r1, sp
	add	r2, sp, #832
	str	r2, [r1, #20]
	add	r2, sp, #780
	str	r2, [r1, #16]
	vstr	d19, [r1, #8]
	vstr	d18, [r1]
	vmov	r1, r2, d16
	vmov	r3, r12, d17
	str	r0, [sp, #448]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	bl	SolveCubic
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	vmov.i32	q10, #0x0
	add	r1, sp, #752
	vst1.64	{d20, d21}, [r1]
	ldr	r1, [sp, #448]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #444]          @ 4-byte Spill
.LBB0_41:                               @   Parent Loop BB0_33 Depth=1
                                        @     Parent Loop BB0_35 Depth=2
                                        @       Parent Loop BB0_37 Depth=3
                                        @         Parent Loop BB0_39 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #780]
	cmp	r0, r1
	bge	.LBB0_44
@ BB#42:                                @   in Loop: Header=BB0_41 Depth=5
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, sp, #832
	movw	r2, #3
	ldr	r3, [sp, #748]
	add	r12, sp, #832
	add	r3, r12, r3, lsl #3
	vldr	d16, [r3]
	str	r2, [sp, #440]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [sp, #436]          @ 4-byte Spill
	bl	printf
	str	r0, [sp, #432]          @ 4-byte Spill
@ BB#43:                                @   in Loop: Header=BB0_41 Depth=5
	ldr	r0, [sp, #748]
	add	r1, sp, #752
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #748]
	add	lr, sp, #416
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_41
.LBB0_44:                               @   in Loop: Header=BB0_39 Depth=4
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	str	r0, [sp, #412]          @ 4-byte Spill
@ BB#45:                                @   in Loop: Header=BB0_39 Depth=4
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #-1.000000e+00
	add	lr, sp, #1024
	vldr	d18, [lr, #216]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1248
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #-1.000000e+00
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
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d17, [r0, #160]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #400]         @ 8-byte Spill
	vstr	d19, [sp, #392]         @ 8-byte Spill
	vstr	d22, [sp, #384]         @ 8-byte Spill
	beq	.LBB0_50
@ BB#46:                                @   in Loop: Header=BB0_39 Depth=4
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #384]         @ 8-byte Reload
	vldr	d18, [sp, #392]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_48
@ BB#47:                                @   in Loop: Header=BB0_39 Depth=4
	vldr	d16, [sp, #400]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #160]
	b	.LBB0_49
.LBB0_48:                               @   in Loop: Header=BB0_39 Depth=4
	vldr	d16, [sp, #392]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #160]
.LBB0_49:                               @   in Loop: Header=BB0_39 Depth=4
	b	.LBB0_50
.LBB0_50:                               @   in Loop: Header=BB0_39 Depth=4
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vldr	d16, [r0, #160]
	add	lr, sp, #1024
	vstr	d16, [lr, #216]
	b	.LBB0_39
.LBB0_51:                               @   in Loop: Header=BB0_37 Depth=3
	b	.LBB0_52
.LBB0_52:                               @   in Loop: Header=BB0_37 Depth=3
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #5.000000e-01
	add	lr, sp, #1024
	vldr	d18, [lr, #248]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1280
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #5.000000e-01
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
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d17, [r0, #128]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #376]         @ 8-byte Spill
	vstr	d19, [sp, #368]         @ 8-byte Spill
	vstr	d22, [sp, #360]         @ 8-byte Spill
	beq	.LBB0_57
@ BB#53:                                @   in Loop: Header=BB0_37 Depth=3
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #360]         @ 8-byte Reload
	vldr	d18, [sp, #368]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_55
@ BB#54:                                @   in Loop: Header=BB0_37 Depth=3
	vldr	d16, [sp, #376]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #128]
	b	.LBB0_56
.LBB0_55:                               @   in Loop: Header=BB0_37 Depth=3
	vldr	d16, [sp, #368]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #128]
.LBB0_56:                               @   in Loop: Header=BB0_37 Depth=3
	b	.LBB0_57
.LBB0_57:                               @   in Loop: Header=BB0_37 Depth=3
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vldr	d16, [r0, #128]
	add	lr, sp, #1024
	vstr	d16, [lr, #248]
	b	.LBB0_37
.LBB0_58:                               @   in Loop: Header=BB0_35 Depth=2
	b	.LBB0_59
.LBB0_59:                               @   in Loop: Header=BB0_35 Depth=2
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #-1.000000e+00
	add	lr, sp, #1024
	vldr	d18, [lr, #280]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1312
	vst1.64	{d20, d21}, [r0:128]
	vmov.f64	d19, #-1.000000e+00
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
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d17, [r0, #96]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #352]         @ 8-byte Spill
	vstr	d19, [sp, #344]         @ 8-byte Spill
	vstr	d22, [sp, #336]         @ 8-byte Spill
	beq	.LBB0_64
@ BB#60:                                @   in Loop: Header=BB0_35 Depth=2
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #336]         @ 8-byte Reload
	vldr	d18, [sp, #344]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_62
@ BB#61:                                @   in Loop: Header=BB0_35 Depth=2
	vldr	d16, [sp, #352]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #96]
	b	.LBB0_63
.LBB0_62:                               @   in Loop: Header=BB0_35 Depth=2
	vldr	d16, [sp, #344]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #96]
.LBB0_63:                               @   in Loop: Header=BB0_35 Depth=2
	b	.LBB0_64
.LBB0_64:                               @   in Loop: Header=BB0_35 Depth=2
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vldr	d16, [r0, #96]
	add	lr, sp, #1024
	vstr	d16, [lr, #280]
	b	.LBB0_35
.LBB0_65:                               @   in Loop: Header=BB0_33 Depth=1
	b	.LBB0_66
.LBB0_66:                               @   in Loop: Header=BB0_33 Depth=1
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #1.000000e+00
	add	lr, sp, #1024
	vldr	d18, [lr, #312]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	add	r0, sp, #1344
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
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d17, [r0, #64]
	vcmpe.f64	d22, d16
	vmrs	APSR_nzcv, fpscr
	vstr	d17, [sp, #328]         @ 8-byte Spill
	vstr	d19, [sp, #320]         @ 8-byte Spill
	vstr	d22, [sp, #312]         @ 8-byte Spill
	beq	.LBB0_71
@ BB#67:                                @   in Loop: Header=BB0_33 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #312]         @ 8-byte Reload
	vldr	d18, [sp, #320]         @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_69
@ BB#68:                                @   in Loop: Header=BB0_33 Depth=1
	vldr	d16, [sp, #328]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #64]
	b	.LBB0_70
.LBB0_69:                               @   in Loop: Header=BB0_33 Depth=1
	vldr	d16, [sp, #320]         @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0, #64]
.LBB0_70:                               @   in Loop: Header=BB0_33 Depth=1
	b	.LBB0_71
.LBB0_71:                               @   in Loop: Header=BB0_33 Depth=1
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vldr	d16, [r0, #64]
	add	lr, sp, #1024
	vstr	d16, [lr, #312]
	b	.LBB0_33
.LBB0_72:
	movw	r0, #0
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	str	r0, [sp, #308]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vmov.i32	q8, #0x0
	add	r1, sp, #752
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #308]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #304]          @ 4-byte Spill
.LBB0_73:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #1001
	ldr	r1, [sp, #748]
	cmp	r1, r0
	bge	.LBB0_81
@ BB#74:                                @   in Loop: Header=BB0_73 Depth=1
	add	r1, sp, #708
	ldr	r0, [sp, #748]
	bl	usqrt
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	ldr	r1, [sp, #748]
	ldr	r2, [sp, #708]
	bl	printf
	str	r0, [sp, #300]          @ 4-byte Spill
@ BB#75:                                @   in Loop: Header=BB0_73 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #748]
	add	r2, sp, #752
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
	str	r1, [sp, #1628]
	cmp	r3, r0
	str	r1, [sp, #296]          @ 4-byte Spill
	str	r3, [sp, #292]          @ 4-byte Spill
	str	r2, [sp, #288]          @ 4-byte Spill
	beq	.LBB0_80
@ BB#76:                                @   in Loop: Header=BB0_73 Depth=1
	ldr	r0, [sp, #292]          @ 4-byte Reload
	ldr	r1, [sp, #288]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_78
@ BB#77:                                @   in Loop: Header=BB0_73 Depth=1
	ldr	r0, [sp, #296]          @ 4-byte Reload
	str	r0, [sp, #1628]
	b	.LBB0_79
.LBB0_78:                               @   in Loop: Header=BB0_73 Depth=1
	ldr	r0, [sp, #288]          @ 4-byte Reload
	str	r0, [sp, #1628]
.LBB0_79:                               @   in Loop: Header=BB0_73 Depth=1
	b	.LBB0_80
.LBB0_80:                               @   in Loop: Header=BB0_73 Depth=1
	ldr	r0, [sp, #1628]
	str	r0, [sp, #748]
	b	.LBB0_73
.LBB0_81:
	vldr	d16, .LCPI0_12
	ldr	r0, [sp, #716]
	add	r1, sp, #708
	vstr	d16, [sp, #280]         @ 8-byte Spill
	bl	usqrt
	ldr	r1, [sp, #716]
	ldr	r2, [sp, #708]
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	bl	printf
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	str	r0, [sp, #276]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vmov.i32	q9, #0x0
	add	r1, sp, #816
	vst1.64	{d18, d19}, [r1]
	vldr	d16, [sp, #280]         @ 8-byte Reload
	vstr	d16, [sp, #808]
	str	r0, [sp, #272]          @ 4-byte Spill
.LBB0_82:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_13
	vldr	d17, [sp, #808]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_85
@ BB#83:                                @   in Loop: Header=BB0_82 Depth=1
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	vldr	d16, .LCPI0_15
	vmov.f64	d17, #4.000000e+00
	vldr	d18, [sp, #808]
	vmov.f64	d20, d18
	vmov.f64	d21, d18
	vmov.f64	d19, d18
	add	r1, sp, #816
	vst1.64	{d20, d21}, [r1:128]
	vmov.f64	d22, #1.000000e+00
	vmov	r1, r2, d22
	str	r0, [sp, #268]          @ 4-byte Spill
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
	vstr	d16, [r4, #536]
	vorr	q12, q10, q10
	add	r0, sp, #1536
	vst1.32	{d20, d21}, [r0]
	vldr	d17, [sp, #240]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vldr	d18, [sp, #232]         @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vldr	d19, [sp, #248]         @ 8-byte Reload
	vdiv.f64	d16, d16, d19
	ldr	r0, [sp, #268]          @ 4-byte Reload
	vldr	d22, [sp, #256]         @ 8-byte Reload
	vmov	r2, r3, d22
	vstr	d16, [sp]
	add	r4, sp, #208
	vst1.64	{d24, d25}, [r4:128]    @ 16-byte Spill
	bl	printf
	str	r0, [sp, #204]          @ 4-byte Spill
@ BB#84:                                @   in Loop: Header=BB0_82 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, [sp, #808]
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	r0, sp, #816
	vst1.64	{d18, d19}, [r0:128]
	vmov.f64	d20, #1.000000e+00
	vadd.f64	d20, d17, d20
	vmov.f64	d18, d20
	vmov.f64	d19, d20
	vorr	q11, q9, q9
	vst1.64	{d18, d19}, [r0]
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #808]
	add	lr, sp, #176
	vst1.64	{d22, d23}, [lr:128]    @ 16-byte Spill
	b	.LBB0_82
.LBB0_85:
	vldr	d16, .LCPI0_12
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	vstr	d16, [sp, #168]         @ 8-byte Spill
	bl	puts
	vmov.i32	q9, #0x0
	add	lr, sp, #816
	vst1.64	{d18, d19}, [lr]
	vldr	d16, [sp, #168]         @ 8-byte Reload
	vstr	d16, [sp, #808]
	str	r0, [sp, #164]          @ 4-byte Spill
.LBB0_86:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_14
	vmov.f64	d17, #2.000000e+00
	vmov.f64	d18, #4.000000e+00
	vldr	d19, [sp, #808]
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
	vstr	d16, [lr, #488]
	vorr	q12, q11, q11
	add	r0, sp, #1488
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
	bhi	.LBB0_94
@ BB#87:                                @   in Loop: Header=BB0_86 Depth=1
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	vmov.f64	d16, #4.000000e+00
	vldr	d17, [sp, #808]
	vldr	d18, .LCPI0_15
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
	vstr	d16, [r4, #440]
	vorr	q11, q10, q10
	add	r0, sp, #1440
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
@ BB#88:                                @   in Loop: Header=BB0_86 Depth=1
	vmov.f64	d16, #3.000000e+00
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [sp, #48]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	lr, sp, #1024
	vstr	d16, [lr, #392]
	add	r0, sp, #1392
	vst1.32	{d18, d19}, [r0]
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d16, d17
	vldr	d17, .LCPI0_15
	vdiv.f64	d16, d16, d17
	vldr	d17, [sp, #808]
	add	r0, sp, #816
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
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0]
	vcmpe.f64	d21, d22
	vmrs	APSR_nzcv, fpscr
	vstr	d20, [sp, #40]          @ 8-byte Spill
	vstr	d21, [sp, #32]          @ 8-byte Spill
	vstr	d16, [sp, #24]          @ 8-byte Spill
	beq	.LBB0_93
@ BB#89:                                @   in Loop: Header=BB0_86 Depth=1
	vmov.f64	d16, #3.000000e+00
	vldr	d17, [sp, #32]          @ 8-byte Reload
	vldr	d18, [sp, #40]          @ 8-byte Reload
	vdiv.f64	d19, d17, d18
	vcmpe.f64	d19, d16
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_91
@ BB#90:                                @   in Loop: Header=BB0_86 Depth=1
	vldr	d16, [sp, #24]          @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0]
	b	.LBB0_92
.LBB0_91:                               @   in Loop: Header=BB0_86 Depth=1
	vldr	d16, [sp, #40]          @ 8-byte Reload
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vstr	d16, [r0]
.LBB0_92:                               @   in Loop: Header=BB0_86 Depth=1
	b	.LBB0_93
.LBB0_93:                               @   in Loop: Header=BB0_86 Depth=1
	ldr	r0, [sp, #680]          @ 4-byte Reload
	vldr	d16, [r0]
	vstr	d16, [sp, #808]
	b	.LBB0_86
.LBB0_94:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#95:
.LCPI0_12:
	.long	0                       @ double 0
	.long	0
.LCPI0_13:
	.long	0                       @ double 360
	.long	1081507840
.LCPI0_14:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_15:
	.long	0                       @ double 180
	.long	1080459264
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