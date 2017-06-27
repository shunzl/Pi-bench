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
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #744
	bfc	sp, #0, #5
	mov	r6, sp
	add	r0, r6, #364
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r2, #0
	ldr	r3, .LCPI0_0
	vldr	d16, .LCPI0_12
	vmov.f64	d17, #1.000000e+00
	vldr	d18, .LCPI0_13
	vmov.f64	d19, #-3.100000e+01
	vmov.f64	d20, #2.200000e+01
	vmov.f64	d21, #-3.500000e+00
	vmov.f64	d22, #-3.000000e+01
	vmov.f64	d23, #1.700000e+01
	vmov.f64	d24, #-4.500000e+00
	vldr	d25, .LCPI0_14
	vmov.f64	d26, #-1.050000e+01
	str	r2, [r0, #288]
	vstr	d17, [r0, #276]
	vstr	d26, [r0, #268]
	vstr	d25, [r0, #260]
	vstr	d22, [r0, #252]
	vstr	d17, [r0, #244]
	vstr	d24, [r0, #236]
	vstr	d23, [r0, #228]
	vstr	d22, [r0, #220]
	vstr	d17, [r0, #212]
	vstr	d21, [r0, #204]
	vstr	d20, [r0, #196]
	vstr	d19, [r0, #188]
	vstr	d17, [r0, #180]
	vstr	d18, [r0, #172]
	vstr	d17, [r0, #164]
	vstr	d16, [r0, #156]
	str	r3, [r0, #32]
	str	r2, [r0]
	str	r0, [r6, #348]          @ 4-byte Spill
	mov	r0, r1
	bl	printf
	add	r1, r6, #460
	add	r2, r6, #496
	ldr	r3, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r3, #276]
	vldr	d17, [r3, #268]
	vldr	d18, [r3, #260]
	vldr	d19, [r3, #252]
	sub	sp, sp, #24
	str	r0, [r6, #344]          @ 4-byte Spill
	str	r1, [r6, #340]          @ 4-byte Spill
	vmov	r0, r1, d16
	str	r2, [r6, #336]          @ 4-byte Spill
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	lr, [r6, #340]          @ 4-byte Reload
	str	lr, [sp, #16]
	ldr	r12, [r6, #336]         @ 4-byte Reload
	str	r12, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #348]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #332]          @ 4-byte Spill
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #496
	movw	r2, #3
	ldr	r3, [r6, #348]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #496
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #328]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #324]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #320]          @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	vdup.32	q8, r1
	add	r2, r6, #432
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
	add	lr, r6, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_1
.LBB0_4:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #460
	add	r1, r6, #496
	ldr	r2, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r2, #244]
	vldr	d17, [r2, #236]
	vldr	d18, [r2, #228]
	vldr	d19, [r2, #220]
	sub	sp, sp, #24
	str	r0, [r6, #300]          @ 4-byte Spill
	str	r1, [r6, #296]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #296]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #348]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #292]          @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #496
	movw	r2, #3
	ldr	r3, [r6, #348]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #496
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #288]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #284]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #280]          @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #432
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
	add	lr, r6, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_5
.LBB0_8:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #460
	add	r1, r6, #496
	ldr	r2, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r2, #212]
	vldr	d17, [r2, #204]
	vldr	d18, [r2, #196]
	vldr	d19, [r2, #188]
	sub	sp, sp, #24
	str	r0, [r6, #252]          @ 4-byte Spill
	str	r1, [r6, #248]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #248]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #348]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #244]          @ 4-byte Spill
.LBB0_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_15
@ BB#10:                                @   in Loop: Header=BB0_9 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #496
	movw	r2, #3
	ldr	r3, [r6, #348]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #496
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #240]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #236]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #232]          @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB0_9 Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #432
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
	add	lr, r6, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_9
	.p2align	3
@ BB#12:
.LCPI0_12:
	.long	0                       @ double -35
	.long	3225518080
	.p2align	3
@ BB#13:
.LCPI0_13:
	.long	1717986918              @ double -13.699999999999999
	.long	3224069734
	.p2align	3
@ BB#14:
.LCPI0_14:
	.long	0                       @ double 32
	.long	1077936128
.LBB0_15:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	add	lr, r6, #460
	add	r1, r6, #496
	ldr	r2, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r2, #180]
	vldr	d17, [r2, #172]
	vldr	d18, [r2, #164]
	vldr	d19, [r2, #156]
	sub	sp, sp, #24
	str	r0, [r6, #204]          @ 4-byte Spill
	str	r1, [r6, #200]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	str	lr, [sp, #16]
	ldr	lr, [r6, #200]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #348]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #196]          @ 4-byte Spill
.LBB0_16:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_19
@ BB#17:                                @   in Loop: Header=BB0_16 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #496
	movw	r2, #3
	ldr	r3, [r6, #348]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #496
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #192]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #188]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #184]          @ 4-byte Spill
@ BB#18:                                @   in Loop: Header=BB0_16 Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #432
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
	add	lr, r6, #160
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_16
.LBB0_19:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	vmov.f64	d16, #1.000000e+00
	ldr	lr, [r6, #348]          @ 4-byte Reload
	vstr	d16, [lr, #276]
	str	r0, [r6, #156]          @ 4-byte Spill
.LBB0_20:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB0_22 Depth 2
                                        @       Child Loop BB0_24 Depth 3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #1.000000e+01
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #276]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_39
@ BB#21:                                @   in Loop: Header=BB0_20 Depth=1
	vmov.f64	d16, #1.000000e+01
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vstr	d16, [r0, #268]
.LBB0_22:                               @   Parent Loop BB0_20 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB0_24 Depth 3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r0, #268]
	vcmpe.f64	d16, #0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_37
@ BB#23:                                @   in Loop: Header=BB0_22 Depth=2
	vmov.f64	d16, #5.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vstr	d16, [r0, #260]
.LBB0_24:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB0_26 Depth 4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #1.500000e+01
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #260]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB0_35
@ BB#25:                                @   in Loop: Header=BB0_24 Depth=3
	vmov.f64	d16, #-1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vstr	d16, [r0, #252]
.LBB0_26:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @       Parent Loop BB0_24 Depth=3
                                        @ =>      This Loop Header: Depth=4
                                        @           Child Loop BB0_28 Depth 5
	vmov.f64	d16, #-1.100000e+01
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #252]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_33
@ BB#27:                                @   in Loop: Header=BB0_26 Depth=4
	add	r0, r6, #460
	add	r1, r6, #496
	ldr	r2, [r6, #348]          @ 4-byte Reload
	vldr	d16, [r2, #276]
	vldr	d17, [r2, #268]
	vldr	d18, [r2, #260]
	vldr	d19, [r2, #252]
	sub	sp, sp, #24
	str	r0, [r6, #152]          @ 4-byte Spill
	str	r1, [r6, #148]          @ 4-byte Spill
	vmov	r0, r1, d16
	vmov	r2, r3, d17
	vstr	d18, [sp]
	vstr	d19, [sp, #8]
	ldr	r12, [r6, #152]         @ 4-byte Reload
	str	r12, [sp, #16]
	ldr	lr, [r6, #148]          @ 4-byte Reload
	str	lr, [sp, #20]
	bl	SolveCubic
	add	sp, sp, #24
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	bl	printf
	movw	r1, #0
	ldr	r2, [r6, #348]          @ 4-byte Reload
	str	r1, [r2, #64]
	str	r0, [r6, #144]          @ 4-byte Spill
.LBB0_28:                               @   Parent Loop BB0_20 Depth=1
                                        @     Parent Loop BB0_22 Depth=2
                                        @       Parent Loop BB0_24 Depth=3
                                        @         Parent Loop BB0_26 Depth=4
                                        @ =>        This Inner Loop Header: Depth=5
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB0_31
@ BB#29:                                @   in Loop: Header=BB0_28 Depth=5
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	add	r1, r6, #496
	movw	r2, #3
	ldr	r3, [r6, #348]          @ 4-byte Reload
	ldr	r12, [r3, #64]
	add	lr, r6, #496
	add	r12, lr, r12, lsl #3
	vldr	d16, [r12]
	str	r2, [r6, #140]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	r1, [r6, #136]          @ 4-byte Spill
	bl	printf
	str	r0, [r6, #132]          @ 4-byte Spill
@ BB#30:                                @   in Loop: Header=BB0_28 Depth=5
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	add	r2, r6, #432
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
	add	lr, r6, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB0_28
.LBB0_31:                               @   in Loop: Header=BB0_26 Depth=4
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	bl	printf
	str	r0, [r6, #108]          @ 4-byte Spill
@ BB#32:                                @   in Loop: Header=BB0_26 Depth=4
	vmov.f64	d16, #-1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #252]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #252]
	b	.LBB0_26
.LBB0_33:                               @   in Loop: Header=BB0_24 Depth=3
	b	.LBB0_34
.LBB0_34:                               @   in Loop: Header=BB0_24 Depth=3
	vmov.f64	d16, #5.000000e-01
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #260]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #260]
	b	.LBB0_24
.LBB0_35:                               @   in Loop: Header=BB0_22 Depth=2
	b	.LBB0_36
.LBB0_36:                               @   in Loop: Header=BB0_22 Depth=2
	vmov.f64	d16, #-1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #268]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #268]
	b	.LBB0_22
.LBB0_37:                               @   in Loop: Header=BB0_20 Depth=1
	b	.LBB0_38
.LBB0_38:                               @   in Loop: Header=BB0_20 Depth=1
	vmov.f64	d16, #1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #276]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #276]
	b	.LBB0_20
.LBB0_39:
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	bl	printf
	movw	lr, #0
	ldr	r1, [r6, #348]          @ 4-byte Reload
	str	lr, [r1, #64]
	str	r0, [r6, #104]          @ 4-byte Spill
.LBB0_40:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #1001
	ldr	r1, [r6, #348]          @ 4-byte Reload
	ldr	r2, [r1, #64]
	cmp	r2, r0
	bge	.LBB0_48
@ BB#41:                                @   in Loop: Header=BB0_40 Depth=1
	add	r1, r6, #388
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r0, [r0, #64]
	bl	usqrt
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	ldr	r1, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r1, #64]
	ldr	lr, [r6, #348]          @ 4-byte Reload
	ldr	r2, [lr, #24]
	bl	printf
	str	r0, [r6, #100]          @ 4-byte Spill
@ BB#42:                                @   in Loop: Header=BB0_40 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #348]          @ 4-byte Reload
	ldr	r2, [r1, #64]
	add	r3, r6, #432
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
	str	r2, [r1, #320]
	cmp	r12, r0
	str	r2, [r6, #96]           @ 4-byte Spill
	str	r12, [r6, #92]          @ 4-byte Spill
	str	r3, [r6, #88]           @ 4-byte Spill
	beq	.LBB0_47
@ BB#43:                                @   in Loop: Header=BB0_40 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r6, #88]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB0_45
@ BB#44:                                @   in Loop: Header=BB0_40 Depth=1
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r6, #348]          @ 4-byte Reload
	str	r0, [r1, #320]
	b	.LBB0_46
.LBB0_45:                               @   in Loop: Header=BB0_40 Depth=1
	ldr	r0, [r6, #96]           @ 4-byte Reload
	ldr	r1, [r6, #348]          @ 4-byte Reload
	str	r0, [r1, #320]
.LBB0_46:                               @   in Loop: Header=BB0_40 Depth=1
	b	.LBB0_47
.LBB0_47:                               @   in Loop: Header=BB0_40 Depth=1
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r0, #320]
	str	r1, [r0, #64]
	b	.LBB0_40
.LBB0_48:
	add	r1, r6, #388
	ldr	r0, [r6, #348]          @ 4-byte Reload
	ldr	r0, [r0, #32]
	bl	usqrt
	movw	r0, :lower16:.L.str.6
	movt	r0, :upper16:.L.str.6
	ldr	r1, [r6, #348]          @ 4-byte Reload
	ldr	r1, [r1, #32]
	ldr	lr, [r6, #348]          @ 4-byte Reload
	ldr	r2, [lr, #24]
	bl	printf
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	str	r0, [r6, #84]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	vldr	d16, .LCPI0_4
	ldr	r1, [r6, #348]          @ 4-byte Reload
	vstr	d16, [r1, #124]
	str	r0, [r6, #80]           @ 4-byte Spill
.LBB0_49:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_5
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_52
@ BB#50:                                @   in Loop: Header=BB0_49 Depth=1
	vmov.f64	d16, #1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vldr	d18, [r0, #124]
	vmov	r0, r1, d16
	vstr	d18, [r6, #72]          @ 8-byte Spill
	vstr	d17, [r6, #64]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	vldr	d17, .LCPI0_10
	vmov.f64	d18, #4.000000e+00
	vmul.f64	d16, d18, d16
	vldr	d18, [r6, #72]          @ 8-byte Reload
	vmul.f64	d16, d18, d16
	vdiv.f64	d16, d16, d17
	sub	sp, sp, #8
	vldr	d17, [r6, #64]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	add	sp, sp, #8
	str	r0, [r6, #60]           @ 4-byte Spill
@ BB#51:                                @   in Loop: Header=BB0_49 Depth=1
	vmov.f64	d16, #1.000000e+00
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vadd.f64	d16, d17, d16
	vstr	d16, [r0, #124]
	b	.LBB0_49
.LBB0_52:
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:puts
	movt	r1, :upper16:puts
	blx	r1
	vldr	d16, .LCPI0_4
	ldr	r1, [r6, #348]          @ 4-byte Reload
	vstr	d16, [r1, #124]
	str	r0, [r6, #56]           @ 4-byte Spill
.LBB0_53:                               @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_6
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d17, [r0, #124]
	vmov.f64	d18, #1.000000e+00
	vmov	r0, r1, d18
	vstr	d16, [r6, #48]          @ 8-byte Spill
	vstr	d17, [r6, #40]          @ 8-byte Spill
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
	adr	r0, .LCPI0_7
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
	adr	r0, .LCPI0_8
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
	adr	r0, .LCPI0_9
	vld1.64	{d20, d21}, [r0:128]
	vst1.32	{d20, d21}, [r1]!
	vst1.32	{d20, d21}, [r1]
	vldr	d17, [r6, #48]          @ 8-byte Reload
	vadd.f64	d16, d16, d17
	vldr	d18, [r6, #40]          @ 8-byte Reload
	vcmpe.f64	d18, d16
	vmrs	APSR_nzcv, fpscr
	bhi	.LBB0_56
@ BB#54:                                @   in Loop: Header=BB0_53 Depth=1
	vmov.f64	d16, #1.000000e+00
	vldr	d17, .LCPI0_10
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d18, [r0, #124]
	vldr	d19, [r0, #124]
	vmul.f64	d17, d19, d17
	vmov	r0, r1, d16
	vstr	d17, [r6, #32]          @ 8-byte Spill
	vstr	d18, [r6, #24]          @ 8-byte Spill
	bl	atan
	vmov	d16, r0, r1
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	vmov.f64	d17, #4.000000e+00
	vmul.f64	d16, d17, d16
	vldr	d17, [r6, #32]          @ 8-byte Reload
	vdiv.f64	d16, d17, d16
	sub	sp, sp, #8
	vldr	d17, [r6, #24]          @ 8-byte Reload
	vmov	r2, r3, d17
	vstr	d16, [sp]
	bl	printf
	add	sp, sp, #8
	str	r0, [r6, #20]           @ 4-byte Spill
@ BB#55:                                @   in Loop: Header=BB0_53 Depth=1
	vldr	d16, .LCPI0_10
	vmov.f64	d17, #1.000000e+00
	vmov	r0, r1, d17
	vstr	d16, [r6, #8]           @ 8-byte Spill
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
	adr	r0, .LCPI0_7
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
	movt	r2, #16486
	str	r2, [r0, #-4]
	str	lr, [r0, #-8]
	adr	r0, .LCPI0_11
	vld1.64	{d18, d19}, [r0:128]
	vst1.32	{d18, d19}, [r1]!
	vst1.32	{d18, d19}, [r1]
	vldr	d17, [r6, #8]           @ 8-byte Reload
	vdiv.f64	d16, d16, d17
	ldr	r0, [r6, #348]          @ 4-byte Reload
	vldr	d20, [r0, #124]
	vadd.f64	d16, d20, d16
	vstr	d16, [r0, #124]
	b	.LBB0_53
.LBB0_56:
	movw	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	4
@ BB#57:
.LCPI0_7:
	.long	0                       @ double 4
	.long	1074790400
	.long	0                       @ double 4
	.long	1074790400
.LCPI0_8:
	.long	0                       @ double 2
	.long	1073741824
	.long	0                       @ double 2
	.long	1073741824
.LCPI0_9:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_11:
	.long	0                       @ double 180
	.long	1080459264
	.long	0                       @ double 180
	.long	1080459264
.LCPI0_4:
	.long	0                       @ double 0
	.long	0
.LCPI0_5:
	.long	0                       @ double 360
	.long	1081507840
.LCPI0_6:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_10:
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
