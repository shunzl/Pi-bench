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
	.file	"qsort_small.c"
	.globl	compare
	.p2align	2
	.type	compare,%function
	.code	32                      @ @compare
compare:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [r11, #-4]
	ldr	r1, [sp, #8]
	bl	strcmp
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bge	.LBB0_2
@ BB#1:
	movw	r0, #1
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB0_3
.LBB0_2:
	movw	r0, #0
	ldr	r1, [sp, #4]
	cmp	r1, #0
	movw	r1, #0
	moveq	r1, #1
	tst	r1, #1
	mvneq	r0, #0
	str	r0, [sp]                @ 4-byte Spill
.LBB0_3:
	ldr	r0, [sp]                @ 4-byte Reload
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #56
	sub	sp, sp, #339968
	sub	sp, sp, #7340032
	movw	r2, #0
	str	r2, [r11, #-12]
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [sp, #32]
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
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	ldr	r0, [r11, #-20]
	ldr	r0, [r0, #4]
	bl	fopen
	str	r0, [sp, #40]
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	movw	r1, :lower16:.L.str.2
	movt	r1, :upper16:.L.str.2
	add	r0, sp, #44
	movw	r2, #7
	ldr	r3, [sp, #40]
	ldr	r12, [sp, #32]
	add	lr, sp, #44
	add	r12, lr, r12, lsl #7
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r3
	str	r2, [sp, #20]           @ 4-byte Spill
	mov	r2, r12
	bl	fscanf
	movw	r1, #0
	cmp	r0, #1
	str	r1, [sp, #16]           @ 4-byte Spill
	bne	.LBB1_5
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #60000
	ldr	r1, [sp, #32]
	cmp	r1, r0
	movw	r0, #0
	movlt	r0, #1
	str	r0, [sp, #16]           @ 4-byte Spill
.LBB1_5:                                @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	tst	r0, #1
	beq	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_3 Depth=1
	ldr	r0, [sp, #32]
	add	r0, r0, #1
	str	r0, [sp, #32]
	b	.LBB1_3
.LBB1_7:
	b	.LBB1_8
.LBB1_8:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	ldr	r1, [sp, #32]
	bl	printf
	movw	r2, #128
	movw	r3, :lower16:compare
	movt	r3, :upper16:compare
	add	r1, sp, #44
	ldr	lr, [sp, #32]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	qsort
	movw	r0, #0
	str	r0, [sp, #36]
.LBB1_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #32]
	cmp	r0, r1
	bge	.LBB1_12
@ BB#10:                                @   in Loop: Header=BB1_9 Depth=1
	movw	r0, :lower16:.L.str.4
	movt	r0, :upper16:.L.str.4
	add	r1, sp, #44
	movw	r2, #7
	ldr	r3, [sp, #36]
	add	r12, sp, #44
	add	r3, r12, r3, lsl #7
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #4]            @ 4-byte Spill
	bl	printf
	str	r0, [sp]                @ 4-byte Spill
@ BB#11:                                @   in Loop: Header=BB1_9 Depth=1
	ldr	r0, [sp, #36]
	add	r0, r0, #1
	str	r0, [sp, #36]
	b	.LBB1_9
.LBB1_12:
	movw	r0, #0
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: qsort_small <file>\n"
	.size	.L.str, 27

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"r"
	.size	.L.str.1, 2

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"%s"
	.size	.L.str.2, 3

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"\nSorting %d elements.\n\n"
	.size	.L.str.3, 24

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"%s\n"
	.size	.L.str.4, 4


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
