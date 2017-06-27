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
	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	vpush	{d8, d9}
	sub	sp, sp, #304
	bfc	sp, #0, #4
	vldr	s0, .LCPI0_0
	vmov.i32	q8, #0x0
	add	r0, sp, #224
	vst1.64	{d16, d17}, [r0]
	mov	r0, #0
	str	r0, [sp, #220]
	vmov.f32	q9, #1.000000e+00
	add	r1, sp, #192
	vst1.64	{d18, d19}, [r1]
	mov	r1, #1065353216
	str	r1, [sp, #188]
	add	r2, sp, #160
	vst1.64	{d16, d17}, [r2]
	str	r0, [sp, #156]
	add	r0, sp, #128
	vst1.64	{d18, d19}, [r0]
	str	r1, [sp, #124]
	add	r0, sp, #96
	vst1.64	{d18, d19}, [r0]
	str	r1, [sp, #92]
	vmov.i32	q9, #0x40000000
	add	r0, sp, #64
	vst1.64	{d18, d19}, [r0]
	mov	r0, #1073741824
	str	r0, [sp, #60]
	add	r0, sp, #32
	vst1.64	{d16, d17}, [r0]
	vstr	s0, [sp, #28]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_1
	vldr	s0, [sp, #124]
	vcvt.f64.f32	d17, s0
	vabs.f64	d17, d17
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	blt	.LBB0_8
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #124]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r0, sp, #128
	vst1.64	{d18, d19}, [r0:128]
	vldr	s6, [sp, #156]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r1, sp, #160
	vst1.64	{d18, d19}, [r1:128]
	vld1.64	{d20, d21}, [r0:128]
	vadd.f32	q9, q9, q10
	vst1.64	{d18, d19}, [r1]
	vadd.f32	s2, s6, s2
	vstr	s2, [sp, #156]
	vldr	s2, [sp, #92]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r1, sp, #96
	vst1.64	{d18, d19}, [r1:128]
	vldr	s6, [sp, #60]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r2, sp, #64
	vst1.64	{d18, d19}, [r2:128]
	vld1.64	{d20, d21}, [r1:128]
	vadd.f32	q9, q10, q9
	vst1.64	{d18, d19}, [r1]
	vadd.f32	s2, s2, s6
	vstr	s2, [sp, #92]
	vldr	s2, [sp, #28]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s2
	vdup.32	q9, d2[0]
	add	r2, sp, #32
	vst1.64	{d18, d19}, [r2:128]
	vldr	s6, [sp, #188]
                                        @ implicit-def: %D16
	vmov.f64	d2, d16
	vmov.f32	s4, s6
	vdup.32	q9, d2[0]
	add	r3, sp, #192
	vst1.64	{d18, d19}, [r3:128]
	vld1.64	{d20, d21}, [r2:128]
	vsub.f32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	vsub.f32	s2, s2, s6
	vstr	s2, [sp, #188]
	vldr	s6, [sp, #92]
	vld1.64	{d18, d19}, [r3:128]
	vld1.64	{d20, d21}, [r1:128]
	vorr	q2, q10, q10
	vmov.f32	s12, s11
	vorr	q4, q9, q9
	vmov.f32	s14, s19
	vdiv.f32	s12, s14, s12
	vmov.f32	s14, s10
	vmov.f32	s1, s18
	vdiv.f32	s14, s1, s14
	vmov.f32	s1, s9
	vmov.f32	s3, s17
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s8
	vmov.f32	s7, s16
	vdiv.f32	s3, s7, s3
	vmov.f32	s8, s3
	vmov.f32	s9, s1
	vmov.f32	s10, s14
	vmov.f32	s11, s12
	vst1.64	{d4, d5}, [r0]
	vmov.f32	s12, s8
	vmov.f32	s14, s9
	vmov.f32	s1, s10
	vadd.f32	s14, s12, s14
	vadd.f32	s14, s14, s1
	vdiv.f32	s2, s2, s6
	vmul.f32	s0, s2, s0
	vstr	s2, [sp, #284]
	vcmpe.f32	s14, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #24]           @ 4-byte Spill
	vstr	s14, [sp, #20]          @ 4-byte Spill
	vstr	s12, [sp, #16]          @ 4-byte Spill
	beq	.LBB0_7
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #20]           @ 4-byte Reload
	vldr	s4, [sp, #16]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_5
@ BB#4:                                 @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [sp, #24]           @ 4-byte Reload
	vstr	s0, [sp, #284]
	b	.LBB0_6
.LBB0_5:                                @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [sp, #16]           @ 4-byte Reload
	vstr	s0, [sp, #284]
.LBB0_6:                                @   in Loop: Header=BB0_1 Depth=1
	b	.LBB0_7
.LBB0_7:                                @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [sp, #284]
	vstr	s0, [sp, #124]
	b	.LBB0_1
.LBB0_8:
	vmov.f32	s0, #3.000000e+00
	vmov.f32	s2, #4.000000e+00
	vldr	s4, [sp, #156]
	add	r0, sp, #160
	vld1.64	{d16, d17}, [r0:128]
	vmov.f32	q9, #4.000000e+00
	vmul.f32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	vorr	q2, q8, q8
	vmov.f32	s6, s8
	vmov.f32	s12, s9
	vmov.f32	s14, s10
	vadd.f32	s12, s6, s12
	vadd.f32	s12, s12, s14
	vmul.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	vstr	s2, [sp, #252]
	vcmpe.f32	s12, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #12]           @ 4-byte Spill
	vstr	s12, [sp, #8]           @ 4-byte Spill
	vstr	s6, [sp, #4]            @ 4-byte Spill
	beq	.LBB0_13
@ BB#9:
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #8]            @ 4-byte Reload
	vldr	s4, [sp, #4]            @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB0_11
@ BB#10:
	vldr	s0, [sp, #12]           @ 4-byte Reload
	vstr	s0, [sp, #252]
	b	.LBB0_12
.LBB0_11:
	vldr	s0, [sp, #4]            @ 4-byte Reload
	vstr	s0, [sp, #252]
.LBB0_12:
	b	.LBB0_13
.LBB0_13:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	vldr	s0, [sp, #252]
	vstr	s0, [sp, #156]
	vldr	s0, [sp, #156]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	bl	printf
	movw	r2, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r2
	sub	sp, r11, #24
	vpop	{d8, d9}
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#14:
.LCPI0_1:
	.long	2696277389              @ double 9.9999999999999995E-7
	.long	1051772663
.LCPI0_0:
	.long	0                       @ float 0
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"pi:%.6f\n"
	.size	.L.str, 9


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
