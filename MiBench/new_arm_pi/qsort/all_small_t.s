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
	vldr	d16, [r0, #16]
	vstr	d16, [sp, #40]
	ldr	r0, [sp, #64]
	vldr	d16, [r0, #16]
	vstr	d16, [sp, #8]
	vldr	d16, [sp, #40]
	vldr	d17, [sp, #8]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB0_2
@ BB#1:
	movw	r0, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	vldr	d16, [sp, #40]
	vldr	d17, [sp, #8]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	movw	r1, #0
	moveq	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB0_3:
	ldr	r0, [sp, #4]            @ 4-byte Reload
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
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #2832
	sub	sp, sp, #389120
	sub	sp, sp, #1048576
	bfc	sp, #0, #4
	add	lr, sp, #129024
	add	lr, lr, #1310720
	add	r2, lr, #520
	movw	r3, #0
	str	r3, [r2, #36]
	str	r0, [r2, #4]
	str	r1, [r2]
	str	r3, [sp, #204]
	ldr	r0, [r2, #4]
	cmp	r0, #2
	str	r2, [sp, #104]          @ 4-byte Spill
	bge	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [sp, #100]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	ldr	r2, [r0]
	ldr	r0, [r2, #4]
	bl	fopen
	str	r0, [sp, #260]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #172
	ldr	r0, [sp, #260]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #96]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #140
	ldr	r0, [sp, #260]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #96]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#5:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r2, sp, #108
	ldr	r0, [sp, #260]
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #96]           @ 4-byte Spill
	bne	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #60000
	ldr	r1, [sp, #204]
	cmp	r1, r0
	movw	r0, #0
	movlt	r0, #1
	str	r0, [sp, #96]           @ 4-byte Spill
.LBB1_7:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #96]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_14
@ BB#8:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #172]
	ldr	r2, [sp, #204]
	add	r2, r2, r2, lsl #1
	add	r3, sp, #264
	str	r1, [r3, r2, lsl #3]
	ldr	r1, [sp, #140]
	ldr	r2, [sp, #204]
	add	r2, r2, r2, lsl #1
	add	r2, r3, r2, lsl #3
	str	r1, [r2, #4]
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #204]
	add	r2, r2, r2, lsl #1
	add	r2, r3, r2, lsl #3
	str	r1, [r2, #8]
	ldr	r1, [sp, #172]
	vmov	s0, r1
	vcvt.f64.s32	d16, s0
	vmov.f64	d17, #2.000000e+00
	vmov	r1, r2, d17
	vmov	r12, lr, d16
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r12
	str	r1, [sp, #88]           @ 4-byte Spill
	mov	r1, lr
	ldr	r12, [sp, #88]          @ 4-byte Reload
	str	r2, [sp, #84]           @ 4-byte Spill
	mov	r2, r12
	ldr	lr, [sp, #84]           @ 4-byte Reload
	str	r3, [sp, #80]           @ 4-byte Spill
	mov	r3, lr
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	ldr	r0, [sp, #140]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vmov	r0, r1, d17
	ldr	r2, [sp, #88]           @ 4-byte Reload
	ldr	r3, [sp, #84]           @ 4-byte Reload
	vstr	d16, [sp, #72]          @ 8-byte Spill
	add	r4, sp, #48
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vldr	d17, [sp, #72]          @ 8-byte Reload
	ldr	r0, [sp, #104]          @ 4-byte Reload
	vstr	d17, [r0, #176]
	add	r4, sp, #389120
	add	r4, r4, #1048576
	add	r1, r4, #2720
	add	r4, sp, #48
	vld1.64	{d20, d21}, [r4:128]    @ 16-byte Reload
	vst1.32	{d20, d21}, [r1]
	vstr	d16, [r0, #128]
	add	r4, sp, #389120
	add	r4, r4, #1048576
	add	r1, r4, #2672
	vst1.32	{d18, d19}, [r1]
	vadd.f64	d16, d17, d16
	ldr	r1, [sp, #108]
	vmov	s0, r1
	vcvt.f64.s32	d22, s0
	vmov	r0, r1, d22
	ldr	r2, [sp, #88]           @ 4-byte Reload
	ldr	r3, [sp, #84]           @ 4-byte Reload
	vstr	d16, [sp, #40]          @ 8-byte Spill
	bl	pow
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	ldr	r0, [sp, #104]          @ 4-byte Reload
	vstr	d16, [r0, #80]
	add	r4, sp, #1425408
	add	r1, r4, #14912
	vst1.32	{d18, d19}, [r1]
	vldr	d17, [sp, #40]          @ 8-byte Reload
	vadd.f64	d16, d17, d16
	vmov	r0, r1, d16
	bl	sqrt
	ldr	r2, [sp, #204]
	add	r2, r2, r2, lsl #1
	ldr	r3, [sp, #80]           @ 4-byte Reload
	add	r2, r3, r2, lsl #3
	str	r0, [r2, #16]
	str	r1, [r2, #20]
	ldr	r0, [sp, #204]
	vdup.32	q9, r0
	add	r1, sp, #208
	vst1.64	{d18, d19}, [r1:128]
	vmov.i32	q10, #0x1
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r1]
	vmov.f64	d16, d18
	vmov.32	r1, d16[0]
	vmov.32	r2, d16[1]
	vmov.f64	d16, d19
	vmov.32	r12, d16[0]
	add	r2, r1, r2
	add	r2, r2, r12
	add	r0, r0, #1
	ldr	r12, [sp, #92]          @ 4-byte Reload
	mul	lr, r0, r12
	ldr	r4, [sp, #104]          @ 4-byte Reload
	str	r0, [r4, #244]
	cmp	r2, lr
	str	r2, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
	str	r0, [sp, #28]           @ 4-byte Spill
	beq	.LBB1_13
@ BB#9:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #32]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_11
@ BB#10:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	str	r0, [r1, #244]
	b	.LBB1_12
.LBB1_11:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	str	r0, [r1, #244]
.LBB1_12:                               @   in Loop: Header=BB1_3 Depth=1
	b	.LBB1_13
.LBB1_13:                               @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	ldr	r1, [r0, #244]
	str	r1, [sp, #204]
	b	.LBB1_3
.LBB1_14:
	b	.LBB1_15
.LBB1_15:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	ldr	r1, [sp, #204]
	bl	printf
	movw	r2, #24
	movw	r3, :lower16:compare
	movt	r3, :upper16:compare
	add	r1, sp, #264
	ldr	lr, [sp, #204]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	qsort
	movw	r0, #0
	str	r0, [sp, #236]
.LBB1_16:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #236]
	ldr	r1, [sp, #204]
	cmp	r0, r1
	bge	.LBB1_24
@ BB#17:                                @   in Loop: Header=BB1_16 Depth=1
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	add	r1, sp, #264
	movw	r2, #24
	ldr	r3, [sp, #236]
	mul	r3, r3, r2
	add	r3, r1, r3
	ldr	r3, [r3]
	ldr	r12, [sp, #236]
	mul	r12, r12, r2
	add	r12, r1, r12
	ldr	r12, [r12, #4]
	ldr	lr, [sp, #236]
	mul	r2, lr, r2
	add	r1, r1, r2
	ldr	r1, [r1, #8]
	str	r1, [sp, #20]           @ 4-byte Spill
	mov	r1, r3
	mov	r2, r12
	ldr	r3, [sp, #20]           @ 4-byte Reload
	bl	printf
	str	r0, [sp, #16]           @ 4-byte Spill
@ BB#18:                                @   in Loop: Header=BB1_16 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	add	r2, sp, #240
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
	ldr	r12, [sp, #104]         @ 4-byte Reload
	str	r1, [r12, #212]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB1_23
@ BB#19:                                @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_21
@ BB#20:                                @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	str	r0, [r1, #212]
	b	.LBB1_22
.LBB1_21:                               @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	str	r0, [r1, #212]
.LBB1_22:                               @   in Loop: Header=BB1_16 Depth=1
	b	.LBB1_23
.LBB1_23:                               @   in Loop: Header=BB1_16 Depth=1
	ldr	r0, [sp, #104]          @ 4-byte Reload
	ldr	r1, [r0, #212]
	str	r1, [sp, #236]
	b	.LBB1_16
.LBB1_24:
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
