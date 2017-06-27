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
	.file	"large_t.bc"
	.globl	compare
	.p2align	2
	.type	compare,%function
	.code	32                      @ @compare
compare:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #72
	bfc	sp, #0, #4
	str	r0, [sp, #68]
	str	r1, [sp, #64]
	ldr	r0, [sp, #68]
	vldr	s0, [r0, #12]
	vstr	s0, [sp, #44]
	ldr	r0, [sp, #64]
	vldr	s0, [r0, #12]
	vstr	s0, [sp, #12]
	vldr	s0, [sp, #44]
	vldr	s2, [sp, #12]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_2
@ BB#1:
	movw	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	vldr	s0, [sp, #44]
	vldr	s2, [sp, #12]
	vcmpe.f32	s0, s2
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	moveq	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB0_3:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	mov	sp, r11
	pop	{r11, pc}
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
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #904
	sub	sp, sp, #173056
	sub	sp, sp, #786432
	bfc	sp, #0, #4
	mov	r6, sp
	add	lr, r6, #173056
	add	lr, lr, #786432
	add	r2, lr, #776
	add	r3, r6, #108
	movw	r12, #0
	str	r12, [r2, #36]
	str	r0, [r2, #4]
	str	r1, [r2]
	str	r12, [r3, #96]
	ldr	r0, [r2, #4]
	cmp	r0, #2
	str	r2, [r6, #92]           @ 4-byte Spill
	str	r3, [r6, #88]           @ 4-byte Spill
	bge	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [r6, #84]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r2, [r0]
	ldr	r0, [r2, #4]
	bl	fopen
	ldr	r1, [r6, #88]           @ 4-byte Reload
	str	r0, [r1, #152]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, r6, #172
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r0, [r0, #152]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [r6, #80]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, r6, #140
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r0, [r0, #152]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [r6, #80]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#5:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, r6, #108
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r0, [r0, #152]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [r6, #80]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #60000
	ldr	r1, [r6, #88]           @ 4-byte Reload
	ldr	r2, [r1, #96]
	cmp	r2, r0
	movw	r0, #0
	movlt	r0, #1
	str	r0, [r6, #80]           @ 4-byte Spill
.LBB1_7:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #80]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_14
@ BB#8:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #88]           @ 4-byte Reload
	ldr	r2, [r1, #64]
	ldr	r3, [r1, #96]
	add	r12, r6, #264
	str	r2, [r12, r3, lsl #4]
	ldr	r2, [r1, #32]
	ldr	r3, [r1, #96]
	add	r3, r12, r3, lsl #4
	str	r2, [r3, #4]
	ldr	r2, [r1]
	ldr	r3, [r1, #96]
	add	r3, r12, r3, lsl #4
	str	r2, [r3, #8]
	ldr	r2, [r1, #64]
	vmov	s0, r2
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #2.000000e+00
	vmov	r2, r3, d17
	vmov	lr, r1, d16
	str	r0, [r6, #76]           @ 4-byte Spill
	mov	r0, lr
	str	r2, [r6, #72]           @ 4-byte Spill
	str	r3, [r6, #68]           @ 4-byte Spill
	str	r12, [r6, #64]          @ 4-byte Spill
	bl	pow
	vmov	d16, r0, r1
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	vmov	r0, r1, d17
	ldr	r2, [r6, #72]           @ 4-byte Reload
	ldr	r3, [r6, #68]           @ 4-byte Reload
	vstr	d16, [r6, #56]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [r6, #56]          @ 8-byte Reload
	vadd.f64	d16, d17, d16
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r0]
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	vmov	r0, r1, d17
	ldr	r2, [r6, #72]           @ 4-byte Reload
	ldr	r3, [r6, #68]           @ 4-byte Reload
	vstr	d16, [r6, #48]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vldr	d17, [r6, #48]          @ 8-byte Reload
	vadd.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r0, #96]
	ldr	r2, [r6, #64]           @ 4-byte Reload
	add	r1, r2, r1, lsl #4
	vstr	s0, [r1, #12]
	ldr	r1, [r0, #96]
	vdup.32	q9, r1
	add	r3, r6, #208
	vst1.64	{d18, d19}, [r3:128]
	mov	r12, sp
	sub	lr, r12, #8
	mov	sp, lr
	mov	lr, sp
	sub	lr, lr, #16
	bfc	lr, #0, #4
	mov	sp, lr
	mov	r4, #1
	str	r4, [r12, #-8]
	vmov.i32	q10, #0x1
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	vmov.f64	d16, d18
	vmov.32	r3, d16[0]
	vmov.32	r12, d16[1]
	vmov.f64	d16, d19
	vmov.32	lr, d16[0]
	add	r12, r3, r12
	add	r12, r12, lr
	add	r1, r1, #1
	ldr	lr, [r6, #76]           @ 4-byte Reload
	mul	r4, r1, lr
	ldr	r5, [r6, #92]           @ 4-byte Reload
	str	r1, [r5, #100]
	cmp	r12, r4
	str	r12, [r6, #44]          @ 4-byte Spill
	str	r3, [r6, #40]           @ 4-byte Spill
	str	r1, [r6, #36]           @ 4-byte Spill
	beq	.LBB1_13
@ BB#9:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r6, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_11
@ BB#10:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #100]
	b	.LBB1_12
.LBB1_11:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #100]
.LBB1_12:                               @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_13
.LBB1_13:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #100]
	ldr	r2, [r6, #88]           @ 4-byte Reload
	str	r1, [r2, #96]
	b	.LBB1_3
.LBB1_14:
	b	.LBB1_15
.LBB1_15:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	ldr	r1, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r1, #96]
	bl	printf
	movw	r2, #16
	movw	r3, :lower16:compare
	movt	r3, :upper16:compare
	add	r1, r6, #264
	ldr	lr, [r6, #88]           @ 4-byte Reload
	ldr	r12, [lr, #96]
	str	r0, [r6, #32]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r12
	bl	qsort
	movw	r0, #0
	ldr	r1, [r6, #88]           @ 4-byte Reload
	str	r0, [r1, #128]
.LBB1_16:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #88]           @ 4-byte Reload
	ldr	r1, [r0, #128]
	ldr	r2, [r0, #96]
	cmp	r1, r2
	bge	.LBB1_24
@ BB#17:                                @   in Loop: Header=BB1_16 Depth=1
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	add	r1, r6, #264
	movw	r2, #4
	ldr	r3, [r6, #88]           @ 4-byte Reload
	ldr	r12, [r3, #128]
	add	lr, r6, #264
	add	r4, lr, r12, lsl #4
	ldr	r12, [lr, r12, lsl #4]
	ldr	lr, [r4, #4]
	ldr	r3, [r4, #8]
	str	r1, [r6, #28]           @ 4-byte Spill
	mov	r1, r12
	str	r2, [r6, #24]           @ 4-byte Spill
	mov	r2, lr
	bl	printf
	str	r0, [r6, #20]           @ 4-byte Spill
@ BB#18:                                @   in Loop: Header=BB1_16 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #88]           @ 4-byte Reload
	ldr	r2, [r1, #128]
	vdup.32	q8, r2
	add	r3, r6, #240
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
	ldr	lr, [r6, #92]           @ 4-byte Reload
	str	r2, [lr, #68]
	cmp	r12, r0
	str	r2, [r6, #16]           @ 4-byte Spill
	str	r12, [r6, #12]          @ 4-byte Spill
	str	r3, [r6, #8]            @ 4-byte Spill
	beq	.LBB1_23
@ BB#19:                                @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [r6, #12]           @ 4-byte Reload
	ldr	r1, [r6, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_21
@ BB#20:                                @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [r6, #8]            @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #68]
	b	.LBB1_22
.LBB1_21:                               @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #92]           @ 4-byte Reload
	str	r0, [r1, #68]
.LBB1_22:                               @   in Loop: Header=BB1_16 Depth=1
	b	.LBB1_23
.LBB1_23:                               @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [r6, #92]           @ 4-byte Reload
	ldr	r1, [r0, #68]
	ldr	r2, [r6, #88]           @ 4-byte Reload
	str	r1, [r2, #128]
	b	.LBB1_16
.LBB1_24:
	movw	r0, #0
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
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
