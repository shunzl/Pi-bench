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
	.file	"qsort_large.c"
	.globl	compare
	.p2align	2
	.type	compare,%function
	.code	32                      @ @compare
compare:
	.fnstart
@ BB#0:
	sub	sp, sp, #20
	str	r0, [sp, #16]
	str	r1, [sp, #12]
	ldr	r0, [sp, #16]
	vldr	s0, [r0, #12]
	vstr	s0, [sp, #8]
	ldr	r0, [sp, #12]
	vldr	s0, [r0, #12]
	vstr	s0, [sp, #4]
	vldr	s0, [sp, #8]
	vldr	s2, [sp, #4]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_2
@ BB#1:
	movw	r0, #1
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	vldr	s0, [sp, #8]
	vldr	s2, [sp, #4]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	moveq	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	str	r0, [sp]                @ 4-byte Spill
.LBB0_3:
	ldr	r0, [sp]                @ 4-byte Reload
	add	sp, sp, #20
	bx	lr
.Lfunc_end0:
	.size	compare, .Lfunc_end0-compare
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
	sub	sp, sp, #1632
	sub	sp, sp, #958464
	movw	r2, #0
	str	r2, [r11, #-12]
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [sp, #72]
	ldr	r0, [r11, #-16]
	cmp	r0, #2
	bge	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r11, #-20]
	ldr	r0, [r0, #4]
	bl	fopen
	str	r0, [sp, #80]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #68
	ldr	r0, [sp, #80]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #52]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #64
	ldr	r0, [sp, #80]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #52]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#5:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #60
	ldr	r0, [sp, #80]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #52]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #60000
	ldr	r1, [sp, #72]
	cmp	r1, r0
	movw	r0, #0
	movlt	r0, #1
	str	r0, [sp, #52]           @ 4-byte Spill
.LBB1_7:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #52]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_9
@ BB#8:                                 @   in Loop: Header=BB1_3 Depth=1
	add	r0, sp, #84
	movw	r1, #4
	ldr	r2, [sp, #68]
	ldr	r3, [sp, #72]
	add	r12, sp, #84
	str	r2, [r12, r3, lsl #4]
	ldr	r2, [sp, #64]
	ldr	r3, [sp, #72]
	add	r3, r12, r3, lsl #4
	str	r2, [r3, #4]
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #72]
	add	r3, r12, r3, lsl #4
	str	r2, [r3, #8]
	ldr	r2, [sp, #68]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #2.000000e+00
	vmov	r2, r3, d17
	vmov	lr, r4, d16
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, lr
	str	r1, [sp, #44]           @ 4-byte Spill
	mov	r1, r4
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
	str	r12, [sp, #32]          @ 4-byte Spill
	bl	pow
	vmov	d16, r0, r1
	ldr	r0, [sp, #64]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vmov	r0, r1, d17
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r3, [sp, #36]           @ 4-byte Reload
	vstr	d16, [sp, #24]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [sp, #24]          @ 8-byte Reload
	vadd.f64	d16, d17, d16
	ldr	r0, [sp, #60]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vmov	r0, r1, d17
	ldr	r2, [sp, #40]           @ 4-byte Reload
	ldr	r3, [sp, #36]           @ 4-byte Reload
	vstr	d16, [sp, #16]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [sp, #16]          @ 8-byte Reload
	vadd.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	ldr	r0, [sp, #72]
	ldr	r1, [sp, #32]           @ 4-byte Reload
	add	r0, r1, r0, lsl #4
	vstr	s0, [r0, #12]
	ldr	r0, [sp, #72]
	add	r0, r0, #1
	str	r0, [sp, #72]
	b	.LBB1_3
.LBB1_9:
	b	.LBB1_10
.LBB1_10:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	ldr	r1, [sp, #72]
	bl	printf
	movw	r2, #16
	movw	r3, :lower16:compare
	movt	r3, :upper16:compare
	add	r1, sp, #84
	ldr	lr, [sp, #72]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	qsort
	movw	r0, #0
	str	r0, [sp, #76]
.LBB1_11:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #76]
	ldr	r1, [sp, #72]
	cmp	r0, r1
	bge	.LBB1_14
@ BB#12:                                @   in Loop: Header=BB1_11 Depth=1
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	add	r1, sp, #84
	movw	r2, #4
	ldr	r3, [sp, #76]
	add	r12, sp, #84
	add	lr, r12, r3, lsl #4
	ldr	r3, [r12, r3, lsl #4]
	ldr	r12, [lr, #4]
	ldr	lr, [lr, #8]
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #4]            @ 4-byte Spill
	mov	r2, r12
	mov	r3, lr
	bl	printf
	str	r0, [sp]                @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB1_11 Depth=1
	ldr	r0, [sp, #76]
	add	r0, r0, #1
	str	r0, [sp, #76]
	b	.LBB1_11
.LBB1_14:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: qsort_large <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"\nSorting %d vectors based on distance from the origin.\n\n"
	.size	.L.str.3, 57

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"%d %d %d\n"
	.size	.L.str.4, 10


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
