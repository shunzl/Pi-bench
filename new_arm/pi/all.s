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
	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	vldr	s0, .LCPI0_0
	vmov.f32	s2, #2.000000e+00
	vmov.f32	s4, #1.000000e+00
	movw	r0, #0
	str	r0, [r11, #-4]
	vstr	s4, [r11, #-8]
	vstr	s0, [r11, #-12]
	vstr	s4, [sp, #16]
	vstr	s4, [sp, #12]
	vstr	s2, [sp, #8]
	vstr	s0, [sp, #4]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	vldr	d16, .LCPI0_1
	vldr	s0, [sp, #16]
	vcvt.f64.f32	d17, s0
	vabs.f64	d17, d17
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	blt	.LBB0_3
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	vldr	s0, [sp, #16]
	vldr	s2, [r11, #-12]
	vadd.f32	s0, s2, s0
	vstr	s0, [r11, #-12]
	vldr	s0, [sp, #12]
	vldr	s2, [sp, #8]
	vadd.f32	s0, s0, s2
	vstr	s0, [sp, #12]
	vldr	s0, [sp, #4]
	vldr	s2, [r11, #-8]
	vsub.f32	s0, s0, s2
	vstr	s0, [r11, #-8]
	vldr	s0, [r11, #-8]
	vldr	s2, [sp, #12]
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #16]
	b	.LBB0_1
.LBB0_3:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	vmov.f32	s0, #4.000000e+00
	vldr	s2, [r11, #-12]
	vmul.f32	s0, s0, s2
	vstr	s0, [r11, #-12]
	vldr	s0, [r11, #-12]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	bl	printf
	movw	r2, #0
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r2
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#4:
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
