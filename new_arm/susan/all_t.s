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
	.globl	usage
	.p2align	2
	.type	usage,%function
	.code	32                      @ @usage
usage:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #88
	bfc	sp, #0, #4
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	printf
	movw	lr, :lower16:.L.str.1
	movt	lr, :upper16:.L.str.1
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.2
	movt	lr, :upper16:.L.str.2
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.3
	movt	lr, :upper16:.L.str.3
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.4
	movt	lr, :upper16:.L.str.4
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.5
	movt	lr, :upper16:.L.str.5
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.6
	movt	lr, :upper16:.L.str.6
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.7
	movt	lr, :upper16:.L.str.7
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.9
	movt	lr, :upper16:.L.str.9
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.10
	movt	lr, :upper16:.L.str.10
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.11
	movt	lr, :upper16:.L.str.11
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.12
	movt	lr, :upper16:.L.str.12
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, lr
	bl	exit
.Lfunc_end0:
	.size	usage, .Lfunc_end0-usage
	.cantunwind
	.fnend

	.globl	getint
	.p2align	2
	.type	getint,%function
	.code	32                      @ @getint
getint:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #1952
	sub	sp, sp, #8192
	bfc	sp, #0, #4
	add	r4, sp, #9216
	add	r1, r4, #812
	str	r0, [r1, #60]
	ldr	r0, [r1, #60]
	str	r1, [sp, #24]           @ 4-byte Spill
	bl	getc
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1, #32]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #35
	bne	.LBB1_3
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r1, #9000
	add	r0, sp, #28
	ldr	r2, [sp, #24]           @ 4-byte Reload
	ldr	r2, [r2, #60]
	bl	fgets
	str	r0, [sp, #20]           @ 4-byte Spill
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmn	r1, #1
	bne	.LBB1_5
@ BB#4:
	movw	r1, :lower16:.L.str.13
	movt	r1, :upper16:.L.str.13
	movw	r2, :lower16:.L.str.14
	movt	r2, :upper16:.L.str.14
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #48
	blt	.LBB1_8
@ BB#6:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #57
	bgt	.LBB1_8
@ BB#7:
	b	.LBB1_9
.LBB1_8:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r0, [r0, #60]
	bl	getc
	ldr	lr, [sp, #24]           @ 4-byte Reload
	str	r0, [lr, #32]
	b	.LBB1_1
.LBB1_9:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	lr, sp, #8192
	add	r1, lr, #1840
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1]
.LBB1_10:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #3
	ldr	r1, [sp, #24]           @ 4-byte Reload
	ldr	r2, [r1]
	vdup.32	q8, r2
	add	r10, sp, #8192
	add	r3, r10, #1840
	vst1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0xa
	add	r2, r2, r2, lsl #2
	lsl	r2, r2, #1
	ldr	r12, [r1, #32]
	vdup.32	q10, r12
	add	r10, sp, #8192
	add	lr, r10, #1872
	vst1.64	{d20, d21}, [lr:128]
	vmov.i32	q11, #0x30
	vsub.i32	q10, q10, q11
	sub	r12, r12, #48
	vmla.i32	q10, q8, q9
	vst1.64	{d20, d21}, [r3]
	vmov.f64	d24, d20
	vmov.32	r3, d24[0]
	vmov.32	lr, d24[1]
	vmov.f64	d24, d21
	vmov.32	r4, d24[0]
	add	lr, r3, lr
	add	lr, lr, r4
	add	r2, r2, r12
	mul	r0, r2, r0
	str	r2, [r1, #96]
	cmp	lr, r0
	str	r2, [sp, #12]           @ 4-byte Spill
	str	lr, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	beq	.LBB1_15
@ BB#11:                                @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_13
@ BB#12:                                @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB1_14
.LBB1_13:                               @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1, #96]
.LBB1_14:                               @   in Loop: Header=BB1_10 Depth=1
	b	.LBB1_15
.LBB1_15:                               @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #96]
	str	r1, [r0]
	ldr	r0, [r0, #60]
	bl	getc
	ldr	r1, [sp, #24]           @ 4-byte Reload
	str	r0, [r1, #32]
	ldr	r0, [r1, #32]
	cmn	r0, #1
	bne	.LBB1_17
@ BB#16:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0]
	str	r1, [r0, #64]
	b	.LBB1_22
.LBB1_17:                               @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #48
	blt	.LBB1_19
@ BB#18:                                @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #57
	ble	.LBB1_20
.LBB1_19:
	b	.LBB1_21
.LBB1_20:                               @   in Loop: Header=BB1_10 Depth=1
	b	.LBB1_10
.LBB1_21:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [r0]
	str	r1, [r0, #64]
.LBB1_22:
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r0, [r0, #64]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end1:
	.size	getint, .Lfunc_end1-getint
	.cantunwind
	.fnend

	.globl	get_image
	.p2align	2
	.type	get_image,%function
	.code	32                      @ @get_image
get_image:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #168
	bfc	sp, #0, #4
	movw	r12, :lower16:.L.str.15
	movt	r12, :upper16:.L.str.15
	str	r0, [sp, #164]
	str	r1, [sp, #160]
	str	r2, [sp, #156]
	str	r3, [sp, #152]
	ldr	r0, [sp, #164]
	mov	r1, r12
	bl	fopen
	movw	r1, #0
	str	r0, [sp, #148]
	cmp	r0, r1
	bne	.LBB2_2
@ BB#1:
	movw	r1, :lower16:.L.str.16
	movt	r1, :upper16:.L.str.16
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #164]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_2:
	ldr	r0, [sp, #148]
	bl	fgetc
	strb	r0, [sp, #48]
	ldr	r0, [sp, #148]
	bl	fgetc
	strb	r0, [sp, #49]
	ldrb	r0, [sp, #48]
	cmp	r0, #80
	bne	.LBB2_4
@ BB#3:
	ldrb	r0, [sp, #49]
	cmp	r0, #53
	beq	.LBB2_5
.LBB2_4:
	movw	r1, :lower16:.L.str.17
	movt	r1, :upper16:.L.str.17
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #164]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_5:
	ldr	r0, [sp, #148]
	bl	getint
	ldr	lr, [sp, #156]
	str	r0, [lr]
	ldr	r0, [sp, #148]
	bl	getint
	ldr	lr, [sp, #152]
	str	r0, [lr]
	ldr	r0, [sp, #148]
	bl	getint
	str	r0, [sp, #28]
	ldr	r0, [sp, #156]
	ldr	r0, [r0]
	ldr	lr, [sp, #152]
	ldr	lr, [lr]
	mul	r0, r0, lr
	bl	malloc
	movw	r1, #1
	ldr	lr, [sp, #160]
	str	r0, [lr]
	ldr	r0, [sp, #160]
	ldr	r0, [r0]
	ldr	lr, [sp, #156]
	ldr	lr, [lr]
	ldr	r2, [sp, #152]
	ldr	r2, [r2]
	mul	r2, lr, r2
	ldr	r3, [sp, #148]
	bl	fread
	cmp	r0, #0
	bne	.LBB2_7
@ BB#6:
	movw	r1, :lower16:.L.str.18
	movt	r1, :upper16:.L.str.18
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #164]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_7:
	ldr	r0, [sp, #148]
	bl	fclose
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	get_image, .Lfunc_end2-get_image
	.cantunwind
	.fnend

	.globl	put_image
	.p2align	2
	.type	put_image,%function
	.code	32                      @ @put_image
put_image:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #144
	bfc	sp, #0, #4
	movw	r12, :lower16:.L.str.19
	movt	r12, :upper16:.L.str.19
	str	r0, [sp, #120]
	str	r1, [sp, #116]
	str	r2, [sp, #92]
	str	r3, [sp, #60]
	ldr	r0, [sp, #120]
	mov	r1, r12
	bl	fopen
	movw	r1, #0
	str	r0, [sp, #56]
	cmp	r0, r1
	bne	.LBB3_2
@ BB#1:
	movw	r1, :lower16:.L.str.20
	movt	r1, :upper16:.L.str.20
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #120]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB3_2:
	movw	r2, #1
	ldr	r0, [sp, #56]
	movw	r1, :lower16:.L.str.21
	movt	r1, :upper16:.L.str.21
	str	r2, [sp, #48]           @ 4-byte Spill
	bl	fprintf
	ldr	r1, [sp, #56]
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #60]
	movw	lr, :lower16:.L.str.22
	movt	lr, :upper16:.L.str.22
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, lr
	bl	fprintf
	ldr	r1, [sp, #56]
	movw	r2, :lower16:.L.str.23
	movt	r2, :upper16:.L.str.23
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	fprintf
	ldr	r1, [sp, #116]
	ldr	r2, [sp, #92]
	mov	r3, r2
	vdup.32	q8, r2
	add	r2, sp, #96
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #60]
	mov	lr, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #64
	vst1.64	{d16, d17}, [r2:128]
	mul	r2, r3, lr
	ldr	r3, [sp, #56]
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [sp, #48]           @ 4-byte Reload
	add	r4, sp, #16
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	fwrite
	cmp	r0, #1
	beq	.LBB3_4
@ BB#3:
	movw	r1, :lower16:.L.str.24
	movt	r1, :upper16:.L.str.24
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [sp, #120]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB3_4:
	ldr	r0, [sp, #56]
	bl	fclose
	ldr	lr, [sp, #124]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, lr
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end3:
	.size	put_image, .Lfunc_end3-put_image
	.cantunwind
	.fnend

	.globl	int_to_uchar
	.p2align	2
	.type	int_to_uchar,%function
	.code	32                      @ @int_to_uchar
int_to_uchar:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #240
	bfc	sp, #0, #4
	movw	r3, #0
	str	r0, [sp, #184]
	str	r1, [sp, #180]
	str	r2, [sp, #156]
	ldr	r0, [sp, #184]
	ldr	r0, [r0]
	str	r0, [sp, #92]
	ldr	r0, [sp, #184]
	ldr	r0, [r0]
	str	r0, [sp, #60]
	vmov.i32	q8, #0x0
	add	r0, sp, #128
	vst1.64	{d16, d17}, [r0]
	str	r3, [sp, #124]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #124]
	ldr	r1, [sp, #156]
	cmp	r0, r1
	bge	.LBB4_8
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #184]
	ldr	r2, [sp, #124]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	ldr	r2, [sp, #92]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	ble	.LBB4_4
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #184]
	ldr	r2, [sp, #124]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #92]
	str	r0, [sp, #52]           @ 4-byte Spill
.LBB4_4:                                @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #184]
	ldr	r2, [sp, #124]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	ldr	r2, [sp, #60]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	bge	.LBB4_6
@ BB#5:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #184]
	ldr	r2, [sp, #124]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #60]
	str	r0, [sp, #44]           @ 4-byte Spill
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [sp, #124]
	vdup.32	q8, r0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #124]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB4_1
.LBB4_8:
	movw	r0, #0
	ldr	r1, [sp, #60]
	vdup.32	q8, r1
	add	r2, sp, #64
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #92]
	vdup.32	q8, r3
	add	r12, sp, #96
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	sub	r1, r3, r1
	str	r1, [sp, #92]
	vmov.i32	q8, #0x0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #124]
.LBB4_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #124]
	ldr	r1, [sp, #156]
	cmp	r0, r1
	bge	.LBB4_17
@ BB#10:                                @   in Loop: Header=BB4_9 Depth=1
	movw	r0, #255
	movw	r1, #2
	ldr	r2, [sp, #184]
	ldr	r3, [sp, #124]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #60]
	sub	r2, r2, r3
	mul	r0, r2, r0
	ldr	r2, [sp, #92]
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r2
	bl	__divsi3
	ldr	r1, [sp, #180]
	ldr	r2, [sp, #124]
	add	r1, r1, r2
	strb	r0, [r1]
@ BB#11:                                @   in Loop: Header=BB4_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #124]
	add	r2, sp, #128
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
	str	r1, [sp, #220]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB4_16
@ BB#12:                                @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB4_14
@ BB#13:                                @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #220]
	b	.LBB4_15
.LBB4_14:                               @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #220]
.LBB4_15:                               @   in Loop: Header=BB4_9 Depth=1
	b	.LBB4_16
.LBB4_16:                               @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [sp, #220]
	str	r0, [sp, #124]
	b	.LBB4_9
.LBB4_17:
	ldr	r0, [sp, #188]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end4:
	.size	int_to_uchar, .Lfunc_end4-int_to_uchar
	.cantunwind
	.fnend

	.globl	setup_brightness_lut
	.p2align	3
	.type	setup_brightness_lut,%function
	.code	32                      @ @setup_brightness_lut
setup_brightness_lut:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #368
	bfc	sp, #0, #4
	mvn	r3, #255
	str	r0, [sp, #188]
	str	r1, [sp, #156]
	str	r2, [sp, #124]
	mov	r0, #516
	str	r3, [sp, #56]           @ 4-byte Spill
	bl	malloc
	ldr	r1, [sp, #188]
	str	r0, [r1]
	ldr	r0, [sp, #188]
	ldr	r1, [r0]
	movw	r2, #258
	add	r1, r1, r2
	str	r1, [r0]
	vmvn.i32	q8, #0xff
	add	r0, sp, #96
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #56]           @ 4-byte Reload
	str	r0, [sp, #92]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #257
	ldr	r1, [sp, #92]
	cmp	r1, r0
	bge	.LBB5_11
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #92]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #156]
	vmov	s2, r1
	vcvt.f32.s32	s2, s2
	vstr	s0, [sp, #316]
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	add	r0, sp, #288
	vst1.32	{d16, d17}, [r0]
	vstr	s2, [sp, #268]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	add	r0, sp, #240
	vst1.32	{d18, d19}, [r0]
	vorr	q1, q9, q9
	vmov.f32	s8, s7
	vorr	q3, q8, q8
	vmov.f32	s10, s15
	vdiv.f32	s8, s10, s8
	vmov.f32	s10, s6
	vmov.f32	s1, s14
	vdiv.f32	s10, s1, s10
	vmov.f32	s1, s5
	vmov.f32	s3, s13
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s4
	vmov.f32	s9, s12
	vdiv.f32	s3, s9, s3
	vmov.f32	s4, s3
	vmov.f32	s5, s1
	vmov.f32	s6, s10
	vmov.f32	s7, s8
	add	r0, sp, #64
	vst1.64	{d2, d3}, [r0]
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #60]
	vmov.f32	s2, s0
	vld1.64	{d16, d17}, [r0:128]
	vmul.f32	q8, q8, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #60]
	ldr	r0, [sp, #124]
	cmp	r0, #6
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bne	.LBB5_4
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	vldr	s0, [sp, #60]
	add	r0, sp, #64
	vld1.64	{d16, d17}, [r0:128]
	vmul.f32	q9, q8, q8
	vmul.f32	s2, s0, s0
	vmul.f32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	vmul.f32	s0, s2, s0
	vstr	s0, [sp, #60]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB5_4:                                @   in Loop: Header=BB5_1 Depth=1
	vldr	s0, [sp, #60]
	vneg.f32	s0, s0
	vcvt.f64.f32	d16, s0
	vmov	r0, r1, d16
	bl	exp
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	vstr	d16, [sp, #216]
	add	r0, sp, #192
	vst1.32	{d18, d19}, [r0]
	vldr	d17, .LCPI5_0
	vmul.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	vstr	s0, [sp, #60]
	vcvt.u32.f32	s0, s0
	vmov	r0, s0
	ldr	r1, [sp, #188]
	ldr	r1, [r1]
	ldr	lr, [sp, #92]
	add	r1, r1, lr
	strb	r0, [r1]
@ BB#5:                                 @   in Loop: Header=BB5_1 Depth=1
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
	str	r1, [sp, #348]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB5_10
@ BB#6:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_8
@ BB#7:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #348]
	b	.LBB5_9
.LBB5_8:                                @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #348]
.LBB5_9:                                @   in Loop: Header=BB5_1 Depth=1
	b	.LBB5_10
.LBB5_10:                               @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #348]
	str	r0, [sp, #92]
	b	.LBB5_1
.LBB5_11:
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#12:
.LCPI5_0:
	.long	0                       @ double 100
	.long	1079574528
.Lfunc_end5:
	.size	setup_brightness_lut, .Lfunc_end5-setup_brightness_lut
	.cantunwind
	.fnend

	.globl	susan_principle
	.p2align	2
	.type	susan_principle,%function
	.code	32                      @ @susan_principle
susan_principle:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #776
	sub	sp, sp, #3072
	bfc	sp, #0, #4
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	movw	r4, #3
	str	r0, [sp, #296]
	str	r1, [sp, #292]
	str	r2, [sp, #288]
	str	r3, [sp, #268]
	str	lr, [sp, #236]
	str	r12, [sp, #204]
	ldr	r0, [sp, #292]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	add	r2, sp, #240
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #204]
	vdup.32	q8, r2
	add	r3, sp, #208
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	lsl	r2, r1, #2
	mov	r1, #0
	str	r4, [sp, #96]           @ 4-byte Spill
	bl	memset
	vmov.i32	q8, #0x3
	add	r1, sp, #176
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #96]           @ 4-byte Reload
	str	r1, [sp, #172]
	str	r0, [sp, #92]           @ 4-byte Spill
.LBB6_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_3 Depth 2
	ldr	r0, [sp, #172]
	ldr	r1, [sp, #204]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #208
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #3
	cmp	r0, r1
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB6_20
@ BB#2:                                 @   in Loop: Header=BB6_1 Depth=1
	movw	r0, #3
	vmov.i32	q8, #0x3
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #140]
.LBB6_3:                                @   Parent Loop BB6_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #240
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #3
	cmp	r0, r1
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB6_13
@ BB#4:                                 @   in Loop: Header=BB6_3 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #112
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #108]
	ldr	r1, [sp, #296]
	ldr	r2, [sp, #172]
	vdup.32	q8, r2
	add	r3, sp, #176
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #3
	ldr	r12, [sp, #236]
	vdup.32	q8, r12
	add	lr, sp, #240
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #140]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #104]
	ldr	r1, [sp, #288]
	ldr	r2, [sp, #296]
	ldr	r12, [sp, #172]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #236]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #140]
	vdup.32	q8, r4
	add	r5, sp, #144
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3756]
	vdup.32	q8, r2
	add	r3, sp, #3728
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3708]
	vdup.32	q9, r1
	add	r3, sp, #3680
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3660]
	vdup.32	q8, r2
	add	r3, sp, #3632
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3612]
	vdup.32	q9, r1
	add	r3, sp, #3584
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3564]
	vdup.32	q8, r2
	add	r3, sp, #3536
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3516]
	vdup.32	q9, r1
	add	r3, sp, #3488
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #2
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-3]
	str	r1, [sp, #3468]
	vdup.32	q8, r1
	add	r3, sp, #3440
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3420]
	vdup.32	q9, r1
	add	r3, sp, #3392
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3372]
	vdup.32	q8, r2
	add	r3, sp, #3344
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3324]
	vdup.32	q9, r1
	add	r3, sp, #3296
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3276]
	vdup.32	q8, r2
	add	r3, sp, #3248
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3228]
	vdup.32	q9, r1
	add	r3, sp, #3200
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3180]
	vdup.32	q8, r2
	add	r3, sp, #3152
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3132]
	vdup.32	q9, r1
	add	r3, sp, #3104
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #3084]
	vdup.32	q8, r2
	add	r3, sp, #3056
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3036]
	vdup.32	q9, r1
	add	r3, sp, #3008
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #4
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-5]
	str	r1, [sp, #2988]
	vdup.32	q8, r1
	add	r3, sp, #2960
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2940]
	vdup.32	q9, r1
	add	r3, sp, #2912
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2892]
	vdup.32	q8, r2
	add	r3, sp, #2864
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2844]
	vdup.32	q9, r1
	add	r3, sp, #2816
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2796]
	vdup.32	q8, r2
	add	r3, sp, #2768
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2748]
	vdup.32	q9, r1
	add	r3, sp, #2720
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2700]
	vdup.32	q8, r2
	add	r3, sp, #2672
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2652]
	vdup.32	q9, r1
	add	r3, sp, #2624
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2604]
	vdup.32	q8, r2
	add	r3, sp, #2576
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2556]
	vdup.32	q9, r1
	add	r3, sp, #2528
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2508]
	vdup.32	q8, r2
	add	r3, sp, #2480
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2460]
	vdup.32	q9, r1
	add	r3, sp, #2432
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2412]
	vdup.32	q8, r2
	add	r3, sp, #2384
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2364]
	vdup.32	q9, r1
	add	r3, sp, #2336
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #5
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-6]
	str	r1, [sp, #2316]
	vdup.32	q8, r1
	add	r3, sp, #2288
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2268]
	vdup.32	q9, r1
	add	r3, sp, #2240
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2220]
	vdup.32	q8, r2
	add	r3, sp, #2192
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2172]
	vdup.32	q9, r1
	add	r3, sp, #2144
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #2124]
	vdup.32	q8, r2
	add	r3, sp, #2096
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #2076]
	vdup.32	q9, r1
	add	r3, sp, #2048
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #104]
	add	r2, r1, #2
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	add	r3, r1, #3
	str	r3, [sp, #104]
	ldrb	r1, [r1, #2]
	str	r1, [sp, #2028]
	vdup.32	q8, r1
	add	r3, sp, #2000
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1980]
	vdup.32	q9, r1
	add	r3, sp, #1952
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1932]
	vdup.32	q8, r2
	add	r3, sp, #1904
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1884]
	vdup.32	q9, r1
	add	r3, sp, #1856
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1836]
	vdup.32	q8, r2
	add	r3, sp, #1808
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1788]
	vdup.32	q9, r1
	add	r3, sp, #1760
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #5
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-6]
	str	r1, [sp, #1740]
	vdup.32	q8, r1
	add	r3, sp, #1712
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1692]
	vdup.32	q9, r1
	add	r3, sp, #1664
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1644]
	vdup.32	q8, r2
	add	r3, sp, #1616
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1596]
	vdup.32	q9, r1
	add	r3, sp, #1568
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1548]
	vdup.32	q8, r2
	add	r3, sp, #1520
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1500]
	vdup.32	q9, r1
	add	r3, sp, #1472
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1452]
	vdup.32	q8, r2
	add	r3, sp, #1424
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1404]
	vdup.32	q9, r1
	add	r3, sp, #1376
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1356]
	vdup.32	q8, r2
	add	r3, sp, #1328
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1308]
	vdup.32	q9, r1
	add	r3, sp, #1280
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1260]
	vdup.32	q8, r2
	add	r3, sp, #1232
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1212]
	vdup.32	q9, r1
	add	r3, sp, #1184
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1164]
	vdup.32	q8, r2
	add	r3, sp, #1136
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1116]
	vdup.32	q9, r1
	add	r3, sp, #1088
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #4
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-5]
	str	r1, [sp, #1068]
	vdup.32	q8, r1
	add	r3, sp, #1040
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1020]
	vdup.32	q9, r1
	add	r3, sp, #992
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #972]
	vdup.32	q8, r2
	add	r3, sp, #944
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #924]
	vdup.32	q9, r1
	add	r3, sp, #896
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #876]
	vdup.32	q8, r2
	add	r3, sp, #848
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #828]
	vdup.32	q9, r1
	add	r3, sp, #800
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #780]
	vdup.32	q8, r2
	add	r3, sp, #752
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #732]
	vdup.32	q9, r1
	add	r3, sp, #704
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #684]
	vdup.32	q8, r2
	add	r3, sp, #656
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #636]
	vdup.32	q9, r1
	add	r3, sp, #608
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #2
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-3]
	str	r1, [sp, #588]
	vdup.32	q8, r1
	add	r3, sp, #560
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #540]
	vdup.32	q9, r1
	add	r3, sp, #512
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #492]
	vdup.32	q8, r2
	add	r3, sp, #464
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #444]
	vdup.32	q9, r1
	add	r3, sp, #416
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #396]
	vdup.32	q8, r2
	add	r3, sp, #368
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	r3, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #348]
	vdup.32	q9, r1
	add	r1, sp, #320
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, r3, r2
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	ldr	r1, [sp, #268]
	cmp	r0, r1
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bgt	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_3 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #268]
	vdup.32	q8, r1
	add	r2, sp, #272
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #108]
	sub	r1, r1, r2
	ldr	r2, [sp, #292]
	ldr	r3, [sp, #172]
	vdup.32	q8, r3
	add	r12, sp, #176
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #236]
	vdup.32	q8, r12
	add	lr, sp, #240
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #140]
	vdup.32	q8, lr
	add	r4, sp, #144
	vst1.64	{d16, d17}, [r4:128]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=2
	b	.LBB6_7
.LBB6_7:                                @   in Loop: Header=BB6_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #140]
	vdup.32	q8, r1
	add	r2, sp, #144
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
	str	r1, [sp, #3820]
	cmp	r3, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	beq	.LBB6_12
@ BB#8:                                 @   in Loop: Header=BB6_3 Depth=2
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_10
@ BB#9:                                 @   in Loop: Header=BB6_3 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #3820]
	b	.LBB6_11
.LBB6_10:                               @   in Loop: Header=BB6_3 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #3820]
.LBB6_11:                               @   in Loop: Header=BB6_3 Depth=2
	b	.LBB6_12
.LBB6_12:                               @   in Loop: Header=BB6_3 Depth=2
	ldr	r0, [sp, #3820]
	str	r0, [sp, #140]
	b	.LBB6_3
.LBB6_13:                               @   in Loop: Header=BB6_1 Depth=1
	b	.LBB6_14
.LBB6_14:                               @   in Loop: Header=BB6_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #172]
	vdup.32	q8, r1
	add	r2, sp, #176
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
	str	r1, [sp, #3788]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB6_19
@ BB#15:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB6_17
@ BB#16:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #3788]
	b	.LBB6_18
.LBB6_17:                               @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #3788]
.LBB6_18:                               @   in Loop: Header=BB6_1 Depth=1
	b	.LBB6_19
.LBB6_19:                               @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp, #3788]
	str	r0, [sp, #172]
	b	.LBB6_1
.LBB6_20:
	ldr	r0, [sp, #300]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cantunwind
	.fnend

	.globl	susan_principle_small
	.p2align	4
	.type	susan_principle_small,%function
	.code	32                      @ @susan_principle_small
susan_principle_small:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #136
	sub	sp, sp, #1024
	bfc	sp, #0, #4
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	movw	r4, #1
	str	r0, [sp, #296]
	str	r1, [sp, #292]
	str	r2, [sp, #288]
	str	r3, [sp, #268]
	str	lr, [sp, #236]
	str	r12, [sp, #204]
	ldr	r0, [sp, #292]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	add	r2, sp, #240
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #204]
	vdup.32	q8, r2
	add	r3, sp, #208
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	lsl	r2, r1, #2
	mov	r1, #0
	str	r4, [sp, #96]           @ 4-byte Spill
	bl	memset
	adr	r1, .LCPI7_1
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #272
	vst1.64	{d16, d17}, [r1]
	movw	r1, #730
	str	r1, [sp, #268]
	vmov.i32	q8, #0x1
	add	r1, sp, #176
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #96]           @ 4-byte Reload
	str	r1, [sp, #172]
	str	r0, [sp, #92]           @ 4-byte Spill
	b	.LBB7_2
	.p2align	4
@ BB#1:
.LCPI7_1:
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
.LBB7_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB7_4 Depth 2
	ldr	r0, [sp, #172]
	ldr	r1, [sp, #204]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #208
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB7_21
@ BB#3:                                 @   in Loop: Header=BB7_2 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #140]
.LBB7_4:                                @   Parent Loop BB7_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #240
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB7_14
@ BB#5:                                 @   in Loop: Header=BB7_4 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #112
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #108]
	ldr	r1, [sp, #296]
	ldr	r2, [sp, #172]
	vdup.32	q8, r2
	add	r3, sp, #176
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #1
	ldr	r12, [sp, #236]
	vdup.32	q8, r12
	add	lr, sp, #240
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #140]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #104]
	ldr	r1, [sp, #288]
	ldr	r2, [sp, #296]
	ldr	r12, [sp, #172]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #236]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #140]
	vdup.32	q8, r4
	add	r5, sp, #144
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #1068]
	vdup.32	q8, r2
	add	r3, sp, #1040
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #1020]
	vdup.32	q9, r1
	add	r3, sp, #992
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #972]
	vdup.32	q8, r2
	add	r3, sp, #944
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #924]
	vdup.32	q9, r1
	add	r3, sp, #896
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #876]
	vdup.32	q8, r2
	add	r3, sp, #848
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #828]
	vdup.32	q9, r1
	add	r3, sp, #800
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #2
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #780]
	vdup.32	q8, r1
	add	r3, sp, #752
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #732]
	vdup.32	q9, r1
	add	r3, sp, #704
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #104]
	add	r2, r1, #2
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	ldrb	r1, [r1, #2]
	str	r1, [sp, #684]
	vdup.32	q8, r1
	add	r3, sp, #656
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #636]
	vdup.32	q9, r1
	add	r3, sp, #608
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #236]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	sub	r2, r1, #2
	str	r2, [sp, #104]
	ldr	r2, [sp, #100]
	sub	r3, r1, #1
	str	r3, [sp, #104]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #588]
	vdup.32	q8, r1
	add	r3, sp, #560
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #540]
	vdup.32	q9, r1
	add	r3, sp, #512
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	add	r3, r2, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #492]
	vdup.32	q8, r2
	add	r3, sp, #464
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #444]
	vdup.32	q9, r1
	add	r3, sp, #416
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #108]
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #104]
	ldrb	r2, [r2]
	str	r2, [sp, #396]
	vdup.32	q8, r2
	add	r3, sp, #368
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	r3, [sp, #108]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #348]
	vdup.32	q9, r1
	add	r1, sp, #320
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, r3, r2
	str	r0, [sp, #108]
	ldr	r0, [sp, #108]
	ldr	r1, [sp, #268]
	cmp	r0, r1
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bgt	.LBB7_7
@ BB#6:                                 @   in Loop: Header=BB7_4 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #268]
	vdup.32	q8, r1
	add	r2, sp, #272
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #108]
	sub	r1, r1, r2
	ldr	r2, [sp, #292]
	ldr	r3, [sp, #172]
	vdup.32	q8, r3
	add	r12, sp, #176
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #236]
	vdup.32	q8, r12
	add	lr, sp, #240
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #140]
	vdup.32	q8, lr
	add	r4, sp, #144
	vst1.64	{d16, d17}, [r4:128]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
.LBB7_7:                                @   in Loop: Header=BB7_4 Depth=2
	b	.LBB7_8
.LBB7_8:                                @   in Loop: Header=BB7_4 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #140]
	vdup.32	q8, r1
	add	r2, sp, #144
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
	str	r1, [sp, #1132]
	cmp	r3, r0
	str	r1, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	str	r2, [sp, #12]           @ 4-byte Spill
	beq	.LBB7_13
@ BB#9:                                 @   in Loop: Header=BB7_4 Depth=2
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_11
@ BB#10:                                @   in Loop: Header=BB7_4 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #1132]
	b	.LBB7_12
.LBB7_11:                               @   in Loop: Header=BB7_4 Depth=2
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #1132]
.LBB7_12:                               @   in Loop: Header=BB7_4 Depth=2
	b	.LBB7_13
.LBB7_13:                               @   in Loop: Header=BB7_4 Depth=2
	ldr	r0, [sp, #1132]
	str	r0, [sp, #140]
	b	.LBB7_4
.LBB7_14:                               @   in Loop: Header=BB7_2 Depth=1
	b	.LBB7_15
.LBB7_15:                               @   in Loop: Header=BB7_2 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #172]
	vdup.32	q8, r1
	add	r2, sp, #176
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
	str	r1, [sp, #1100]
	cmp	r3, r0
	str	r1, [sp, #8]            @ 4-byte Spill
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	beq	.LBB7_20
@ BB#16:                                @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	ldr	r1, [sp]                @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB7_18
@ BB#17:                                @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #1100]
	b	.LBB7_19
.LBB7_18:                               @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [sp]                @ 4-byte Reload
	str	r0, [sp, #1100]
.LBB7_19:                               @   in Loop: Header=BB7_2 Depth=1
	b	.LBB7_20
.LBB7_20:                               @   in Loop: Header=BB7_2 Depth=1
	ldr	r0, [sp, #1100]
	str	r0, [sp, #172]
	b	.LBB7_2
.LBB7_21:
	ldr	r0, [sp, #300]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
@ BB#22:
.Lfunc_end7:
	.size	susan_principle_small, .Lfunc_end7-susan_principle_small
	.cantunwind
	.fnend

	.globl	median
	.p2align	2
	.type	median,%function
	.code	32                      @ @median
median:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #360
	bfc	sp, #0, #4
	movw	r12, #0
	str	r0, [sp, #296]
	str	r1, [sp, #268]
	str	r2, [sp, #236]
	str	r3, [sp, #204]
	ldr	r0, [sp, #296]
	ldr	r1, [sp, #268]
	vdup.32	q8, r1
	add	r2, sp, #272
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	ldr	r3, [sp, #204]
	vdup.32	q8, r3
	add	lr, sp, #208
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #236]
	mla	r1, r1, r3, r4
	add	r0, r0, r1
	vdup.32	q8, r4
	add	r1, sp, #240
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #-1]
	str	r0, [sp, #172]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	sub	r3, r3, #1
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	mla	r3, r3, r4, r5
	ldrb	r0, [r0, r3]
	str	r0, [sp, #176]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	sub	r3, r3, #1
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	mla	r3, r3, r4, r5
	add	r0, r0, r3
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #1]
	str	r0, [sp, #180]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	mla	r3, r3, r4, r5
	add	r0, r0, r3
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #-1]
	str	r0, [sp, #184]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	mla	r3, r3, r4, r5
	add	r0, r0, r3
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #1]
	str	r0, [sp, #188]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r3, r3, #1
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	mla	r3, r3, r4, r5
	add	r0, r0, r3
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #-1]
	str	r0, [sp, #192]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r3, r3, #1
	ldr	r4, [sp, #204]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	ldr	r5, [sp, #236]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r1:128]
	mla	r3, r3, r4, r5
	ldrb	r0, [r0, r3]
	str	r0, [sp, #196]
	ldr	r0, [sp, #296]
	ldr	r3, [sp, #268]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r2, r3, #1
	ldr	r3, [sp, #204]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #236]
	mla	r2, r2, r3, lr
	add	r0, r0, r2
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r1:128]
	ldrb	r0, [r0, #1]
	str	r0, [sp, #200]
	vmov.i32	q8, #0x0
	add	r0, sp, #144
	vst1.64	{d16, d17}, [r0]
	str	r12, [sp, #140]
.LBB8_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB8_3 Depth 2
	ldr	r0, [sp, #140]
	cmp	r0, #7
	bge	.LBB8_20
@ BB#2:                                 @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #108]
.LBB8_3:                                @   Parent Loop BB8_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #7
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	sub	r0, r0, r2
	cmp	r1, r0
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB8_13
@ BB#4:                                 @   in Loop: Header=BB8_3 Depth=2
	add	r0, sp, #172
	movw	r1, #2
	ldr	r2, [sp, #108]
	add	r3, sp, #172
	ldr	r12, [r3, r2, lsl #2]
	vdup.32	q8, r2
	add	lr, sp, #112
	vst1.64	{d16, d17}, [lr:128]
	add	r2, r2, #1
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	cmp	r12, r2
	str	r0, [sp, #44]           @ 4-byte Spill
	str	r1, [sp, #40]           @ 4-byte Spill
	ble	.LBB8_6
@ BB#5:                                 @   in Loop: Header=BB8_3 Depth=2
	add	r0, sp, #172
	movw	r1, #2
	ldr	r2, [sp, #108]
	add	r3, sp, #172
	ldr	r2, [r3, r2, lsl #2]
	str	r2, [sp, #76]
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r12, sp, #112
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2, #4]
	ldr	lr, [sp, #108]
	str	r2, [r3, lr, lsl #2]
	ldr	r2, [sp, #76]
	ldr	lr, [sp, #108]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	add	r12, lr, #1
	add	r3, r3, r12, lsl #2
	str	r2, [r3]
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r1, [sp, #32]           @ 4-byte Spill
.LBB8_6:                                @   in Loop: Header=BB8_3 Depth=2
	b	.LBB8_7
.LBB8_7:                                @   in Loop: Header=BB8_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #108]
	vdup.32	q8, r1
	add	r2, sp, #112
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
	str	r1, [sp, #332]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB8_12
@ BB#8:                                 @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_10
@ BB#9:                                 @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #332]
	b	.LBB8_11
.LBB8_10:                               @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #332]
.LBB8_11:                               @   in Loop: Header=BB8_3 Depth=2
	b	.LBB8_12
.LBB8_12:                               @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #332]
	str	r0, [sp, #108]
	b	.LBB8_3
.LBB8_13:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_14
.LBB8_14:                               @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #140]
	vdup.32	q8, r1
	add	r2, sp, #144
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
	str	r1, [sp, #300]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB8_19
@ BB#15:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB8_17
@ BB#16:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #300]
	b	.LBB8_18
.LBB8_17:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #300]
.LBB8_18:                               @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_19
.LBB8_19:                               @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #300]
	str	r0, [sp, #140]
	b	.LBB8_1
.LBB8_20:
	movw	r1, #2
	ldr	r0, [sp, #184]
	ldr	r2, [sp, #188]
	add	r0, r0, r2
	bl	__divsi3
	and	r0, r0, #255
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end8:
	.size	median, .Lfunc_end8-median
	.cantunwind
	.fnend

	.globl	enlarge
	.p2align	2
	.type	enlarge,%function
	.code	32                      @ @enlarge
enlarge:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #368
	bfc	sp, #0, #4
	ldr	r12, [r11, #8]
	movw	lr, #0
	str	r0, [sp, #216]
	str	r1, [sp, #212]
	str	r2, [sp, #208]
	str	r3, [sp, #204]
	str	r12, [sp, #172]
	vmov.i32	q8, #0x0
	add	r0, sp, #144
	vst1.64	{d16, d17}, [r0]
	str	lr, [sp, #140]
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #204]
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB9_4
@ BB#2:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #140]
	vdup.32	q8, r2
	add	r3, sp, #144
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #172]
	vdup.32	q8, r3
	add	r12, sp, #176
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	ldr	r12, [sp, #172]
	lsl	r12, r12, #1
	add	r3, r3, r12
	mul	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #172]
	add	r1, r1, r2
	ldr	r2, [sp, #216]
	ldr	r2, [r2]
	ldr	r3, [sp, #140]
	ldr	r12, [sp, #208]
	ldr	r12, [r12]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	str	r0, [sp, #104]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
@ BB#3:                                 @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #140]
	vdup.32	q8, r0
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #140]
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB9_1
.LBB9_4:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #140]
.LBB9_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #172]
	cmp	r0, r1
	bge	.LBB9_8
@ BB#6:                                 @   in Loop: Header=BB9_5 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #172]
	vdup.32	q8, r2
	add	r3, sp, #176
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #1
	ldr	r3, [sp, #140]
	sub	r2, r2, r3
	ldr	r12, [sp, #208]
	ldr	r12, [r12]
	ldr	lr, [sp, #172]
	add	r4, r12, lr, lsl #1
	mla	r1, r2, r4, r1
	add	r1, r1, lr
	ldr	r2, [sp, #216]
	ldr	r2, [r2]
	mla	r2, r3, r12, r2
	str	r0, [sp, #76]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r12
	bl	memcpy
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #204]
	ldr	r2, [r2]
	ldr	r3, [sp, #172]
	add	r2, r2, r3
	ldr	r12, [sp, #140]
	add	r2, r2, r12
	ldr	r12, [sp, #208]
	ldr	r12, [r12]
	lsl	r3, r3, #1
	add	r3, r12, r3
	mul	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #172]
	add	r1, r1, r2
	ldr	r2, [sp, #216]
	ldr	r2, [r2]
	ldr	r3, [sp, #204]
	ldr	r3, [r3]
	ldr	r12, [sp, #140]
	sub	r3, r3, r12
	sub	r3, r3, #1
	ldr	r12, [sp, #208]
	ldr	r12, [r12]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
@ BB#7:                                 @   in Loop: Header=BB9_5 Depth=1
	ldr	r0, [sp, #140]
	add	r1, sp, #144
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #140]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB9_5
.LBB9_8:
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #144
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #140]
.LBB9_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB9_11 Depth 2
	ldr	r0, [sp, #140]
	ldr	r1, [sp, #172]
	cmp	r0, r1
	bge	.LBB9_26
@ BB#10:                                @   in Loop: Header=BB9_9 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #108]
.LBB9_11:                               @   Parent Loop BB9_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #1
	ldr	r1, [sp, #108]
	ldr	r2, [sp, #204]
	ldr	r2, [r2]
	ldr	r3, [sp, #172]
	lsl	r3, r3, #1
	add	r2, r2, r3
	cmp	r1, r2
	str	r0, [sp, #44]           @ 4-byte Spill
	bge	.LBB9_19
@ BB#12:                                @   in Loop: Header=BB9_11 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #108]
	vdup.32	q8, r2
	add	r3, sp, #112
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	ldr	r12, [sp, #172]
	add	r3, r3, r12, lsl #1
	mla	r2, r2, r3, r12
	ldr	lr, [sp, #140]
	add	r2, r2, lr
	ldrb	r1, [r1, r2]
	ldr	r2, [sp, #212]
	ldr	r4, [sp, #108]
	mla	r3, r4, r3, r12
	sub	r3, r3, #1
	sub	r3, r3, lr
	strb	r1, [r2, r3]
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #108]
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	ldr	r12, [sp, #172]
	lsl	lr, r12, #1
	add	r4, r3, r12, lsl #1
	mla	r4, r2, r4, r3
	add	r12, r4, r12
	sub	r12, r12, #1
	ldr	r4, [sp, #140]
	sub	r12, r12, r4
	ldrb	r12, [r1, r12]
	add	r3, r3, lr
	mul	r2, r2, r3
	ldr	r3, [sp, #208]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [sp, #172]
	add	r2, r2, r3
	ldr	r3, [sp, #140]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r12, [r1]
	str	r0, [sp, #40]           @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB9_11 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #108]
	vdup.32	q8, r1
	add	r2, sp, #112
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
	str	r1, [sp, #348]
	cmp	r3, r0
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r3, [sp, #32]           @ 4-byte Spill
	str	r2, [sp, #28]           @ 4-byte Spill
	beq	.LBB9_18
@ BB#14:                                @   in Loop: Header=BB9_11 Depth=2
	ldr	r0, [sp, #32]           @ 4-byte Reload
	ldr	r1, [sp, #28]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB9_16
@ BB#15:                                @   in Loop: Header=BB9_11 Depth=2
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [sp, #348]
	b	.LBB9_17
.LBB9_16:                               @   in Loop: Header=BB9_11 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #348]
.LBB9_17:                               @   in Loop: Header=BB9_11 Depth=2
	b	.LBB9_18
.LBB9_18:                               @   in Loop: Header=BB9_11 Depth=2
	ldr	r0, [sp, #348]
	str	r0, [sp, #108]
	b	.LBB9_11
.LBB9_19:                               @   in Loop: Header=BB9_9 Depth=1
	b	.LBB9_20
.LBB9_20:                               @   in Loop: Header=BB9_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #140]
	add	r2, sp, #144
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
	str	r1, [sp, #316]
	cmp	r3, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB9_25
@ BB#21:                                @   in Loop: Header=BB9_9 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB9_23
@ BB#22:                                @   in Loop: Header=BB9_9 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #316]
	b	.LBB9_24
.LBB9_23:                               @   in Loop: Header=BB9_9 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #316]
.LBB9_24:                               @   in Loop: Header=BB9_9 Depth=1
	b	.LBB9_25
.LBB9_25:                               @   in Loop: Header=BB9_9 Depth=1
	ldr	r0, [sp, #316]
	str	r0, [sp, #140]
	b	.LBB9_9
.LBB9_26:
	movw	r0, #1
	ldr	r1, [sp, #172]
	vdup.32	q8, r1
	add	r2, sp, #176
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #208]
	ldr	r3, [r2]
	add	r1, r3, r1, lsl #1
	str	r1, [r2]
	ldr	r1, [sp, #172]
	lsl	r1, r1, #1
	ldr	r2, [sp, #204]
	ldr	r3, [r2]
	add	r1, r3, r1
	str	r1, [r2]
	ldr	r1, [sp, #212]
	ldr	r2, [sp, #216]
	str	r1, [r2]
	ldr	r1, [sp, #220]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cantunwind
	.fnend

	.globl	susan_smoothing
	.p2align	4
	.type	susan_smoothing,%function
	.code	32                      @ @susan_smoothing
susan_smoothing:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #440
	sub	sp, sp, #1024
	bfc	sp, #0, #4
	vmov	d16, r2, r3
	ldr	r2, [r11, #16]
	ldr	r3, [r11, #12]
	ldr	r12, [r11, #8]
	vcvt.f32.f64	s0, d16
	str	r0, [sp, #988]
	str	r1, [sp, #984]
	vstr	s0, [sp, #956]
	str	r12, [sp, #924]
	str	r3, [sp, #892]
	str	r2, [sp, #888]
	ldr	r0, [sp, #984]
	str	r0, [sp, #488]
	ldr	r0, [sp, #988]
	cmp	r0, #0
	bne	.LBB10_2
@ BB#1:
	vldr	s0, [sp, #956]
	vcvt.f64.f32	d16, s0
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	lr, sp, #1024
	vstr	d16, [lr, #248]
	add	r0, sp, #1248
	vst1.32	{d18, d19}, [r0]
	vmov.f64	d17, #1.500000e+00
	vmul.f64	d16, d16, d17
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	mov	r1, r0
	vcvt.s32.f64	s0, d16
	add	lr, sp, #1024
	vstr	s0, [lr, #204]
	vdup.32	q9, r0
	add	r0, sp, #1200
	vst1.32	{d18, d19}, [r0]
	vmov.i32	q10, #0x1
	vadd.i32	q9, q9, q10
	vorr	q10, q9, q9
	add	r0, sp, #768
	vst1.64	{d18, d19}, [r0]
	add	r0, r1, #1
	str	r0, [sp, #764]
	add	lr, sp, #432
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	b	.LBB10_3
.LBB10_2:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #764]
.LBB10_3:
	vmov.f32	s0, #1.500000e+01
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #464
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #460]
	vldr	s2, [sp, #956]
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB10_6
@ BB#4:
	ldr	r0, [sp, #460]
	cmp	r0, #0
	bne	.LBB10_6
@ BB#5:
	movw	r0, :lower16:.L.str.25
	movt	r0, :upper16:.L.str.25
	vldr	s0, [sp, #956]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	bl	printf
	movw	r2, :lower16:.L.str.26
	movt	r2, :upper16:.L.str.26
	str	r0, [sp, #428]          @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r2, :lower16:.L.str.27
	movt	r2, :upper16:.L.str.27
	str	r0, [sp, #424]          @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r2, #0
	str	r0, [sp, #420]          @ 4-byte Spill
	mov	r0, r2
	bl	exit
.LBB10_6:
	movw	r0, #1
	ldr	r1, [sp, #764]
	lsl	r1, r1, #1
	add	r1, r1, #1
	ldr	r2, [sp, #924]
	cmp	r1, r2
	str	r0, [sp, #416]          @ 4-byte Spill
	bgt	.LBB10_8
@ BB#7:
	movw	r0, #1
	ldr	r1, [sp, #764]
	lsl	r1, r1, #1
	add	r1, r1, #1
	ldr	r2, [sp, #892]
	cmp	r1, r2
	str	r0, [sp, #412]          @ 4-byte Spill
	ble	.LBB10_9
.LBB10_8:
	movw	r0, :lower16:.L.str.28
	movt	r0, :upper16:.L.str.28
	ldr	r1, [sp, #764]
	ldr	r2, [sp, #924]
	ldr	r3, [sp, #892]
	bl	printf
	movw	r1, #0
	str	r0, [sp, #408]          @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB10_9:
	movw	r0, #1
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	add	r2, sp, #928
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #764]
	add	r1, r1, r2, lsl #1
	ldr	r2, [sp, #892]
	vdup.32	q8, r2
	add	r3, sp, #896
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	lsl	r3, r3, #1
	add	r2, r2, r3
	mul	r1, r1, r2
	str	r0, [sp, #404]          @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	add	r1, sp, #984
	add	r2, sp, #924
	add	r3, sp, #892
	str	r0, [sp, #484]
	ldr	r0, [sp, #484]
	ldr	lr, [sp, #764]
	str	r0, [sp, #400]          @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #400]          @ 4-byte Reload
	str	lr, [sp]
	bl	enlarge
	ldr	r1, [sp, #988]
	cmp	r1, #0
	str	r0, [sp, #396]          @ 4-byte Spill
	bne	.LBB10_55
@ BB#10:
	movw	r0, #3
	ldr	r1, [sp, #764]
	add	r2, sp, #768
	vld1.64	{d16, d17}, [r2:128]
	vshl.i32	q8, q8, #1
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	add	r2, sp, #832
	vst1.64	{d16, d17}, [r2]
	mov	r3, #1
	orr	r1, r3, r1, lsl #1
	str	r1, [sp, #828]
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	add	r3, sp, #928
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #828]
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q8, q9
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r2, r12
	add	r12, r12, lr
	sub	r1, r1, r3
	mul	r0, r1, r0
	str	r1, [sp, #1436]
	cmp	r12, r0
	str	r1, [sp, #392]          @ 4-byte Spill
	str	r2, [sp, #388]          @ 4-byte Spill
	str	r12, [sp, #384]         @ 4-byte Spill
	beq	.LBB10_15
@ BB#11:
	ldr	r0, [sp, #384]          @ 4-byte Reload
	ldr	r1, [sp, #388]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_13
@ BB#12:
	ldr	r0, [sp, #392]          @ 4-byte Reload
	str	r0, [sp, #1436]
	b	.LBB10_14
.LBB10_13:
	ldr	r0, [sp, #388]          @ 4-byte Reload
	str	r0, [sp, #1436]
.LBB10_14:
	b	.LBB10_15
.LBB10_15:
	movw	r0, #0
	ldr	r1, [sp, #1436]
	str	r1, [sp, #796]
	ldr	r1, [sp, #828]
	mul	r1, r1, r1
	str	r0, [sp, #380]          @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	str	r0, [sp, #500]
	str	r0, [sp, #496]
	vldr	s0, [sp, #956]
                                        @ implicit-def: %D16
	vmov.f64	d1, d16
	vmov.f32	s2, s0
	vdup.32	q9, d1[0]
	add	r0, sp, #960
	vst1.64	{d18, d19}, [r0:128]
	vldr	s4, [sp, #956]
                                        @ implicit-def: %D16
	vmov.f64	d1, d16
	vmov.f32	s2, s4
	vdup.32	q9, d1[0]
	vst1.64	{d18, d19}, [r0:128]
	vmul.f32	q9, q9, d1[0]
	vneg.f32	q9, q9
	add	r0, sp, #864
	vst1.64	{d18, d19}, [r0]
	vnmul.f32	s0, s0, s4
	vstr	s0, [sp, #860]
	ldr	r0, [sp, #764]
	add	r1, sp, #768
	vld1.64	{d18, d19}, [r1:128]
	vneg.s32	q9, q9
	vorr	q10, q9, q9
	add	r1, sp, #736
	vst1.64	{d18, d19}, [r1]
	ldr	r1, [sp, #380]          @ 4-byte Reload
	sub	r0, r1, r0
	str	r0, [sp, #732]
	add	lr, sp, #352
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
.LBB10_16:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_18 Depth 2
	ldr	r0, [sp, #732]
	ldr	r1, [sp, #764]
	cmp	r0, r1
	bgt	.LBB10_23
@ BB#17:                                @   in Loop: Header=BB10_16 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #764]
	add	r2, sp, #768
	vld1.64	{d16, d17}, [r2:128]
	vneg.s32	q8, q8
	vorr	q9, q8, q8
	add	r2, sp, #704
	vst1.64	{d16, d17}, [r2]
	sub	r0, r0, r1
	str	r0, [sp, #700]
	add	lr, sp, #336
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB10_18:                              @   Parent Loop BB10_16 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #700]
	ldr	r1, [sp, #764]
	cmp	r0, r1
	bgt	.LBB10_21
@ BB#19:                                @   in Loop: Header=BB10_18 Depth=2
	vldr	d16, .LCPI10_2
	ldr	r0, [sp, #732]
	ldr	r1, [sp, #700]
	mul	r1, r1, r1
	mla	r0, r0, r0, r1
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vldr	s2, [sp, #860]
	add	r4, sp, #1024
	vstr	s0, [r4, #156]
	vdup.32	q9, r0
	vcvt.f32.s32	q9, q9
	add	r0, sp, #1152
	vst1.32	{d18, d19}, [r0]
	vdiv.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov	r0, r1, d17
	vstr	d16, [sp, #328]         @ 8-byte Spill
	bl	exp
	vmov	d16, r0, r1
	vmov.f64	d18, d16
	vmov.f64	d19, d16
	add	r2, sp, #1024
	vstr	d16, [r2, #8]
	vorr	q10, q9, q9
	add	r0, sp, #1008
	vst1.32	{d18, d19}, [r0]
	vldr	d17, [sp, #328]         @ 8-byte Reload
	vmul.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [sp, #668]
	ldr	r0, [sp, #668]
	ldr	r1, [sp, #496]
	add	lr, r1, #1
	str	lr, [sp, #496]
	strb	r0, [r1]
	add	lr, sp, #304
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
@ BB#20:                                @   in Loop: Header=BB10_18 Depth=2
	ldr	r0, [sp, #700]
	add	r1, sp, #704
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #700]
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB10_18
.LBB10_21:                              @   in Loop: Header=BB10_16 Depth=1
	b	.LBB10_22
.LBB10_22:                              @   in Loop: Header=BB10_16 Depth=1
	ldr	r0, [sp, #732]
	add	r1, sp, #736
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #732]
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB10_16
.LBB10_23:
	ldr	r0, [sp, #764]
	str	r0, [sp, #732]
.LBB10_24:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_26 Depth 2
                                        @       Child Loop BB10_28 Depth 3
                                        @         Child Loop BB10_30 Depth 4
	ldr	r0, [sp, #732]
	ldr	r1, [sp, #892]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #896
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #764]
	sub	r1, r1, r2
	cmp	r0, r1
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB10_54
@ BB#25:                                @   in Loop: Header=BB10_24 Depth=1
	ldr	r0, [sp, #764]
	str	r0, [sp, #700]
.LBB10_26:                              @   Parent Loop BB10_24 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB10_28 Depth 3
                                        @         Child Loop BB10_30 Depth 4
	ldr	r0, [sp, #700]
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #928
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #764]
	sub	r1, r1, r2
	cmp	r0, r1
	add	lr, sp, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB10_52
@ BB#27:                                @   in Loop: Header=BB10_26 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #608
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #604]
	add	r2, sp, #464
	vst1.64	{d16, d17}, [r2]
	str	r1, [sp, #460]
	ldr	r1, [sp, #500]
	str	r1, [sp, #496]
	ldr	r1, [sp, #984]
	ldr	r2, [sp, #732]
	ldr	r3, [sp, #764]
	sub	r2, r2, r3
	ldr	r3, [sp, #924]
	vdup.32	q8, r3
	add	r12, sp, #928
	vst1.64	{d16, d17}, [r12:128]
	mla	r1, r2, r3, r1
	ldr	r2, [sp, #700]
	add	r1, r1, r2
	ldr	r2, [sp, #764]
	sub	r1, r1, r2
	str	r1, [sp, #504]
	ldr	r1, [sp, #984]
	ldr	r2, [sp, #732]
	ldr	r3, [sp, #924]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #700]
	mla	r2, r2, r3, r12
	ldrb	r1, [r1, r2]
	str	r1, [sp, #508]
	ldr	r2, [sp, #888]
	add	r1, r2, r1
	str	r1, [sp, #492]
	ldr	r1, [sp, #764]
	add	r2, sp, #768
	vld1.64	{d16, d17}, [r2:128]
	vneg.s32	q8, q8
	vorr	q9, q8, q8
	add	r2, sp, #640
	vst1.64	{d16, d17}, [r2]
	sub	r0, r0, r1
	str	r0, [sp, #636]
	add	lr, sp, #224
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB10_28:                              @   Parent Loop BB10_24 Depth=1
                                        @     Parent Loop BB10_26 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB10_30 Depth 4
	ldr	r0, [sp, #636]
	ldr	r1, [sp, #764]
	cmp	r0, r1
	bgt	.LBB10_47
@ BB#29:                                @   in Loop: Header=BB10_28 Depth=3
	movw	r0, #0
	ldr	r1, [sp, #764]
	add	r2, sp, #768
	vld1.64	{d16, d17}, [r2:128]
	vneg.s32	q8, q8
	vorr	q9, q8, q8
	add	r2, sp, #672
	vst1.64	{d16, d17}, [r2]
	sub	r0, r0, r1
	str	r0, [sp, #668]
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB10_30:                              @   Parent Loop BB10_24 Depth=1
                                        @     Parent Loop BB10_26 Depth=2
                                        @       Parent Loop BB10_28 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r0, [sp, #668]
	ldr	r1, [sp, #764]
	cmp	r0, r1
	bgt	.LBB10_40
@ BB#31:                                @   in Loop: Header=BB10_30 Depth=4
	ldr	r0, [sp, #504]
	add	r1, r0, #1
	str	r1, [sp, #504]
	ldrb	r0, [r0]
	str	r0, [sp, #572]
	ldr	r0, [sp, #496]
	add	r1, r0, #1
	str	r1, [sp, #496]
	ldrb	r0, [r0]
	ldr	r1, [sp, #492]
	ldr	r2, [sp, #572]
	vdup.32	q8, r2
	add	r3, sp, #576
	vst1.64	{d16, d17}, [r3:128]
	ldrb	r1, [r1, -r2]
	str	r0, [sp, #1132]
	vdup.32	q8, r0
	add	r2, sp, #1104
	vst1.32	{d16, d17}, [r2]
	str	r1, [sp, #1084]
	vdup.32	q9, r1
	add	r2, sp, #1056
	vst1.32	{d18, d19}, [r2]
	vmul.i32	q8, q8, q9
	add	r2, sp, #544
	vst1.64	{d16, d17}, [r2]
	smulbb	r12, r0, r1
	str	r12, [sp, #540]
	ldr	r12, [sp, #604]
	vdup.32	q8, r12
	add	lr, sp, #608
	vst1.64	{d16, d17}, [lr:128]
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	smlabb	r0, r0, r1, r12
	str	r0, [sp, #604]
	ldr	r0, [sp, #540]
	ldr	r1, [sp, #572]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r3:128]
	vld1.64	{d18, d19}, [r2:128]
	mul	r0, r0, r1
	ldr	r1, [sp, #460]
	vdup.32	q10, r1
	add	r2, sp, #464
	vst1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vorr	q8, q10, q10
	vst1.64	{d20, d21}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #460]
	add	lr, sp, #192
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
@ BB#32:                                @   in Loop: Header=BB10_30 Depth=4
	movw	r0, #3
	ldr	r1, [sp, #668]
	add	r2, sp, #672
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
	str	r1, [sp, #1404]
	cmp	r3, r0
	str	r1, [sp, #188]          @ 4-byte Spill
	str	r3, [sp, #184]          @ 4-byte Spill
	str	r2, [sp, #180]          @ 4-byte Spill
	beq	.LBB10_37
@ BB#33:                                @   in Loop: Header=BB10_30 Depth=4
	ldr	r0, [sp, #184]          @ 4-byte Reload
	ldr	r1, [sp, #180]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_35
@ BB#34:                                @   in Loop: Header=BB10_30 Depth=4
	ldr	r0, [sp, #188]          @ 4-byte Reload
	str	r0, [sp, #1404]
	b	.LBB10_36
.LBB10_35:                              @   in Loop: Header=BB10_30 Depth=4
	ldr	r0, [sp, #180]          @ 4-byte Reload
	str	r0, [sp, #1404]
.LBB10_36:                              @   in Loop: Header=BB10_30 Depth=4
	b	.LBB10_37
.LBB10_37:                              @   in Loop: Header=BB10_30 Depth=4
	ldr	r0, [sp, #1404]
	str	r0, [sp, #668]
	b	.LBB10_30
	.p2align	3
@ BB#38:
.LCPI10_2:
	.long	0                       @ double 100
	.long	1079574528
	.p2align	4
@ BB#39:
.LCPI10_3:
	.long	10000                   @ 0x2710
	.long	10000                   @ 0x2710
	.long	10000                   @ 0x2710
	.long	10000                   @ 0x2710
.LBB10_40:                              @   in Loop: Header=BB10_28 Depth=3
	ldr	r0, [sp, #796]
	ldr	r1, [sp, #504]
	add	r0, r1, r0
	str	r0, [sp, #504]
@ BB#41:                                @   in Loop: Header=BB10_28 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #636]
	add	r2, sp, #640
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
	str	r1, [sp, #1372]
	cmp	r3, r0
	str	r1, [sp, #176]          @ 4-byte Spill
	str	r3, [sp, #172]          @ 4-byte Spill
	str	r2, [sp, #168]          @ 4-byte Spill
	beq	.LBB10_46
@ BB#42:                                @   in Loop: Header=BB10_28 Depth=3
	ldr	r0, [sp, #172]          @ 4-byte Reload
	ldr	r1, [sp, #168]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_44
@ BB#43:                                @   in Loop: Header=BB10_28 Depth=3
	ldr	r0, [sp, #176]          @ 4-byte Reload
	str	r0, [sp, #1372]
	b	.LBB10_45
.LBB10_44:                              @   in Loop: Header=BB10_28 Depth=3
	ldr	r0, [sp, #168]          @ 4-byte Reload
	str	r0, [sp, #1372]
.LBB10_45:                              @   in Loop: Header=BB10_28 Depth=3
	b	.LBB10_46
.LBB10_46:                              @   in Loop: Header=BB10_28 Depth=3
	ldr	r0, [sp, #1372]
	str	r0, [sp, #636]
	b	.LBB10_28
.LBB10_47:                              @   in Loop: Header=BB10_26 Depth=2
	movw	r0, #10000
	ldr	r1, [sp, #604]
	add	r2, sp, #608
	vld1.64	{d16, d17}, [r2:128]
	adr	r2, .LCPI10_3
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	add	r2, sp, #544
	vst1.64	{d16, d17}, [r2]
	sub	r0, r1, r0
	str	r0, [sp, #540]
	ldr	r0, [sp, #540]
	cmp	r0, #0
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bne	.LBB10_49
@ BB#48:                                @   in Loop: Header=BB10_26 Depth=2
	ldr	r0, [sp, #984]
	ldr	r1, [sp, #732]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #924]
	bl	median
	ldr	r1, [sp, #488]
	add	r2, r1, #1
	str	r2, [sp, #488]
	strb	r0, [r1]
	b	.LBB10_50
.LBB10_49:                              @   in Loop: Header=BB10_26 Depth=2
	movw	r0, #10000
	ldr	r1, [sp, #460]
	ldr	r2, [sp, #508]
	mov	r3, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #512
	vst1.64	{d16, d17}, [r2:128]
	mul	r0, r3, r0
	sub	r0, r1, r0
	ldr	r1, [sp, #540]
	add	r4, sp, #128
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	ldr	r1, [sp, #488]
	add	r2, r1, #1
	str	r2, [sp, #488]
	strb	r0, [r1]
.LBB10_50:                              @   in Loop: Header=BB10_26 Depth=2
	b	.LBB10_51
.LBB10_51:                              @   in Loop: Header=BB10_26 Depth=2
	ldr	r0, [sp, #700]
	add	r1, sp, #704
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #700]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB10_26
.LBB10_52:                              @   in Loop: Header=BB10_24 Depth=1
	b	.LBB10_53
.LBB10_53:                              @   in Loop: Header=BB10_24 Depth=1
	ldr	r0, [sp, #732]
	add	r1, sp, #736
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #732]
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB10_24
.LBB10_54:
	b	.LBB10_77
.LBB10_55:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #736
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #732]
.LBB10_56:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_58 Depth 2
	ldr	r0, [sp, #732]
	ldr	r1, [sp, #892]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #896
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB10_76
@ BB#57:                                @   in Loop: Header=BB10_56 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #704
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #700]
.LBB10_58:                              @   Parent Loop BB10_56 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #700]
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #928
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB10_69
@ BB#59:                                @   in Loop: Header=BB10_58 Depth=2
	vmov.i32	q8, #0x0
	add	r0, sp, #608
	vst1.64	{d16, d17}, [r0]
	mov	r1, #0
	str	r1, [sp, #604]
	add	r2, sp, #464
	vst1.64	{d16, d17}, [r2]
	str	r1, [sp, #460]
	ldr	r1, [sp, #984]
	ldr	r3, [sp, #732]
	sub	r3, r3, #1
	ldr	r12, [sp, #924]
	vdup.32	q8, r12
	add	lr, sp, #928
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r3, r12, r1
	ldr	r3, [sp, #700]
	add	r1, r1, r3
	sub	r1, r1, #1
	str	r1, [sp, #504]
	ldr	r1, [sp, #984]
	ldr	r3, [sp, #732]
	ldr	r12, [sp, #924]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #700]
	mla	r3, r3, r12, r4
	ldrb	r1, [r1, r3]
	str	r1, [sp, #508]
	ldr	r3, [sp, #888]
	add	r1, r3, r1
	str	r1, [sp, #492]
	ldr	r1, [sp, #504]
	add	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	add	r12, sp, #576
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	add	r4, sp, #544
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	add	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r3, [sp, #504]
	add	r1, r3, r1
	sub	r3, r1, #2
	str	r3, [sp, #504]
	sub	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	add	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r5, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r5
	str	r1, [sp, #460]
	ldr	r1, [sp, #924]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r3, [sp, #504]
	add	r1, r3, r1
	sub	r3, r1, #2
	str	r3, [sp, #504]
	sub	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	lr, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, lr
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	add	r3, r1, #1
	str	r3, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	lr, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, lr
	str	r1, [sp, #460]
	ldr	r1, [sp, #504]
	ldrb	r1, [r1]
	str	r1, [sp, #572]
	ldr	r3, [sp, #492]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r12:128]
	ldrb	r1, [r3, -r1]
	str	r1, [sp, #540]
	ldr	r3, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r4:128]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r3, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #540]
	ldr	r3, [sp, #572]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #460]
	vld1.64	{d20, d21}, [r2:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r2]
	mla	r1, r1, r3, r12
	str	r1, [sp, #460]
	ldr	r1, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	vmov.i32	q9, #0x64
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r4]
	sub	r0, r1, #100
	str	r0, [sp, #540]
	ldr	r0, [sp, #540]
	cmp	r0, #0
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bne	.LBB10_61
@ BB#60:                                @   in Loop: Header=BB10_58 Depth=2
	ldr	r0, [sp, #984]
	ldr	r1, [sp, #732]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #924]
	bl	median
	ldr	r1, [sp, #488]
	add	r2, r1, #1
	str	r2, [sp, #488]
	strb	r0, [r1]
	b	.LBB10_62
.LBB10_61:                              @   in Loop: Header=BB10_58 Depth=2
	movw	r0, #100
	ldr	r1, [sp, #460]
	ldr	r2, [sp, #508]
	mov	r3, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #512
	vst1.64	{d16, d17}, [r2:128]
	mul	r0, r3, r0
	sub	r0, r1, r0
	ldr	r1, [sp, #540]
	add	r4, sp, #32
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	ldr	r1, [sp, #488]
	add	r2, r1, #1
	str	r2, [sp, #488]
	strb	r0, [r1]
.LBB10_62:                              @   in Loop: Header=BB10_58 Depth=2
	b	.LBB10_63
.LBB10_63:                              @   in Loop: Header=BB10_58 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #700]
	add	r2, sp, #704
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
	str	r1, [sp, #1340]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB10_68
@ BB#64:                                @   in Loop: Header=BB10_58 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_66
@ BB#65:                                @   in Loop: Header=BB10_58 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #1340]
	b	.LBB10_67
.LBB10_66:                              @   in Loop: Header=BB10_58 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #1340]
.LBB10_67:                              @   in Loop: Header=BB10_58 Depth=2
	b	.LBB10_68
.LBB10_68:                              @   in Loop: Header=BB10_58 Depth=2
	ldr	r0, [sp, #1340]
	str	r0, [sp, #700]
	b	.LBB10_58
.LBB10_69:                              @   in Loop: Header=BB10_56 Depth=1
	b	.LBB10_70
.LBB10_70:                              @   in Loop: Header=BB10_56 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #732]
	add	r2, sp, #736
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
	str	r1, [sp, #1308]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB10_75
@ BB#71:                                @   in Loop: Header=BB10_56 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB10_73
@ BB#72:                                @   in Loop: Header=BB10_56 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #1308]
	b	.LBB10_74
.LBB10_73:                              @   in Loop: Header=BB10_56 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #1308]
.LBB10_74:                              @   in Loop: Header=BB10_56 Depth=1
	b	.LBB10_75
.LBB10_75:                              @   in Loop: Header=BB10_56 Depth=1
	ldr	r0, [sp, #1308]
	str	r0, [sp, #732]
	b	.LBB10_56
.LBB10_76:
	b	.LBB10_77
.LBB10_77:
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
@ BB#78:
.Lfunc_end10:
	.size	susan_smoothing, .Lfunc_end10-susan_smoothing
	.cantunwind
	.fnend

	.globl	edge_draw
	.p2align	2
	.type	edge_draw,%function
	.code	32                      @ @edge_draw
edge_draw:
	.fnstart
@ BB#0:
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #480
	bfc	sp, #0, #4
	ldr	r12, [r11, #8]
	str	r0, [sp, #232]
	str	r1, [sp, #228]
	str	r2, [sp, #204]
	str	r3, [sp, #172]
	str	r12, [sp, #140]
	ldr	r0, [sp, #140]
	cmp	r0, #0
	bne	.LBB11_8
@ BB#1:
	movw	r0, #0
	ldr	r1, [sp, #228]
	str	r1, [sp, #100]
	vmov.i32	q8, #0x0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #108]
.LBB11_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #108]
	ldr	r1, [sp, #204]
	mov	r2, r1
	vdup.32	q8, r1
	add	r1, sp, #208
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #172]
	mov	r3, r1
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r1, sp, #176
	vst1.64	{d16, d17}, [r1:128]
	mul	r1, r2, r3
	cmp	r0, r1
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB11_7
@ BB#3:                                 @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp, #100]
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB11_5
@ BB#4:                                 @   in Loop: Header=BB11_2 Depth=1
	movw	r0, #255
	ldr	r1, [sp, #232]
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #228]
	str	r2, [sp, #428]
	vdup.32	q8, r2
	add	r12, sp, #400
	vst1.32	{d16, d17}, [r12]
	str	r3, [sp, #380]
	vdup.32	q8, r3
	add	r12, sp, #352
	vst1.32	{d16, d17}, [r12]
	sub	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #204]
	vdup.32	q8, r2
	add	r3, sp, #208
	vst1.64	{d16, d17}, [r3:128]
	sub	r1, r1, r2
	sub	r2, r1, #1
	str	r2, [sp, #104]
	str	r1, [sp, #104]
	mov	r2, #255
	strb	r2, [r1, #-1]
	ldr	r1, [sp, #104]
	add	r12, r1, #1
	str	r12, [sp, #104]
	strb	r2, [r1]
	ldr	r1, [sp, #104]
	strb	r2, [r1]
	ldr	r1, [sp, #204]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #104]
	add	r1, r12, r1
	sub	r12, r1, #2
	str	r12, [sp, #104]
	sub	r12, r1, #1
	str	r12, [sp, #104]
	strb	r2, [r1, #-2]
	ldr	r1, [sp, #104]
	add	r12, r1, #1
	str	r12, [sp, #104]
	strb	r2, [r1, #1]
	ldr	r1, [sp, #204]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3:128]
	sub	r1, r1, #2
	ldr	r2, [sp, #104]
	add	r1, r2, r1
	str	r1, [sp, #104]
	ldr	r1, [sp, #104]
	add	r2, r1, #1
	str	r2, [sp, #104]
	strb	r0, [r1]
	ldr	r1, [sp, #104]
	add	r2, r1, #1
	str	r2, [sp, #104]
	strb	r0, [r1]
	ldr	r1, [sp, #104]
	strb	r0, [r1]
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB11_5:                               @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp, #100]
	add	r0, r0, #1
	str	r0, [sp, #100]
@ BB#6:                                 @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp, #108]
	vdup.32	q8, r0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #108]
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB11_2
.LBB11_7:
	b	.LBB11_8
.LBB11_8:
	movw	r0, #0
	ldr	r1, [sp, #228]
	str	r1, [sp, #100]
	vmov.i32	q8, #0x0
	add	r1, sp, #112
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #108]
.LBB11_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #108]
	ldr	r1, [sp, #204]
	mov	r2, r1
	vdup.32	q8, r1
	add	r1, sp, #208
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #172]
	mov	r3, r1
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r1, sp, #176
	vst1.64	{d16, d17}, [r1:128]
	mul	r1, r2, r3
	cmp	r0, r1
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB11_19
@ BB#10:                                @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #100]
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB11_12
@ BB#11:                                @   in Loop: Header=BB11_9 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #232]
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #228]
	str	r2, [sp, #332]
	vdup.32	q8, r2
	add	r12, sp, #304
	vst1.32	{d16, d17}, [r12]
	str	r3, [sp, #284]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r12, sp, #256
	vst1.32	{d16, d17}, [r12]
	sub	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #16
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB11_12:                              @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #100]
	add	r0, r0, #1
	str	r0, [sp, #100]
@ BB#13:                                @   in Loop: Header=BB11_9 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #108]
	add	r2, sp, #112
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
	str	r1, [sp, #460]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB11_18
@ BB#14:                                @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB11_16
@ BB#15:                                @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #460]
	b	.LBB11_17
.LBB11_16:                              @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #460]
.LBB11_17:                              @   in Loop: Header=BB11_9 Depth=1
	b	.LBB11_18
.LBB11_18:                              @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #460]
	str	r0, [sp, #108]
	b	.LBB11_9
.LBB11_19:
	ldr	r0, [sp, #236]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
.Lfunc_end11:
	.size	edge_draw, .Lfunc_end11-edge_draw
	.cantunwind
	.fnend

	.globl	susan_thin
	.p2align	3
	.type	susan_thin,%function
	.code	32                      @ @susan_thin
susan_thin:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #840
	sub	sp, sp, #3072
	bfc	sp, #0, #4
	add	r4, sp, #1024
	add	r12, r4, #1004
	movw	lr, #4
	str	r0, [sp, #1592]
	str	r1, [sp, #1588]
	str	r2, [sp, #1564]
	str	r3, [sp, #1532]
	vmov.i32	q8, #0x4
	add	r0, sp, #800
	vst1.64	{d16, d17}, [r0]
	str	lr, [sp, #796]
	str	r12, [sp, #756]         @ 4-byte Spill
.LBB12_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB12_3 Depth 2
                                        @       Child Loop BB12_38 Depth 3
                                        @         Child Loop BB12_40 Depth 4
	ldr	r0, [sp, #796]
	ldr	r1, [sp, #1532]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1536
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #4
	cmp	r0, r1
	add	lr, sp, #736
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_119
@ BB#2:                                 @   in Loop: Header=BB12_1 Depth=1
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #764]
.LBB12_3:                               @   Parent Loop BB12_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB12_38 Depth 3
                                        @         Child Loop BB12_40 Depth 4
	ldr	r0, [sp, #764]
	ldr	r1, [sp, #1564]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1568
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #4
	cmp	r0, r1
	add	lr, sp, #720
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_112
@ BB#4:                                 @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #704
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_105
@ BB#5:                                 @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #1592]
	ldr	r2, [sp, #796]
	vdup.32	q8, r2
	add	r3, sp, #800
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	add	lr, sp, #1568
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #764]
	vdup.32	q8, r4
	add	r5, sp, #768
	vst1.64	{d16, d17}, [r5:128]
	mla	r2, r2, r12, r4
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [sp, #1468]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r3, r1
	ldr	r2, [sp, #764]
	add	r3, r1, r2
	sub	r12, r3, #1
	str	r12, [sp, #760]
	ldrb	r3, [r3, #-1]
	mov	r12, #0
	cmp	r3, #8
	mov	r3, r12
	movwlt	r3, #1
	ldrb	r1, [r1, r2]
	cmp	r1, #8
	mov	r1, r12
	movwlt	r1, #1
	str	r3, [sp, #2508]
	vdup.32	q8, r3
	add	r2, sp, #2480
	vst1.32	{d16, d17}, [r2]
	str	r1, [sp, #2460]
	vdup.32	q9, r1
	add	r2, sp, #2432
	vst1.32	{d18, d19}, [r2]
	vadd.i32	q8, q8, q9
	add	r1, r3, r1
	ldr	r2, [sp, #760]
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	mov	r2, r12
	movwlt	r2, #1
	str	r2, [sp, #2412]
	vdup.32	q9, r2
	add	r3, sp, #2384
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	add	r1, r1, r2
	ldr	r2, [sp, #760]
	ldr	r3, [sp, #1564]
	ldrb	r2, [r2, r3]
	cmp	r2, #8
	mov	r2, r12
	movwlt	r2, #1
	str	r2, [sp, #2364]
	vdup.32	q9, r2
	add	r3, sp, #2336
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	add	r1, r1, r2
	ldr	r2, [sp, #760]
	ldr	r3, [sp, #1564]
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	mov	r2, r12
	movwlt	r2, #1
	str	r2, [sp, #2316]
	vdup.32	q9, r2
	add	r3, sp, #2288
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	add	r1, r1, r2
	ldr	r2, [sp, #760]
	ldr	r3, [sp, #1564]
	add	r2, r2, r3
	ldrb	r2, [r2, r3]
	cmp	r2, #8
	mov	r2, r12
	movwlt	r2, #1
	str	r2, [sp, #2268]
	vdup.32	q9, r2
	add	r3, sp, #2240
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	add	r1, r1, r2
	ldr	r2, [sp, #760]
	ldr	r3, [sp, #1564]
	add	r2, r2, r3
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	cmp	r2, #8
	mov	r2, r12
	movwlt	r2, #1
	str	r2, [sp, #2220]
	vdup.32	q9, r2
	add	r3, sp, #2192
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	add	r1, r1, r2
	ldr	r2, [sp, #760]
	ldr	r3, [sp, #1564]
	add	r2, r2, r3
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	movwlt	r12, #1
	str	r12, [sp, #2172]
	vdup.32	q9, r12
	add	r2, sp, #2144
	vst1.32	{d18, d19}, [r2]
	vadd.i32	q8, q8, q9
	add	r2, sp, #960
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r3, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r3, r2, r3
	add	r3, r3, lr
	add	r1, r1, r12
	mul	r0, r1, r0
	str	r1, [sp, #3884]
	cmp	r3, r0
	str	r1, [sp, #700]          @ 4-byte Spill
	str	r2, [sp, #696]          @ 4-byte Spill
	str	r3, [sp, #692]          @ 4-byte Spill
	beq	.LBB12_10
@ BB#6:                                 @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #692]          @ 4-byte Reload
	ldr	r1, [sp, #696]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_8
@ BB#7:                                 @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #700]          @ 4-byte Reload
	str	r0, [sp, #3884]
	b	.LBB12_9
.LBB12_8:                               @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #696]          @ 4-byte Reload
	str	r0, [sp, #3884]
.LBB12_9:                               @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_10
.LBB12_10:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #3884]
	str	r0, [sp, #956]
	ldr	r0, [sp, #956]
	cmp	r0, #0
	bne	.LBB12_12
@ BB#11:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #100
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	vdup.32	q8, r2
	add	r3, sp, #800
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r2, r3
	ldr	r3, [sp, #764]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r12, sp, #768
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #672
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB12_12:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #956]
	cmp	r0, #1
	bne	.LBB12_59
@ BB#13:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #6
	add	lr, sp, #656
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_59
@ BB#14:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1592]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #764]
	mla	r1, r1, r3, lr
	add	r0, r0, r1, lsl #2
	vdup.32	q8, lr
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #-4]
	str	r0, [sp, #1496]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	sub	r3, r3, #1
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	mla	r3, r3, lr, r4
	ldr	r0, [r0, r3, lsl #2]
	str	r0, [sp, #1500]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	sub	r3, r3, #1
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	mla	r3, r3, lr, r4
	add	r0, r0, r3, lsl #2
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #4]
	str	r0, [sp, #1504]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	mla	r3, r3, lr, r4
	add	r0, r0, r3, lsl #2
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #-4]
	str	r0, [sp, #1508]
	mov	r0, #0
	str	r0, [sp, #1512]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	mla	r3, r3, lr, r4
	add	r0, r0, r3, lsl #2
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #4]
	str	r0, [sp, #1516]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r3, r3, #1
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	mla	r3, r3, lr, r4
	add	r0, r0, r3, lsl #2
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #-4]
	str	r0, [sp, #1520]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r3, r3, #1
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	mla	r3, r3, lr, r4
	ldr	r0, [r0, r3, lsl #2]
	str	r0, [sp, #1524]
	ldr	r0, [sp, #1592]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	add	r3, r3, #1
	ldr	lr, [sp, #1564]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #764]
	mla	r3, r3, lr, r4
	add	r0, r0, r3, lsl #2
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r1:128]
	ldr	r0, [r0, #4]
	str	r0, [sp, #1528]
	ldr	r0, [sp, #1588]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	sub	r2, r3, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r2, r3
	ldr	r3, [sp, #764]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1:128]
	add	r1, r2, r3
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #640
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_16
@ BB#15:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1496]
	str	r1, [sp, #1500]
	str	r1, [sp, #1508]
	ldr	r1, [sp, #1504]
	lsl	r1, r1, #1
	str	r1, [sp, #1504]
	ldr	r1, [sp, #1520]
	lsl	r1, r1, #1
	str	r1, [sp, #1520]
	ldr	r1, [sp, #1516]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1516]
	ldr	r1, [sp, #1524]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1528]
	lsl	r1, r1, #2
	str	r1, [sp, #1528]
	str	r0, [sp, #636]          @ 4-byte Spill
	b	.LBB12_37
.LBB12_16:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #608
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_18
@ BB#17:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1500]
	str	r1, [sp, #1496]
	str	r1, [sp, #1504]
	ldr	r1, [sp, #1508]
	lsl	r1, r1, #1
	str	r1, [sp, #1508]
	ldr	r1, [sp, #1516]
	lsl	r1, r1, #1
	str	r1, [sp, #1516]
	ldr	r1, [sp, #1520]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1520]
	ldr	r1, [sp, #1528]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1524]
	lsl	r1, r1, #2
	str	r1, [sp, #1524]
	str	r0, [sp, #604]          @ 4-byte Spill
	b	.LBB12_36
.LBB12_18:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #576
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_20
@ BB#19:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1504]
	str	r1, [sp, #1500]
	str	r1, [sp, #1516]
	ldr	r1, [sp, #1496]
	lsl	r1, r1, #1
	str	r1, [sp, #1496]
	ldr	r1, [sp, #1528]
	lsl	r1, r1, #1
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1508]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1508]
	ldr	r1, [sp, #1524]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1520]
	lsl	r1, r1, #2
	str	r1, [sp, #1520]
	str	r0, [sp, #572]          @ 4-byte Spill
	b	.LBB12_35
.LBB12_20:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #544
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_22
@ BB#21:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1508]
	str	r1, [sp, #1496]
	str	r1, [sp, #1520]
	ldr	r1, [sp, #1500]
	lsl	r1, r1, #1
	str	r1, [sp, #1500]
	ldr	r1, [sp, #1524]
	lsl	r1, r1, #1
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1504]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1504]
	ldr	r1, [sp, #1528]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1516]
	lsl	r1, r1, #2
	str	r1, [sp, #1516]
	str	r0, [sp, #540]          @ 4-byte Spill
	b	.LBB12_34
.LBB12_22:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #512
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_24
@ BB#23:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1516]
	str	r1, [sp, #1504]
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1500]
	lsl	r1, r1, #1
	str	r1, [sp, #1500]
	ldr	r1, [sp, #1524]
	lsl	r1, r1, #1
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1496]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1496]
	ldr	r1, [sp, #1520]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1520]
	ldr	r1, [sp, #1508]
	lsl	r1, r1, #2
	str	r1, [sp, #1508]
	str	r0, [sp, #508]          @ 4-byte Spill
	b	.LBB12_33
.LBB12_24:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	add	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #480
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_26
@ BB#25:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1520]
	str	r1, [sp, #1508]
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1496]
	lsl	r1, r1, #1
	str	r1, [sp, #1496]
	ldr	r1, [sp, #1528]
	lsl	r1, r1, #1
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1500]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1500]
	ldr	r1, [sp, #1516]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1516]
	ldr	r1, [sp, #1504]
	lsl	r1, r1, #2
	str	r1, [sp, #1504]
	str	r0, [sp, #476]          @ 4-byte Spill
	b	.LBB12_32
.LBB12_26:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	add	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #448
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_28
@ BB#27:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1524]
	str	r1, [sp, #1520]
	str	r1, [sp, #1528]
	ldr	r1, [sp, #1508]
	lsl	r1, r1, #1
	str	r1, [sp, #1508]
	ldr	r1, [sp, #1516]
	lsl	r1, r1, #1
	str	r1, [sp, #1516]
	ldr	r1, [sp, #1496]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1496]
	ldr	r1, [sp, #1504]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1504]
	ldr	r1, [sp, #1500]
	lsl	r1, r1, #2
	str	r1, [sp, #1500]
	str	r0, [sp, #444]          @ 4-byte Spill
	b	.LBB12_31
.LBB12_28:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	add	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	add	lr, sp, #416
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_30
@ BB#29:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [sp, #1528]
	str	r1, [sp, #1516]
	str	r1, [sp, #1524]
	ldr	r1, [sp, #1520]
	lsl	r1, r1, #1
	str	r1, [sp, #1520]
	ldr	r1, [sp, #1504]
	lsl	r1, r1, #1
	str	r1, [sp, #1504]
	ldr	r1, [sp, #1500]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1500]
	ldr	r1, [sp, #1508]
	add	r1, r1, r1, lsl #1
	str	r1, [sp, #1508]
	ldr	r1, [sp, #1496]
	lsl	r1, r1, #2
	str	r1, [sp, #1496]
	str	r0, [sp, #412]          @ 4-byte Spill
.LBB12_30:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_31
.LBB12_31:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_32
.LBB12_32:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_33
.LBB12_33:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_34
.LBB12_34:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_35
.LBB12_35:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_36
.LBB12_36:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_37
.LBB12_37:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #992
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #988]
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #828]
.LBB12_38:                              @   Parent Loop BB12_1 Depth=1
                                        @     Parent Loop BB12_3 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB12_40 Depth 4
	ldr	r0, [sp, #828]
	cmp	r0, #3
	bge	.LBB12_47
@ BB#39:                                @   in Loop: Header=BB12_38 Depth=3
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #860]
.LBB12_40:                              @   Parent Loop BB12_1 Depth=1
                                        @     Parent Loop BB12_3 Depth=2
                                        @       Parent Loop BB12_38 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r0, [sp, #860]
	cmp	r0, #3
	bge	.LBB12_45
@ BB#41:                                @   in Loop: Header=BB12_40 Depth=4
	add	lr, sp, #1024
	add	r0, lr, #472
	movw	r1, #2
	ldr	r2, [sp, #828]
	vdup.32	q8, r2
	add	r3, sp, #832
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	add	r2, r2, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	add	r2, r2, r12
	ldr	r3, [sp, #860]
	vdup.32	q8, r3
	add	r12, sp, #864
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	add	lr, sp, #1024
	add	r3, lr, #472
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #988]
	cmp	r2, r3
	str	r0, [sp, #408]          @ 4-byte Spill
	str	r1, [sp, #404]          @ 4-byte Spill
	ble	.LBB12_43
@ BB#42:                                @   in Loop: Header=BB12_40 Depth=4
	add	lr, sp, #1024
	add	r0, lr, #472
	movw	r1, #2
	ldr	r2, [sp, #828]
	vdup.32	q8, r2
	add	r3, sp, #832
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	add	r2, r2, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	add	r2, r2, r12
	ldr	r3, [sp, #860]
	vdup.32	q8, r3
	add	r12, sp, #864
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	add	lr, sp, #1024
	add	r3, lr, #472
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [sp, #988]
	ldr	r2, [sp, #828]
	str	r2, [sp, #924]
	ldr	r2, [sp, #860]
	str	r2, [sp, #892]
	str	r0, [sp, #400]          @ 4-byte Spill
	str	r1, [sp, #396]          @ 4-byte Spill
.LBB12_43:                              @   in Loop: Header=BB12_40 Depth=4
	b	.LBB12_44
.LBB12_44:                              @   in Loop: Header=BB12_40 Depth=4
	ldr	r0, [sp, #860]
	vdup.32	q8, r0
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #860]
	add	lr, sp, #368
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB12_40
.LBB12_45:                              @   in Loop: Header=BB12_38 Depth=3
	b	.LBB12_46
.LBB12_46:                              @   in Loop: Header=BB12_38 Depth=3
	ldr	r0, [sp, #828]
	vdup.32	q8, r0
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #828]
	add	lr, sp, #352
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB12_38
.LBB12_47:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #988]
	cmp	r0, #0
	ble	.LBB12_58
@ BB#48:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	ldr	r2, [sp, #764]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #768
	vst1.64	{d16, d17}, [r3:128]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #4
	add	lr, sp, #336
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_50
@ BB#49:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	vdup.32	q8, r2
	add	r3, sp, #800
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #924]
	vdup.32	q8, r3
	add	r12, sp, #928
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	sub	r2, r2, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	vdup.32	q8, r12
	add	lr, sp, #768
	vst1.64	{d16, d17}, [lr:128]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #892]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r12, sp, #896
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #320
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB12_51
.LBB12_50:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #764]
	vdup.32	q8, lr
	add	r4, sp, #768
	vst1.64	{d16, d17}, [r4:128]
	mla	r1, r1, r3, lr
	ldrb	r0, [r0, r1]
	str	r0, [sp, #2124]
	vdup.32	q8, r0
	add	r1, sp, #2096
	vst1.32	{d16, d17}, [r1]
	add	r0, r0, #1
	ldr	r1, [sp, #1588]
	ldr	r3, [sp, #796]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #924]
	vdup.32	q8, r2
	add	lr, sp, #928
	vst1.64	{d16, d17}, [lr:128]
	add	r2, r3, r2
	sub	r2, r2, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r4:128]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #892]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r12, sp, #896
	vst1.64	{d16, d17}, [r12:128]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB12_51:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #924]
	vdup.32	q8, r0
	add	r1, sp, #928
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #924]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r1:128]
	add	r0, r0, r2
	ldr	r1, [sp, #892]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #896
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	cmp	r0, #3
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_57
@ BB#52:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #924]
	vdup.32	q8, r0
	add	r1, sp, #928
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vsub.i32	q8, q8, q9
	ldr	r1, [sp, #796]
	add	r0, r1, r0
	vdup.32	q9, r1
	add	r1, sp, #800
	vst1.64	{d18, d19}, [r1:128]
	vadd.i32	q8, q9, q8
	vst1.64	{d16, d17}, [r1]
	sub	r0, r0, #1
	str	r0, [sp, #796]
	ldr	r0, [sp, #892]
	vdup.32	q8, r0
	add	r1, sp, #896
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x2
	vsub.i32	q8, q8, q9
	sub	r0, r0, #2
	ldr	r1, [sp, #764]
	vdup.32	q9, r1
	add	r2, sp, #768
	vst1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #764]
	ldr	r0, [sp, #796]
	cmp	r0, #4
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_54
@ BB#53:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #800
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #796]
.LBB12_54:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #764]
	cmp	r0, #4
	bge	.LBB12_56
@ BB#55:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #764]
.LBB12_56:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_57
.LBB12_57:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_58
.LBB12_58:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_59
.LBB12_59:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #956]
	cmp	r0, #2
	bne	.LBB12_94
@ BB#60:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #764]
	mla	r1, r1, r2, r12
	add	r0, r0, r1
	ldrb	r0, [r0, #-1]
	mov	r1, #0
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1116]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	sub	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1084]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #-1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1052]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r2, r2, r12, r3
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	movwlt	r1, #1
	str	r1, [sp, #1020]
	ldr	r0, [sp, #1116]
	vdup.32	q8, r0
	add	r1, sp, #1120
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1084]
	vdup.32	q8, r1
	add	r2, sp, #1088
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1052]
	vdup.32	q8, r1
	add	r2, sp, #1056
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1020]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1024
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	cmp	r0, #2
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bne	.LBB12_84
@ BB#61:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1116]
	vdup.32	q8, r0
	add	r1, sp, #1120
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1020]
	vdup.32	q8, r1
	add	r2, sp, #1024
	vst1.64	{d16, d17}, [r2:128]
	orr	r0, r0, r1
	ldr	r1, [sp, #1084]
	vdup.32	q8, r1
	add	r2, sp, #1088
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1052]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #1056
	vst1.64	{d16, d17}, [r3:128]
	orr	r1, r1, r2
	and	r0, r0, r1
	cmp	r0, #0
	add	lr, sp, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB12_84
@ BB#62:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1116]
	cmp	r0, #0
	beq	.LBB12_67
@ BB#63:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1084]
	cmp	r0, #0
	beq	.LBB12_65
@ BB#64:                                @   in Loop: Header=BB12_3 Depth=2
	mvn	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #860]
	vmov.i8	q8, #0xff
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #828]
	b	.LBB12_66
.LBB12_65:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	vmov.i8	q8, #0xff
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1]
	mvn	r1, #0
	str	r1, [sp, #860]
	vmov.i32	q8, #0x0
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #828]
.LBB12_66:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_71
.LBB12_67:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1084]
	cmp	r0, #0
	beq	.LBB12_69
@ BB#68:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x1
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #860]
	vmov.i32	q8, #0x0
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #828]
	b	.LBB12_70
.LBB12_69:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x0
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #860]
	vmov.i32	q8, #0x1
	add	r1, sp, #832
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #828]
.LBB12_70:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_71
.LBB12_71:                              @   in Loop: Header=BB12_3 Depth=2
	vldr	d16, .LCPI12_1
	ldr	r0, [sp, #1592]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #828]
	add	r1, r1, r2
	ldr	r2, [sp, #1564]
	vdup.32	q9, r2
	add	r3, sp, #1568
	vst1.64	{d18, d19}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r1, r1, r2, r3
	ldr	r2, [sp, #860]
	add	r1, r1, r2
	ldr	r0, [r0, r1, lsl #2]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #1468]
	vmov	s2, r1
	vcvt.f32.s32	s2, s2
	ldr	r2, [sp, #756]          @ 4-byte Reload
	vstr	s0, [r2, #48]
	vdup.32	q9, r0
	vcvt.f32.s32	q9, q9
	add	r0, sp, #2048
	vst1.32	{d18, d19}, [r0]
	vstr	s2, [r2]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	vorr	q10, q9, q9
	add	r0, sp, #2000
	vst1.32	{d18, d19}, [r0]
	vdiv.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	add	lr, sp, #224
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	ble	.LBB12_82
@ BB#72:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #860]
	cmp	r0, #0
	bne	.LBB12_76
@ BB#73:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #828]
	add	r1, r1, r2, lsl #1
	ldr	r2, [sp, #1564]
	mov	r3, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #1568
	vst1.64	{d16, d17}, [r2:128]
	mul	r1, r1, r3
	ldr	r2, [sp, #764]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #7
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB12_76
@ BB#74:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #828]
	add	r1, r1, r2, lsl #1
	ldr	r2, [sp, #1564]
	mov	r3, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #1568
	vst1.64	{d16, d17}, [r2:128]
	mul	r1, r1, r3
	ldr	r2, [sp, #764]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #7
	add	lr, sp, #192
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB12_76
@ BB#75:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #828]
	add	r1, r1, r2, lsl #1
	ldr	r2, [sp, #1564]
	mov	r3, r2
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r2, sp, #1568
	vst1.64	{d16, d17}, [r2:128]
	mul	r1, r1, r3
	ldr	r2, [sp, #764]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #7
	add	lr, sp, #176
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bgt	.LBB12_80
.LBB12_76:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #828]
	cmp	r0, #0
	bne	.LBB12_81
@ BB#77:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #860]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #172]          @ 4-byte Spill
	ble	.LBB12_81
@ BB#78:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #860]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #168]          @ 4-byte Spill
	ble	.LBB12_81
@ BB#79:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	sub	r2, r2, #1
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #860]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #164]          @ 4-byte Spill
	ble	.LBB12_81
.LBB12_80:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r3, lr
	mov	r3, #100
	strb	r3, [r1, r2]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r3, [sp, #828]
	add	r2, r2, r3
	ldr	r3, [sp, #1564]
	mov	lr, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r2, lr
	ldr	r3, [sp, #764]
	add	r2, r2, r3
	ldr	r3, [sp, #860]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #144
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB12_81:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_82
.LBB12_82:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_93
	.p2align	3
@ BB#83:
.LCPI12_1:
	.long	1717986918              @ double 0.69999999999999996
	.long	1072064102
.LBB12_84:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #764]
	mla	r1, r1, r2, r12
	ldrb	r0, [r0, r1]
	mov	r1, #0
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1372]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1340]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	ldrb	r0, [r0, r2]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1308]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r2, r2, r12, r3
	add	r0, r0, r2
	ldrb	r0, [r0, #-1]
	cmp	r0, #8
	movwlt	r1, #1
	str	r1, [sp, #1276]
	ldr	r0, [sp, #1372]
	vdup.32	q8, r0
	add	r1, sp, #1376
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1340]
	vdup.32	q8, r1
	add	r2, sp, #1344
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1308]
	vdup.32	q8, r1
	add	r2, sp, #1312
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1276]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1280
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	cmp	r0, #2
	add	lr, sp, #128
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bne	.LBB12_92
@ BB#85:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1276]
	vdup.32	q8, r0
	add	r1, sp, #1280
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1340]
	vdup.32	q8, r1
	add	r2, sp, #1344
	vst1.64	{d16, d17}, [r2:128]
	orr	r0, r0, r1
	ldr	r1, [sp, #1372]
	vdup.32	q8, r1
	add	r2, sp, #1376
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1308]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, sp, #1312
	vst1.64	{d16, d17}, [r3:128]
	orr	r1, r1, r2
	and	r0, r0, r1
	cmp	r0, #0
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB12_92
@ BB#86:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1372]
	vdup.32	q8, r0
	add	r1, sp, #1376
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #796]
	sub	r2, r2, #2
	ldr	r3, [sp, #1564]
	vdup.32	q8, r3
	add	r12, sp, #1568
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r3, lr
	add	r1, r1, r2
	ldrb	r1, [r1, #-1]
	mov	r2, #0
	cmp	r1, #8
	mov	r1, r2
	movwlt	r1, #1
	ldr	r3, [sp, #1588]
	ldr	lr, [sp, #796]
	sub	lr, lr, #2
	ldr	r4, [sp, #1564]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r12:128]
	ldr	r5, [sp, #764]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #1]
	cmp	r3, #8
	mov	r3, r2
	movwlt	r3, #1
	orr	lr, r1, r3
	and	r0, r0, lr
	str	r1, [sp, #1980]
	vdup.32	q8, r1
	add	r1, sp, #1952
	vst1.32	{d16, d17}, [r1]
	str	r3, [sp, #1932]
	vdup.32	q8, r3
	add	r1, sp, #1904
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [sp, #1276]
	vdup.32	q8, r1
	add	r3, sp, #1280
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1588]
	ldr	lr, [sp, #796]
	sub	lr, lr, #1
	ldr	r4, [sp, #1564]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r12:128]
	ldr	r5, [sp, #764]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #-2]
	cmp	r3, #8
	mov	r3, r2
	movwlt	r3, #1
	ldr	lr, [sp, #1588]
	ldr	r4, [sp, #796]
	add	r4, r4, #1
	ldr	r5, [sp, #1564]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r12:128]
	ldr	r6, [sp, #764]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-2]
	cmp	lr, #8
	mov	lr, r2
	movwlt	lr, #1
	orr	r4, r3, lr
	and	r1, r1, r4
	orr	r0, r0, r1
	str	r3, [sp, #1884]
	vdup.32	q8, r3
	add	r1, sp, #1856
	vst1.32	{d16, d17}, [r1]
	str	lr, [sp, #1836]
	vdup.32	q8, lr
	add	r1, sp, #1808
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [sp, #1340]
	vdup.32	q8, r1
	add	r3, sp, #1344
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1588]
	ldr	lr, [sp, #796]
	sub	lr, lr, #1
	ldr	r4, [sp, #1564]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r12:128]
	ldr	r5, [sp, #764]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #2]
	cmp	r3, #8
	mov	r3, r2
	movwlt	r3, #1
	ldr	lr, [sp, #1588]
	ldr	r4, [sp, #796]
	add	r4, r4, #1
	ldr	r5, [sp, #1564]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r12:128]
	ldr	r6, [sp, #764]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #2]
	cmp	lr, #8
	mov	lr, r2
	movwlt	lr, #1
	orr	r4, r3, lr
	and	r1, r1, r4
	orr	r0, r0, r1
	str	r3, [sp, #1788]
	vdup.32	q8, r3
	add	r1, sp, #1760
	vst1.32	{d16, d17}, [r1]
	str	lr, [sp, #1740]
	vdup.32	q8, lr
	add	r1, sp, #1712
	vst1.32	{d16, d17}, [r1]
	ldr	r1, [sp, #1308]
	vdup.32	q8, r1
	add	r3, sp, #1312
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1588]
	ldr	lr, [sp, #796]
	add	lr, lr, #2
	ldr	r4, [sp, #1564]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [r12:128]
	ldr	r5, [sp, #764]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #-1]
	cmp	r3, #8
	mov	r3, r2
	movwlt	r3, #1
	ldr	lr, [sp, #1588]
	ldr	r4, [sp, #796]
	add	r4, r4, #2
	ldr	r5, [sp, #1564]
	vdup.32	q8, r5
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #764]
	mla	r12, r4, r5, r12
	add	r12, lr, r12
	ldrb	r12, [r12, #1]
	cmp	r12, #8
	movwlt	r2, #1
	str	r3, [sp, #1692]
	vdup.32	q8, r3
	add	r12, sp, #1664
	vst1.32	{d16, d17}, [r12]
	str	r2, [sp, #1644]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r12, sp, #1616
	vst1.32	{d16, d17}, [r12]
	orr	r2, r3, r2
	and	r1, r1, r2
	orr	r0, r0, r1
	cmp	r0, #0
	add	lr, sp, #96
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	beq	.LBB12_92
@ BB#87:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r1, r1, r2, r3
	mov	r2, #100
	strb	r2, [r0, r1]
	ldr	r0, [sp, #796]
	add	r1, sp, #800
	vld1.64	{d16, d17}, [r1:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	sub	r0, r0, #1
	str	r0, [sp, #796]
	ldr	r0, [sp, #764]
	add	r1, sp, #768
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x2
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	sub	r0, r0, #2
	str	r0, [sp, #764]
	ldr	r0, [sp, #796]
	cmp	r0, #4
	add	lr, sp, #80
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_89
@ BB#88:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #800
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #796]
.LBB12_89:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #764]
	cmp	r0, #4
	bge	.LBB12_91
@ BB#90:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #764]
.LBB12_91:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_92
.LBB12_92:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_93
.LBB12_93:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_94
.LBB12_94:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #956]
	cmp	r0, #2
	ble	.LBB12_104
@ BB#95:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #764]
	mla	r1, r1, r2, r12
	ldrb	r0, [r0, r1]
	mov	r1, #0
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1372]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1340]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	ldrb	r0, [r0, r2]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1308]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r2, r2, r12, r3
	add	r0, r0, r2
	ldrb	r0, [r0, #-1]
	cmp	r0, #8
	movwlt	r1, #1
	str	r1, [sp, #1276]
	ldr	r0, [sp, #1372]
	vdup.32	q8, r0
	add	r1, sp, #1376
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1340]
	vdup.32	q8, r1
	add	r2, sp, #1344
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1308]
	vdup.32	q8, r1
	add	r2, sp, #1312
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	ldr	r1, [sp, #1276]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1280
	vst1.64	{d16, d17}, [r2:128]
	add	r0, r0, r1
	cmp	r0, #1
	add	lr, sp, #64
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB12_103
@ BB#96:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	sub	r1, r1, #1
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #764]
	mla	r1, r1, r2, r12
	add	r0, r0, r1
	ldrb	r0, [r0, #-1]
	mov	r1, #0
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1116]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	sub	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1084]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	lr, [sp, #764]
	mla	r2, r2, r12, lr
	add	r0, r0, r2
	ldrb	r0, [r0, #-1]
	cmp	r0, #8
	mov	r0, r1
	movwlt	r0, #1
	str	r0, [sp, #1052]
	ldr	r0, [sp, #1588]
	ldr	r2, [sp, #796]
	add	r2, r2, #1
	ldr	r12, [sp, #1564]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r2, r2, r12, r3
	add	r0, r0, r2
	ldrb	r0, [r0, #1]
	cmp	r0, #8
	movwlt	r1, #1
	str	r1, [sp, #1020]
	ldr	r0, [sp, #1116]
	vdup.32	q8, r0
	add	r1, sp, #1120
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #1372]
	vdup.32	q8, r2
	add	r3, sp, #1376
	vst1.64	{d16, d17}, [r3:128]
	vld1.64	{d18, d19}, [r1:128]
	vorr	q8, q9, q8
	add	r1, sp, #1248
	vst1.64	{d16, d17}, [r1]
	orr	r0, r0, r2
	str	r0, [sp, #1244]
	ldr	r0, [sp, #1084]
	vdup.32	q8, r0
	add	r1, sp, #1088
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #1340]
	vdup.32	q8, r2
	add	r12, sp, #1344
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r1:128]
	vorr	q8, q9, q8
	add	r1, sp, #1216
	vst1.64	{d16, d17}, [r1]
	orr	r0, r0, r2
	str	r0, [sp, #1212]
	ldr	r0, [sp, #1020]
	vdup.32	q8, r0
	add	r1, sp, #1024
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #1308]
	vdup.32	q8, r2
	add	lr, sp, #1312
	vst1.64	{d16, d17}, [lr:128]
	vld1.64	{d18, d19}, [r1:128]
	vorr	q8, q9, q8
	add	r1, sp, #1184
	vst1.64	{d16, d17}, [r1]
	orr	r0, r0, r2
	str	r0, [sp, #1180]
	ldr	r0, [sp, #1052]
	vdup.32	q8, r0
	add	r1, sp, #1056
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #1276]
	vdup.32	q8, r2
	add	r4, sp, #1280
	vst1.64	{d16, d17}, [r4:128]
	vld1.64	{d18, d19}, [r1:128]
	vorr	q8, q9, q8
	add	r1, sp, #1152
	vst1.64	{d16, d17}, [r1]
	orr	r0, r0, r2
	str	r0, [sp, #1148]
	ldr	r1, [sp, #1244]
	ldr	r2, [sp, #1212]
	add	r1, r1, r2
	ldr	r2, [sp, #1180]
	add	r1, r1, r2
	add	r0, r1, r0
	ldr	r1, [sp, #1372]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [r3:128]
	ldr	r2, [sp, #1212]
	and	r1, r1, r2
	ldr	r2, [sp, #1340]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r12:128]
	ldr	r3, [sp, #1180]
	and	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #1308]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [lr:128]
	ldr	r3, [sp, #1148]
	and	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #1276]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r4:128]
	ldr	r3, [sp, #1244]
	and	r2, r2, r3
	add	r1, r1, r2
	sub	r0, r0, r1
	cmp	r0, #2
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_102
@ BB#97:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #796]
	ldr	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r3, sp, #1568
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #764]
	mla	r1, r1, r2, r3
	mov	r2, #100
	strb	r2, [r0, r1]
	ldr	r0, [sp, #796]
	add	r1, sp, #800
	vld1.64	{d16, d17}, [r1:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	sub	r0, r0, #1
	str	r0, [sp, #796]
	ldr	r0, [sp, #764]
	add	r1, sp, #768
	vld1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x2
	vsub.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	sub	r0, r0, #2
	str	r0, [sp, #764]
	ldr	r0, [sp, #796]
	cmp	r0, #4
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB12_99
@ BB#98:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #800
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #796]
.LBB12_99:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #764]
	cmp	r0, #4
	bge	.LBB12_101
@ BB#100:                               @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #768
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #764]
.LBB12_101:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_102
.LBB12_102:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_103
.LBB12_103:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_104
.LBB12_104:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_105
.LBB12_105:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_106
.LBB12_106:                             @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #764]
	add	r2, sp, #768
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
	str	r1, [sp, #2572]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB12_111
@ BB#107:                               @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_109
@ BB#108:                               @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #2572]
	b	.LBB12_110
.LBB12_109:                             @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #2572]
.LBB12_110:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_111
.LBB12_111:                             @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #2572]
	str	r0, [sp, #764]
	b	.LBB12_3
.LBB12_112:                             @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_113
.LBB12_113:                             @   in Loop: Header=BB12_1 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #796]
	add	r2, sp, #800
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
	str	r1, [sp, #2540]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB12_118
@ BB#114:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB12_116
@ BB#115:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #2540]
	b	.LBB12_117
.LBB12_116:                             @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #2540]
.LBB12_117:                             @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_118
.LBB12_118:                             @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #2540]
	str	r0, [sp, #796]
	b	.LBB12_1
.LBB12_119:
	ldr	r0, [sp, #1596]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
@ BB#120:
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cantunwind
	.fnend

	.globl	susan_edges
	.p2align	4
	.type	susan_edges,%function
	.code	32                      @ @susan_edges
susan_edges:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #2960
	sub	sp, sp, #12288
	bfc	sp, #0, #4
	add	r9, sp, #14336
	add	r12, r9, #700
	add	r9, sp, #10240
	add	lr, r9, #700
	add	r9, sp, #6144
	add	r4, r9, #668
	add	r9, sp, #4096
	add	r5, r9, #316
	ldr	r6, [r11, #16]
	ldr	r7, [r11, #12]
	ldr	r8, [r11, #8]
	movw	r9, #3
	str	r0, [sp, #904]
	str	r1, [sp, #900]
	str	r2, [sp, #896]
	str	r3, [sp, #892]
	str	r8, [sp, #860]
	str	r7, [sp, #828]
	str	r6, [sp, #796]
	ldr	r0, [sp, #900]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	add	r2, sp, #832
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #796]
	vdup.32	q8, r2
	add	r3, sp, #800
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	lsl	r2, r1, #2
	mov	r1, #0
	str	r12, [sp, #416]         @ 4-byte Spill
	str	lr, [sp, #412]          @ 4-byte Spill
	str	r4, [sp, #408]          @ 4-byte Spill
	str	r5, [sp, #404]          @ 4-byte Spill
	str	r9, [sp, #400]          @ 4-byte Spill
	bl	memset
	vmov.i32	q8, #0x3
	add	r1, sp, #704
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #400]          @ 4-byte Reload
	str	r1, [sp, #700]
	str	r0, [sp, #396]          @ 4-byte Spill
.LBB13_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_3 Depth 2
	ldr	r0, [sp, #700]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #3
	cmp	r0, r1
	add	lr, sp, #368
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB13_10
@ BB#2:                                 @   in Loop: Header=BB13_1 Depth=1
	movw	r0, #3
	vmov.i32	q8, #0x3
	add	r1, sp, #672
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #668]
.LBB13_3:                               @   Parent Loop BB13_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #668]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #832
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #3
	cmp	r0, r1
	add	lr, sp, #352
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB13_8
@ BB#4:                                 @   in Loop: Header=BB13_3 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #608
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #604]
	ldr	r1, [sp, #904]
	ldr	r2, [sp, #700]
	vdup.32	q8, r2
	add	r3, sp, #704
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #3
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #668]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #424]
	ldr	r1, [sp, #892]
	ldr	r2, [sp, #904]
	ldr	r12, [sp, #700]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #828]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #668]
	vdup.32	q8, r4
	add	r5, sp, #672
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r3, r2, #1
	str	r3, [sp, #424]
	ldrb	r2, [r2]
	ldr	r3, [sp, #412]          @ 4-byte Reload
	str	r2, [r3, #4032]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #2656
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3984]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2608
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3936]
	vdup.32	q8, r2
	add	r12, sp, #14848
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3888]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2512
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3840]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #2464
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3792]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2416
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #2
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-3]
	str	r1, [r3, #3744]
	vdup.32	q8, r1
	add	r12, sp, #14656
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3696]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2320
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3648]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #2272
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3600]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2224
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3552]
	vdup.32	q8, r2
	add	r12, sp, #14464
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3504]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2128
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3456]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #2080
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3408]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #2032
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3360]
	vdup.32	q8, r2
	add	r12, sp, #14272
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3312]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1936
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #4
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-5]
	str	r1, [r3, #3264]
	vdup.32	q8, r1
	add	r4, sp, #12288
	add	r12, r4, #1888
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3216]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1840
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3168]
	vdup.32	q8, r2
	add	r12, sp, #14080
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3120]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1744
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #3072]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #1696
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #3024]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1648
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2976]
	vdup.32	q8, r2
	add	r12, sp, #13888
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2928]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1552
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2880]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #1504
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2832]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1456
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2784]
	vdup.32	q8, r2
	add	r12, sp, #13696
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2736]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1360
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2688]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #1312
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2640]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1264
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #5
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-6]
	str	r1, [r3, #2592]
	vdup.32	q8, r1
	add	r12, sp, #13504
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2544]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1168
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2496]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #1120
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2448]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #1072
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2400]
	vdup.32	q8, r2
	add	r12, sp, #13312
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2352]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #976
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #424]
	add	r2, r1, #2
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	add	r12, r1, #3
	str	r12, [sp, #424]
	ldrb	r1, [r1, #2]
	str	r1, [r3, #2304]
	vdup.32	q8, r1
	add	r4, sp, #12288
	add	r12, r4, #928
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2256]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #880
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2208]
	vdup.32	q8, r2
	add	r12, sp, #13120
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2160]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #784
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #2112]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #736
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2064]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #688
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #5
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-6]
	str	r1, [r3, #2016]
	vdup.32	q8, r1
	add	r12, sp, #12928
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1968]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #592
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1920]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #544
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1872]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #496
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1824]
	vdup.32	q8, r2
	add	r12, sp, #12736
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1776]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #400
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1728]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #352
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1680]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #304
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1632]
	vdup.32	q8, r2
	add	r12, sp, #12544
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1584]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #208
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1536]
	vdup.32	q8, r2
	add	r4, sp, #12288
	add	r12, r4, #160
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1488]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #112
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1440]
	vdup.32	q8, r2
	add	r12, sp, #12352
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1392]
	vdup.32	q9, r1
	add	r4, sp, #12288
	add	r12, r4, #16
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #4
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-5]
	str	r1, [r3, #1344]
	vdup.32	q8, r1
	add	r4, sp, #8192
	add	r12, r4, #4064
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1296]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #4016
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1248]
	vdup.32	q8, r2
	add	r12, sp, #12160
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1200]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3920
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1152]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #3872
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1104]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3824
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #1056]
	vdup.32	q8, r2
	add	r12, sp, #11968
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1008]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3728
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #960]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #3680
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #912]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3632
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #424]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #424]
	ldr	r2, [sp, #420]
	sub	r12, r1, #2
	str	r12, [sp, #424]
	ldrb	r1, [r1, #-3]
	str	r1, [r3, #864]
	vdup.32	q8, r1
	add	r12, sp, #11776
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #816]
	vdup.32	q9, r1
	add	lr, sp, #8192
	add	r12, lr, #3536
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	add	r12, r2, #1
	str	r12, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #768]
	vdup.32	q8, r2
	add	lr, sp, #8192
	add	r12, lr, #3488
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #720]
	vdup.32	q9, r1
	add	lr, sp, #8192
	add	r12, lr, #3440
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #604]
	ldr	r1, [sp, #420]
	ldr	r2, [sp, #424]
	ldrb	r2, [r2]
	str	r2, [r3, #672]
	vdup.32	q8, r2
	add	r12, sp, #11584
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	r12, [sp, #604]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #624]
	vdup.32	q9, r1
	add	lr, sp, #8192
	add	r1, lr, #3344
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, r12, r2
	str	r0, [sp, #604]
	ldr	r0, [sp, #604]
	ldr	r1, [sp, #860]
	cmp	r0, r1
	add	lr, sp, #336
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bgt	.LBB13_6
@ BB#5:                                 @   in Loop: Header=BB13_3 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #860]
	vdup.32	q8, r1
	add	r2, sp, #864
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #604]
	sub	r1, r1, r2
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	vdup.32	q8, r3
	add	r12, sp, #704
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	vdup.32	q8, lr
	add	r4, sp, #672
	vst1.64	{d16, d17}, [r4:128]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #332]          @ 4-byte Spill
	str	r12, [sp, #328]         @ 4-byte Spill
.LBB13_6:                               @   in Loop: Header=BB13_3 Depth=2
	b	.LBB13_7
.LBB13_7:                               @   in Loop: Header=BB13_3 Depth=2
	ldr	r0, [sp, #668]
	vdup.32	q8, r0
	add	r1, sp, #672
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #668]
	add	lr, sp, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB13_3
.LBB13_8:                               @   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_9
.LBB13_9:                               @   in Loop: Header=BB13_1 Depth=1
	ldr	r0, [sp, #700]
	vdup.32	q8, r0
	add	r1, sp, #704
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #700]
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB13_1
.LBB13_10:
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #704
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #700]
.LBB13_11:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_13 Depth 2
	ldr	r0, [sp, #700]
	ldr	r1, [sp, #796]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #800
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #4
	cmp	r0, r1
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB13_110
@ BB#12:                                @   in Loop: Header=BB13_11 Depth=1
	movw	r0, #4
	vmov.i32	q8, #0x4
	add	r1, sp, #672
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #668]
.LBB13_13:                              @   Parent Loop BB13_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #668]
	ldr	r1, [sp, #828]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #832
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #4
	cmp	r0, r1
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB13_103
@ BB#14:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #900]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #828]
	vdup.32	q8, r3
	add	r12, sp, #832
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #668]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #252]          @ 4-byte Spill
	str	r3, [sp, #248]          @ 4-byte Spill
	ble	.LBB13_96
@ BB#15:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #900]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #828]
	vdup.32	q8, r3
	add	r12, sp, #832
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #668]
	mla	r2, r2, r3, r12
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [sp, #636]
	ldr	r1, [sp, #860]
	vdup.32	q8, r1
	add	r2, sp, #864
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #636]
	vdup.32	q8, r3
	add	r12, sp, #640
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q9, q8
	add	r2, sp, #608
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r2, r12
	add	r12, r12, lr
	sub	r1, r1, r3
	mul	r0, r1, r0
	ldr	r3, [sp, #416]          @ 4-byte Reload
	str	r1, [r3, #192]
	cmp	r12, r0
	str	r1, [sp, #244]          @ 4-byte Spill
	str	r12, [sp, #240]         @ 4-byte Spill
	str	r2, [sp, #236]          @ 4-byte Spill
	beq	.LBB13_21
@ BB#16:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #240]          @ 4-byte Reload
	ldr	r1, [sp, #236]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_19
@ BB#17:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #244]          @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #192]
	b	.LBB13_20
	.p2align	3
@ BB#18:
.LCPI13_3:
	.long	3435973837              @ double 0.90000000000000002
	.long	1072483532
.LBB13_19:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #236]          @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #192]
.LBB13_20:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_21
.LBB13_21:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #416]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	str	r1, [sp, #604]
	ldr	r1, [sp, #892]
	ldr	r2, [sp, #904]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #828]
	mov	lr, r12
	vdup.32	q8, r12
	vorr	q9, q8, q8
	add	r12, sp, #832
	vst1.64	{d16, d17}, [r12:128]
	mul	r3, r3, lr
	ldr	r12, [sp, #668]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #420]
	ldr	r1, [sp, #604]
	cmp	r1, #600
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB13_53
@ BB#22:                                @   in Loop: Header=BB13_13 Depth=2
	vldr	d16, .LCPI13_3
	ldr	r0, [sp, #904]
	ldr	r1, [sp, #700]
	vmov.i32	q9, #0x3
	sub	r1, r1, #3
	ldr	r2, [sp, #828]
	vdup.32	q10, r2
	add	r3, sp, #832
	vst1.64	{d20, d21}, [r3:128]
	mla	r0, r1, r2, r0
	ldr	r1, [sp, #668]
	add	r0, r0, r1
	sub	r0, r0, #1
	str	r0, [sp, #424]
	vmov.i32	q10, #0x0
	add	r0, sp, #512
	vst1.64	{d20, d21}, [r0]
	mov	r1, #0
	str	r1, [sp, #508]
	add	r2, sp, #480
	vst1.64	{d20, d21}, [r2]
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r12, [sp, #424]
	add	lr, r12, #1
	str	lr, [sp, #424]
	ldrb	r12, [r12]
	ldr	lr, [sp, #412]          @ 4-byte Reload
	str	r12, [lr, #576]
	vdup.32	q10, r12
	add	r5, sp, #8192
	add	r4, r5, #3296
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r12, [sp, #508]
	vdup.32	q10, r12
	vst1.64	{d20, d21}, [r0:128]
	str	r1, [lr, #528]
	vdup.32	q11, r1
	add	r5, sp, #8192
	add	r4, r5, #3248
	vst1.32	{d22, d23}, [r4]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r12, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [lr, #480]
	vdup.32	q10, r1
	add	r12, sp, #11392
	vst1.32	{d20, d21}, [r12]
	add	r1, r1, r1, lsl #1
	ldr	r12, [sp, #476]
	vdup.32	q11, r12
	vst1.64	{d22, d23}, [r2:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r12, [sp, #424]
	add	r4, r12, #1
	str	r4, [sp, #424]
	ldrb	r12, [r12]
	str	r12, [lr, #432]
	vdup.32	q10, r12
	add	r5, sp, #8192
	add	r4, r5, #3152
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [lr, #384]
	vdup.32	q10, r1
	add	r5, sp, #8192
	add	r12, r5, #3104
	vst1.32	{d20, d21}, [r12]
	add	r1, r1, r1, lsl #1
	ldr	r12, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r12, [sp, #424]
	ldrb	r12, [r12]
	str	r12, [lr, #336]
	vdup.32	q10, r12
	add	r5, sp, #8192
	add	r4, r5, #3056
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r12, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [lr, #288]
	vdup.32	q11, r1
	add	r4, sp, #11200
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r12, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [lr, #240]
	vdup.32	q10, r1
	add	r5, sp, #8192
	add	r12, r5, #2960
	vst1.32	{d20, d21}, [r12]
	add	r1, r1, r1, lsl #1
	ldr	r12, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r12, [sp, #424]
	add	r1, r12, r1
	sub	r12, r1, #3
	str	r12, [sp, #424]
	ldr	r12, [sp, #420]
	sub	r4, r1, #2
	str	r4, [sp, #424]
	ldrb	r1, [r1, #-3]
	str	r1, [lr, #192]
	vdup.32	q10, r1
	add	r5, sp, #8192
	add	r4, r5, #2912
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r12, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [lr, #144]
	vdup.32	q10, r1
	add	r5, sp, #8192
	add	r12, r5, #2864
	vst1.32	{d20, d21}, [r12]
	vshl.i32	q10, q10, #1
	ldr	r12, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	sub	r1, r12, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [lr, #96]
	vdup.32	q10, r1
	add	r12, sp, #11008
	vst1.32	{d20, d21}, [r12]
	vshl.i32	q10, q10, #1
	ldr	r12, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	sub	r1, r12, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r12, [sp, #424]
	add	r4, r12, #1
	str	r4, [sp, #424]
	ldrb	r12, [r12]
	str	r12, [lr, #48]
	vdup.32	q10, r12
	add	r5, sp, #8192
	add	r4, r5, #2768
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r12, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [lr]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r4, lr, #2720
	vst1.32	{d22, d23}, [r4]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r12, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r12, [sp, #408]         @ 4-byte Reload
	str	r1, [r12, #4080]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #2672
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #4032]
	vdup.32	q10, r4
	add	r5, sp, #10816
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3984]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #2576
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3936]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #2528
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #3888]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #2480
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3840]
	vdup.32	q10, r1
	add	r4, sp, #10624
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3792]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #2384
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3744]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #2336
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3696]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #2288
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r4, [sp, #424]
	add	r1, r4, r1
	sub	r4, r1, #5
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r5, r1, #4
	str	r5, [sp, #424]
	ldrb	r1, [r1, #-5]
	str	r1, [r12, #3648]
	vdup.32	q10, r1
	add	r5, sp, #10432
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r4, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3600]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #2192
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #3552]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #2144
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3504]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #2096
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #3456]
	vdup.32	q10, r1
	add	r4, sp, #10240
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #3408]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #2000
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3360]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1952
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #3312]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #1904
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #3264]
	vdup.32	q11, r1
	add	r5, sp, #10048
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3216]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1808
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #3168]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #1760
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #3120]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1712
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #3072]
	vdup.32	q11, r1
	add	r5, sp, #9856
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #3024]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #1616
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2976]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1568
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2928]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #1520
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #2880]
	vdup.32	q11, r1
	add	r5, sp, #9664
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2832]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1424
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2784]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #1376
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #2736]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #1328
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	sub	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r4, [sp, #424]
	add	r1, r4, r1
	sub	r4, r1, #6
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r5, r1, #5
	str	r5, [sp, #424]
	ldrb	r1, [r1, #-6]
	str	r1, [r12, #2688]
	vdup.32	q10, r1
	add	r5, sp, #9472
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r4, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2640]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #1232
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2592]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #1184
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2544]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #1136
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2496]
	vdup.32	q10, r4
	add	r5, sp, #9280
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #2448]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #1040
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldr	r1, [sp, #424]
	add	r4, r1, #2
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	add	r5, r1, #3
	str	r5, [sp, #424]
	ldrb	r1, [r1, #2]
	str	r1, [r12, #2400]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r5, lr, #992
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r4, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #2352]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #944
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2304]
	vdup.32	q10, r4
	add	r5, sp, #9088
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2256]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #848
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #2208]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #800
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2160]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #752
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r4, [sp, #424]
	add	r1, r4, r1
	sub	r4, r1, #6
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r5, r1, #5
	str	r5, [sp, #424]
	ldrb	r1, [r1, #-6]
	str	r1, [r12, #2112]
	vdup.32	q10, r1
	add	r5, sp, #8896
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r4, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #2064]
	vdup.32	q10, r1
	add	lr, sp, #8192
	add	r4, lr, #656
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmls.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #2016]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #608
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1968]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #560
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #1920]
	vdup.32	q10, r1
	add	r4, sp, #8704
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1872]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #464
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1824]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #416
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #1776]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #368
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1728]
	vdup.32	q11, r1
	add	r5, sp, #8512
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1680]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #272
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1632]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #224
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1584]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #176
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #1536]
	vdup.32	q11, r1
	add	r5, sp, #8320
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1488]
	vdup.32	q11, r1
	add	lr, sp, #8192
	add	r5, lr, #80
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1440]
	vdup.32	q10, r4
	add	lr, sp, #8192
	add	r5, lr, #32
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #1392]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #4080
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1344]
	vdup.32	q11, r1
	add	r5, sp, #8128
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1296]
	vdup.32	q10, r4
	add	lr, sp, #4096
	add	r5, lr, #3984
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #1248]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3936
	vst1.32	{d20, d21}, [r4]
	add	r1, r1, r1, lsl #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d20, d21}, [r2:128]
	str	r1, [r12, #1200]
	vdup.32	q11, r1
	add	lr, sp, #4096
	add	r5, lr, #3888
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r4, [sp, #424]
	add	r1, r4, r1
	sub	r4, r1, #5
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r5, r1, #4
	str	r5, [sp, #424]
	ldrb	r1, [r1, #-5]
	str	r1, [r12, #1152]
	vdup.32	q10, r1
	add	r5, sp, #7936
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r4, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #1104]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3792
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vsub.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #1056]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3744
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #1008]
	vdup.32	q10, r4
	add	lr, sp, #4096
	add	r5, lr, #3696
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #960]
	vdup.32	q11, r1
	add	r5, sp, #7744
	vst1.32	{d22, d23}, [r5]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #912]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3600
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #864]
	vdup.32	q10, r4
	add	lr, sp, #4096
	add	r5, lr, #3552
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #816]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3504
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #768]
	vdup.32	q10, r4
	add	r5, sp, #7552
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #720]
	vdup.32	q11, r1
	add	lr, sp, #4096
	add	r5, lr, #3408
	vst1.32	{d22, d23}, [r5]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #672]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3360
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r12, #624]
	vdup.32	q10, r4
	add	lr, sp, #4096
	add	r5, lr, #3312
	vst1.32	{d20, d21}, [r5]
	ldrb	r1, [r1, -r4]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #576]
	vdup.32	q10, r1
	add	r4, sp, #7360
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r0:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r0]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #528]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3216
	vst1.32	{d20, d21}, [r4]
	vshl.i32	q10, q10, #1
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vadd.i32	q10, q11, q10
	vst1.64	{d20, d21}, [r2]
	add	r1, r4, r1, lsl #1
	str	r1, [sp, #476]
	ldr	r1, [sp, #828]
	vdup.32	q10, r1
	vst1.64	{d20, d21}, [r3:128]
	ldr	r3, [sp, #424]
	add	r1, r3, r1
	sub	r3, r1, #3
	str	r3, [sp, #424]
	ldr	r3, [sp, #420]
	sub	r4, r1, #2
	str	r4, [sp, #424]
	ldrb	r1, [r1, #-3]
	str	r1, [r12, #480]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r4, lr, #3168
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r3, -r1]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r3, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #432]
	vdup.32	q11, r1
	add	lr, sp, #4096
	add	r4, lr, #3120
	vst1.32	{d22, d23}, [r4]
	vsub.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	sub	r1, r3, r1
	str	r1, [sp, #508]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #384]
	vdup.32	q10, r1
	add	r3, sp, #7168
	vst1.32	{d20, d21}, [r3]
	add	r1, r1, r1, lsl #1
	ldr	r3, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	add	r1, r3, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r3, [sp, #424]
	add	r4, r3, #1
	str	r4, [sp, #424]
	ldrb	r3, [r3]
	str	r3, [r12, #336]
	vdup.32	q10, r3
	add	lr, sp, #4096
	add	r4, lr, #3024
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r3]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	str	r1, [r12, #288]
	vdup.32	q10, r1
	add	lr, sp, #4096
	add	r3, lr, #2976
	vst1.32	{d20, d21}, [r3]
	add	r1, r1, r1, lsl #1
	ldr	r3, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	add	r1, r3, r1
	str	r1, [sp, #476]
	ldr	r1, [sp, #420]
	ldr	r3, [sp, #424]
	ldrb	r3, [r3]
	str	r3, [r12, #240]
	vdup.32	q10, r3
	add	lr, sp, #4096
	add	r4, lr, #2928
	vst1.32	{d20, d21}, [r4]
	ldrb	r1, [r1, -r3]
	strb	r1, [sp, #431]
	ldrb	r1, [sp, #431]
	ldr	r3, [sp, #508]
	vld1.64	{d20, d21}, [r0:128]
	str	r1, [r12, #192]
	vdup.32	q11, r1
	add	r4, sp, #6976
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	vst1.64	{d20, d21}, [r0]
	add	r0, r3, r1
	str	r0, [sp, #508]
	ldrb	r0, [sp, #431]
	str	r0, [r12, #144]
	vdup.32	q10, r0
	add	r4, sp, #4096
	add	r1, r4, #2832
	vst1.32	{d20, d21}, [r1]
	add	r0, r0, r0, lsl #1
	ldr	r1, [sp, #476]
	vld1.64	{d22, d23}, [r2:128]
	vmla.i32	q11, q10, q9
	vst1.64	{d22, d23}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #476]
	ldr	r1, [sp, #508]
	mul	r0, r0, r0
	mla	r0, r1, r1, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov	r0, r1, d17
	vstr	d16, [sp, #200]         @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	vstr	s0, [sp, #764]
	vcvt.f64.f32	d16, s0
	vldr	s0, [sp, #604]
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #408]          @ 4-byte Reload
	vstr	d17, [r0, #92]
	vorr	q10, q9, q9
	add	lr, sp, #4096
	add	r1, lr, #2784
	vst1.32	{d18, d19}, [r1]
	vldr	d24, [sp, #200]         @ 8-byte Reload
	vmul.f64	d17, d24, d17
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	add	lr, sp, #176
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	ble	.LBB13_51
@ BB#23:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #736
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #732]
	ldr	r0, [sp, #508]
	cmp	r0, #0
	bne	.LBB13_25
@ BB#24:                                @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, .LCPI13_4
	adr	r0, .LCPI13_5
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #768
	vst1.64	{d16, d17}, [r0]
	vstr	s0, [sp, #764]
	b	.LBB13_26
.LBB13_25:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #476]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #508]
	vmov	s2, r1
	vcvt.f32.s32	s2, s2
	ldr	r2, [sp, #408]          @ 4-byte Reload
	vstr	s0, [r2, #48]
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	add	lr, sp, #4096
	add	r0, lr, #2736
	vst1.32	{d16, d17}, [r0]
	vstr	s2, [r2]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	add	r0, sp, #6784
	vst1.32	{d18, d19}, [r0]
	vorr	q1, q9, q9
	vmov.f32	s8, s7
	vorr	q3, q8, q8
	vmov.f32	s10, s15
	vdiv.f32	s8, s10, s8
	vmov.f32	s10, s6
	vmov.f32	s1, s14
	vdiv.f32	s10, s1, s10
	vmov.f32	s1, s5
	vmov.f32	s3, s13
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s4
	vmov.f32	s9, s12
	vdiv.f32	s3, s9, s3
	vmov.f32	s4, s3
	vmov.f32	s5, s1
	vmov.f32	s6, s10
	vmov.f32	s7, s8
	vorr	q8, q1, q1
	add	r0, sp, #768
	vst1.64	{d2, d3}, [r0]
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #764]
	add	lr, sp, #160
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
.LBB13_26:                              @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, [sp, #764]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_33
@ BB#27:                                @   in Loop: Header=BB13_13 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #764]
	add	r0, sp, #768
	vld1.64	{d16, d17}, [r0:128]
	vneg.f32	q8, q8
	vst1.64	{d16, d17}, [r0]
	vorr	q1, q8, q8
	vmov.f32	s8, s4
	vmov.f32	s10, s5
	vmov.f32	s12, s6
	vadd.f32	s10, s8, s10
	vadd.f32	s10, s10, s12
	vneg.f32	s2, s2
	vmul.f32	s0, s2, s0
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s2, [r0, #160]
	vcmpe.f32	s10, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #156]          @ 4-byte Spill
	vstr	s10, [sp, #152]         @ 4-byte Spill
	vstr	s8, [sp, #148]          @ 4-byte Spill
	beq	.LBB13_32
@ BB#28:                                @   in Loop: Header=BB13_13 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #152]          @ 4-byte Reload
	vldr	s4, [sp, #148]          @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB13_30
@ BB#29:                                @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, [sp, #156]          @ 4-byte Reload
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s0, [r0, #160]
	b	.LBB13_31
.LBB13_30:                              @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, [sp, #148]          @ 4-byte Reload
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s0, [r0, #160]
.LBB13_31:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_32
.LBB13_32:                              @   in Loop: Header=BB13_13 Depth=2
	mvn	r0, #0
	ldr	r1, [sp, #416]          @ 4-byte Reload
	ldr	r2, [r1, #160]
	str	r2, [sp, #764]
	vmov.i8	q8, #0xff
	add	r2, sp, #448
	vst1.64	{d16, d17}, [r2]
	str	r0, [sp, #444]
	b	.LBB13_34
.LBB13_33:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #448
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #444]
.LBB13_34:                              @   in Loop: Header=BB13_13 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [sp, #764]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_36
@ BB#35:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x0
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #572]
	vmov.i32	q8, #0x1
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_45
.LBB13_36:                              @   in Loop: Header=BB13_13 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [sp, #764]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB13_38
@ BB#37:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x1
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #572]
	vmov.i32	q8, #0x0
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_44
.LBB13_38:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #444]
	cmp	r0, #0
	ble	.LBB13_42
@ BB#39:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #572]
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_43
	.p2align	2
@ BB#40:
.LCPI13_4:
	.long	1232348160              @ float 1.0E+6
	.p2align	4
@ BB#41:
.LCPI13_5:
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
.LBB13_42:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i8	q8, #0xff
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mvn	r1, #0
	str	r1, [sp, #572]
	vmov.i32	q8, #0x1
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
.LBB13_43:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_44
.LBB13_44:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_45
.LBB13_45:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #144]          @ 4-byte Spill
	ble	.LBB13_50
@ BB#46:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	blt	.LBB13_50
@ BB#47:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12, lsl #1
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #136]          @ 4-byte Spill
	ble	.LBB13_50
@ BB#48:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12, lsl #1
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #132]          @ 4-byte Spill
	blt	.LBB13_50
@ BB#49:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #896]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #828]
	mov	r12, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r3, sp, #832
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, r12
	ldr	r3, [sp, #668]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB13_50:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_52
.LBB13_51:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #736
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #732]
.LBB13_52:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_54
.LBB13_53:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #736
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #732]
.LBB13_54:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #732]
	cmp	r0, #1
	bne	.LBB13_95
@ BB#55:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #904]
	ldr	r2, [sp, #700]
	vmov.i32	q8, #0x3
	sub	r2, r2, #3
	ldr	r3, [sp, #828]
	vdup.32	q9, r3
	add	r12, sp, #832
	vst1.64	{d18, d19}, [r12:128]
	mla	r1, r2, r3, r1
	ldr	r2, [sp, #668]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #424]
	vmov.i32	q9, #0x0
	add	r1, sp, #512
	vst1.64	{d18, d19}, [r1]
	mov	r2, #0
	str	r2, [sp, #508]
	add	r3, sp, #480
	vst1.64	{d18, d19}, [r3]
	str	r2, [sp, #476]
	add	lr, sp, #448
	vst1.64	{d18, d19}, [lr]
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r5, r4, #1
	str	r5, [sp, #424]
	ldrb	r4, [r4]
	ldr	r5, [sp, #404]          @ 4-byte Reload
	str	r4, [r5, #2352]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #2640
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #2304]
	vdup.32	q10, r2
	add	r7, sp, #4096
	add	r6, r7, #2592
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #2256]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #2544
	vst1.32	{d18, d19}, [r4]
	vmov.i32	q10, #0x9
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #2208]
	vdup.32	q9, r2
	add	r4, sp, #6592
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vdup.32	q11, r4
	vst1.64	{d22, d23}, [lr:128]
	vmla.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #2160]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #2448
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #2112]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #2400
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #2064]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #2352
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #2016]
	vdup.32	q11, r2
	add	r6, sp, #6400
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1968]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r4, r6, #2256
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1920]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #2208
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmls.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #424]
	add	r2, r4, r2
	sub	r4, r2, #3
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r6, r2, #2
	str	r6, [sp, #424]
	ldrb	r2, [r2, #-3]
	str	r2, [r5, #1872]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r6, r7, #2160
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1824]
	vdup.32	q9, r2
	add	r4, sp, #6208
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1776]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #2064
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1728]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #2016
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #1680]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #1968
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #1632]
	vdup.32	q11, r2
	add	r6, sp, #6016
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1584]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #1872
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1536]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #1824
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #1488]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #1776
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1440]
	vdup.32	q9, r2
	add	r4, sp, #5824
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #1392]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #1680
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #1344]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #1632
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1296]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r4, r6, #1584
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1248]
	vdup.32	q9, r2
	add	r4, sp, #5632
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #1200]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #1488
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1152]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r4, r6, #1440
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1104]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r4, r6, #1392
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #1056]
	vdup.32	q9, r2
	add	r4, sp, #5440
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #2
	str	r2, [sp, #444]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #424]
	add	r2, r4, r2
	sub	r4, r2, #5
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r6, r2, #4
	str	r6, [sp, #424]
	ldrb	r2, [r2, #-5]
	str	r2, [r5, #1008]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r6, r7, #1296
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #960]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #1248
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #912]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #1200
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #864]
	vdup.32	q9, r2
	add	r4, sp, #5248
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmla.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #816]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #1104
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #768]
	vdup.32	q9, r2
	add	r7, sp, #4096
	add	r4, r7, #1056
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #720]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #1008
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #672]
	vdup.32	q9, r2
	add	r4, sp, #5056
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #624]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #912
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #576]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #864
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #528]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #816
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #444]
	vld1.64	{d18, d19}, [lr:128]
	str	r2, [r5, #480]
	vdup.32	q11, r2
	add	r6, sp, #4864
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #432]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #720
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #384]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #672
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #336]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #624
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [r5, #288]
	vdup.32	q11, r2
	add	r6, sp, #4672
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #240]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #528
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #444]
	vld1.64	{d18, d19}, [lr:128]
	str	r2, [r5, #192]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #480
	vst1.32	{d22, d23}, [r6]
	vsub.i32	q9, q9, q11
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [r5, #144]
	vdup.32	q9, r4
	add	r7, sp, #4096
	add	r6, r7, #432
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [r5, #96]
	vdup.32	q9, r2
	add	r4, sp, #4480
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #48]
	vdup.32	q11, r2
	add	r7, sp, #4096
	add	r6, r7, #336
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [r5]
	vdup.32	q9, r2
	add	r5, sp, #4096
	add	r4, r5, #288
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	add	r5, sp, #4096
	str	r4, [r5, #268]
	vdup.32	q9, r4
	add	r5, sp, #4096
	add	r6, r5, #240
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	add	r5, sp, #4096
	str	r2, [r5, #220]
	vdup.32	q9, r2
	add	r4, sp, #4288
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	add	r5, sp, #4096
	str	r2, [r5, #172]
	vdup.32	q11, r2
	add	r5, sp, #4096
	add	r6, r5, #144
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	add	r5, sp, #4096
	str	r2, [r5, #124]
	vdup.32	q9, r2
	add	r5, sp, #4096
	add	r4, r5, #96
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmls.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #424]
	add	r2, r4, r2
	sub	r4, r2, #6
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r6, r2, #5
	str	r6, [sp, #424]
	ldrb	r2, [r2, #-6]
	add	r5, sp, #4096
	str	r2, [r5, #76]
	vdup.32	q9, r2
	add	r5, sp, #4096
	add	r6, r5, #48
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	add	r5, sp, #4096
	str	r2, [r5, #28]
	vdup.32	q9, r2
	add	r4, sp, #4096
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #4076]
	vdup.32	q9, r4
	add	r6, sp, #4048
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #4028]
	vdup.32	q9, r2
	add	r4, sp, #4000
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3980]
	vdup.32	q9, r4
	add	r6, sp, #3952
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #3932]
	vdup.32	q11, r2
	add	r6, sp, #3904
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldr	r2, [sp, #424]
	add	r4, r2, #2
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	add	r6, r2, #3
	str	r6, [sp, #424]
	ldrb	r2, [r2, #2]
	str	r2, [sp, #3884]
	vdup.32	q9, r2
	add	r6, sp, #3856
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #3836]
	vdup.32	q11, r2
	add	r6, sp, #3808
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3788]
	vdup.32	q9, r4
	add	r6, sp, #3760
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3740]
	vdup.32	q9, r2
	add	r4, sp, #3712
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3692]
	vdup.32	q9, r4
	add	r6, sp, #3664
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3644]
	vdup.32	q9, r2
	add	r4, sp, #3616
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #424]
	add	r2, r4, r2
	sub	r4, r2, #6
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r6, r2, #5
	str	r6, [sp, #424]
	ldrb	r2, [r2, #-6]
	str	r2, [sp, #3596]
	vdup.32	q9, r2
	add	r6, sp, #3568
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3548]
	vdup.32	q9, r2
	add	r4, sp, #3520
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #3500]
	vdup.32	q11, r2
	add	r6, sp, #3472
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3452]
	vdup.32	q9, r2
	add	r4, sp, #3424
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmls.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3404]
	vdup.32	q9, r4
	add	r6, sp, #3376
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3356]
	vdup.32	q9, r2
	add	r4, sp, #3328
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #3308]
	vdup.32	q11, r2
	add	r6, sp, #3280
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #3260]
	vdup.32	q9, r2
	add	r4, sp, #3232
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3212]
	vdup.32	q9, r4
	add	r6, sp, #3184
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #3164]
	vdup.32	q11, r2
	add	r6, sp, #3136
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #3116]
	vdup.32	q11, r2
	add	r6, sp, #3088
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #444]
	vld1.64	{d18, d19}, [lr:128]
	str	r2, [sp, #3068]
	vdup.32	q11, r2
	add	r6, sp, #3040
	vst1.32	{d22, d23}, [r6]
	vsub.i32	q9, q9, q11
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #3020]
	vdup.32	q9, r4
	add	r6, sp, #2992
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #2972]
	vdup.32	q11, r2
	add	r6, sp, #2944
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #2924]
	vdup.32	q9, r4
	add	r6, sp, #2896
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #2876]
	vdup.32	q11, r2
	add	r6, sp, #2848
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #2828]
	vdup.32	q11, r2
	add	r6, sp, #2800
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #444]
	vld1.64	{d18, d19}, [lr:128]
	str	r2, [sp, #2780]
	vdup.32	q11, r2
	add	r6, sp, #2752
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #2732]
	vdup.32	q9, r4
	add	r6, sp, #2704
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2684]
	vdup.32	q9, r2
	add	r4, sp, #2656
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #2636]
	vdup.32	q11, r2
	add	r6, sp, #2608
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2588]
	vdup.32	q9, r2
	add	r4, sp, #2560
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #2540]
	vdup.32	q9, r4
	add	r6, sp, #2512
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2492]
	vdup.32	q9, r2
	add	r4, sp, #2464
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #3
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #2444]
	vdup.32	q11, r2
	add	r6, sp, #2416
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2396]
	vdup.32	q9, r2
	add	r4, sp, #2368
	vst1.32	{d18, d19}, [r4]
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmla.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #424]
	add	r2, r4, r2
	sub	r4, r2, #5
	str	r4, [sp, #424]
	ldr	r4, [sp, #420]
	sub	r6, r2, #4
	str	r6, [sp, #424]
	ldrb	r2, [r2, #-5]
	str	r2, [sp, #2348]
	vdup.32	q9, r2
	add	r6, sp, #2320
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2300]
	vdup.32	q9, r2
	add	r4, sp, #2272
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2252]
	vdup.32	q9, r2
	add	r4, sp, #2224
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2204]
	vdup.32	q9, r2
	add	r4, sp, #2176
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #2156]
	vdup.32	q9, r4
	add	r6, sp, #2128
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #2108]
	vdup.32	q11, r2
	add	r6, sp, #2080
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2060]
	vdup.32	q9, r2
	add	r4, sp, #2032
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #2012]
	vdup.32	q9, r2
	add	r4, sp, #1984
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vsub.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	sub	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #1964]
	vdup.32	q9, r4
	add	r6, sp, #1936
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1916]
	vdup.32	q9, r2
	add	r4, sp, #1888
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	add	r6, r4, #1
	str	r6, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #1868]
	vdup.32	q9, r4
	add	r6, sp, #1840
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r4, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #1820]
	vdup.32	q11, r2
	add	r6, sp, #1792
	vst1.32	{d22, d23}, [r6]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1772]
	vdup.32	q9, r2
	add	r4, sp, #1744
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1724]
	vdup.32	q9, r2
	add	r4, sp, #1696
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #1
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #1
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r4, [sp, #424]
	ldrb	r4, [r4]
	str	r4, [sp, #1676]
	vdup.32	q9, r4
	add	r6, sp, #1648
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1628]
	vdup.32	q9, r2
	add	r4, sp, #1600
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #508]
	vld1.64	{d22, d23}, [r1:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r1]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1580]
	vdup.32	q9, r2
	add	r4, sp, #1552
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1532]
	vdup.32	q9, r2
	add	r4, sp, #1504
	vst1.32	{d18, d19}, [r4]
	vshl.i32	q9, q9, #2
	ldr	r4, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vadd.i32	q9, q11, q9
	vst1.64	{d18, d19}, [lr]
	add	r2, r4, r2, lsl #2
	str	r2, [sp, #444]
	ldr	r2, [sp, #828]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r12:128]
	ldr	r12, [sp, #424]
	add	r2, r12, r2
	sub	r12, r2, #3
	str	r12, [sp, #424]
	ldr	r12, [sp, #420]
	sub	r4, r2, #2
	str	r4, [sp, #424]
	ldrb	r2, [r2, #-3]
	str	r2, [sp, #1484]
	vdup.32	q9, r2
	add	r4, sp, #1456
	vst1.32	{d18, d19}, [r4]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	ldr	r12, [sp, #508]
	vld1.64	{d18, d19}, [r1:128]
	str	r2, [sp, #1436]
	vdup.32	q11, r2
	add	r4, sp, #1408
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q9, q9, q11
	vst1.64	{d18, d19}, [r1]
	add	r2, r12, r2
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1388]
	vdup.32	q9, r2
	add	r12, sp, #1360
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #3
	ldr	r12, [sp, #476]
	vld1.64	{d22, d23}, [r3:128]
	vmla.i32	q11, q9, q10
	vst1.64	{d22, d23}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1340]
	vdup.32	q9, r2
	add	r12, sp, #1312
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #444]
	vld1.64	{d22, d23}, [lr:128]
	vmls.i32	q11, q9, q8
	vst1.64	{d22, d23}, [lr]
	sub	r2, r12, r2
	str	r2, [sp, #444]
	ldr	r2, [sp, #420]
	ldr	r12, [sp, #424]
	add	lr, r12, #1
	str	lr, [sp, #424]
	ldrb	r12, [r12]
	str	r12, [sp, #1292]
	vdup.32	q8, r12
	add	lr, sp, #1264
	vst1.32	{d16, d17}, [lr]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1244]
	vdup.32	q8, r2
	add	r12, sp, #1216
	vst1.32	{d16, d17}, [r12]
	add	r2, r2, r2, lsl #3
	ldr	r12, [sp, #476]
	vld1.64	{d18, d19}, [r3:128]
	vmla.i32	q9, q8, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #476]
	ldr	r2, [sp, #420]
	ldr	r3, [sp, #424]
	ldrb	r3, [r3]
	str	r3, [sp, #1196]
	vdup.32	q8, r3
	add	r12, sp, #1168
	vst1.32	{d16, d17}, [r12]
	ldrb	r2, [r2, -r3]
	strb	r2, [sp, #431]
	ldrb	r2, [sp, #431]
	mov	r3, r2
	ldr	r12, [sp, #508]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1148]
	vdup.32	q9, r2
	add	r2, sp, #1120
	vst1.32	{d18, d19}, [r2]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	vmov.f64	d24, d16
	vmov.32	r1, d24[0]
	vmov.32	r2, d24[1]
	vmov.f64	d24, d17
	vmov.32	lr, d24[0]
	add	r2, r1, r2
	add	r2, r2, lr
	add	r3, r12, r3
	mul	r0, r3, r0
	ldr	r12, [sp, #416]         @ 4-byte Reload
	str	r3, [r12, #128]
	cmp	r2, r0
	str	r3, [sp, #108]          @ 4-byte Spill
	str	r1, [sp, #104]          @ 4-byte Spill
	str	r2, [sp, #100]          @ 4-byte Spill
	beq	.LBB13_60
@ BB#56:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_58
@ BB#57:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #108]          @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #128]
	b	.LBB13_59
.LBB13_58:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #104]          @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #128]
.LBB13_59:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_60
.LBB13_60:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #416]          @ 4-byte Reload
	ldr	r2, [r1, #128]
	str	r2, [sp, #508]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1100]
	vdup.32	q8, r2
	add	r3, sp, #1072
	vst1.32	{d16, d17}, [r3]
	vmov.i32	q9, #0x9
	add	r2, r2, r2, lsl #3
	ldr	r3, [sp, #476]
	add	r12, sp, #480
	vld1.64	{d20, d21}, [r12:128]
	vmla.i32	q10, q8, q9
	vst1.64	{d20, d21}, [r12]
	vmov.f64	d22, d20
	vmov.32	r12, d22[0]
	vmov.32	lr, d22[1]
	vmov.f64	d22, d21
	vmov.32	r4, d22[0]
	add	lr, r12, lr
	add	lr, lr, r4
	add	r2, r3, r2
	mul	r0, r2, r0
	str	r2, [r1, #96]
	cmp	lr, r0
	str	r2, [sp, #96]           @ 4-byte Spill
	str	lr, [sp, #92]           @ 4-byte Spill
	str	r12, [sp, #88]          @ 4-byte Spill
	beq	.LBB13_65
@ BB#61:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #92]           @ 4-byte Reload
	ldr	r1, [sp, #88]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_63
@ BB#62:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #96]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB13_64
.LBB13_63:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #88]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #96]
.LBB13_64:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_65
.LBB13_65:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #416]          @ 4-byte Reload
	ldr	r2, [r1, #96]
	str	r2, [sp, #476]
	ldrb	r2, [sp, #431]
	str	r2, [sp, #1052]
	vdup.32	q8, r2
	add	r3, sp, #1024
	vst1.32	{d16, d17}, [r3]
	vmov.i32	q9, #0x3
	add	r2, r2, r2, lsl #1
	ldr	r3, [sp, #444]
	add	r12, sp, #448
	vld1.64	{d20, d21}, [r12:128]
	vmla.i32	q10, q8, q9
	vst1.64	{d20, d21}, [r12]
	vmov.f64	d22, d20
	vmov.32	r12, d22[0]
	vmov.32	lr, d22[1]
	vmov.f64	d22, d21
	vmov.32	r4, d22[0]
	add	lr, r12, lr
	add	lr, lr, r4
	add	r2, r3, r2
	mul	r0, r2, r0
	str	r2, [r1, #64]
	cmp	lr, r0
	str	r2, [sp, #84]           @ 4-byte Spill
	str	lr, [sp, #80]           @ 4-byte Spill
	str	r12, [sp, #76]          @ 4-byte Spill
	beq	.LBB13_70
@ BB#66:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #80]           @ 4-byte Reload
	ldr	r1, [sp, #76]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_68
@ BB#67:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #84]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #64]
	b	.LBB13_69
.LBB13_68:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1, #64]
.LBB13_69:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_70
.LBB13_70:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #416]          @ 4-byte Reload
	ldr	r1, [r0, #64]
	str	r1, [sp, #444]
	ldr	r1, [sp, #476]
	cmp	r1, #0
	bne	.LBB13_72
@ BB#71:                                @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, .LCPI13_6
	adr	r0, .LCPI13_7
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #768
	vst1.64	{d16, d17}, [r0]
	vstr	s0, [sp, #764]
	b	.LBB13_78
.LBB13_72:                              @   in Loop: Header=BB13_13 Depth=2
	vmov.f32	s0, #3.000000e+00
	ldr	r0, [sp, #508]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	ldr	r1, [sp, #476]
	vmov	s4, r1
	vcvt.f32.s32	s4, s4
	vstr	s2, [sp, #1004]
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	add	r0, sp, #976
	vst1.32	{d16, d17}, [r0]
	vstr	s4, [sp, #956]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	add	r0, sp, #928
	vst1.32	{d18, d19}, [r0]
	vorr	q2, q9, q9
	vmov.f32	s6, s11
	vorr	q3, q8, q8
	vmov.f32	s1, s15
	vdiv.f32	s6, s1, s6
	vmov.f32	s1, s10
	vmov.f32	s3, s14
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s9
	vmov.f32	s5, s13
	vdiv.f32	s3, s5, s3
	vmov.f32	s5, s8
	vmov.f32	s7, s12
	vdiv.f32	s5, s7, s5
	vmov.f32	s8, s5
	vmov.f32	s9, s3
	vmov.f32	s10, s1
	vmov.f32	s11, s6
	add	r0, sp, #768
	vst1.64	{d4, d5}, [r0]
	vmov.f32	s6, s8
	vmov.f32	s1, s9
	vmov.f32	s3, s10
	vadd.f32	s1, s6, s1
	vadd.f32	s1, s1, s3
	vdiv.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s2, [r0, #32]
	vcmpe.f32	s1, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #72]           @ 4-byte Spill
	vstr	s6, [sp, #68]           @ 4-byte Spill
	vstr	s1, [sp, #64]           @ 4-byte Spill
	beq	.LBB13_77
@ BB#73:                                @   in Loop: Header=BB13_13 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #64]           @ 4-byte Reload
	vldr	s4, [sp, #68]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB13_75
@ BB#74:                                @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, [sp, #72]           @ 4-byte Reload
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s0, [r0, #32]
	b	.LBB13_76
.LBB13_75:                              @   in Loop: Header=BB13_13 Depth=2
	vldr	s0, [sp, #68]           @ 4-byte Reload
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vstr	s0, [r0, #32]
.LBB13_76:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_77
.LBB13_77:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #416]          @ 4-byte Reload
	vldr	s0, [r0, #32]
	vstr	s0, [sp, #764]
.LBB13_78:                              @   in Loop: Header=BB13_13 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [sp, #764]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_80
@ BB#79:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x0
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #572]
	vmov.i32	q8, #0x1
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_89
.LBB13_80:                              @   in Loop: Header=BB13_13 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [sp, #764]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB13_82
@ BB#81:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x1
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #572]
	vmov.i32	q8, #0x0
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_88
.LBB13_82:                              @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #444]
	cmp	r0, #0
	ble	.LBB13_86
@ BB#83:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i8	q8, #0xff
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mvn	r1, #0
	str	r1, [sp, #572]
	vmov.i32	q8, #0x1
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
	b	.LBB13_87
	.p2align	2
@ BB#84:
.LCPI13_6:
	.long	1232348160              @ float 1.0E+6
	.p2align	4
@ BB#85:
.LCPI13_7:
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
.LBB13_86:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #576
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #572]
	add	r1, sp, #544
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #540]
.LBB13_87:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_88
.LBB13_88:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_89
.LBB13_89:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #60]           @ 4-byte Spill
	ble	.LBB13_94
@ BB#90:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	blt	.LBB13_94
@ BB#91:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12, lsl #1
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #52]           @ 4-byte Spill
	ble	.LBB13_94
@ BB#92:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #636]
	ldr	r2, [sp, #900]
	ldr	r3, [sp, #700]
	ldr	r12, [sp, #572]
	vdup.32	q8, r12
	add	lr, sp, #576
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12, lsl #1
	ldr	r12, [sp, #828]
	vdup.32	q8, r12
	add	lr, sp, #832
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #668]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #540]
	vdup.32	q8, r12
	add	lr, sp, #544
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	blt	.LBB13_94
@ BB#93:                                @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #896]
	ldr	r2, [sp, #700]
	ldr	r3, [sp, #828]
	mov	r12, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r3, sp, #832
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, r12
	ldr	r3, [sp, #668]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB13_94:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_95
.LBB13_95:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_96
.LBB13_96:                              @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_97
.LBB13_97:                              @   in Loop: Header=BB13_13 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #668]
	add	r2, sp, #672
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
	ldr	r12, [sp, #416]         @ 4-byte Reload
	str	r1, [r12]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB13_102
@ BB#98:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_100
@ BB#99:                                @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1]
	b	.LBB13_101
.LBB13_100:                             @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #416]          @ 4-byte Reload
	str	r0, [r1]
.LBB13_101:                             @   in Loop: Header=BB13_13 Depth=2
	b	.LBB13_102
.LBB13_102:                             @   in Loop: Header=BB13_13 Depth=2
	ldr	r0, [sp, #416]          @ 4-byte Reload
	ldr	r1, [r0]
	str	r1, [sp, #668]
	b	.LBB13_13
.LBB13_103:                             @   in Loop: Header=BB13_11 Depth=1
	b	.LBB13_104
.LBB13_104:                             @   in Loop: Header=BB13_11 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #700]
	add	r2, sp, #704
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
	ldr	r12, [sp, #412]         @ 4-byte Reload
	str	r1, [r12, #4064]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB13_109
@ BB#105:                               @   in Loop: Header=BB13_11 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB13_107
@ BB#106:                               @   in Loop: Header=BB13_11 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #412]          @ 4-byte Reload
	str	r0, [r1, #4064]
	b	.LBB13_108
.LBB13_107:                             @   in Loop: Header=BB13_11 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #412]          @ 4-byte Reload
	str	r0, [r1, #4064]
.LBB13_108:                             @   in Loop: Header=BB13_11 Depth=1
	b	.LBB13_109
.LBB13_109:                             @   in Loop: Header=BB13_11 Depth=1
	ldr	r0, [sp, #412]          @ 4-byte Reload
	ldr	r1, [r0, #4064]
	str	r1, [sp, #700]
	b	.LBB13_11
.LBB13_110:
	ldr	r0, [sp, #908]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
@ BB#111:
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cantunwind
	.fnend

	.globl	susan_edges_small
	.p2align	4
	.type	susan_edges_small,%function
	.code	32                      @ @susan_edges_small
susan_edges_small:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #4288
	bfc	sp, #0, #4
	add	r8, sp, #4096
	add	r12, r8, #12
	add	r8, sp, #2048
	add	lr, r8, #140
	ldr	r4, [r11, #16]
	ldr	r5, [r11, #12]
	ldr	r6, [r11, #8]
	movw	r7, #1
	str	r0, [sp, #888]
	str	r1, [sp, #884]
	str	r2, [sp, #880]
	str	r3, [sp, #876]
	str	r6, [sp, #844]
	str	r5, [sp, #812]
	str	r4, [sp, #780]
	ldr	r0, [sp, #884]
	ldr	r1, [sp, #812]
	vdup.32	q8, r1
	add	r2, sp, #816
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #780]
	vdup.32	q8, r2
	add	r3, sp, #784
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	lsl	r2, r1, #2
	mov	r1, #0
	str	r12, [sp, #400]         @ 4-byte Spill
	str	lr, [sp, #396]          @ 4-byte Spill
	str	r7, [sp, #392]          @ 4-byte Spill
	bl	memset
	adr	r1, .LCPI14_4
	vld1.64	{d16, d17}, [r1:128]
	add	r1, sp, #848
	vst1.64	{d16, d17}, [r1]
	movw	r1, #730
	str	r1, [sp, #844]
	vmov.i32	q8, #0x1
	add	r1, sp, #688
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #392]          @ 4-byte Reload
	str	r1, [sp, #684]
	str	r0, [sp, #388]          @ 4-byte Spill
	b	.LBB14_2
	.p2align	4
@ BB#1:
.LCPI14_4:
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
	.long	730                     @ 0x2da
.LBB14_2:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB14_4 Depth 2
	ldr	r0, [sp, #684]
	ldr	r1, [sp, #780]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #784
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #368
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB14_11
@ BB#3:                                 @   in Loop: Header=BB14_2 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #656
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #652]
.LBB14_4:                               @   Parent Loop BB14_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #652]
	ldr	r1, [sp, #812]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #816
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #1
	cmp	r0, r1
	add	lr, sp, #352
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB14_9
@ BB#5:                                 @   in Loop: Header=BB14_4 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #592
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #588]
	ldr	r1, [sp, #888]
	ldr	r2, [sp, #684]
	vdup.32	q8, r2
	add	r3, sp, #688
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #1
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #652]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #408]
	ldr	r1, [sp, #876]
	ldr	r2, [sp, #888]
	ldr	r12, [sp, #684]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #812]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #652]
	vdup.32	q8, r4
	add	r5, sp, #656
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #404]
	ldr	r2, [sp, #408]
	add	r3, r2, #1
	str	r3, [sp, #408]
	ldrb	r2, [r2]
	str	r2, [sp, #4012]
	vdup.32	q8, r2
	add	r3, sp, #3984
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #588]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3964]
	vdup.32	q9, r1
	add	r3, sp, #3936
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #404]
	ldr	r2, [sp, #408]
	add	r3, r2, #1
	str	r3, [sp, #408]
	ldrb	r2, [r2]
	str	r2, [sp, #3916]
	vdup.32	q8, r2
	add	r3, sp, #3888
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3868]
	vdup.32	q9, r1
	add	r3, sp, #3840
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #404]
	ldr	r2, [sp, #408]
	ldrb	r2, [r2]
	str	r2, [sp, #3820]
	vdup.32	q8, r2
	add	r3, sp, #3792
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3772]
	vdup.32	q9, r1
	add	r3, sp, #3744
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #812]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #408]
	add	r1, r2, r1
	sub	r2, r1, #2
	str	r2, [sp, #408]
	ldr	r2, [sp, #404]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #3724]
	vdup.32	q8, r1
	add	r3, sp, #3696
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3676]
	vdup.32	q9, r1
	add	r3, sp, #3648
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #408]
	add	r2, r1, #2
	str	r2, [sp, #408]
	ldr	r2, [sp, #404]
	ldrb	r1, [r1, #2]
	str	r1, [sp, #3628]
	vdup.32	q8, r1
	add	r3, sp, #3600
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3580]
	vdup.32	q9, r1
	add	r3, sp, #3552
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #812]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #408]
	add	r1, r2, r1
	sub	r2, r1, #2
	str	r2, [sp, #408]
	ldr	r2, [sp, #404]
	sub	r3, r1, #1
	str	r3, [sp, #408]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #3532]
	vdup.32	q8, r1
	add	r3, sp, #3504
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3484]
	vdup.32	q9, r1
	add	r3, sp, #3456
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #404]
	ldr	r2, [sp, #408]
	add	r3, r2, #1
	str	r3, [sp, #408]
	ldrb	r2, [r2]
	str	r2, [sp, #3436]
	vdup.32	q8, r2
	add	r3, sp, #3408
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3388]
	vdup.32	q9, r1
	add	r3, sp, #3360
	vst1.32	{d18, d19}, [r3]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #588]
	ldr	r1, [sp, #404]
	ldr	r2, [sp, #408]
	ldrb	r2, [r2]
	str	r2, [sp, #3340]
	vdup.32	q8, r2
	add	r3, sp, #3312
	vst1.32	{d16, d17}, [r3]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	r3, [sp, #588]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [sp, #3292]
	vdup.32	q9, r1
	add	r1, sp, #3264
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, r3, r2
	str	r0, [sp, #588]
	ldr	r0, [sp, #588]
	ldr	r1, [sp, #844]
	cmp	r0, r1
	add	lr, sp, #336
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bgt	.LBB14_7
@ BB#6:                                 @   in Loop: Header=BB14_4 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #844]
	vdup.32	q8, r1
	add	r2, sp, #848
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #588]
	sub	r1, r1, r2
	ldr	r2, [sp, #884]
	ldr	r3, [sp, #684]
	vdup.32	q8, r3
	add	r12, sp, #688
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #652]
	vdup.32	q8, lr
	add	r4, sp, #656
	vst1.64	{d16, d17}, [r4:128]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #332]          @ 4-byte Spill
	str	r12, [sp, #328]         @ 4-byte Spill
.LBB14_7:                               @   in Loop: Header=BB14_4 Depth=2
	b	.LBB14_8
.LBB14_8:                               @   in Loop: Header=BB14_4 Depth=2
	ldr	r0, [sp, #652]
	vdup.32	q8, r0
	add	r1, sp, #656
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #652]
	add	lr, sp, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB14_4
.LBB14_9:                               @   in Loop: Header=BB14_2 Depth=1
	b	.LBB14_10
.LBB14_10:                              @   in Loop: Header=BB14_2 Depth=1
	ldr	r0, [sp, #684]
	vdup.32	q8, r0
	add	r1, sp, #688
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #684]
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB14_2
.LBB14_11:
	movw	r0, #2
	vmov.i32	q8, #0x2
	add	r1, sp, #688
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #684]
.LBB14_12:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB14_14 Depth 2
	ldr	r0, [sp, #684]
	ldr	r1, [sp, #780]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #784
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #2
	cmp	r0, r1
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB14_107
@ BB#13:                                @   in Loop: Header=BB14_12 Depth=1
	movw	r0, #2
	vmov.i32	q8, #0x2
	add	r1, sp, #656
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #652]
.LBB14_14:                              @   Parent Loop BB14_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #652]
	ldr	r1, [sp, #812]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #816
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #2
	cmp	r0, r1
	add	lr, sp, #256
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB14_100
@ BB#15:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #884]
	ldr	r2, [sp, #684]
	ldr	r3, [sp, #812]
	vdup.32	q8, r3
	add	r12, sp, #816
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #652]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #252]          @ 4-byte Spill
	str	r3, [sp, #248]          @ 4-byte Spill
	ble	.LBB14_91
@ BB#16:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #884]
	ldr	r2, [sp, #684]
	ldr	r3, [sp, #812]
	vdup.32	q8, r3
	add	r12, sp, #816
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #652]
	mla	r2, r2, r3, r12
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [sp, #620]
	ldr	r1, [sp, #844]
	vdup.32	q8, r1
	add	r2, sp, #848
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #620]
	vdup.32	q8, r3
	add	r12, sp, #624
	vst1.64	{d16, d17}, [r12:128]
	vld1.64	{d18, d19}, [r2:128]
	vsub.i32	q8, q9, q8
	add	r2, sp, #592
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d20, d16
	vmov.32	r2, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r2, r12
	add	r12, r12, lr
	sub	r1, r1, r3
	mul	r0, r1, r0
	add	lr, sp, #4096
	str	r1, [lr, #172]
	cmp	r12, r0
	str	r1, [sp, #244]          @ 4-byte Spill
	str	r12, [sp, #240]         @ 4-byte Spill
	str	r2, [sp, #236]          @ 4-byte Spill
	beq	.LBB14_22
@ BB#17:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #240]          @ 4-byte Reload
	ldr	r1, [sp, #236]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_20
@ BB#18:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #244]          @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #172]
	b	.LBB14_21
	.p2align	3
@ BB#19:
.LCPI14_5:
	.long	2576980378              @ double 0.40000000000000002
	.long	1071225241
.LBB14_20:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #236]          @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #172]
.LBB14_21:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_22
.LBB14_22:                              @   in Loop: Header=BB14_14 Depth=2
	add	lr, sp, #4096
	ldr	r0, [lr, #172]
	str	r0, [sp, #588]
	ldr	r0, [sp, #876]
	ldr	r1, [sp, #888]
	ldr	r2, [sp, #684]
	ldr	r3, [sp, #812]
	mov	r12, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r3, sp, #816
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, r12
	ldr	r3, [sp, #652]
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	str	r0, [sp, #404]
	ldr	r0, [sp, #588]
	cmp	r0, #250
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	ble	.LBB14_52
@ BB#23:                                @   in Loop: Header=BB14_14 Depth=2
	vldr	d16, .LCPI14_5
	ldr	r0, [sp, #888]
	ldr	r1, [sp, #684]
	sub	r1, r1, #1
	ldr	r2, [sp, #812]
	vdup.32	q9, r2
	add	r3, sp, #816
	vst1.64	{d18, d19}, [r3:128]
	mla	r0, r1, r2, r0
	ldr	r1, [sp, #652]
	add	r0, r0, r1
	sub	r0, r0, #1
	str	r0, [sp, #408]
	vmov.i32	q9, #0x0
	add	r0, sp, #496
	vst1.64	{d18, d19}, [r0]
	mov	r1, #0
	str	r1, [sp, #492]
	add	r2, sp, #464
	vst1.64	{d18, d19}, [r2]
	str	r1, [sp, #460]
	ldr	r1, [sp, #404]
	ldr	r12, [sp, #408]
	add	lr, r12, #1
	str	lr, [sp, #408]
	ldrb	r12, [r12]
	str	r12, [sp, #3244]
	vdup.32	q9, r12
	add	lr, sp, #3216
	vst1.32	{d18, d19}, [lr]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #492]
	vdup.32	q9, r12
	vst1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #3196]
	vdup.32	q10, r1
	add	lr, sp, #3168
	vst1.32	{d20, d21}, [lr]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r1, r12, r1
	str	r1, [sp, #492]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #460]
	vdup.32	q9, r12
	vst1.64	{d18, d19}, [r2:128]
	str	r1, [sp, #3148]
	vdup.32	q10, r1
	add	lr, sp, #3120
	vst1.32	{d20, d21}, [lr]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #460]
	ldr	r1, [sp, #404]
	ldr	r12, [sp, #408]
	add	lr, r12, #1
	str	lr, [sp, #408]
	ldrb	r12, [r12]
	str	r12, [sp, #3100]
	vdup.32	q9, r12
	add	lr, sp, #3072
	vst1.32	{d18, d19}, [lr]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #460]
	vld1.64	{d18, d19}, [r2:128]
	str	r1, [sp, #3052]
	vdup.32	q10, r1
	add	lr, sp, #3024
	vst1.32	{d20, d21}, [lr]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #460]
	ldr	r1, [sp, #404]
	ldr	r12, [sp, #408]
	ldrb	r12, [r12]
	str	r12, [sp, #3004]
	vdup.32	q9, r12
	add	lr, sp, #2976
	vst1.32	{d18, d19}, [lr]
	ldrb	r1, [r1, -r12]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #492]
	vld1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #2956]
	vdup.32	q10, r1
	add	lr, sp, #2928
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r1, r12, r1
	str	r1, [sp, #492]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #460]
	vld1.64	{d18, d19}, [r2:128]
	str	r1, [sp, #2908]
	vdup.32	q10, r1
	add	lr, sp, #2880
	vst1.32	{d20, d21}, [lr]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	sub	r1, r12, r1
	str	r1, [sp, #460]
	ldr	r1, [sp, #812]
	vdup.32	q9, r1
	vst1.64	{d18, d19}, [r3:128]
	ldr	r12, [sp, #408]
	add	r1, r12, r1
	sub	r12, r1, #2
	str	r12, [sp, #408]
	ldr	r12, [sp, #404]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #2860]
	vdup.32	q9, r1
	add	lr, sp, #2832
	vst1.32	{d18, d19}, [lr]
	ldrb	r1, [r12, -r1]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #492]
	vld1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #2812]
	vdup.32	q10, r1
	add	lr, sp, #2784
	vst1.32	{d20, d21}, [lr]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r1, r12, r1
	str	r1, [sp, #492]
	ldr	r1, [sp, #408]
	add	r12, r1, #2
	str	r12, [sp, #408]
	ldr	r12, [sp, #404]
	ldrb	r1, [r1, #2]
	str	r1, [sp, #2764]
	vdup.32	q9, r1
	add	lr, sp, #2736
	vst1.32	{d18, d19}, [lr]
	ldrb	r1, [r12, -r1]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r12, [sp, #492]
	vld1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #2716]
	vdup.32	q10, r1
	add	lr, sp, #2688
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r1, r12, r1
	str	r1, [sp, #492]
	ldr	r1, [sp, #812]
	vdup.32	q9, r1
	vst1.64	{d18, d19}, [r3:128]
	ldr	r3, [sp, #408]
	add	r1, r3, r1
	sub	r3, r1, #2
	str	r3, [sp, #408]
	ldr	r3, [sp, #404]
	sub	r12, r1, #1
	str	r12, [sp, #408]
	ldrb	r1, [r1, #-2]
	str	r1, [sp, #2668]
	vdup.32	q9, r1
	add	r12, sp, #2640
	vst1.32	{d18, d19}, [r12]
	ldrb	r1, [r3, -r1]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r3, [sp, #492]
	vld1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #2620]
	vdup.32	q10, r1
	add	r12, sp, #2592
	vst1.32	{d20, d21}, [r12]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r1, r3, r1
	str	r1, [sp, #492]
	ldrb	r1, [sp, #415]
	ldr	r3, [sp, #460]
	vld1.64	{d18, d19}, [r2:128]
	str	r1, [sp, #2572]
	vdup.32	q10, r1
	add	r12, sp, #2544
	vst1.32	{d20, d21}, [r12]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	add	r1, r3, r1
	str	r1, [sp, #460]
	ldr	r1, [sp, #404]
	ldr	r3, [sp, #408]
	add	r12, r3, #1
	str	r12, [sp, #408]
	ldrb	r3, [r3]
	str	r3, [sp, #2524]
	vdup.32	q9, r3
	add	r12, sp, #2496
	vst1.32	{d18, d19}, [r12]
	ldrb	r1, [r1, -r3]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r3, [sp, #460]
	vld1.64	{d18, d19}, [r2:128]
	str	r1, [sp, #2476]
	vdup.32	q10, r1
	add	r12, sp, #2448
	vst1.32	{d20, d21}, [r12]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	add	r1, r3, r1
	str	r1, [sp, #460]
	ldr	r1, [sp, #404]
	ldr	r3, [sp, #408]
	ldrb	r3, [r3]
	str	r3, [sp, #2428]
	vdup.32	q9, r3
	add	r12, sp, #2400
	vst1.32	{d18, d19}, [r12]
	ldrb	r1, [r1, -r3]
	strb	r1, [sp, #415]
	ldrb	r1, [sp, #415]
	ldr	r3, [sp, #492]
	vld1.64	{d18, d19}, [r0:128]
	str	r1, [sp, #2380]
	vdup.32	q10, r1
	add	r12, sp, #2352
	vst1.32	{d20, d21}, [r12]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r0, r3, r1
	str	r0, [sp, #492]
	ldrb	r0, [sp, #415]
	ldr	r1, [sp, #460]
	vld1.64	{d18, d19}, [r2:128]
	str	r0, [sp, #2332]
	vdup.32	q10, r0
	add	r3, sp, #2304
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r2]
	add	r0, r1, r0
	str	r0, [sp, #460]
	ldr	r1, [sp, #492]
	mul	r0, r0, r0
	mla	r0, r1, r1, r0
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov	r0, r1, d17
	vstr	d16, [sp, #200]         @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	vstr	s0, [sp, #748]
	vcvt.f64.f32	d16, s0
	vldr	s0, [sp, #588]
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #396]          @ 4-byte Reload
	vstr	d17, [r0, #92]
	vorr	q10, q9, q9
	add	r1, sp, #2256
	vst1.32	{d18, d19}, [r1]
	vldr	d22, [sp, #200]         @ 8-byte Reload
	vmul.f64	d17, d22, d17
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	add	lr, sp, #176
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	ble	.LBB14_48
@ BB#24:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
	ldr	r0, [sp, #492]
	cmp	r0, #0
	bne	.LBB14_26
@ BB#25:                                @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, .LCPI14_6
	adr	r0, .LCPI14_7
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #752
	vst1.64	{d16, d17}, [r0]
	vstr	s0, [sp, #748]
	b	.LBB14_27
.LBB14_26:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #460]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #492]
	vmov	s2, r1
	vcvt.f32.s32	s2, s2
	ldr	r2, [sp, #396]          @ 4-byte Reload
	vstr	s0, [r2, #48]
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	add	r0, sp, #2208
	vst1.32	{d16, d17}, [r0]
	vstr	s2, [r2]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	add	r0, sp, #2160
	vst1.32	{d18, d19}, [r0]
	vorr	q1, q9, q9
	vmov.f32	s8, s7
	vorr	q3, q8, q8
	vmov.f32	s10, s15
	vdiv.f32	s8, s10, s8
	vmov.f32	s10, s6
	vmov.f32	s1, s14
	vdiv.f32	s10, s1, s10
	vmov.f32	s1, s5
	vmov.f32	s3, s13
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s4
	vmov.f32	s9, s12
	vdiv.f32	s3, s9, s3
	vmov.f32	s4, s3
	vmov.f32	s5, s1
	vmov.f32	s6, s10
	vmov.f32	s7, s8
	vorr	q8, q1, q1
	add	r0, sp, #752
	vst1.64	{d2, d3}, [r0]
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #748]
	add	lr, sp, #160
	vst1.64	{d16, d17}, [lr:128]    @ 16-byte Spill
.LBB14_27:                              @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, [sp, #748]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_34
@ BB#28:                                @   in Loop: Header=BB14_14 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #748]
	add	r0, sp, #752
	vld1.64	{d16, d17}, [r0:128]
	vneg.f32	q8, q8
	vst1.64	{d16, d17}, [r0]
	vorr	q1, q8, q8
	vmov.f32	s8, s4
	vmov.f32	s10, s5
	vmov.f32	s12, s6
	vadd.f32	s10, s8, s10
	vadd.f32	s10, s10, s12
	vneg.f32	s2, s2
	vmul.f32	s0, s2, s0
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s2, [r0, #128]
	vcmpe.f32	s10, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #156]          @ 4-byte Spill
	vstr	s10, [sp, #152]         @ 4-byte Spill
	vstr	s8, [sp, #148]          @ 4-byte Spill
	beq	.LBB14_33
@ BB#29:                                @   in Loop: Header=BB14_14 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #152]          @ 4-byte Reload
	vldr	s4, [sp, #148]          @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB14_31
@ BB#30:                                @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, [sp, #156]          @ 4-byte Reload
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s0, [r0, #128]
	b	.LBB14_32
.LBB14_31:                              @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, [sp, #148]          @ 4-byte Reload
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s0, [r0, #128]
.LBB14_32:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_33
.LBB14_33:                              @   in Loop: Header=BB14_14 Depth=2
	mvn	r0, #0
	add	lr, sp, #4096
	ldr	r1, [lr, #140]
	str	r1, [sp, #748]
	vmov.i8	q8, #0xff
	add	r1, sp, #432
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #428]
	b	.LBB14_35
.LBB14_34:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #432
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #428]
.LBB14_35:                              @   in Loop: Header=BB14_14 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [sp, #748]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_37
@ BB#36:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x0
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #556]
	vmov.i32	q8, #0x1
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_44
.LBB14_37:                              @   in Loop: Header=BB14_14 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [sp, #748]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB14_39
@ BB#38:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x1
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #556]
	vmov.i32	q8, #0x0
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_43
.LBB14_39:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #428]
	cmp	r0, #0
	ble	.LBB14_41
@ BB#40:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #556]
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_42
.LBB14_41:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i8	q8, #0xff
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mvn	r1, #0
	str	r1, [sp, #556]
	vmov.i32	q8, #0x1
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
.LBB14_42:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_43
.LBB14_43:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_44
.LBB14_44:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #620]
	ldr	r2, [sp, #884]
	ldr	r3, [sp, #684]
	ldr	r12, [sp, #556]
	vdup.32	q8, r12
	add	lr, sp, #560
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #652]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #524]
	vdup.32	q8, r12
	add	lr, sp, #528
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #144]          @ 4-byte Spill
	ble	.LBB14_47
@ BB#45:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #620]
	ldr	r2, [sp, #884]
	ldr	r3, [sp, #684]
	ldr	r12, [sp, #556]
	vdup.32	q8, r12
	add	lr, sp, #560
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #652]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #524]
	vdup.32	q8, r12
	add	lr, sp, #528
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	blt	.LBB14_47
@ BB#46:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	ldr	r1, [sp, #880]
	ldr	r2, [sp, #684]
	ldr	r3, [sp, #812]
	mov	r12, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r3, sp, #816
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, r12
	ldr	r3, [sp, #652]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #112
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB14_47:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_49
.LBB14_48:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB14_49:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_53
	.p2align	2
@ BB#50:
.LCPI14_6:
	.long	1232348160              @ float 1.0E+6
	.p2align	4
@ BB#51:
.LCPI14_7:
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
.LBB14_52:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB14_53:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #716]
	cmp	r0, #1
	bne	.LBB14_90
@ BB#54:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #888]
	ldr	r2, [sp, #684]
	sub	r2, r2, #1
	ldr	r3, [sp, #812]
	vdup.32	q8, r3
	add	r12, sp, #816
	vst1.64	{d16, d17}, [r12:128]
	mla	r1, r2, r3, r1
	ldr	r2, [sp, #652]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #408]
	vmov.i32	q8, #0x0
	add	r1, sp, #496
	vst1.64	{d16, d17}, [r1]
	mov	r2, #0
	str	r2, [sp, #492]
	add	r3, sp, #464
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #460]
	add	lr, sp, #432
	vst1.64	{d16, d17}, [lr]
	str	r2, [sp, #428]
	ldr	r2, [sp, #404]
	ldr	r4, [sp, #408]
	add	r5, r4, #1
	str	r5, [sp, #408]
	ldrb	r4, [r4]
	str	r4, [sp, #2140]
	vdup.32	q8, r4
	add	r5, sp, #2112
	vst1.32	{d16, d17}, [r5]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #2092]
	vdup.32	q9, r2
	add	r5, sp, #2064
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #492]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #460]
	vld1.64	{d16, d17}, [r3:128]
	str	r2, [sp, #2044]
	vdup.32	q9, r2
	add	r5, sp, #2016
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #460]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #428]
	vdup.32	q8, r4
	vst1.64	{d16, d17}, [lr:128]
	str	r2, [sp, #1996]
	vdup.32	q9, r2
	add	r5, sp, #1968
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	add	r2, r4, r2
	str	r2, [sp, #428]
	ldr	r2, [sp, #404]
	ldr	r4, [sp, #408]
	add	r5, r4, #1
	str	r5, [sp, #408]
	ldrb	r4, [r4]
	str	r4, [sp, #1948]
	vdup.32	q8, r4
	add	r5, sp, #1920
	vst1.32	{d16, d17}, [r5]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #460]
	vld1.64	{d16, d17}, [r3:128]
	str	r2, [sp, #1900]
	vdup.32	q9, r2
	add	r5, sp, #1872
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #460]
	ldr	r2, [sp, #404]
	ldr	r4, [sp, #408]
	ldrb	r4, [r4]
	str	r4, [sp, #1852]
	vdup.32	q8, r4
	add	r5, sp, #1824
	vst1.32	{d16, d17}, [r5]
	ldrb	r2, [r2, -r4]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1804]
	vdup.32	q9, r2
	add	r5, sp, #1776
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #492]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #460]
	vld1.64	{d16, d17}, [r3:128]
	str	r2, [sp, #1756]
	vdup.32	q9, r2
	add	r5, sp, #1728
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	add	r2, r4, r2
	str	r2, [sp, #460]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #428]
	vld1.64	{d16, d17}, [lr:128]
	str	r2, [sp, #1708]
	vdup.32	q9, r2
	add	r5, sp, #1680
	vst1.32	{d18, d19}, [r5]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	sub	r2, r4, r2
	str	r2, [sp, #428]
	ldr	r2, [sp, #812]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #408]
	add	r2, r4, r2
	sub	r4, r2, #2
	str	r4, [sp, #408]
	ldr	r4, [sp, #404]
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #1660]
	vdup.32	q8, r2
	add	r5, sp, #1632
	vst1.32	{d16, d17}, [r5]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1612]
	vdup.32	q9, r2
	add	r5, sp, #1584
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #492]
	ldr	r2, [sp, #408]
	add	r4, r2, #2
	str	r4, [sp, #408]
	ldr	r4, [sp, #404]
	ldrb	r2, [r2, #2]
	str	r2, [sp, #1564]
	vdup.32	q8, r2
	add	r5, sp, #1536
	vst1.32	{d16, d17}, [r5]
	ldrb	r2, [r4, -r2]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r4, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1516]
	vdup.32	q9, r2
	add	r5, sp, #1488
	vst1.32	{d18, d19}, [r5]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	add	r2, r4, r2
	str	r2, [sp, #492]
	ldr	r2, [sp, #812]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #408]
	add	r2, r12, r2
	sub	r12, r2, #2
	str	r12, [sp, #408]
	ldr	r12, [sp, #404]
	sub	r4, r2, #1
	str	r4, [sp, #408]
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #1468]
	vdup.32	q8, r2
	add	r4, sp, #1440
	vst1.32	{d16, d17}, [r4]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r12, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1420]
	vdup.32	q9, r2
	add	r4, sp, #1392
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	add	r2, r12, r2
	str	r2, [sp, #492]
	ldrb	r2, [sp, #415]
	ldr	r12, [sp, #460]
	vld1.64	{d16, d17}, [r3:128]
	str	r2, [sp, #1372]
	vdup.32	q9, r2
	add	r4, sp, #1344
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #460]
	ldrb	r2, [sp, #415]
	ldr	r12, [sp, #428]
	vld1.64	{d16, d17}, [lr:128]
	str	r2, [sp, #1324]
	vdup.32	q9, r2
	add	r4, sp, #1296
	vst1.32	{d18, d19}, [r4]
	vsub.i32	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	sub	r2, r12, r2
	str	r2, [sp, #428]
	ldr	r2, [sp, #404]
	ldr	r12, [sp, #408]
	add	lr, r12, #1
	str	lr, [sp, #408]
	ldrb	r12, [r12]
	str	r12, [sp, #1276]
	vdup.32	q8, r12
	add	lr, sp, #1248
	vst1.32	{d16, d17}, [lr]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	ldr	r12, [sp, #460]
	vld1.64	{d16, d17}, [r3:128]
	str	r2, [sp, #1228]
	vdup.32	q9, r2
	add	lr, sp, #1200
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #460]
	ldr	r2, [sp, #404]
	ldr	r3, [sp, #408]
	ldrb	r3, [r3]
	str	r3, [sp, #1180]
	vdup.32	q8, r3
	add	r12, sp, #1152
	vst1.32	{d16, d17}, [r12]
	ldrb	r2, [r2, -r3]
	strb	r2, [sp, #415]
	ldrb	r2, [sp, #415]
	mov	r3, r2
	ldr	r12, [sp, #492]
	vld1.64	{d16, d17}, [r1:128]
	str	r2, [sp, #1132]
	vdup.32	q9, r2
	add	r2, sp, #1104
	vst1.32	{d18, d19}, [r2]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r1]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r2, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r2, r1, r2
	add	r2, r2, lr
	add	r3, r12, r3
	mul	r0, r3, r0
	add	lr, sp, #4096
	str	r3, [lr, #108]
	cmp	r2, r0
	str	r3, [sp, #108]          @ 4-byte Spill
	str	r1, [sp, #104]          @ 4-byte Spill
	str	r2, [sp, #100]          @ 4-byte Spill
	beq	.LBB14_59
@ BB#55:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #100]          @ 4-byte Reload
	ldr	r1, [sp, #104]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_57
@ BB#56:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #108]          @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #108]
	b	.LBB14_58
.LBB14_57:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #104]          @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #108]
.LBB14_58:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_59
.LBB14_59:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #3
	add	r4, sp, #4096
	ldr	r1, [r4, #108]
	str	r1, [sp, #492]
	ldrb	r1, [sp, #415]
	mov	r2, r1
	ldr	r3, [sp, #460]
	add	r12, sp, #464
	vld1.64	{d16, d17}, [r12:128]
	str	r1, [sp, #1084]
	vdup.32	q9, r1
	add	r1, sp, #1056
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r1, r12
	add	r12, r12, lr
	add	r2, r3, r2
	mul	r0, r2, r0
	add	lr, sp, #4096
	str	r2, [lr, #76]
	cmp	r12, r0
	str	r2, [sp, #96]           @ 4-byte Spill
	str	r1, [sp, #92]           @ 4-byte Spill
	str	r12, [sp, #88]          @ 4-byte Spill
	beq	.LBB14_64
@ BB#60:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #88]           @ 4-byte Reload
	ldr	r1, [sp, #92]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_62
@ BB#61:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #96]           @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #76]
	b	.LBB14_63
.LBB14_62:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #92]           @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #76]
.LBB14_63:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_64
.LBB14_64:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #3
	add	r4, sp, #4096
	ldr	r1, [r4, #76]
	str	r1, [sp, #460]
	ldrb	r1, [sp, #415]
	mov	r2, r1
	ldr	r3, [sp, #428]
	add	r12, sp, #432
	vld1.64	{d16, d17}, [r12:128]
	str	r1, [sp, #1036]
	vdup.32	q9, r1
	add	r1, sp, #1008
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r1, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r1, r12
	add	r12, r12, lr
	add	r2, r3, r2
	mul	r0, r2, r0
	add	lr, sp, #4096
	str	r2, [lr, #44]
	cmp	r12, r0
	str	r2, [sp, #84]           @ 4-byte Spill
	str	r1, [sp, #80]           @ 4-byte Spill
	str	r12, [sp, #76]          @ 4-byte Spill
	beq	.LBB14_69
@ BB#65:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #76]           @ 4-byte Reload
	ldr	r1, [sp, #80]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_67
@ BB#66:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #84]           @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #44]
	b	.LBB14_68
.LBB14_67:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #80]           @ 4-byte Reload
	add	lr, sp, #4096
	str	r0, [lr, #44]
.LBB14_68:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_69
.LBB14_69:                              @   in Loop: Header=BB14_14 Depth=2
	add	lr, sp, #4096
	ldr	r0, [lr, #44]
	str	r0, [sp, #428]
	ldr	r0, [sp, #460]
	cmp	r0, #0
	bne	.LBB14_71
@ BB#70:                                @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, .LCPI14_8
	adr	r0, .LCPI14_9
	vld1.64	{d16, d17}, [r0:128]
	add	r0, sp, #752
	vst1.64	{d16, d17}, [r0]
	vstr	s0, [sp, #748]
	b	.LBB14_77
.LBB14_71:                              @   in Loop: Header=BB14_14 Depth=2
	vmov.f32	s0, #3.000000e+00
	ldr	r0, [sp, #492]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	ldr	r1, [sp, #460]
	vmov	s4, r1
	vcvt.f32.s32	s4, s4
	vstr	s2, [sp, #988]
	vdup.32	q8, r0
	vcvt.f32.s32	q8, q8
	add	r0, sp, #960
	vst1.32	{d16, d17}, [r0]
	vstr	s4, [sp, #940]
	vdup.32	q9, r1
	vcvt.f32.s32	q9, q9
	add	r0, sp, #912
	vst1.32	{d18, d19}, [r0]
	vorr	q2, q9, q9
	vmov.f32	s6, s11
	vorr	q3, q8, q8
	vmov.f32	s1, s15
	vdiv.f32	s6, s1, s6
	vmov.f32	s1, s10
	vmov.f32	s3, s14
	vdiv.f32	s1, s3, s1
	vmov.f32	s3, s9
	vmov.f32	s5, s13
	vdiv.f32	s3, s5, s3
	vmov.f32	s5, s8
	vmov.f32	s7, s12
	vdiv.f32	s5, s7, s5
	vmov.f32	s8, s5
	vmov.f32	s9, s3
	vmov.f32	s10, s1
	vmov.f32	s11, s6
	add	r0, sp, #752
	vst1.64	{d4, d5}, [r0]
	vmov.f32	s6, s8
	vmov.f32	s1, s9
	vmov.f32	s3, s10
	vadd.f32	s1, s6, s1
	vadd.f32	s1, s1, s3
	vdiv.f32	s2, s2, s4
	vmul.f32	s0, s2, s0
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s2, [r0]
	vcmpe.f32	s1, s0
	vmrs	APSR_nzcv, fpscr
	vstr	s2, [sp, #72]           @ 4-byte Spill
	vstr	s6, [sp, #68]           @ 4-byte Spill
	vstr	s1, [sp, #64]           @ 4-byte Spill
	beq	.LBB14_76
@ BB#72:                                @   in Loop: Header=BB14_14 Depth=2
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [sp, #64]           @ 4-byte Reload
	vldr	s4, [sp, #68]           @ 4-byte Reload
	vdiv.f32	s6, s2, s4
	vcmpe.f32	s6, s0
	vmrs	APSR_nzcv, fpscr
	beq	.LBB14_74
@ BB#73:                                @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, [sp, #72]           @ 4-byte Reload
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s0, [r0]
	b	.LBB14_75
.LBB14_74:                              @   in Loop: Header=BB14_14 Depth=2
	vldr	s0, [sp, #68]           @ 4-byte Reload
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vstr	s0, [r0]
.LBB14_75:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_76
.LBB14_76:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #400]          @ 4-byte Reload
	vldr	s0, [r0]
	vstr	s0, [sp, #748]
.LBB14_77:                              @   in Loop: Header=BB14_14 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [sp, #748]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_79
@ BB#78:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x0
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #556]
	vmov.i32	q8, #0x1
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_86
.LBB14_79:                              @   in Loop: Header=BB14_14 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [sp, #748]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB14_81
@ BB#80:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #0
	vmov.i32	q8, #0x1
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #556]
	vmov.i32	q8, #0x0
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_85
.LBB14_81:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #428]
	cmp	r0, #0
	ble	.LBB14_83
@ BB#82:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i8	q8, #0xff
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mvn	r1, #0
	str	r1, [sp, #556]
	vmov.i32	q8, #0x1
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
	b	.LBB14_84
.LBB14_83:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	r1, sp, #560
	vst1.64	{d16, d17}, [r1]
	mov	r1, #1
	str	r1, [sp, #556]
	add	r1, sp, #528
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #524]
.LBB14_84:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_85
.LBB14_85:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_86
.LBB14_86:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #620]
	ldr	r2, [sp, #884]
	ldr	r3, [sp, #684]
	ldr	r12, [sp, #556]
	vdup.32	q8, r12
	add	lr, sp, #560
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #652]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #524]
	vdup.32	q8, r12
	add	lr, sp, #528
	vst1.64	{d16, d17}, [lr:128]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #60]           @ 4-byte Spill
	ble	.LBB14_89
@ BB#87:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #620]
	ldr	r2, [sp, #884]
	ldr	r3, [sp, #684]
	ldr	r12, [sp, #556]
	vdup.32	q8, r12
	add	lr, sp, #560
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	ldr	r12, [sp, #812]
	vdup.32	q8, r12
	add	lr, sp, #816
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #652]
	mla	r3, r3, r12, lr
	ldr	r12, [sp, #524]
	vdup.32	q8, r12
	add	lr, sp, #528
	vst1.64	{d16, d17}, [lr:128]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	blt	.LBB14_89
@ BB#88:                                @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #880]
	ldr	r2, [sp, #684]
	ldr	r3, [sp, #812]
	mov	r12, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r3, sp, #816
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, r12
	ldr	r3, [sp, #652]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
.LBB14_89:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_90
.LBB14_90:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_91
.LBB14_91:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_92
.LBB14_92:                              @   in Loop: Header=BB14_14 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #652]
	add	r2, sp, #656
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
	str	r1, [sp, #4076]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB14_97
@ BB#93:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_95
@ BB#94:                                @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #4076]
	b	.LBB14_96
.LBB14_95:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	str	r0, [sp, #4076]
.LBB14_96:                              @   in Loop: Header=BB14_14 Depth=2
	b	.LBB14_97
.LBB14_97:                              @   in Loop: Header=BB14_14 Depth=2
	ldr	r0, [sp, #4076]
	str	r0, [sp, #652]
	b	.LBB14_14
	.p2align	2
@ BB#98:
.LCPI14_8:
	.long	1232348160              @ float 1.0E+6
	.p2align	4
@ BB#99:
.LCPI14_9:
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
	.long	1232348160              @ float 1.0E+6
.LBB14_100:                             @   in Loop: Header=BB14_12 Depth=1
	b	.LBB14_101
.LBB14_101:                             @   in Loop: Header=BB14_12 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #684]
	add	r2, sp, #688
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
	str	r1, [sp, #4044]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB14_106
@ BB#102:                               @   in Loop: Header=BB14_12 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB14_104
@ BB#103:                               @   in Loop: Header=BB14_12 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #4044]
	b	.LBB14_105
.LBB14_104:                             @   in Loop: Header=BB14_12 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #4044]
.LBB14_105:                             @   in Loop: Header=BB14_12 Depth=1
	b	.LBB14_106
.LBB14_106:                             @   in Loop: Header=BB14_12 Depth=1
	ldr	r0, [sp, #4044]
	str	r0, [sp, #684]
	b	.LBB14_12
.LBB14_107:
	ldr	r0, [sp, #892]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
@ BB#108:
.Lfunc_end14:
	.size	susan_edges_small, .Lfunc_end14-susan_edges_small
	.cantunwind
	.fnend

	.globl	corner_draw
	.p2align	2
	.type	corner_draw,%function
	.code	32                      @ @corner_draw
corner_draw:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #160
	bfc	sp, #0, #4
	movw	r12, #0
	str	r0, [sp, #104]
	str	r1, [sp, #100]
	str	r2, [sp, #76]
	str	r3, [sp, #44]
	vmov.i32	q8, #0x0
	add	r0, sp, #16
	vst1.64	{d16, d17}, [r0]
	str	r12, [sp, #12]
.LBB15_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #24
	ldr	r1, [sp, #100]
	ldr	r2, [sp, #12]
	mul	r0, r2, r0
	add	r0, r1, r0
	ldr	r0, [r0, #8]
	cmp	r0, #7
	beq	.LBB15_6
@ BB#2:                                 @   in Loop: Header=BB15_1 Depth=1
	ldr	r0, [sp, #44]
	cmp	r0, #0
	bne	.LBB15_4
@ BB#3:                                 @   in Loop: Header=BB15_1 Depth=1
	movw	r0, #255
	movw	r1, #0
	mvn	r2, #0
	movw	r3, #24
	ldr	r12, [sp, #104]
	ldr	lr, [sp, #100]
	ldr	r4, [sp, #12]
	mul	r4, r4, r3
	add	lr, lr, r4
	ldr	lr, [lr, #4]
	sub	lr, lr, #1
	ldr	r4, [sp, #76]
	mul	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #100]
	ldr	r4, [sp, #12]
	mul	r3, r4, r3
	add	r3, lr, r3
	ldr	r3, [r3]
	add	r3, r12, r3
	add	r2, r3, r2
	str	r2, [sp, #40]
	ldr	r2, [sp, #40]
	add	r3, r2, #1
	str	r3, [sp, #40]
	strb	r0, [r2]
	ldr	r2, [sp, #40]
	add	r3, r2, #1
	str	r3, [sp, #40]
	strb	r0, [r2]
	ldr	r2, [sp, #40]
	strb	r0, [r2]
	ldr	r2, [sp, #76]
	sub	r2, r2, #2
	ldr	r3, [sp, #40]
	add	r2, r3, r2
	str	r2, [sp, #40]
	ldr	r2, [sp, #40]
	add	r3, r2, #1
	str	r3, [sp, #40]
	strb	r0, [r2]
	ldr	r2, [sp, #40]
	add	r3, r2, #1
	str	r3, [sp, #40]
	strb	r1, [r2]
	ldr	r1, [sp, #40]
	strb	r0, [r1]
	ldr	r1, [sp, #76]
	sub	r1, r1, #2
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #40]
	add	r2, r1, #1
	str	r2, [sp, #40]
	strb	r0, [r1]
	ldr	r1, [sp, #40]
	add	r2, r1, #1
	str	r2, [sp, #40]
	strb	r0, [r1]
	ldr	r1, [sp, #40]
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
	b	.LBB15_5
.LBB15_4:                               @   in Loop: Header=BB15_1 Depth=1
	movw	r0, #0
	movw	r1, #24
	ldr	r2, [sp, #104]
	ldr	r3, [sp, #100]
	ldr	r12, [sp, #12]
	mul	r12, r12, r1
	add	r3, r3, r12
	ldr	r3, [r3, #4]
	ldr	r12, [sp, #76]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #100]
	ldr	r12, [sp, #12]
	mul	r1, r12, r1
	add	r1, r3, r1
	ldr	r1, [r1]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #40]
	strb	r0, [r1]
	ldr	r0, [sp, #12]
	add	r0, r0, #1
	str	r0, [sp, #12]
.LBB15_5:                               @   in Loop: Header=BB15_1 Depth=1
	b	.LBB15_1
.LBB15_6:
	ldr	r0, [sp, #108]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end15:
	.size	corner_draw, .Lfunc_end15-corner_draw
	.cantunwind
	.fnend

	.globl	susan_corners
	.p2align	2
	.type	susan_corners,%function
	.code	32                      @ @susan_corners
susan_corners:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #11648
	bfc	sp, #0, #4
	add	r10, sp, #10240
	add	r12, r10, #540
	add	r10, sp, #6144
	add	lr, r10, #508
	add	r10, sp, #2048
	add	r4, r10, #472
	ldr	r5, [r11, #16]
	ldr	r6, [r11, #12]
	ldr	r7, [r11, #8]
	movw	r8, #5
	str	r0, [sp, #1992]
	str	r1, [sp, #1988]
	str	r2, [sp, #1984]
	str	r3, [sp, #1964]
	str	r7, [sp, #1960]
	str	r6, [sp, #1932]
	str	r5, [sp, #1900]
	ldr	r0, [sp, #1988]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	add	r2, sp, #1936
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #1900]
	vdup.32	q8, r3
	add	r5, sp, #1904
	vst1.64	{d16, d17}, [r5:128]
	mul	r1, r1, r3
	lsl	r1, r1, #2
	mov	r3, #0
	str	r1, [sp, #1584]         @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [sp, #1584]         @ 4-byte Reload
	str	r2, [sp, #1580]         @ 4-byte Spill
	mov	r2, r3
	str	r12, [sp, #1576]        @ 4-byte Spill
	str	lr, [sp, #1572]         @ 4-byte Spill
	str	r4, [sp, #1568]         @ 4-byte Spill
	str	r8, [sp, #1564]         @ 4-byte Spill
	str	r5, [sp, #1560]         @ 4-byte Spill
	bl	memset
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	ldr	r2, [sp, #1580]         @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	ldr	r3, [sp, #1900]
	vdup.32	q8, r3
	ldr	r12, [sp, #1560]        @ 4-byte Reload
	vst1.64	{d16, d17}, [r12:128]
	mul	r1, r1, r3
	lsl	r1, r1, #2
	str	r0, [sp, #1556]         @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	str	r0, [sp, #1640]
	ldr	r0, [sp, #1932]
	vdup.32	q8, r0
	ldr	r1, [sp, #1580]         @ 4-byte Reload
	vst1.64	{d16, d17}, [r1:128]
	ldr	r2, [sp, #1900]
	vdup.32	q8, r2
	ldr	r3, [sp, #1560]         @ 4-byte Reload
	vst1.64	{d16, d17}, [r3:128]
	mul	r0, r0, r2
	lsl	r0, r0, #2
	bl	malloc
	str	r0, [sp, #1636]
	vmov.i32	q8, #0x5
	add	r0, sp, #1680
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #1564]         @ 4-byte Reload
	str	r0, [sp, #1676]
.LBB16_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_3 Depth 2
	ldr	r0, [sp, #1676]
	ldr	r1, [sp, #1900]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1904
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #5
	cmp	r0, r1
	add	lr, sp, #1536
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_76
@ BB#2:                                 @   in Loop: Header=BB16_1 Depth=1
	movw	r0, #5
	vmov.i32	q8, #0x5
	add	r1, sp, #1648
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #1644]
.LBB16_3:                               @   Parent Loop BB16_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #1644]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1936
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #5
	cmp	r0, r1
	add	lr, sp, #1520
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_74
@ BB#4:                                 @   in Loop: Header=BB16_3 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #1872
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1992]
	ldr	r2, [sp, #1676]
	vdup.32	q8, r2
	add	r3, sp, #1680
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #1644]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #1592]
	ldr	r1, [sp, #1984]
	ldr	r2, [sp, #1992]
	ldr	r12, [sp, #1676]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1932]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #1644]
	vdup.32	q8, r4
	add	r5, sp, #1648
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r3, r2, #1
	str	r3, [sp, #1592]
	ldrb	r2, [r2]
	ldr	r3, [sp, #1576]         @ 4-byte Reload
	str	r2, [r3, #720]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #3280
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #672]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3232
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r12, r2, #1
	str	r12, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #624]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #3184
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #576]
	vdup.32	q9, r1
	add	r12, sp, #11328
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #528]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #3088
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #480]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #3040
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #1592]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #1592]
	ldr	r2, [sp, #1588]
	sub	r12, r1, #2
	str	r12, [sp, #1592]
	ldrb	r1, [r1, #-3]
	str	r1, [r3, #432]
	vdup.32	q8, r1
	add	r4, sp, #8192
	add	r12, r4, #2992
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #384]
	vdup.32	q9, r1
	add	r12, sp, #11136
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r12, r2, #1
	str	r12, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #336]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #2896
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #288]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #2848
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r12, r2, #1
	str	r12, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #240]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #2800
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #192]
	vdup.32	q9, r1
	add	r12, sp, #10944
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r12, r2, #1
	str	r12, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #144]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #2704
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #96]
	vdup.32	q9, r1
	add	r4, sp, #8192
	add	r12, r4, #2656
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r3, #48]
	vdup.32	q8, r2
	add	r4, sp, #8192
	add	r12, r4, #2608
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3]
	vdup.32	q9, r1
	add	r12, sp, #10752
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #1592]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #1592]
	ldr	r2, [sp, #1588]
	sub	r12, r1, #4
	str	r12, [sp, #1592]
	ldrb	r1, [r1, #-5]
	ldr	r12, [sp, #1572]        @ 4-byte Reload
	str	r1, [r12, #4080]
	vdup.32	q8, r1
	add	r3, sp, #8192
	add	r4, r3, #2512
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #4032]
	vdup.32	q9, r1
	add	r3, sp, #8192
	add	r4, r3, #2464
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r4, r2, #1
	str	r4, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3984]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #2416
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3936]
	vdup.32	q9, r1
	add	r4, sp, #10560
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r4, r2, #1
	str	r4, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3888]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #2320
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3840]
	vdup.32	q9, r1
	add	r3, sp, #8192
	add	r4, r3, #2272
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r4, r2, #1
	str	r4, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3792]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #2224
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3744]
	vdup.32	q9, r1
	add	r4, sp, #10368
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r4, r2, #1
	str	r4, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3696]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #2128
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3648]
	vdup.32	q9, r1
	add	r3, sp, #8192
	add	r4, r3, #2080
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	r4, r2, #1
	str	r4, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3600]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #2032
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3552]
	vdup.32	q9, r1
	add	r4, sp, #10176
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3504]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	r4, r3, #1936
	vst1.32	{d16, d17}, [r4]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3456]
	vdup.32	q9, r1
	add	r3, sp, #8192
	add	r4, r3, #1888
	vst1.32	{d18, d19}, [r4]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #1592]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #1592]
	ldr	r2, [sp, #1588]
	sub	lr, r1, #5
	str	lr, [sp, #1592]
	ldrb	r1, [r1, #-6]
	str	r1, [r12, #3408]
	vdup.32	q8, r1
	add	r3, sp, #8192
	add	lr, r3, #1840
	vst1.32	{d16, d17}, [lr]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3360]
	vdup.32	q9, r1
	add	lr, sp, #9984
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	add	lr, r2, #1
	str	lr, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3312]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	lr, r3, #1744
	vst1.32	{d16, d17}, [lr]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3264]
	vdup.32	q9, r1
	add	r3, sp, #8192
	add	lr, r3, #1696
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #1868]
	ldr	r1, [sp, #1588]
	ldr	r2, [sp, #1592]
	ldrb	r2, [r2]
	str	r2, [r12, #3216]
	vdup.32	q8, r2
	add	r3, sp, #8192
	add	lr, r3, #1648
	vst1.32	{d16, d17}, [lr]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	lr, [sp, #1868]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r12, #3168]
	vdup.32	q9, r1
	add	r1, sp, #9792
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, lr, r2
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1504
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_72
@ BB#5:                                 @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1592]
	add	r1, r0, #2
	str	r1, [sp, #1592]
	ldr	r1, [sp, #1588]
	add	r2, r0, #3
	str	r2, [sp, #1592]
	ldrb	r0, [r0, #2]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r0, [r2, #3120]
	vdup.32	q8, r0
	add	lr, sp, #8192
	add	r3, lr, #1552
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #3072]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #1504
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1488
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_71
@ BB#6:                                 @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #3024]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #1456
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2976]
	vdup.32	q9, r0
	add	r0, sp, #9600
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1472
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_70
@ BB#7:                                 @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2928]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #1360
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2880]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #1312
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1456
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_69
@ BB#8:                                 @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1932]
	vdup.32	q8, r0
	add	r1, sp, #1936
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1592]
	add	r0, r1, r0
	sub	r1, r0, #6
	str	r1, [sp, #1592]
	ldr	r1, [sp, #1588]
	sub	r2, r0, #5
	str	r2, [sp, #1592]
	ldrb	r0, [r0, #-6]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r0, [r2, #2832]
	vdup.32	q8, r0
	add	lr, sp, #8192
	add	r3, lr, #1264
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2784]
	vdup.32	q9, r0
	add	r0, sp, #9408
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1440
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_68
@ BB#9:                                 @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2736]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #1168
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2688]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #1120
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1424
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_67
@ BB#10:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2640]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #1072
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2592]
	vdup.32	q9, r0
	add	r0, sp, #9216
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1408
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_66
@ BB#11:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2544]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #976
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2496]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #928
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1392
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_65
@ BB#12:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2448]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #880
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2400]
	vdup.32	q9, r0
	add	r0, sp, #9024
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1376
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_64
@ BB#13:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2352]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #784
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2304]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #736
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1360
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_63
@ BB#14:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2256]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #688
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2208]
	vdup.32	q9, r0
	add	r0, sp, #8832
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1344
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_62
@ BB#15:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1932]
	vdup.32	q8, r0
	add	r1, sp, #1936
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1592]
	add	r0, r1, r0
	sub	r1, r0, #5
	str	r1, [sp, #1592]
	ldr	r1, [sp, #1588]
	sub	r2, r0, #4
	str	r2, [sp, #1592]
	ldrb	r0, [r0, #-5]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r0, [r2, #2160]
	vdup.32	q8, r0
	add	lr, sp, #8192
	add	r3, lr, #592
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2112]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #544
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1328
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_61
@ BB#16:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #2064]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #496
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #2016]
	vdup.32	q9, r0
	add	r0, sp, #8640
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1312
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_60
@ BB#17:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #1968]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #400
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1920]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #352
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1296
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_59
@ BB#18:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #1872]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #304
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1824]
	vdup.32	q9, r0
	add	r0, sp, #8448
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1280
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_58
@ BB#19:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #1776]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #208
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1728]
	vdup.32	q9, r0
	add	lr, sp, #8192
	add	r0, lr, #160
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1264
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_57
@ BB#20:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1932]
	vdup.32	q8, r0
	add	r1, sp, #1936
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #1592]
	add	r0, r1, r0
	sub	r1, r0, #3
	str	r1, [sp, #1592]
	ldr	r1, [sp, #1588]
	sub	r2, r0, #2
	str	r2, [sp, #1592]
	ldrb	r0, [r0, #-3]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r0, [r2, #1680]
	vdup.32	q8, r0
	add	lr, sp, #8192
	add	r3, lr, #112
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1632]
	vdup.32	q9, r0
	add	r0, sp, #8256
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1248
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_56
@ BB#21:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	add	r2, r1, #1
	str	r2, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #1584]
	vdup.32	q8, r1
	add	lr, sp, #8192
	add	r3, lr, #16
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1536]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #4064
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1232
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_55
@ BB#22:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1592]
	ldrb	r1, [r1]
	ldr	r2, [sp, #1572]         @ 4-byte Reload
	str	r1, [r2, #1488]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r3, lr, #4016
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #1868]
	add	r12, sp, #1872
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1440]
	vdup.32	q9, r0
	add	r0, sp, #8064
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #1868]
	ldr	r0, [sp, #1868]
	ldr	r1, [sp, #1964]
	cmp	r0, r1
	add	lr, sp, #1216
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_54
@ BB#23:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r1, #2
	vmov.i32	q8, #0x0
	add	r0, sp, #1840
	vst1.64	{d16, d17}, [r0]
	mov	r2, #0
	str	r2, [sp, #1836]
	add	r3, sp, #1808
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1992]
	ldr	r12, [sp, #1676]
	vdup.32	q8, r12
	add	lr, sp, #1680
	vst1.64	{d16, d17}, [lr:128]
	vmov.i32	q8, #0x3
	sub	r12, r12, #3
	ldr	lr, [sp, #1932]
	vdup.32	q9, lr
	add	r4, sp, #1936
	vst1.64	{d18, d19}, [r4:128]
	mla	r2, r12, lr, r2
	ldr	r12, [sp, #1644]
	add	r2, r2, r12
	sub	r12, r2, #1
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	str	r2, [sp, #1592]
	ldrb	r2, [r2, #-1]
	ldr	lr, [sp, #1572]         @ 4-byte Reload
	str	r2, [lr, #1392]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r5, r6, #3920
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vdup.32	q9, r12
	vst1.64	{d18, d19}, [r0:128]
	str	r2, [lr, #1344]
	vdup.32	q10, r2
	add	r6, sp, #4096
	add	r5, r6, #3872
	vst1.32	{d20, d21}, [r5]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #1296]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3824
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vdup.32	q10, r12
	vst1.64	{d20, d21}, [r3:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #1248]
	vdup.32	q9, r12
	add	r5, sp, #7872
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #1200]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3728
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #1152]
	vdup.32	q9, r12
	add	r6, sp, #4096
	add	r5, r6, #3680
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [lr, #1104]
	vdup.32	q10, r2
	add	r6, sp, #4096
	add	r5, r6, #3632
	vst1.32	{d20, d21}, [r5]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #1056]
	vdup.32	q9, r2
	add	r12, sp, #7680
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #3
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r5, r2, #2
	str	r5, [sp, #1592]
	ldrb	r2, [r2, #-3]
	str	r2, [lr, #1008]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r5, r6, #3536
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #960]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3488
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #912]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3440
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #864]
	vdup.32	q9, r12
	add	r5, sp, #7488
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [lr, #816]
	vdup.32	q10, r2
	add	r6, sp, #4096
	add	r5, r6, #3344
	vst1.32	{d20, d21}, [r5]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #768]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3296
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #720]
	vdup.32	q9, r12
	add	r6, sp, #4096
	add	r5, r6, #3248
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #672]
	vdup.32	q9, r2
	add	r12, sp, #7296
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #624]
	vdup.32	q9, r12
	add	r6, sp, #4096
	add	r5, r6, #3152
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [lr, #576]
	vdup.32	q10, r2
	add	r6, sp, #4096
	add	r5, r6, #3104
	vst1.32	{d20, d21}, [r5]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #528]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #3056
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #480]
	vdup.32	q9, r12
	add	r5, sp, #7104
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #432]
	vdup.32	q9, r2
	add	r5, sp, #4096
	add	r12, r5, #2960
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #384]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #2912
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #5
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r5, r2, #4
	str	r5, [sp, #1592]
	ldrb	r2, [r2, #-5]
	str	r2, [lr, #336]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r5, r6, #2864
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #288]
	vdup.32	q9, r2
	add	r12, sp, #6912
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [lr, #240]
	vdup.32	q10, r2
	add	r6, sp, #4096
	add	r5, r6, #2768
	vst1.32	{d20, d21}, [r5]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #192]
	vdup.32	q9, r12
	add	r6, sp, #4096
	add	r5, r6, #2720
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [lr, #144]
	vdup.32	q9, r2
	add	r6, sp, #4096
	add	r12, r6, #2672
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [lr, #96]
	vdup.32	q10, r2
	add	r5, sp, #6720
	vst1.32	{d20, d21}, [r5]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r5, r12, #1
	str	r5, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [lr, #48]
	vdup.32	q9, r12
	add	r7, sp, #4096
	add	r5, r7, #2576
	vst1.32	{d18, d19}, [r5]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [lr]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r5, lr, #2528
	vst1.32	{d20, d21}, [r5]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	ldr	r5, [sp, #1568]         @ 4-byte Reload
	str	r2, [r5, #4084]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #2480
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #4036]
	vdup.32	q9, r12
	add	r6, sp, #6528
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #3988]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #2384
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3940]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #2336
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [r5, #3892]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #2288
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #3844]
	vdup.32	q10, r2
	add	r6, sp, #6336
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3796]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #2192
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [r5, #3748]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #2144
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #3700]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #2096
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3652]
	vdup.32	q9, r12
	add	r6, sp, #6144
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [r5, #3604]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #2000
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [r5, #3556]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #1952
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #6
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r6, r2, #5
	str	r6, [sp, #1592]
	ldrb	r2, [r2, #-6]
	str	r2, [r5, #3508]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r6, lr, #1904
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [r5, #3460]
	vdup.32	q9, r2
	add	r12, sp, #5952
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3412]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1808
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [r5, #3364]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #1760
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3316]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1712
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [r5, #3268]
	vdup.32	q10, r2
	add	r6, sp, #5760
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1592]
	add	r12, r2, #2
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	add	r6, r2, #3
	str	r6, [sp, #1592]
	ldrb	r2, [r2, #2]
	str	r2, [r5, #3220]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r6, lr, #1616
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [r5, #3172]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #1568
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [r5, #3124]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1520
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [r5, #3076]
	vdup.32	q9, r2
	add	r12, sp, #5568
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #1452]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1424
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #1404]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #1376
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #6
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r6, r2, #5
	str	r6, [sp, #1592]
	ldrb	r2, [r2, #-6]
	add	lr, sp, #4096
	str	r2, [lr, #1356]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r6, lr, #1328
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #1308]
	vdup.32	q9, r2
	add	r12, sp, #5376
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmls.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #1260]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #1232
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #1212]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1184
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #1164]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #1136
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #1116]
	vdup.32	q10, r2
	add	r6, sp, #5184
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #1068]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #1040
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	add	lr, sp, #4096
	str	r2, [lr, #1020]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #992
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #972]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #944
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #924]
	vdup.32	q9, r12
	add	r6, sp, #4992
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #876]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #848
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #828]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #800
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	add	lr, sp, #4096
	str	r2, [lr, #780]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #752
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #732]
	vdup.32	q10, r2
	add	r6, sp, #4800
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #684]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #656
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #636]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #608
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #588]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #560
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #540]
	vdup.32	q9, r12
	add	r6, sp, #4608
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #492]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #464
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1804]
	vld1.64	{d18, d19}, [r3:128]
	add	lr, sp, #4096
	str	r2, [lr, #444]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #416
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #5
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r6, r2, #4
	str	r6, [sp, #1592]
	ldrb	r2, [r2, #-5]
	add	lr, sp, #4096
	str	r2, [lr, #396]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r6, lr, #368
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #348]
	vdup.32	q9, r2
	add	r12, sp, #4416
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vsub.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #300]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #272
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #252]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #224
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	add	lr, sp, #4096
	str	r2, [lr, #204]
	vdup.32	q10, r2
	add	lr, sp, #4096
	add	r6, lr, #176
	vst1.32	{d20, d21}, [r6]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #156]
	vdup.32	q9, r2
	add	r12, sp, #4224
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #108]
	vdup.32	q9, r12
	add	lr, sp, #4096
	add	r6, lr, #80
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	add	lr, sp, #4096
	str	r2, [lr, #60]
	vdup.32	q9, r2
	add	lr, sp, #4096
	add	r12, lr, #32
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r6, r12, #1
	str	r6, [sp, #1592]
	ldrb	r12, [r12]
	add	lr, sp, #4096
	str	r12, [lr, #12]
	vdup.32	q9, r12
	add	r6, sp, #4080
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [sp, #4060]
	vdup.32	q10, r2
	add	r6, sp, #4032
	vst1.32	{d20, d21}, [r6]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #4012]
	vdup.32	q9, r2
	add	r12, sp, #3984
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [sp, #3964]
	vdup.32	q9, r12
	add	r6, sp, #3936
	vst1.32	{d18, d19}, [r6]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #3916]
	vdup.32	q9, r2
	add	r12, sp, #3888
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1836]
	vld1.64	{d20, d21}, [r0:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #3868]
	vdup.32	q9, r2
	add	r12, sp, #3840
	vst1.32	{d18, d19}, [r12]
	vshl.i32	q9, q9, #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r2, r12, r2, lsl #1
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1932]
	vdup.32	q9, r2
	vst1.64	{d18, d19}, [r4:128]
	ldr	r12, [sp, #1592]
	add	r2, r12, r2
	sub	r12, r2, #3
	str	r12, [sp, #1592]
	ldr	r12, [sp, #1588]
	sub	r4, r2, #2
	str	r4, [sp, #1592]
	ldrb	r2, [r2, #-3]
	str	r2, [sp, #3820]
	vdup.32	q9, r2
	add	r4, sp, #3792
	vst1.32	{d18, d19}, [r4]
	ldrb	r2, [r12, -r2]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [sp, #3772]
	vdup.32	q10, r2
	add	r4, sp, #3744
	vst1.32	{d20, d21}, [r4]
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	sub	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #3724]
	vdup.32	q9, r2
	add	r12, sp, #3696
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	add	r4, r12, #1
	str	r4, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [sp, #3676]
	vdup.32	q9, r12
	add	r4, sp, #3648
	vst1.32	{d18, d19}, [r4]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #3628]
	vdup.32	q9, r2
	add	r12, sp, #3600
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1588]
	ldr	r12, [sp, #1592]
	ldrb	r12, [r12]
	str	r12, [sp, #3580]
	vdup.32	q9, r12
	add	r4, sp, #3552
	vst1.32	{d18, d19}, [r4]
	ldrb	r2, [r2, -r12]
	strb	r2, [sp, #1599]
	ldrb	r2, [sp, #1599]
	ldr	r12, [sp, #1836]
	vld1.64	{d18, d19}, [r0:128]
	str	r2, [sp, #3532]
	vdup.32	q10, r2
	add	r4, sp, #3504
	vst1.32	{d20, d21}, [r4]
	vadd.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r0]
	add	r2, r12, r2
	str	r2, [sp, #1836]
	ldrb	r2, [sp, #1599]
	str	r2, [sp, #3484]
	vdup.32	q9, r2
	add	r12, sp, #3456
	vst1.32	{d18, d19}, [r12]
	add	r2, r2, r2, lsl #1
	ldr	r12, [sp, #1804]
	vld1.64	{d20, d21}, [r3:128]
	vmla.i32	q10, q9, q8
	vst1.64	{d20, d21}, [r3]
	add	r2, r12, r2
	str	r2, [sp, #1804]
	ldr	r2, [sp, #1836]
	vld1.64	{d16, d17}, [r0:128]
	vmul.i32	q8, q8, q8
	add	r0, sp, #1744
	vst1.64	{d16, d17}, [r0]
	mul	r2, r2, r2
	str	r2, [sp, #1740]
	ldr	r2, [sp, #1804]
	vld1.64	{d16, d17}, [r3:128]
	vmul.i32	q8, q8, q8
	add	r3, sp, #1712
	vst1.64	{d16, d17}, [r3]
	mul	r2, r2, r2
	str	r2, [sp, #1708]
	ldr	r12, [sp, #1740]
	vld1.64	{d16, d17}, [r0:128]
	vld1.64	{d18, d19}, [r3:128]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	add	r0, sp, #1776
	vst1.64	{d16, d17}, [r0]
	add	r0, r12, r2
	str	r0, [sp, #1772]
	ldr	r0, [sp, #1772]
	ldr	r2, [sp, #1868]
	ldr	r3, [sp, #1868]
	mul	r2, r2, r3
	str	r0, [sp, #1212]         @ 4-byte Spill
	mov	r0, r2
	add	r4, sp, #1184
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	ldr	r1, [sp, #1212]         @ 4-byte Reload
	cmp	r1, r0
	ble	.LBB16_53
@ BB#24:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1708]
	ldr	r1, [sp, #1740]
	cmp	r0, r1
	bge	.LBB16_35
@ BB#25:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1804]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #1836]
	str	r0, [sp, #1180]         @ 4-byte Spill
	mov	r0, r1
	add	r4, sp, #1024
	vstr	s0, [r4, #152]          @ 4-byte Spill
	bl	abs
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	add	r3, sp, #1024
	vldr	s2, [r3, #152]          @ 4-byte Reload
	ldr	r1, [sp, #1568]         @ 4-byte Reload
	vstr	s2, [r1, #916]
	ldr	lr, [sp, #1180]         @ 4-byte Reload
	vdup.32	q8, lr
	vcvt.f32.s32	q8, q8
	add	r2, sp, #3408
	vst1.32	{d16, d17}, [r2]
	vstr	s0, [r1, #868]
	vdup.32	q9, r0
	vcvt.f32.s32	q9, q9
	add	r0, sp, #3360
	vst1.32	{d18, d19}, [r0]
	vorr	q1, q8, q8
	vmov.f32	s8, s7
	vorr	q3, q9, q9
	vmov.f32	s10, s15
	vdiv.f32	s8, s8, s10
	vmov.f32	s10, s6
	vmov.f32	s1, s14
	vdiv.f32	s10, s10, s1
	vmov.f32	s1, s5
	vmov.f32	s3, s13
	vdiv.f32	s1, s1, s3
	vmov.f32	s3, s4
	vmov.f32	s9, s12
	vdiv.f32	s3, s3, s9
	vmov.f32	s4, s3
	vmov.f32	s5, s1
	vmov.f32	s6, s10
	vmov.f32	s7, s8
	add	r0, sp, #1616
	vst1.64	{d2, d3}, [r0]
	vdiv.f32	s0, s2, s0
	add	r4, sp, #1024
	vstr	s0, [r4, #588]
	ldr	r0, [sp, #1836]
	bl	abs
	ldr	r1, [sp, #1836]
	str	r0, [sp, #2092]
	vdup.32	q8, r0
	add	r2, sp, #2064
	vst1.32	{d16, d17}, [r2]
	add	r2, sp, #1840
	vld1.64	{d16, d17}, [r2:128]
	vmov.f64	d20, d16
	vmov.32	r2, d20[1]
	str	r0, [sp, #1172]         @ 4-byte Spill
	str	r1, [sp, #1168]         @ 4-byte Spill
	mov	r1, r2
	add	r4, sp, #1024
	vstr	d20, [r4, #136]         @ 8-byte Spill
	add	r4, sp, #1136
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	add	r4, sp, #1024
	vldr	d20, [r4, #136]         @ 8-byte Reload
	vmov.32	r1, d20[0]
	ldr	r2, [sp, #1172]         @ 4-byte Reload
	str	r0, [sp, #1132]         @ 4-byte Spill
	mov	r0, r2
	bl	__divsi3
                                        @ implicit-def: %Q8
	vmov.f64	d20, d16
	vmov.32	d20[0], r0
                                        @ implicit-def: %Q8
	vmov.f64	d16, d20
	vmov.f64	d20, d16
	ldr	r0, [sp, #1132]         @ 4-byte Reload
	vmov.32	d20[1], r0
	vmov.f64	d16, d20
	vmov.f64	d20, d17
	add	r4, sp, #1136
	vld1.64	{d18, d19}, [r4:128]    @ 16-byte Reload
	vmov.f64	d21, d19
	vmov.32	r1, d21[0]
	ldr	r0, [sp, #1172]         @ 4-byte Reload
	add	r4, sp, #1024
	vstr	d21, [r4, #96]          @ 8-byte Spill
	add	r4, sp, #1104
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	add	r4, sp, #1024
	vstr	d20, [r4, #72]          @ 8-byte Spill
	bl	__divsi3
	add	r4, sp, #1024
	vldr	d20, [r4, #72]          @ 8-byte Reload
	vmov.32	d20[0], r0
	add	r4, sp, #1104
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vmov.f64	d17, d20
	vmov.f64	d20, d17
	add	r4, sp, #1024
	vldr	d21, [r4, #96]          @ 8-byte Reload
	vmov.32	r1, d21[1]
	ldr	r0, [sp, #1172]         @ 4-byte Reload
	add	r4, sp, #1072
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	add	r4, sp, #1024
	vstr	d20, [r4, #40]          @ 8-byte Spill
	bl	__divsi3
	add	r4, sp, #1024
	vldr	d20, [r4, #40]          @ 8-byte Reload
	vmov.32	d20[1], r0
	add	r4, sp, #1072
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vmov.f64	d17, d20
	add	r0, sp, #1776
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #1172]         @ 4-byte Reload
	ldr	r1, [sp, #1168]         @ 4-byte Reload
	bl	__divsi3
	str	r0, [sp, #1772]
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1992]
	ldr	r2, [sp, #1676]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	lr, sp, #1680
	vst1.64	{d16, d17}, [lr:128]
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r0, [sp, #1060]         @ 4-byte Spill
	str	r1, [sp, #1056]         @ 4-byte Spill
	str	r2, [sp, #1052]         @ 4-byte Spill
	add	lr, sp, #1024
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bpl	.LBB16_27
@ BB#26:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #816]
	vorr	q10, q9, q9
	add	r1, sp, #3312
	vst1.32	{d18, d19}, [r1]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #1008
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #1004]         @ 4-byte Spill
	b	.LBB16_28
.LBB16_27:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #768]
	vorr	q10, q9, q9
	add	r1, sp, #3264
	vst1.32	{d18, d19}, [r1]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #976
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #1004]         @ 4-byte Spill
.LBB16_28:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1004]         @ 4-byte Reload
	vmov.f32	s0, #2.000000e+00
	ldr	r1, [sp, #1052]         @ 4-byte Reload
	add	r0, r1, r0
	ldr	r2, [sp, #1932]
	vdup.32	q8, r2
	add	r3, sp, #1936
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1644]
	vdup.32	q8, r3
	add	r12, sp, #1648
	vst1.64	{d16, d17}, [r12:128]
	mla	r0, r0, r2, r3
	ldr	r2, [sp, #1772]
	add	r0, r0, r2
	ldr	r2, [sp, #1056]         @ 4-byte Reload
	ldrb	r0, [r2, r0]
	str	r0, [sp, #3244]
	vdup.32	q8, r0
	add	r3, sp, #3216
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [sp, #1060]         @ 4-byte Reload
	ldrb	r0, [r3, -r0]
	ldr	r12, [sp, #1588]
	ldr	lr, [sp, #1992]
	ldr	r4, [sp, #1676]
	vdup.32	q8, r4
	vorr	q9, q8, q8
	add	r5, sp, #1680
	vst1.64	{d16, d17}, [r5:128]
	add	r1, sp, #1024
	vldr	s2, [r1, #588]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	add	r1, sp, #960
	vst1.64	{d18, d19}, [r1:128]    @ 16-byte Spill
	str	r0, [sp, #956]          @ 4-byte Spill
	str	r12, [sp, #952]         @ 4-byte Spill
	str	lr, [sp, #948]          @ 4-byte Spill
	str	r4, [sp, #944]          @ 4-byte Spill
	bpl	.LBB16_30
@ BB#29:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vadd.f32	s0, s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #672]
	vorr	q10, q9, q9
	add	r1, sp, #3168
	vst1.32	{d18, d19}, [r1]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #928
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #924]          @ 4-byte Spill
	b	.LBB16_31
.LBB16_30:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vadd.f32	s0, s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #624]
	vorr	q10, q9, q9
	add	r1, sp, #3120
	vst1.32	{d18, d19}, [r1]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #896
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #924]          @ 4-byte Spill
.LBB16_31:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #924]          @ 4-byte Reload
	vmov.f32	s0, #3.000000e+00
	ldr	r1, [sp, #944]          @ 4-byte Reload
	add	r0, r1, r0
	ldr	r2, [sp, #1932]
	vdup.32	q8, r2
	add	r3, sp, #1936
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1644]
	vdup.32	q8, r3
	add	r12, sp, #1648
	vst1.64	{d16, d17}, [r12:128]
	mla	r0, r0, r2, r3
	ldr	r2, [sp, #1772]
	add	r0, r0, r2, lsl #1
	ldr	r2, [sp, #948]          @ 4-byte Reload
	ldrb	r0, [r2, r0]
	str	r0, [sp, #3100]
	vdup.32	q8, r0
	add	r3, sp, #3072
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [sp, #952]          @ 4-byte Reload
	ldrb	r0, [r3, -r0]
	ldr	r12, [sp, #956]         @ 4-byte Reload
	str	r12, [sp, #3052]
	vdup.32	q8, r12
	add	lr, sp, #3024
	vst1.32	{d16, d17}, [lr]
	str	r0, [sp, #3004]
	vdup.32	q9, r0
	add	lr, sp, #2976
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	add	r0, r12, r0
	ldr	lr, [sp, #1588]
	ldr	r4, [sp, #1992]
	ldr	r5, [sp, #1676]
	vdup.32	q9, r5
	vorr	q10, q9, q9
	add	r6, sp, #1680
	vst1.64	{d18, d19}, [r6:128]
	add	r1, sp, #1024
	vldr	s2, [r1, #588]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	add	r1, sp, #880
	vst1.64	{d20, d21}, [r1:128]    @ 16-byte Spill
	add	r1, sp, #864
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	str	r0, [sp, #860]          @ 4-byte Spill
	str	lr, [sp, #856]          @ 4-byte Spill
	str	r4, [sp, #852]          @ 4-byte Spill
	str	r5, [sp, #848]          @ 4-byte Spill
	bpl	.LBB16_33
@ BB#32:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vmov.f32	s2, #3.000000e+00
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #432]
	vorr	q10, q9, q9
	add	r1, sp, #2928
	vst1.32	{d18, d19}, [r1]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #832
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #828]          @ 4-byte Spill
	b	.LBB16_34
.LBB16_33:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vmov.f32	s2, #3.000000e+00
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #384]
	vorr	q10, q9, q9
	add	r1, sp, #2880
	vst1.32	{d18, d19}, [r1]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #800
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #828]          @ 4-byte Spill
.LBB16_34:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #828]          @ 4-byte Reload
	ldr	r1, [sp, #848]          @ 4-byte Reload
	add	r0, r1, r0
	ldr	r2, [sp, #1932]
	vdup.32	q8, r2
	add	r3, sp, #1936
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #1644]
	vdup.32	q8, r3
	add	r12, sp, #1648
	vst1.64	{d16, d17}, [r12:128]
	mla	r0, r0, r2, r3
	ldr	r2, [sp, #1772]
	add	r2, r2, r2, lsl #1
	add	r0, r0, r2
	ldr	r2, [sp, #852]          @ 4-byte Reload
	ldrb	r0, [r2, r0]
	str	r0, [sp, #2860]
	vdup.32	q8, r0
	add	r3, sp, #2832
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [sp, #856]          @ 4-byte Reload
	ldrb	r0, [r3, -r0]
	mov	r12, r0
	str	r0, [sp, #2812]
	vdup.32	q8, r0
	add	r0, sp, #2784
	vst1.32	{d16, d17}, [r0]
	add	lr, sp, #864
	vld1.64	{d18, d19}, [lr:128]    @ 16-byte Reload
	vadd.i32	q8, q9, q8
	vorr	q10, q8, q8
	add	r0, sp, #1776
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #860]          @ 4-byte Reload
	add	r12, r0, r12
	str	r12, [sp, #1772]
	add	lr, sp, #784
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	b	.LBB16_50
.LBB16_35:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1836]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r1, [sp, #1804]
	str	r0, [sp, #780]          @ 4-byte Spill
	mov	r0, r1
	vstr	s0, [sp, #776]          @ 4-byte Spill
	bl	abs
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vldr	s2, [sp, #776]          @ 4-byte Reload
	ldr	r1, [sp, #1568]         @ 4-byte Reload
	vstr	s2, [r1, #244]
	ldr	lr, [sp, #780]          @ 4-byte Reload
	vdup.32	q8, lr
	vcvt.f32.s32	q8, q8
	add	r2, sp, #2736
	vst1.32	{d16, d17}, [r2]
	vstr	s0, [r1, #196]
	vdup.32	q9, r0
	vcvt.f32.s32	q9, q9
	add	r0, sp, #2688
	vst1.32	{d18, d19}, [r0]
	vorr	q1, q8, q8
	vmov.f32	s8, s7
	vorr	q3, q9, q9
	vmov.f32	s10, s15
	vdiv.f32	s8, s8, s10
	vmov.f32	s10, s6
	vmov.f32	s1, s14
	vdiv.f32	s10, s10, s1
	vmov.f32	s1, s5
	vmov.f32	s3, s13
	vdiv.f32	s1, s1, s3
	vmov.f32	s3, s4
	vmov.f32	s9, s12
	vdiv.f32	s3, s3, s9
	vmov.f32	s4, s3
	vmov.f32	s5, s1
	vmov.f32	s6, s10
	vmov.f32	s7, s8
	add	r0, sp, #1616
	vst1.64	{d2, d3}, [r0]
	vdiv.f32	s0, s2, s0
	add	r4, sp, #1024
	vstr	s0, [r4, #588]
	ldr	r0, [sp, #1804]
	bl	abs
	ldr	r1, [sp, #1804]
	str	r0, [sp, #2044]
	vdup.32	q8, r0
	add	r2, sp, #2016
	vst1.32	{d16, d17}, [r2]
	add	r2, sp, #1808
	vld1.64	{d16, d17}, [r2:128]
	vmov.f64	d20, d16
	vmov.32	r2, d20[1]
	str	r0, [sp, #772]          @ 4-byte Spill
	str	r1, [sp, #768]          @ 4-byte Spill
	mov	r1, r2
	vstr	d20, [sp, #760]         @ 8-byte Spill
	add	r4, sp, #736
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	bl	__divsi3
	vldr	d20, [sp, #760]         @ 8-byte Reload
	vmov.32	r1, d20[0]
	ldr	r2, [sp, #772]          @ 4-byte Reload
	str	r0, [sp, #732]          @ 4-byte Spill
	mov	r0, r2
	bl	__divsi3
                                        @ implicit-def: %Q8
	vmov.f64	d20, d16
	vmov.32	d20[0], r0
                                        @ implicit-def: %Q8
	vmov.f64	d16, d20
	vmov.f64	d20, d16
	ldr	r0, [sp, #732]          @ 4-byte Reload
	vmov.32	d20[1], r0
	vmov.f64	d16, d20
	vmov.f64	d20, d17
	add	r4, sp, #736
	vld1.64	{d18, d19}, [r4:128]    @ 16-byte Reload
	vmov.f64	d21, d19
	vmov.32	r1, d21[0]
	ldr	r0, [sp, #772]          @ 4-byte Reload
	vstr	d21, [sp, #720]         @ 8-byte Spill
	add	r4, sp, #704
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	vstr	d20, [sp, #696]         @ 8-byte Spill
	bl	__divsi3
	vldr	d20, [sp, #696]         @ 8-byte Reload
	vmov.32	d20[0], r0
	add	r4, sp, #704
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vmov.f64	d17, d20
	vmov.f64	d20, d17
	vldr	d21, [sp, #720]         @ 8-byte Reload
	vmov.32	r1, d21[1]
	ldr	r0, [sp, #772]          @ 4-byte Reload
	add	r4, sp, #672
	vst1.64	{d16, d17}, [r4:128]    @ 16-byte Spill
	vstr	d20, [sp, #664]         @ 8-byte Spill
	bl	__divsi3
	vldr	d20, [sp, #664]         @ 8-byte Reload
	vmov.32	d20[1], r0
	add	r4, sp, #672
	vld1.64	{d16, d17}, [r4:128]    @ 16-byte Reload
	vmov.f64	d17, d20
	add	r0, sp, #1776
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #772]          @ 4-byte Reload
	ldr	r1, [sp, #768]          @ 4-byte Reload
	bl	__divsi3
	str	r0, [sp, #1772]
	ldr	r0, [sp, #1588]
	ldr	r1, [sp, #1992]
	ldr	r2, [sp, #1676]
	vdup.32	q8, r2
	add	lr, sp, #1680
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1772]
	add	r2, r2, lr
	ldr	lr, [sp, #1932]
	vdup.32	q8, lr
	add	r3, sp, #1936
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r2, lr
	ldr	r3, [sp, #1644]
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	lr, sp, #1648
	vst1.64	{d16, d17}, [lr:128]
	add	r2, r2, r3
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r0, [sp, #660]          @ 4-byte Spill
	str	r1, [sp, #656]          @ 4-byte Spill
	add	lr, sp, #640
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	str	r2, [sp, #636]          @ 4-byte Spill
	bpl	.LBB16_37
@ BB#36:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #144]
	vorr	q10, q9, q9
	add	r1, sp, #2640
	vst1.32	{d18, d19}, [r1]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #608
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #604]          @ 4-byte Spill
	b	.LBB16_38
.LBB16_37:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0, #96]
	vorr	q10, q9, q9
	add	r1, sp, #2592
	vst1.32	{d18, d19}, [r1]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #576
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #604]          @ 4-byte Spill
.LBB16_38:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #604]          @ 4-byte Reload
	vmov.f32	s0, #2.000000e+00
	ldr	r1, [sp, #636]          @ 4-byte Reload
	add	r0, r1, r0
	ldr	r2, [sp, #656]          @ 4-byte Reload
	ldrb	r0, [r2, r0]
	str	r0, [sp, #2572]
	vdup.32	q8, r0
	add	r3, sp, #2544
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [sp, #660]          @ 4-byte Reload
	ldrb	r0, [r3, -r0]
	ldr	r12, [sp, #1588]
	ldr	lr, [sp, #1992]
	ldr	r4, [sp, #1676]
	vdup.32	q8, r4
	add	r5, sp, #1680
	vst1.64	{d16, d17}, [r5:128]
	ldr	r5, [sp, #1772]
	add	r4, r4, r5, lsl #1
	ldr	r5, [sp, #1932]
	vdup.32	q8, r5
	add	r6, sp, #1936
	vst1.64	{d16, d17}, [r6:128]
	mul	r4, r4, r5
	ldr	r5, [sp, #1644]
	vdup.32	q8, r5
	vorr	q9, q8, q8
	add	r6, sp, #1648
	vst1.64	{d16, d17}, [r6:128]
	add	r4, r4, r5
	add	r1, sp, #1024
	vldr	s2, [r1, #588]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r4, [sp, #572]          @ 4-byte Spill
	str	r0, [sp, #568]          @ 4-byte Spill
	str	r12, [sp, #564]         @ 4-byte Spill
	str	lr, [sp, #560]          @ 4-byte Spill
	add	lr, sp, #544
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bpl	.LBB16_40
@ BB#39:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vadd.f32	s0, s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	ldr	r0, [sp, #1568]         @ 4-byte Reload
	vstr	d17, [r0]
	vorr	q10, q9, q9
	add	r1, sp, #2496
	vst1.32	{d18, d19}, [r1]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r1, s0
	add	lr, sp, #528
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r1, [sp, #524]          @ 4-byte Spill
	b	.LBB16_41
.LBB16_40:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vadd.f32	s0, s0, s0
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	lr, sp, #2048
	vstr	d17, [lr, #424]
	vorr	q10, q9, q9
	add	r0, sp, #2448
	vst1.32	{d18, d19}, [r0]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	add	lr, sp, #496
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r0, [sp, #524]          @ 4-byte Spill
.LBB16_41:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #524]          @ 4-byte Reload
	vmov.f32	s0, #3.000000e+00
	ldr	r1, [sp, #572]          @ 4-byte Reload
	add	r0, r1, r0
	ldr	r2, [sp, #560]          @ 4-byte Reload
	ldrb	r0, [r2, r0]
	str	r0, [sp, #2428]
	vdup.32	q8, r0
	add	r3, sp, #2400
	vst1.32	{d16, d17}, [r3]
	ldr	r3, [sp, #564]          @ 4-byte Reload
	ldrb	r0, [r3, -r0]
	ldr	r12, [sp, #568]         @ 4-byte Reload
	str	r12, [sp, #2380]
	vdup.32	q8, r12
	add	lr, sp, #2352
	vst1.32	{d16, d17}, [lr]
	str	r0, [sp, #2332]
	vdup.32	q9, r0
	add	lr, sp, #2304
	vst1.32	{d18, d19}, [lr]
	vadd.i32	q8, q8, q9
	add	r0, r12, r0
	ldr	lr, [sp, #1588]
	ldr	r4, [sp, #1992]
	ldr	r5, [sp, #1676]
	vdup.32	q9, r5
	add	r6, sp, #1680
	vst1.64	{d18, d19}, [r6:128]
	ldr	r6, [sp, #1772]
	add	r6, r6, r6, lsl #1
	add	r5, r5, r6
	ldr	r6, [sp, #1932]
	vdup.32	q9, r6
	add	r7, sp, #1936
	vst1.64	{d18, d19}, [r7:128]
	mul	r5, r5, r6
	ldr	r6, [sp, #1644]
	vdup.32	q9, r6
	vorr	q10, q9, q9
	add	r7, sp, #1648
	vst1.64	{d18, d19}, [r7:128]
	add	r5, r5, r6
	add	r1, sp, #1024
	vldr	s2, [r1, #588]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r5, [sp, #492]          @ 4-byte Spill
	add	r1, sp, #464
	vst1.64	{d16, d17}, [r1:128]    @ 16-byte Spill
	str	r0, [sp, #460]          @ 4-byte Spill
	str	lr, [sp, #456]          @ 4-byte Spill
	str	r4, [sp, #452]          @ 4-byte Spill
	add	lr, sp, #432
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	bpl	.LBB16_43
@ BB#42:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vmov.f32	s2, #3.000000e+00
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	lr, sp, #2048
	vstr	d17, [lr, #232]
	vorr	q10, q9, q9
	add	r0, sp, #2256
	vst1.32	{d18, d19}, [r0]
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	add	lr, sp, #416
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r0, [sp, #412]          @ 4-byte Spill
	b	.LBB16_44
.LBB16_43:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	add	lr, sp, #1024
	vldr	s0, [lr, #588]
	vmov.f32	s2, #3.000000e+00
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vmov.f64	d18, d17
	vmov.f64	d19, d17
	add	lr, sp, #2048
	vstr	d17, [lr, #184]
	vorr	q10, q9, q9
	add	r0, sp, #2208
	vst1.32	{d18, d19}, [r0]
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	add	lr, sp, #384
	vst1.64	{d20, d21}, [lr:128]    @ 16-byte Spill
	str	r0, [sp, #412]          @ 4-byte Spill
.LBB16_44:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #412]          @ 4-byte Reload
	movw	r1, #3
	ldr	r2, [sp, #492]          @ 4-byte Reload
	add	r0, r2, r0
	ldr	r3, [sp, #452]          @ 4-byte Reload
	ldrb	r0, [r3, r0]
	str	r0, [sp, #2188]
	vdup.32	q8, r0
	add	r12, sp, #2160
	vst1.32	{d16, d17}, [r12]
	ldr	r12, [sp, #456]         @ 4-byte Reload
	ldrb	r0, [r12, -r0]
	mov	lr, r0
	str	r0, [sp, #2140]
	vdup.32	q8, r0
	add	r0, sp, #2112
	vst1.32	{d16, d17}, [r0]
	add	r2, sp, #464
	vld1.64	{d18, d19}, [r2:128]    @ 16-byte Reload
	vadd.i32	q8, q9, q8
	add	r0, sp, #1776
	vst1.64	{d16, d17}, [r0]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r4, d20[1]
	vmov.f64	d20, d17
	vmov.32	r5, d20[0]
	add	r4, r0, r4
	add	r4, r4, r5
	ldr	r5, [sp, #460]          @ 4-byte Reload
	add	lr, r5, lr
	mul	r1, lr, r1
	ldr	r6, [sp, #1576]         @ 4-byte Reload
	str	lr, [r6, #848]
	cmp	r4, r1
	str	lr, [sp, #380]          @ 4-byte Spill
	str	r0, [sp, #376]          @ 4-byte Spill
	str	r4, [sp, #372]          @ 4-byte Spill
	beq	.LBB16_49
@ BB#45:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #372]          @ 4-byte Reload
	ldr	r1, [sp, #376]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB16_47
@ BB#46:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #380]          @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #848]
	b	.LBB16_48
.LBB16_47:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #376]          @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #848]
.LBB16_48:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_49
.LBB16_49:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1576]         @ 4-byte Reload
	ldr	r1, [r0, #848]
	str	r1, [sp, #1772]
.LBB16_50:                              @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #290
	ldr	r1, [sp, #1772]
	cmp	r1, r0
	ble	.LBB16_52
@ BB#51:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1964]
	vdup.32	q8, r1
	add	r2, sp, #1968
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #1868]
	sub	r1, r1, r2
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	vdup.32	q8, r3
	add	r12, sp, #1680
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #1932]
	vdup.32	q8, lr
	add	r4, sp, #1936
	vst1.64	{d16, d17}, [r4:128]
	ldr	r5, [sp, #1644]
	vdup.32	q8, r5
	add	r6, sp, #1648
	vst1.64	{d16, d17}, [r6:128]
	mla	r3, r3, lr, r5
	str	r1, [r2, r3, lsl #2]
	ldr	r1, [sp, #1836]
	mov	r2, #51
	mul	r1, r1, r2
	ldr	r3, [sp, #1868]
	str	r0, [sp, #368]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	str	r2, [sp, #364]          @ 4-byte Spill
	str	r12, [sp, #360]         @ 4-byte Spill
	str	r4, [sp, #356]          @ 4-byte Spill
	str	r6, [sp, #352]          @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [sp, #1640]
	ldr	r2, [sp, #1676]
	vdup.32	q8, r2
	ldr	r3, [sp, #360]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	ldr	lr, [sp, #356]          @ 4-byte Reload
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #1644]
	vdup.32	q8, r4
	ldr	r5, [sp, #352]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r5:128]
	mla	r2, r2, r12, r4
	str	r0, [r1, r2, lsl #2]
	ldr	r0, [sp, #1804]
	ldr	r1, [sp, #364]          @ 4-byte Reload
	mul	r0, r0, r1
	ldr	r1, [sp, #1868]
	bl	__divsi3
	ldr	r1, [sp, #1636]
	ldr	r2, [sp, #1676]
	vdup.32	q8, r2
	ldr	r3, [sp, #360]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	ldr	lr, [sp, #356]          @ 4-byte Reload
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #1644]
	vdup.32	q8, r4
	ldr	r5, [sp, #352]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r5:128]
	mla	r2, r2, r12, r4
	mov	r12, r2
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	str	r12, [sp, #348]         @ 4-byte Spill
.LBB16_52:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_53
.LBB16_53:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_54
.LBB16_54:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_55
.LBB16_55:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_56
.LBB16_56:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_57
.LBB16_57:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_58
.LBB16_58:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_59
.LBB16_59:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_60
.LBB16_60:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_61
.LBB16_61:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_62
.LBB16_62:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_63
.LBB16_63:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_64
.LBB16_64:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_65
.LBB16_65:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_66
.LBB16_66:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_67
.LBB16_67:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_68
.LBB16_68:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_69
.LBB16_69:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_70
.LBB16_70:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_71
.LBB16_71:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_72
.LBB16_72:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_73
.LBB16_73:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #1644]
	vdup.32	q8, r0
	add	r1, sp, #1648
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #1644]
	add	lr, sp, #320
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB16_3
.LBB16_74:                              @   in Loop: Header=BB16_1 Depth=1
	b	.LBB16_75
.LBB16_75:                              @   in Loop: Header=BB16_1 Depth=1
	ldr	r0, [sp, #1676]
	vdup.32	q8, r0
	add	r1, sp, #1680
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #1676]
	add	lr, sp, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB16_1
.LBB16_76:
	movw	r0, #5
	vmov.i32	q8, #0x0
	add	r1, sp, #1872
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #1868]
	vmov.i32	q8, #0x5
	add	r1, sp, #1680
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #1676]
.LBB16_77:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_79 Depth 2
	ldr	r0, [sp, #1676]
	ldr	r1, [sp, #1900]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1904
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #5
	cmp	r0, r1
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_152
@ BB#78:                                @   in Loop: Header=BB16_77 Depth=1
	movw	r0, #5
	vmov.i32	q8, #0x5
	add	r1, sp, #1648
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #1644]
.LBB16_79:                              @   Parent Loop BB16_77 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #1644]
	ldr	r1, [sp, #1932]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #1936
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #5
	cmp	r0, r1
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB16_145
@ BB#80:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1988]
	ldr	r2, [sp, #1676]
	ldr	r3, [sp, #1932]
	vdup.32	q8, r3
	add	r12, sp, #1936
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #1644]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #1836]
	ldr	r1, [sp, #1836]
	cmp	r1, #0
	str	r0, [sp, #268]          @ 4-byte Spill
	str	r3, [sp, #264]          @ 4-byte Spill
	ble	.LBB16_138
@ BB#81:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #260]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#82:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #256]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#83:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #252]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#84:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #248]          @ 4-byte Spill
	str	r12, [sp, #244]         @ 4-byte Spill
	ble	.LBB16_137
@ BB#85:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #240]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#86:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #236]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#87:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #232]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#88:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #228]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#89:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #224]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#90:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #220]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#91:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #216]          @ 4-byte Spill
	str	r12, [sp, #212]         @ 4-byte Spill
	ble	.LBB16_137
@ BB#92:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #208]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#93:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #204]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#94:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #200]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#95:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #196]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#96:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #192]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#97:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #188]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#98:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #184]          @ 4-byte Spill
	str	r12, [sp, #180]         @ 4-byte Spill
	ble	.LBB16_137
@ BB#99:                                @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #176]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#100:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #172]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#101:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	sub	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #168]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#102:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #164]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#103:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #160]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#104:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #156]          @ 4-byte Spill
	ble	.LBB16_137
@ BB#105:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #152]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#106:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #148]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#107:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #144]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#108:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#109:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #136]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#110:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #132]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#111:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #128]          @ 4-byte Spill
	str	r12, [sp, #124]         @ 4-byte Spill
	blt	.LBB16_137
@ BB#112:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #120]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#113:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #116]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#114:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #1
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #112]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#115:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #108]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#116:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #104]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#117:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #100]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#118:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #96]           @ 4-byte Spill
	str	r12, [sp, #92]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#119:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #88]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#120:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #84]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#121:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #2
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #80]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#122:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #76]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#123:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #72]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#124:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #68]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#125:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #64]           @ 4-byte Spill
	str	r12, [sp, #60]          @ 4-byte Spill
	blt	.LBB16_137
@ BB#126:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#127:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #52]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#128:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #1836]
	ldr	r2, [sp, #1988]
	ldr	r3, [sp, #1676]
	add	r3, r3, #3
	ldr	r12, [sp, #1932]
	vdup.32	q8, r12
	add	lr, sp, #1936
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #1644]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	blt	.LBB16_137
@ BB#129:                               @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #1960]
	ldr	r2, [sp, #1868]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #3
	mov	r2, #0
	str	r2, [r1, #8]
	ldr	r1, [sp, #1644]
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	add	r3, r3, r3, lsl #1
	str	r1, [r2, r3, lsl #3]
	ldr	r1, [sp, #1676]
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #4]
	ldr	r1, [sp, #1640]
	ldr	r2, [sp, #1676]
	ldr	r3, [sp, #1932]
	vdup.32	q8, r3
	add	r12, sp, #1936
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #1644]
	mla	r2, r2, r3, lr
	ldr	r1, [r1, r2, lsl #2]
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #12]
	ldr	r1, [sp, #1636]
	ldr	r2, [sp, #1676]
	ldr	r3, [sp, #1932]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #1644]
	mla	r2, r2, r3, lr
	ldr	r1, [r1, r2, lsl #2]
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #16]
	ldr	r1, [sp, #1992]
	ldr	r2, [sp, #1676]
	ldr	r3, [sp, #1932]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #1644]
	mla	r2, r2, r3, r12
	ldrb	r1, [r1, r2]
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #20]
	ldr	r1, [sp, #1868]
	add	r2, sp, #1872
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
	ldr	r12, [sp, #1576]        @ 4-byte Reload
	str	r1, [r12, #816]
	cmp	r3, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r3, [sp, #40]           @ 4-byte Spill
	str	r2, [sp, #36]           @ 4-byte Spill
	beq	.LBB16_134
@ BB#130:                               @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #36]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB16_132
@ BB#131:                               @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #816]
	b	.LBB16_133
.LBB16_132:                             @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #816]
.LBB16_133:                             @   in Loop: Header=BB16_79 Depth=2
	b	.LBB16_134
.LBB16_134:                             @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #15000
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	ldr	r2, [r1, #816]
	str	r2, [sp, #1868]
	ldr	r2, [sp, #1868]
	cmp	r2, r0
	bne	.LBB16_136
@ BB#135:
	movw	r1, :lower16:.L.str.29
	movt	r1, :upper16:.L.str.29
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB16_136:                             @   in Loop: Header=BB16_79 Depth=2
	b	.LBB16_137
.LBB16_137:                             @   in Loop: Header=BB16_79 Depth=2
	b	.LBB16_138
.LBB16_138:                             @   in Loop: Header=BB16_79 Depth=2
	b	.LBB16_139
.LBB16_139:                             @   in Loop: Header=BB16_79 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #1644]
	add	r2, sp, #1648
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
	ldr	r12, [sp, #1576]        @ 4-byte Reload
	str	r1, [r12, #784]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB16_144
@ BB#140:                               @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB16_142
@ BB#141:                               @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #784]
	b	.LBB16_143
.LBB16_142:                             @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #784]
.LBB16_143:                             @   in Loop: Header=BB16_79 Depth=2
	b	.LBB16_144
.LBB16_144:                             @   in Loop: Header=BB16_79 Depth=2
	ldr	r0, [sp, #1576]         @ 4-byte Reload
	ldr	r1, [r0, #784]
	str	r1, [sp, #1644]
	b	.LBB16_79
.LBB16_145:                             @   in Loop: Header=BB16_77 Depth=1
	b	.LBB16_146
.LBB16_146:                             @   in Loop: Header=BB16_77 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #1676]
	add	r2, sp, #1680
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
	ldr	r12, [sp, #1576]        @ 4-byte Reload
	str	r1, [r12, #752]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB16_151
@ BB#147:                               @   in Loop: Header=BB16_77 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB16_149
@ BB#148:                               @   in Loop: Header=BB16_77 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #752]
	b	.LBB16_150
.LBB16_149:                             @   in Loop: Header=BB16_77 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #1576]         @ 4-byte Reload
	str	r0, [r1, #752]
.LBB16_150:                             @   in Loop: Header=BB16_77 Depth=1
	b	.LBB16_151
.LBB16_151:                             @   in Loop: Header=BB16_77 Depth=1
	ldr	r0, [sp, #1576]         @ 4-byte Reload
	ldr	r1, [r0, #752]
	str	r1, [sp, #1676]
	b	.LBB16_77
.LBB16_152:
	movw	r0, #7
	movw	r1, #24
	ldr	r2, [sp, #1960]
	ldr	r3, [sp, #1868]
	mul	r1, r3, r1
	add	r1, r2, r1
	str	r0, [r1, #8]
	ldr	r0, [sp, #1640]
	bl	free
	ldr	r0, [sp, #1636]
	bl	free
	ldr	r0, [sp, #1996]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
.Lfunc_end16:
	.size	susan_corners, .Lfunc_end16-susan_corners
	.cantunwind
	.fnend

	.globl	susan_corners_quick
	.p2align	2
	.type	susan_corners_quick,%function
	.code	32                      @ @susan_corners_quick
susan_corners_quick:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #504
	sub	sp, sp, #7168
	bfc	sp, #0, #4
	add	r10, sp, #4096
	add	r12, r10, #620
	ldr	lr, [r11, #16]
	ldr	r4, [r11, #12]
	ldr	r5, [r11, #8]
	movw	r6, #7
	str	r0, [sp, #968]
	str	r1, [sp, #964]
	str	r2, [sp, #960]
	str	r3, [sp, #940]
	str	r5, [sp, #936]
	str	r4, [sp, #908]
	str	lr, [sp, #876]
	ldr	r0, [sp, #964]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	add	r2, sp, #912
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #876]
	vdup.32	q8, r2
	add	r3, sp, #880
	vst1.64	{d16, d17}, [r3:128]
	mul	r1, r1, r2
	lsl	r2, r1, #2
	mov	r1, #0
	str	r12, [sp, #704]         @ 4-byte Spill
	str	r6, [sp, #700]          @ 4-byte Spill
	bl	memset
	vmov.i32	q8, #0x7
	add	r1, sp, #752
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #700]          @ 4-byte Reload
	str	r1, [sp, #748]
	str	r0, [sp, #696]          @ 4-byte Spill
.LBB17_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB17_3 Depth 2
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #876]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #880
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #7
	cmp	r0, r1
	add	lr, sp, #672
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_46
@ BB#2:                                 @   in Loop: Header=BB17_1 Depth=1
	movw	r0, #7
	vmov.i32	q8, #0x7
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB17_3:                               @   Parent Loop BB17_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #716]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #912
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #7
	cmp	r0, r1
	add	lr, sp, #656
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_44
@ BB#4:                                 @   in Loop: Header=BB17_3 Depth=2
	vmov.i32	q8, #0x64
	add	r0, sp, #848
	vst1.64	{d16, d17}, [r0]
	mov	r1, #100
	str	r1, [sp, #844]
	ldr	r1, [sp, #968]
	ldr	r2, [sp, #748]
	vdup.32	q8, r2
	add	r3, sp, #752
	vst1.64	{d16, d17}, [r3:128]
	sub	r2, r2, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	mla	r1, r2, r12, r1
	ldr	r2, [sp, #716]
	add	r1, r1, r2
	sub	r1, r1, #1
	str	r1, [sp, #712]
	ldr	r1, [sp, #960]
	ldr	r2, [sp, #968]
	ldr	r12, [sp, #748]
	vdup.32	q8, r12
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [sp, #908]
	vdup.32	q8, r3
	vst1.64	{d16, d17}, [lr:128]
	ldr	r4, [sp, #716]
	vdup.32	q8, r4
	add	r5, sp, #720
	vst1.64	{d16, d17}, [r5:128]
	mla	r3, r12, r3, r4
	ldrb	r2, [r2, r3]
	add	r1, r1, r2
	str	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r3, r2, #1
	str	r3, [sp, #712]
	ldrb	r2, [r2]
	ldr	r3, [sp, #704]          @ 4-byte Reload
	str	r2, [r3, #2832]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #3424
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vdup.32	q8, r2
	vst1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2784]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #3376
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2736]
	vdup.32	q8, r2
	add	r12, sp, #7424
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2688]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #3280
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2640]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #3232
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2592]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #3184
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #712]
	add	r1, r2, r1
	sub	r2, r1, #3
	str	r2, [sp, #712]
	ldr	r2, [sp, #708]
	sub	r12, r1, #2
	str	r12, [sp, #712]
	ldrb	r1, [r1, #-3]
	str	r1, [r3, #2544]
	vdup.32	q8, r1
	add	r12, sp, #7232
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2496]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #3088
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2448]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #3040
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2400]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2992
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2352]
	vdup.32	q8, r2
	add	r12, sp, #7040
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2304]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2896
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2256]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #2848
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2208]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2800
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #2160]
	vdup.32	q8, r2
	add	r12, sp, #6848
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2112]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2704
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #712]
	add	r1, r2, r1
	sub	r2, r1, #5
	str	r2, [sp, #712]
	ldr	r2, [sp, #708]
	sub	r12, r1, #4
	str	r12, [sp, #712]
	ldrb	r1, [r1, #-5]
	str	r1, [r3, #2064]
	vdup.32	q8, r1
	add	r4, sp, #4096
	add	r12, r4, #2656
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #2016]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2608
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1968]
	vdup.32	q8, r2
	add	r12, sp, #6656
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1920]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2512
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1872]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #2464
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1824]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2416
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1776]
	vdup.32	q8, r2
	add	r12, sp, #6464
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1728]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2320
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1680]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #2272
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1632]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2224
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1584]
	vdup.32	q8, r2
	add	r12, sp, #6272
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1536]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2128
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1488]
	vdup.32	q8, r2
	add	r4, sp, #4096
	add	r12, r4, #2080
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1440]
	vdup.32	q9, r1
	add	r4, sp, #4096
	add	r12, r4, #2032
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	vst1.64	{d16, d17}, [lr:128]
	ldr	r2, [sp, #712]
	add	r1, r2, r1
	sub	r2, r1, #6
	str	r2, [sp, #712]
	ldr	r2, [sp, #708]
	sub	r12, r1, #5
	str	r12, [sp, #712]
	ldrb	r1, [r1, #-6]
	str	r1, [r3, #1392]
	vdup.32	q8, r1
	add	r12, sp, #6080
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r2, -r1]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1344]
	vdup.32	q9, r1
	add	lr, sp, #4096
	add	r12, lr, #1936
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	add	r12, r2, #1
	str	r12, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1296]
	vdup.32	q8, r2
	add	lr, sp, #4096
	add	r12, lr, #1888
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	ldr	r2, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1248]
	vdup.32	q9, r1
	add	lr, sp, #4096
	add	r12, lr, #1840
	vst1.32	{d18, d19}, [r12]
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r0]
	add	r1, r2, r1
	str	r1, [sp, #844]
	ldr	r1, [sp, #708]
	ldr	r2, [sp, #712]
	ldrb	r2, [r2]
	str	r2, [r3, #1200]
	vdup.32	q8, r2
	add	r12, sp, #5888
	vst1.32	{d16, d17}, [r12]
	ldrb	r1, [r1, -r2]
	mov	r2, r1
	ldr	r12, [sp, #844]
	vld1.64	{d16, d17}, [r0:128]
	str	r1, [r3, #1152]
	vdup.32	q9, r1
	add	lr, sp, #4096
	add	r1, lr, #1744
	vst1.32	{d18, d19}, [r1]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r0]
	add	r0, r12, r2
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #640
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_42
@ BB#5:                                 @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #712]
	add	r1, r0, #2
	str	r1, [sp, #712]
	ldr	r1, [sp, #708]
	add	r2, r0, #3
	str	r2, [sp, #712]
	ldrb	r0, [r0, #2]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r0, [r2, #1104]
	vdup.32	q8, r0
	add	lr, sp, #4096
	add	r3, lr, #1696
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #1056]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1648
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #624
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_41
@ BB#6:                                 @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #1008]
	vdup.32	q8, r1
	add	r3, sp, #5696
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #960]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1552
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #608
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_40
@ BB#7:                                 @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #912]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r3, lr, #1504
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #864]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1456
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #592
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_39
@ BB#8:                                 @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #908]
	vdup.32	q8, r0
	add	r1, sp, #912
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #712]
	add	r0, r1, r0
	sub	r1, r0, #6
	str	r1, [sp, #712]
	ldr	r1, [sp, #708]
	sub	r2, r0, #5
	str	r2, [sp, #712]
	ldrb	r0, [r0, #-6]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r0, [r2, #816]
	vdup.32	q8, r0
	add	r3, sp, #5504
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #768]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1360
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #576
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_38
@ BB#9:                                 @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #720]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r3, lr, #1312
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #672]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1264
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #560
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_37
@ BB#10:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #624]
	vdup.32	q8, r1
	add	r3, sp, #5312
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #576]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1168
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #544
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_36
@ BB#11:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #528]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r3, lr, #1120
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #480]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #1072
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #528
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_35
@ BB#12:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #432]
	vdup.32	q8, r1
	add	r3, sp, #5120
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #384]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #976
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #512
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_34
@ BB#13:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #336]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r3, lr, #928
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #288]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #880
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #496
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_33
@ BB#14:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #240]
	vdup.32	q8, r1
	add	r3, sp, #4928
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #192]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #784
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #480
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_32
@ BB#15:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #908]
	vdup.32	q8, r0
	add	r1, sp, #912
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #712]
	add	r0, r1, r0
	sub	r1, r0, #5
	str	r1, [sp, #712]
	ldr	r1, [sp, #708]
	sub	r2, r0, #4
	str	r2, [sp, #712]
	ldrb	r0, [r0, #-5]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r0, [r2, #144]
	vdup.32	q8, r0
	add	lr, sp, #4096
	add	r3, lr, #736
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2, #96]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #688
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #464
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_31
@ BB#16:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	ldr	r2, [sp, #704]          @ 4-byte Reload
	str	r1, [r2, #48]
	vdup.32	q8, r1
	add	r3, sp, #4736
	vst1.32	{d16, d17}, [r3]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r3, [sp, #844]
	add	r12, sp, #848
	vld1.64	{d16, d17}, [r12:128]
	str	r0, [r2]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #592
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r12]
	add	r0, r3, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #448
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_30
@ BB#17:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	add	lr, sp, #4096
	str	r1, [lr, #572]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r2, lr, #544
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #524]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #496
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #432
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_29
@ BB#18:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	add	lr, sp, #4096
	str	r1, [lr, #476]
	vdup.32	q8, r1
	add	r2, sp, #4544
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #428]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #400
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #416
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_28
@ BB#19:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	ldrb	r1, [r1]
	add	lr, sp, #4096
	str	r1, [lr, #380]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r2, lr, #352
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #332]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #304
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #400
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_27
@ BB#20:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #908]
	vdup.32	q8, r0
	add	r1, sp, #912
	vst1.64	{d16, d17}, [r1:128]
	ldr	r1, [sp, #712]
	add	r0, r1, r0
	sub	r1, r0, #3
	str	r1, [sp, #712]
	ldr	r1, [sp, #708]
	sub	r2, r0, #2
	str	r2, [sp, #712]
	ldrb	r0, [r0, #-3]
	add	lr, sp, #4096
	str	r0, [lr, #284]
	vdup.32	q8, r0
	add	r2, sp, #4352
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r1, -r0]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #236]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #208
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #384
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_26
@ BB#21:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	add	r2, r1, #1
	str	r2, [sp, #712]
	ldrb	r1, [r1]
	add	lr, sp, #4096
	str	r1, [lr, #188]
	vdup.32	q8, r1
	add	lr, sp, #4096
	add	r2, lr, #160
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #140]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #112
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #368
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_25
@ BB#22:                                @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #708]
	ldr	r1, [sp, #712]
	ldrb	r1, [r1]
	add	lr, sp, #4096
	str	r1, [lr, #92]
	vdup.32	q8, r1
	add	r2, sp, #4160
	vst1.32	{d16, d17}, [r2]
	ldrb	r0, [r0, -r1]
	mov	r1, r0
	ldr	r2, [sp, #844]
	add	r3, sp, #848
	vld1.64	{d16, d17}, [r3:128]
	add	lr, sp, #4096
	str	r0, [lr, #44]
	vdup.32	q9, r0
	add	lr, sp, #4096
	add	r0, lr, #16
	vst1.32	{d18, d19}, [r0]
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r3]
	add	r0, r2, r1
	str	r0, [sp, #844]
	ldr	r0, [sp, #844]
	ldr	r1, [sp, #940]
	cmp	r0, r1
	add	lr, sp, #352
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_24
@ BB#23:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #940]
	vdup.32	q8, r1
	add	r2, sp, #944
	vst1.64	{d16, d17}, [r2:128]
	ldr	r2, [sp, #844]
	sub	r1, r1, r2
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	vdup.32	q8, r3
	add	r12, sp, #752
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	vdup.32	q8, lr
	add	r4, sp, #720
	vst1.64	{d16, d17}, [r4:128]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #348]          @ 4-byte Spill
	str	r12, [sp, #344]         @ 4-byte Spill
.LBB17_24:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_25
.LBB17_25:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_26
.LBB17_26:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_27
.LBB17_27:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_28
.LBB17_28:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_29
.LBB17_29:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_30
.LBB17_30:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_31
.LBB17_31:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_32
.LBB17_32:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_33
.LBB17_33:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_34
.LBB17_34:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_35
.LBB17_35:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_36
.LBB17_36:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_37
.LBB17_37:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_38
.LBB17_38:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_39
.LBB17_39:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_40
.LBB17_40:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_41
.LBB17_41:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_42
.LBB17_42:                              @   in Loop: Header=BB17_3 Depth=2
	b	.LBB17_43
.LBB17_43:                              @   in Loop: Header=BB17_3 Depth=2
	ldr	r0, [sp, #716]
	vdup.32	q8, r0
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #716]
	add	lr, sp, #320
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB17_3
.LBB17_44:                              @   in Loop: Header=BB17_1 Depth=1
	b	.LBB17_45
.LBB17_45:                              @   in Loop: Header=BB17_1 Depth=1
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
	add	lr, sp, #304
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB17_1
.LBB17_46:
	movw	r0, #7
	vmov.i32	q8, #0x0
	add	r1, sp, #848
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #844]
	vmov.i32	q8, #0x7
	add	r1, sp, #752
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #748]
.LBB17_47:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB17_49 Depth 2
	ldr	r0, [sp, #748]
	ldr	r1, [sp, #876]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #880
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #7
	cmp	r0, r1
	add	lr, sp, #288
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_122
@ BB#48:                                @   in Loop: Header=BB17_47 Depth=1
	movw	r0, #7
	vmov.i32	q8, #0x7
	add	r1, sp, #720
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #716]
.LBB17_49:                              @   Parent Loop BB17_47 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #716]
	ldr	r1, [sp, #908]
	vdup.32	q8, r1
	vorr	q9, q8, q8
	add	r2, sp, #912
	vst1.64	{d16, d17}, [r2:128]
	sub	r1, r1, #7
	cmp	r0, r1
	add	lr, sp, #272
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	bge	.LBB17_115
@ BB#50:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #964]
	ldr	r2, [sp, #748]
	ldr	r3, [sp, #908]
	vdup.32	q8, r3
	add	r12, sp, #912
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [sp, #716]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #812]
	ldr	r1, [sp, #812]
	cmp	r1, #0
	str	r0, [sp, #268]          @ 4-byte Spill
	str	r3, [sp, #264]          @ 4-byte Spill
	ble	.LBB17_108
@ BB#51:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #260]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#52:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #256]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#53:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #252]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#54:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #248]          @ 4-byte Spill
	str	r12, [sp, #244]         @ 4-byte Spill
	ble	.LBB17_107
@ BB#55:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #240]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#56:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #236]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#57:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #232]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#58:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #228]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#59:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #224]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#60:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #220]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#61:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #216]          @ 4-byte Spill
	str	r12, [sp, #212]         @ 4-byte Spill
	ble	.LBB17_107
@ BB#62:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #208]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#63:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #204]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#64:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #200]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#65:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #196]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#66:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #192]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#67:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #188]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#68:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #184]          @ 4-byte Spill
	str	r12, [sp, #180]         @ 4-byte Spill
	ble	.LBB17_107
@ BB#69:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #176]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#70:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #172]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#71:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #168]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#72:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #164]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#73:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #160]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#74:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #156]          @ 4-byte Spill
	ble	.LBB17_107
@ BB#75:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #152]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#76:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #148]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#77:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #144]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#78:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#79:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #136]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#80:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #132]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#81:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #128]          @ 4-byte Spill
	str	r12, [sp, #124]         @ 4-byte Spill
	blt	.LBB17_107
@ BB#82:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #120]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#83:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #116]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#84:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #112]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#85:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #108]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#86:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #104]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#87:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #100]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#88:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #96]           @ 4-byte Spill
	str	r12, [sp, #92]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#89:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #88]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#90:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #84]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#91:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #80]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#92:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #76]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#93:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #72]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#94:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #68]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#95:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #64]           @ 4-byte Spill
	str	r12, [sp, #60]          @ 4-byte Spill
	blt	.LBB17_107
@ BB#96:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#97:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #52]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#98:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #812]
	ldr	r2, [sp, #964]
	ldr	r3, [sp, #748]
	add	r3, r3, #3
	ldr	r12, [sp, #908]
	vdup.32	q8, r12
	add	lr, sp, #912
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [sp, #716]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	blt	.LBB17_107
@ BB#99:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #936]
	ldr	r2, [sp, #844]
	add	r2, r2, r2, lsl #1
	add	r1, r1, r2, lsl #3
	mov	r2, #0
	str	r2, [r1, #8]
	ldr	r1, [sp, #716]
	ldr	r2, [sp, #936]
	ldr	r3, [sp, #844]
	add	r3, r3, r3, lsl #1
	str	r1, [r2, r3, lsl #3]
	ldr	r1, [sp, #748]
	ldr	r2, [sp, #936]
	ldr	r3, [sp, #844]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #4]
	ldr	r1, [sp, #968]
	ldr	r2, [sp, #748]
	sub	r2, r2, #2
	ldr	r3, [sp, #908]
	vdup.32	q8, r3
	add	r12, sp, #912
	vst1.64	{d16, d17}, [r12:128]
	ldr	lr, [sp, #716]
	mla	r2, r2, r3, lr
	add	r1, r1, r2
	ldrb	r1, [r1, #-2]
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q8, lr
	vst1.64	{d16, d17}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	vmov.i32	q8, #0x1
	ldrb	r2, [r2, #-1]
	str	r1, [sp, #4092]
	vdup.32	q9, r1
	add	r3, sp, #4064
	vst1.32	{d18, d19}, [r3]
	str	r2, [sp, #4044]
	vdup.32	q10, r2
	add	r3, sp, #4016
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #3996]
	vdup.32	q10, r2
	add	r3, sp, #3968
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #3948]
	vdup.32	q10, r2
	add	r3, sp, #3920
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #3900]
	vdup.32	q10, r2
	add	r3, sp, #3872
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #3852]
	vdup.32	q10, r2
	add	r3, sp, #3824
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-1]
	str	r2, [sp, #3804]
	vdup.32	q10, r2
	add	r3, sp, #3776
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #3756]
	vdup.32	q10, r2
	add	r3, sp, #3728
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #3708]
	vdup.32	q10, r2
	add	r3, sp, #3680
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #3660]
	vdup.32	q10, r2
	add	r3, sp, #3632
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #3612]
	vdup.32	q10, r2
	add	r3, sp, #3584
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-1]
	str	r2, [sp, #3564]
	vdup.32	q10, r2
	add	r3, sp, #3536
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #3516]
	vdup.32	q10, r2
	add	r3, sp, #3488
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #3468]
	vdup.32	q10, r2
	add	r3, sp, #3440
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #3420]
	vdup.32	q10, r2
	add	r3, sp, #3392
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #3372]
	vdup.32	q10, r2
	add	r3, sp, #3344
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-1]
	str	r2, [sp, #3324]
	vdup.32	q10, r2
	add	r3, sp, #3296
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #3276]
	vdup.32	q10, r2
	add	r3, sp, #3248
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #3228]
	vdup.32	q10, r2
	add	r3, sp, #3200
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #1
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #3180]
	vdup.32	q10, r2
	add	r3, sp, #3152
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-2]
	str	r2, [sp, #3132]
	vdup.32	q10, r2
	add	r3, sp, #3104
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-1]
	str	r2, [sp, #3084]
	vdup.32	q10, r2
	add	r3, sp, #3056
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #3036]
	vdup.32	q10, r2
	add	r3, sp, #3008
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #2988]
	vdup.32	q10, r2
	add	r3, sp, #2960
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #2940]
	vdup.32	q10, r2
	add	r3, sp, #2912
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r3, sp, #816
	vst1.64	{d18, d19}, [r3]
	add	r1, r1, r2
	str	r1, [sp, #812]
	movw	r2, #34079
	movt	r2, #20971
	smmul	r1, r1, r2
	asr	r2, r1, #3
	add	r1, r2, r1, lsr #31
	ldr	r2, [sp, #936]
	ldr	lr, [sp, #844]
	add	lr, lr, lr, lsl #1
	add	r2, r2, lr, lsl #3
	str	r1, [r2, #20]
	ldr	r1, [sp, #968]
	ldr	r2, [sp, #748]
	sub	r2, r2, #2
	ldr	lr, [sp, #908]
	vdup.32	q9, lr
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r2, r2, lr, r4
	add	r1, r1, r2
	ldrb	r1, [r1, #2]
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q9, r4
	vst1.64	{d18, d19}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #2]
	str	r1, [sp, #2892]
	vdup.32	q9, r1
	add	lr, sp, #2864
	vst1.32	{d18, d19}, [lr]
	str	r2, [sp, #2844]
	vdup.32	q10, r2
	add	lr, sp, #2816
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #2]
	str	r2, [sp, #2796]
	vdup.32	q10, r2
	add	lr, sp, #2768
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #2]
	str	r2, [sp, #2748]
	vdup.32	q10, r2
	add	lr, sp, #2720
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #2]
	str	r2, [sp, #2700]
	vdup.32	q10, r2
	add	lr, sp, #2672
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #-2]
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q10, r5
	vst1.64	{d20, d21}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-2]
	str	r2, [sp, #2652]
	vdup.32	q10, r2
	add	r4, sp, #2624
	vst1.32	{d20, d21}, [r4]
	str	lr, [sp, #2604]
	vdup.32	q11, lr
	add	r4, sp, #2576
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-2]
	str	lr, [sp, #2556]
	vdup.32	q11, lr
	add	r4, sp, #2528
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	add	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-2]
	str	lr, [sp, #2508]
	vdup.32	q11, lr
	add	r4, sp, #2480
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	add	r4, r4, #2
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-2]
	str	lr, [sp, #2460]
	vdup.32	q11, lr
	add	r4, sp, #2432
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	vsub.i32	q9, q9, q10
	vst1.64	{d18, d19}, [r3]
	sub	r1, r1, r2
	str	r1, [sp, #812]
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q9, r4
	vst1.64	{d18, d19}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #2412]
	vdup.32	q10, r2
	add	lr, sp, #2384
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	str	r2, [sp, #2364]
	vdup.32	q10, r2
	add	lr, sp, #2336
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	str	r2, [sp, #2316]
	vdup.32	q10, r2
	add	lr, sp, #2288
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	str	r2, [sp, #2268]
	vdup.32	q10, r2
	add	lr, sp, #2240
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	str	r2, [sp, #2220]
	vdup.32	q10, r2
	add	lr, sp, #2192
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #-1]
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q10, r5
	vst1.64	{d20, d21}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-1]
	str	r2, [sp, #2172]
	vdup.32	q10, r2
	add	r4, sp, #2144
	vst1.32	{d20, d21}, [r4]
	str	lr, [sp, #2124]
	vdup.32	q11, lr
	add	r4, sp, #2096
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-1]
	str	lr, [sp, #2076]
	vdup.32	q11, lr
	add	r4, sp, #2048
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	add	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-1]
	str	lr, [sp, #2028]
	vdup.32	q11, lr
	add	r4, sp, #2000
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	add	r4, r4, #2
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-1]
	str	lr, [sp, #1980]
	vdup.32	q11, lr
	add	r4, sp, #1952
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	vsub.i32	q9, q9, q10
	sub	r1, r1, r2
	ldr	r2, [sp, #812]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r1, r2, r1
	str	r1, [sp, #812]
	ldr	r1, [sp, #968]
	ldr	r2, [sp, #748]
	add	r2, r2, #2
	ldr	r3, [sp, #908]
	vdup.32	q9, r3
	vst1.64	{d18, d19}, [r12:128]
	ldr	lr, [sp, #716]
	mla	r2, r2, r3, lr
	add	r1, r1, r2
	ldrb	r1, [r1, #-2]
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q9, lr
	vst1.64	{d18, d19}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-1]
	str	r1, [sp, #1932]
	vdup.32	q9, r1
	add	r3, sp, #1904
	vst1.32	{d18, d19}, [r3]
	str	r2, [sp, #1884]
	vdup.32	q10, r2
	add	r3, sp, #1856
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	ldrb	r2, [r2, r3]
	str	r2, [sp, #1836]
	vdup.32	q10, r2
	add	r3, sp, #1808
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	str	r2, [sp, #1788]
	vdup.32	q10, r2
	add	r3, sp, #1760
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	add	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	str	r2, [sp, #1740]
	vdup.32	q10, r2
	add	r3, sp, #1712
	vst1.32	{d20, d21}, [r3]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	r3, [sp, #748]
	sub	r3, r3, #2
	ldr	lr, [sp, #908]
	vdup.32	q10, lr
	vst1.64	{d20, d21}, [r12:128]
	ldr	r4, [sp, #716]
	mla	r3, r3, lr, r4
	add	r2, r2, r3
	ldrb	r2, [r2, #-2]
	ldr	r3, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #-1]
	str	r2, [sp, #1692]
	vdup.32	q10, r2
	add	lr, sp, #1664
	vst1.32	{d20, d21}, [lr]
	str	r3, [sp, #1644]
	vdup.32	q11, r3
	add	lr, sp, #1616
	vst1.32	{d22, d23}, [lr]
	vadd.i32	q10, q10, q11
	add	r2, r2, r3
	ldr	r3, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q11, r4
	vst1.64	{d22, d23}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	ldrb	r3, [r3, lr]
	str	r3, [sp, #1596]
	vdup.32	q11, r3
	add	lr, sp, #1568
	vst1.32	{d22, d23}, [lr]
	vadd.i32	q10, q10, q11
	add	r2, r2, r3
	ldr	r3, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q11, r4
	vst1.64	{d22, d23}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #1]
	str	r3, [sp, #1548]
	vdup.32	q11, r3
	add	lr, sp, #1520
	vst1.32	{d22, d23}, [lr]
	vadd.i32	q10, q10, q11
	add	r2, r2, r3
	ldr	r3, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #2
	ldr	r4, [sp, #908]
	vdup.32	q11, r4
	vst1.64	{d22, d23}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r3, r3, lr
	ldrb	r3, [r3, #2]
	str	r3, [sp, #1500]
	vdup.32	q11, r3
	add	lr, sp, #1472
	vst1.32	{d22, d23}, [lr]
	vadd.i32	q10, q10, q11
	add	r2, r2, r3
	vsub.i32	q9, q9, q10
	add	r3, sp, #784
	vst1.64	{d18, d19}, [r3]
	sub	r1, r1, r2
	str	r1, [sp, #780]
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q9, r4
	vst1.64	{d18, d19}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #-2]
	vld1.64	{d18, d19}, [r3:128]
	str	r2, [sp, #1452]
	vdup.32	q10, r2
	add	lr, sp, #1424
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #-1]
	str	r2, [sp, #1404]
	vdup.32	q10, r2
	add	lr, sp, #1376
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	ldrb	r2, [r2, lr]
	str	r2, [sp, #1356]
	vdup.32	q10, r2
	add	lr, sp, #1328
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #1]
	str	r2, [sp, #1308]
	vdup.32	q10, r2
	add	lr, sp, #1280
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	add	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #2]
	str	r2, [sp, #1260]
	vdup.32	q10, r2
	add	lr, sp, #1232
	vst1.32	{d20, d21}, [lr]
	vadd.i32	q9, q9, q10
	add	r1, r1, r2
	ldr	r2, [sp, #968]
	ldr	lr, [sp, #748]
	sub	lr, lr, #1
	ldr	r4, [sp, #908]
	vdup.32	q10, r4
	vst1.64	{d20, d21}, [r12:128]
	ldr	r5, [sp, #716]
	mla	lr, lr, r4, r5
	add	r2, r2, lr
	ldrb	r2, [r2, #-2]
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q10, r5
	vst1.64	{d20, d21}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #-1]
	str	r2, [sp, #1212]
	vdup.32	q10, r2
	add	r4, sp, #1184
	vst1.32	{d20, d21}, [r4]
	str	lr, [sp, #1164]
	vdup.32	q11, lr
	add	r4, sp, #1136
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	ldrb	lr, [lr, r4]
	str	lr, [sp, #1116]
	vdup.32	q11, lr
	add	r4, sp, #1088
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r6, [sp, #716]
	mla	r4, r4, r5, r6
	add	lr, lr, r4
	ldrb	lr, [lr, #1]
	str	lr, [sp, #1068]
	vdup.32	q11, lr
	add	r4, sp, #1040
	vst1.32	{d22, d23}, [r4]
	vadd.i32	q10, q10, q11
	add	r2, r2, lr
	ldr	lr, [sp, #968]
	ldr	r4, [sp, #748]
	sub	r4, r4, #1
	ldr	r5, [sp, #908]
	vdup.32	q11, r5
	vst1.64	{d22, d23}, [r12:128]
	ldr	r12, [sp, #716]
	mla	r12, r4, r5, r12
	add	r12, lr, r12
	ldrb	r12, [r12, #2]
	str	r12, [sp, #1020]
	vdup.32	q11, r12
	add	lr, sp, #992
	vst1.32	{d22, d23}, [lr]
	vadd.i32	q10, q10, q11
	add	r2, r2, r12
	vsub.i32	q9, q9, q10
	sub	r1, r1, r2
	ldr	r2, [sp, #780]
	vld1.64	{d20, d21}, [r3:128]
	vadd.i32	q9, q10, q9
	vst1.64	{d18, d19}, [r3]
	add	r1, r2, r1
	str	r1, [sp, #780]
	ldr	r1, [sp, #812]
	movw	r2, #34953
	movt	r2, #34952
	smmla	r1, r1, r2, r1
	asr	r3, r1, #3
	add	r1, r3, r1, lsr #31
	ldr	r3, [sp, #936]
	ldr	r12, [sp, #844]
	add	r12, r12, r12, lsl #1
	add	r3, r3, r12, lsl #3
	str	r1, [r3, #12]
	ldr	r1, [sp, #780]
	smmla	r1, r1, r2, r1
	asr	r2, r1, #3
	add	r1, r2, r1, lsr #31
	ldr	r2, [sp, #936]
	ldr	r3, [sp, #844]
	add	r3, r3, r3, lsl #1
	add	r2, r2, r3, lsl #3
	str	r1, [r2, #16]
	ldr	r1, [sp, #844]
	add	r2, sp, #848
	vld1.64	{d18, d19}, [r2:128]
	vadd.i32	q8, q9, q8
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d24, d16
	vmov.32	r2, d24[0]
	vmov.32	r3, d24[1]
	vmov.f64	d24, d17
	vmov.32	r12, d24[0]
	add	r3, r2, r3
	add	r3, r3, r12
	add	r1, r1, #1
	mul	r0, r1, r0
	ldr	r12, [sp, #704]         @ 4-byte Reload
	str	r1, [r12, #2928]
	cmp	r3, r0
	str	r1, [sp, #44]           @ 4-byte Spill
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
	beq	.LBB17_104
@ BB#100:                               @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #36]           @ 4-byte Reload
	ldr	r1, [sp, #40]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB17_102
@ BB#101:                               @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #44]           @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2928]
	b	.LBB17_103
.LBB17_102:                             @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #40]           @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2928]
.LBB17_103:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_104
.LBB17_104:                             @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #15000
	ldr	r1, [sp, #704]          @ 4-byte Reload
	ldr	r2, [r1, #2928]
	str	r2, [sp, #844]
	ldr	r2, [sp, #844]
	cmp	r2, r0
	bne	.LBB17_106
@ BB#105:
	movw	r1, :lower16:.L.str.29
	movt	r1, :upper16:.L.str.29
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB17_106:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_107
.LBB17_107:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_108
.LBB17_108:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_109
.LBB17_109:                             @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #3
	ldr	r1, [sp, #716]
	add	r2, sp, #720
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
	ldr	r12, [sp, #704]         @ 4-byte Reload
	str	r1, [r12, #2896]
	cmp	r3, r0
	str	r1, [sp, #28]           @ 4-byte Spill
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r2, [sp, #20]           @ 4-byte Spill
	beq	.LBB17_114
@ BB#110:                               @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #24]           @ 4-byte Reload
	ldr	r1, [sp, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB17_112
@ BB#111:                               @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #28]           @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2896]
	b	.LBB17_113
.LBB17_112:                             @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2896]
.LBB17_113:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_114
.LBB17_114:                             @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [sp, #704]          @ 4-byte Reload
	ldr	r1, [r0, #2896]
	str	r1, [sp, #716]
	b	.LBB17_49
.LBB17_115:                             @   in Loop: Header=BB17_47 Depth=1
	b	.LBB17_116
.LBB17_116:                             @   in Loop: Header=BB17_47 Depth=1
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
	ldr	r12, [sp, #704]         @ 4-byte Reload
	str	r1, [r12, #2864]
	cmp	r3, r0
	str	r1, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	beq	.LBB17_121
@ BB#117:                               @   in Loop: Header=BB17_47 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB17_119
@ BB#118:                               @   in Loop: Header=BB17_47 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2864]
	b	.LBB17_120
.LBB17_119:                             @   in Loop: Header=BB17_47 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #704]          @ 4-byte Reload
	str	r0, [r1, #2864]
.LBB17_120:                             @   in Loop: Header=BB17_47 Depth=1
	b	.LBB17_121
.LBB17_121:                             @   in Loop: Header=BB17_47 Depth=1
	ldr	r0, [sp, #704]          @ 4-byte Reload
	ldr	r1, [r0, #2864]
	str	r1, [sp, #748]
	b	.LBB17_47
.LBB17_122:
	movw	r0, #7
	movw	r1, #24
	ldr	r2, [sp, #936]
	ldr	r3, [sp, #844]
	mul	r1, r3, r1
	add	r1, r2, r1
	str	r0, [r1, #8]
	ldr	r0, [sp, #972]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cantunwind
	.fnend

	.globl	main
	.p2align	4
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #472
	sub	sp, sp, #360448
	bfc	sp, #0, #4
	add	lr, sp, #97280
	add	lr, lr, #262144
	add	r2, lr, #860
	movw	r3, #0
	vmov.i32	q8, #0x0
	add	lr, sp, #360448
	add	r12, lr, #416
	vst1.64	{d16, d17}, [r12]
	mov	r12, #0
	str	r12, [r2, #576]
	str	r0, [r2, #544]
	str	r1, [r2, #540]
	vmov.f32	q9, #4.000000e+00
	add	lr, sp, #327680
	add	r0, lr, #33024
	vst1.64	{d18, d19}, [r0]
	movw	r0, #0
	movt	r0, #16512
	str	r0, [r2, #416]
	vmov.i32	q9, #0x3
	add	lr, sp, #360448
	add	r0, lr, #224
	vst1.64	{d18, d19}, [r0]
	mov	r0, #3
	str	r0, [r2, #384]
	vmov.i32	q9, #0x14
	add	lr, sp, #360448
	add	r0, lr, #192
	vst1.64	{d18, d19}, [r0]
	mov	r0, #20
	str	r0, [r2, #352]
	add	lr, sp, #360448
	add	r0, lr, #160
	vst1.64	{d16, d17}, [r0]
	str	r12, [r2, #320]
	vmov.i32	q9, #0x1
	add	lr, sp, #360448
	add	r0, lr, #128
	vst1.64	{d18, d19}, [r0]
	mov	r0, #1
	str	r0, [r2, #288]
	add	lr, sp, #360448
	add	r0, lr, #96
	vst1.64	{d16, d17}, [r0]
	str	r12, [r2, #256]
	add	lr, sp, #360448
	add	r0, lr, #64
	vst1.64	{d16, d17}, [r0]
	str	r12, [r2, #224]
	add	lr, sp, #360448
	add	r0, lr, #32
	vst1.64	{d16, d17}, [r0]
	str	r12, [r2, #192]
	adr	r0, .LCPI18_3
	vld1.64	{d18, d19}, [r0:128]
	add	r0, sp, #360448
	vst1.64	{d18, d19}, [r0]
	movw	r0, #1850
	str	r0, [r2, #160]
	adr	r0, .LCPI18_4
	vld1.64	{d18, d19}, [r0:128]
	add	lr, sp, #356352
	add	r0, lr, #4064
	vst1.64	{d18, d19}, [r0]
	movw	r0, #2650
	str	r0, [r2, #128]
	add	lr, sp, #344064
	add	r0, lr, #16320
	vst1.64	{d16, d17}, [r0]
	str	r3, [r2, #96]
	ldr	r0, [r2, #544]
	cmp	r0, #3
	str	r2, [sp, #280]          @ 4-byte Spill
	bge	.LBB18_2
@ BB#1:
	bl	usage
	str	r0, [sp, #276]          @ 4-byte Spill
.LBB18_2:
	add	r4, sp, #360448
	add	r1, r4, #284
	add	r4, sp, #97280
	add	r4, r4, #262144
	add	r2, r4, #892
	add	r4, sp, #97280
	add	r4, r4, #262144
	add	r3, r4, #860
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r12, [r0, #540]
	ldr	r0, [r12, #4]
	bl	get_image
.LBB18_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #384]
	ldr	r2, [r0, #544]
	cmp	r1, r2
	bge	.LBB18_34
@ BB#4:                                 @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #540]
	ldr	r3, [r1, #384]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	str	r2, [r1, #452]
	ldr	r2, [r1, #452]
	ldrb	r2, [r2]
	cmp	r2, #45
	str	r0, [sp, #272]          @ 4-byte Spill
	bne	.LBB18_27
@ BB#5:                                 @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #452]
	add	r2, r1, #1
	str	r2, [r0, #452]
	ldrb	r1, [r1, #1]
	sub	r1, r1, #51
	cmp	r1, #65
	str	r1, [sp, #268]          @ 4-byte Spill
	bhi	.LBB18_26
@ BB#6:                                 @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #268]          @ 4-byte Reload
	lsl	r1, r0, #2
	adr	r2, .LJTI18_0
	ldr	r1, [r1, r2]
	mov	pc, r1
@ BB#7:
	.p2align	2
.LJTI18_0:
	.long	.LBB18_14
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_13
	.long	.LBB18_10
	.long	.LBB18_16
	.long	.LBB18_9
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_26
	.long	.LBB18_12
	.long	.LBB18_26
	.long	.LBB18_11
	.long	.LBB18_15
	.long	.LBB18_26
	.long	.LBB18_8
	.long	.LBB18_23
.LBB18_8:                               @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	lr, sp, #344064
	add	r1, lr, #16320
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB18_26
.LBB18_9:                               @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #344064
	add	r1, lr, #16320
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB18_26
.LBB18_10:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	vmov.i32	q8, #0x2
	add	lr, sp, #344064
	add	r1, lr, #16320
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #96]
	b	.LBB18_26
.LBB18_11:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #360448
	add	r1, lr, #160
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #320]
	b	.LBB18_26
.LBB18_12:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	lr, sp, #360448
	add	r1, lr, #128
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #288]
	b	.LBB18_26
.LBB18_13:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #360448
	add	r1, lr, #64
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #224]
	b	.LBB18_26
.LBB18_14:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #360448
	add	r1, lr, #96
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #256]
	b	.LBB18_26
.LBB18_15:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #360448
	add	r1, lr, #32
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #192]
	b	.LBB18_26
.LBB18_16:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #384]
	vdup.32	q8, r1
	add	lr, sp, #360448
	add	r2, lr, #224
	vst1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #384]
	ldr	r2, [r0, #544]
	cmp	r1, r2
	add	lr, sp, #240
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB18_18
@ BB#17:
	movw	r0, :lower16:.L.str.30
	movt	r0, :upper16:.L.str.30
	bl	printf
	movw	lr, #0
	str	r0, [sp, #236]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB18_18:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #540]
	ldr	r3, [r1, #384]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	str	r0, [sp, #232]          @ 4-byte Spill
	mov	r0, r2
	bl	atof
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	ldr	r0, [sp, #280]          @ 4-byte Reload
	vstr	s0, [r0, #416]
	vldr	s0, [r0, #416]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB18_20
@ BB#19:                                @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #360448
	add	r1, lr, #96
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #256]
.LBB18_20:                              @   in Loop: Header=BB18_3 Depth=1
	b	.LBB18_26
	.p2align	4
@ BB#21:
.LCPI18_3:
	.long	1850                    @ 0x73a
	.long	1850                    @ 0x73a
	.long	1850                    @ 0x73a
	.long	1850                    @ 0x73a
	.p2align	4
@ BB#22:
.LCPI18_4:
	.long	2650                    @ 0xa5a
	.long	2650                    @ 0xa5a
	.long	2650                    @ 0xa5a
	.long	2650                    @ 0xa5a
.LBB18_23:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #384]
	add	lr, sp, #360448
	add	r2, lr, #224
	vld1.64	{d16, d17}, [r2:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r2]
	add	r1, r1, #1
	str	r1, [r0, #384]
	ldr	r2, [r0, #544]
	cmp	r1, r2
	add	lr, sp, #208
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	blt	.LBB18_25
@ BB#24:
	movw	r0, :lower16:.L.str.31
	movt	r0, :upper16:.L.str.31
	bl	printf
	movw	lr, #0
	str	r0, [sp, #204]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB18_25:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #540]
	ldr	r3, [r1, #384]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	str	r0, [sp, #200]          @ 4-byte Spill
	mov	r0, r2
	bl	atoi
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #352]
.LBB18_26:                              @   in Loop: Header=BB18_3 Depth=1
	b	.LBB18_28
.LBB18_27:                              @   in Loop: Header=BB18_3 Depth=1
	bl	usage
	str	r0, [sp, #196]          @ 4-byte Spill
.LBB18_28:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #384]
	add	r4, sp, #360448
	add	r3, r4, #224
	vld1.64	{d16, d17}, [r3:128]
	vmov.i32	q9, #0x1
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
	str	r2, [r1, #608]
	cmp	r12, r0
	str	r2, [sp, #192]          @ 4-byte Spill
	str	r12, [sp, #188]         @ 4-byte Spill
	str	r3, [sp, #184]          @ 4-byte Spill
	beq	.LBB18_33
@ BB#29:                                @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #188]          @ 4-byte Reload
	ldr	r1, [sp, #184]          @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB18_31
@ BB#30:                                @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #192]          @ 4-byte Reload
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #608]
	b	.LBB18_32
.LBB18_31:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #184]          @ 4-byte Reload
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #608]
.LBB18_32:                              @   in Loop: Header=BB18_3 Depth=1
	b	.LBB18_33
.LBB18_33:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #608]
	str	r1, [r0, #384]
	b	.LBB18_3
.LBB18_34:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #320]
	cmp	r1, #1
	bne	.LBB18_37
@ BB#35:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #96]
	cmp	r1, #0
	bne	.LBB18_37
@ BB#36:
	movw	r0, #1
	vmov.i32	q8, #0x1
	add	lr, sp, #344064
	add	r1, lr, #16320
	vst1.64	{d16, d17}, [r1]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #96]
.LBB18_37:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #96]
	cmp	r1, #0
	str	r1, [sp, #180]          @ 4-byte Spill
	beq	.LBB18_40
	b	.LBB18_38
.LBB18_38:
	ldr	r0, [sp, #180]          @ 4-byte Reload
	cmp	r0, #1
	beq	.LBB18_41
	b	.LBB18_39
.LBB18_39:
	ldr	r0, [sp, #180]          @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB18_53
	b	.LBB18_60
.LBB18_40:
	add	r4, sp, #360448
	add	r0, r4, #280
	movw	r2, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #352]
	bl	setup_brightness_lut
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #256]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #448]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	vldr	s0, [r2, #416]
	vcvt.f64.f32	d16, s0
	ldr	lr, [r2, #32]
	ldr	r3, [r2]
	ldr	r12, [r2, #444]
	str	r3, [sp, #176]          @ 4-byte Spill
	vmov	r2, r3, d16
	str	lr, [sp]
	ldr	lr, [sp, #176]          @ 4-byte Reload
	str	lr, [sp, #4]
	str	r12, [sp, #8]
	bl	susan_smoothing
	b	.LBB18_60
.LBB18_41:
	movw	r0, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #32]
	vdup.32	q8, r2
	add	r4, sp, #344064
	add	r3, r4, #16256
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [r1]
	vdup.32	q8, r3
	add	r4, sp, #356352
	add	r12, r4, #3936
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r2, r2, #2
	str	r0, [sp, #172]          @ 4-byte Spill
	mov	r0, r2
	str	r3, [sp, #168]          @ 4-byte Spill
	bl	malloc
	add	r4, sp, #360448
	add	r1, r4, #280
	movw	r2, #6
	ldr	r3, [sp, #280]          @ 4-byte Reload
	str	r0, [r3, #412]
	ldr	r0, [r3, #352]
	str	r0, [sp, #164]          @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #164]          @ 4-byte Reload
	bl	setup_brightness_lut
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #320]
	cmp	r1, #0
	beq	.LBB18_46
@ BB#42:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #256]
	cmp	r1, #0
	beq	.LBB18_44
@ BB#43:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #412]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #444]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #128]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #32]
	ldr	r4, [r12]
	str	lr, [sp]
	str	r4, [sp, #4]
	bl	susan_principle_small
	str	r0, [sp, #160]          @ 4-byte Spill
	b	.LBB18_45
.LBB18_44:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #412]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #444]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #128]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #32]
	ldr	r4, [r12]
	str	lr, [sp]
	str	r4, [sp, #4]
	bl	susan_principle
	str	r0, [sp, #156]          @ 4-byte Spill
.LBB18_45:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #412]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #448]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r2, #32]
	mov	r12, r3
	vdup.32	q8, r3
	add	r4, sp, #344064
	add	r3, r4, #16256
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [r2]
	mov	lr, r3
	vdup.32	q8, r3
	vorr	q9, q8, q8
	add	r4, sp, #356352
	add	r3, r4, #3936
	vst1.64	{d16, d17}, [r3:128]
	mul	r2, r12, lr
	add	r4, sp, #128
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	int_to_uchar
	str	r0, [sp, #124]          @ 4-byte Spill
	b	.LBB18_52
.LBB18_46:
	movw	r0, #100
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #32]
	vdup.32	q8, r2
	add	r4, sp, #344064
	add	r3, r4, #16256
	vst1.64	{d16, d17}, [r3:128]
	ldr	r12, [r1]
	vdup.32	q8, r12
	add	r4, sp, #356352
	add	lr, r4, #3936
	vst1.64	{d16, d17}, [lr:128]
	mul	r2, r2, r12
	str	r0, [sp, #120]          @ 4-byte Spill
	mov	r0, r2
	str	r3, [sp, #116]          @ 4-byte Spill
	str	lr, [sp, #112]          @ 4-byte Spill
	bl	malloc
	ldr	r1, [sp, #280]          @ 4-byte Reload
	str	r0, [r1, #440]
	ldr	r2, [r1, #32]
	mov	r3, r2
	vdup.32	q8, r2
	ldr	r2, [sp, #116]          @ 4-byte Reload
	vst1.64	{d16, d17}, [r2:128]
	ldr	r12, [r1]
	mov	lr, r12
	vdup.32	q8, r12
	vorr	q9, q8, q8
	ldr	r12, [sp, #112]         @ 4-byte Reload
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r3, lr
	ldr	r3, [sp, #120]          @ 4-byte Reload
	and	r1, r3, #255
	add	r4, sp, #96
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	memset
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #256]
	cmp	r1, #0
	beq	.LBB18_48
@ BB#47:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #412]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #440]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #444]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	ldr	r4, [r12, #32]
	ldr	r5, [r12]
	str	lr, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	bl	susan_edges_small
	str	r0, [sp, #92]           @ 4-byte Spill
	b	.LBB18_49
.LBB18_48:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #412]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #440]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #444]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #128]
	ldr	r4, [r12, #32]
	ldr	r5, [r12]
	str	lr, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	bl	susan_edges
	str	r0, [sp, #88]           @ 4-byte Spill
.LBB18_49:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #288]
	cmp	r1, #0
	beq	.LBB18_51
@ BB#50:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #412]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #440]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #32]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3]
	bl	susan_thin
	str	r0, [sp, #84]           @ 4-byte Spill
.LBB18_51:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #440]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #32]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #224]
	str	lr, [sp]
	bl	edge_draw
	str	r0, [sp, #80]           @ 4-byte Spill
.LBB18_52:
	b	.LBB18_60
.LBB18_53:
	movw	r0, #2
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #32]
	vdup.32	q8, r2
	add	r4, sp, #344064
	add	r3, r4, #16256
	vst1.64	{d16, d17}, [r3:128]
	ldr	r3, [r1]
	vdup.32	q8, r3
	add	r4, sp, #356352
	add	r12, r4, #3936
	vst1.64	{d16, d17}, [r12:128]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r2, r2, #2
	str	r0, [sp, #76]           @ 4-byte Spill
	mov	r0, r2
	str	r3, [sp, #72]           @ 4-byte Spill
	bl	malloc
	add	r4, sp, #360448
	add	r1, r4, #280
	movw	r2, #6
	ldr	r3, [sp, #280]          @ 4-byte Reload
	str	r0, [r3, #412]
	ldr	r0, [r3, #352]
	str	r0, [sp, #68]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #68]           @ 4-byte Reload
	bl	setup_brightness_lut
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #320]
	cmp	r1, #0
	beq	.LBB18_55
@ BB#54:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #412]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #444]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #160]
	ldr	r12, [sp, #280]         @ 4-byte Reload
	ldr	lr, [r12, #32]
	ldr	r4, [r12]
	mov	r5, sp
	str	r4, [r5, #4]
	str	lr, [r5]
	bl	susan_principle
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #412]
	ldr	r1, [r1, #448]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r12, [r3, #32]
	mov	lr, r12
	vdup.32	q8, r12
	add	r5, sp, #344064
	add	r12, r5, #16256
	vst1.64	{d16, d17}, [r12:128]
	ldr	r12, [r3]
	mov	r4, r12
	vdup.32	q8, r12
	vorr	q9, q8, q8
	add	r5, sp, #356352
	add	r12, r5, #3936
	vst1.64	{d16, d17}, [r12:128]
	mul	r12, lr, r4
	str	r0, [sp, #64]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r12
	add	r4, sp, #48
	vst1.64	{d18, d19}, [r4:128]    @ 16-byte Spill
	bl	int_to_uchar
	str	r0, [sp, #44]           @ 4-byte Spill
	b	.LBB18_59
.LBB18_55:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #192]
	cmp	r1, #0
	beq	.LBB18_57
@ BB#56:
	add	r0, sp, #284
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #448]
	ldr	r1, [r1, #412]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r12, [r3, #444]
	ldr	r3, [r3, #160]
	ldr	lr, [sp, #280]          @ 4-byte Reload
	ldr	r4, [lr, #32]
	ldr	r5, [lr]
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r12
	ldr	r12, [sp, #40]          @ 4-byte Reload
	str	r12, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	bl	susan_corners_quick
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB18_58
.LBB18_57:
	add	r0, sp, #284
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #448]
	ldr	r1, [r1, #412]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r12, [r3, #444]
	ldr	r3, [r3, #160]
	ldr	lr, [sp, #280]          @ 4-byte Reload
	ldr	r4, [lr, #32]
	ldr	r5, [lr]
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r12
	ldr	r12, [sp, #32]          @ 4-byte Reload
	str	r12, [sp]
	str	r4, [sp, #4]
	str	r5, [sp, #8]
	bl	susan_corners
	str	r0, [sp, #28]           @ 4-byte Spill
.LBB18_58:
	add	r1, sp, #284
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r0, [r0, #448]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #32]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3, #224]
	bl	corner_draw
	str	r0, [sp, #24]           @ 4-byte Spill
.LBB18_59:
	b	.LBB18_60
.LBB18_60:
	ldr	r0, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r0, #540]
	ldr	r0, [r1, #8]
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r1, [r1, #448]
	ldr	r2, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r2, #32]
	ldr	r3, [sp, #280]          @ 4-byte Reload
	ldr	r3, [r3]
	bl	put_image
	ldr	r1, [sp, #280]          @ 4-byte Reload
	ldr	r2, [r1, #576]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r2
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
@ BB#61:
.Lfunc_end18:
	.size	main, .Lfunc_end18-main
	.cantunwind
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Usage: susan <in.pgm> <out.pgm> [options]\n\n"
	.size	.L.str, 44

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"-s : Smoothing mode (default)\n"
	.size	.L.str.1, 31

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"-e : Edges mode\n"
	.size	.L.str.2, 17

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"-c : Corners mode\n\n"
	.size	.L.str.3, 20

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"See source code for more information about setting the thresholds\n"
	.size	.L.str.4, 67

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"-t <thresh> : Brightness threshold, all modes (default=20)\n"
	.size	.L.str.5, 60

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\n"
	.size	.L.str.6, 107

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"-3 : Use flat 3x3 mask, edges or smoothing mode\n"
	.size	.L.str.7, 49

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"-n : No post-processing on the binary edge map (runs much faster); edges mode\n"
	.size	.L.str.8, 79

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\n"
	.size	.L.str.9, 111

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\n"
	.size	.L.str.10, 108

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\n"
	.size	.L.str.11, 91

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"\nSUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\n"
	.size	.L.str.12, 77

	.type	.L.str.13,%object       @ @.str.13
.L.str.13:
	.asciz	"Image %s not binary PGM.\n"
	.size	.L.str.13, 26

	.type	.L.str.14,%object       @ @.str.14
.L.str.14:
	.asciz	"is"
	.size	.L.str.14, 3

	.type	.L.str.15,%object       @ @.str.15
.L.str.15:
	.asciz	"r"
	.size	.L.str.15, 2

	.type	.L.str.16,%object       @ @.str.16
.L.str.16:
	.asciz	"Can't input image %s.\n"
	.size	.L.str.16, 23

	.type	.L.str.17,%object       @ @.str.17
.L.str.17:
	.asciz	"Image %s does not have binary PGM header.\n"
	.size	.L.str.17, 43

	.type	.L.str.18,%object       @ @.str.18
.L.str.18:
	.asciz	"Image %s is wrong size.\n"
	.size	.L.str.18, 25

	.type	.L.str.19,%object       @ @.str.19
.L.str.19:
	.asciz	"w"
	.size	.L.str.19, 2

	.type	.L.str.20,%object       @ @.str.20
.L.str.20:
	.asciz	"Can't output image%s.\n"
	.size	.L.str.20, 23

	.type	.L.str.21,%object       @ @.str.21
.L.str.21:
	.asciz	"P5\n"
	.size	.L.str.21, 4

	.type	.L.str.22,%object       @ @.str.22
.L.str.22:
	.asciz	"%d %d\n"
	.size	.L.str.22, 7

	.type	.L.str.23,%object       @ @.str.23
.L.str.23:
	.asciz	"255\n"
	.size	.L.str.23, 5

	.type	.L.str.24,%object       @ @.str.24
.L.str.24:
	.asciz	"Can't write image %s.\n"
	.size	.L.str.24, 23

	.type	.L.str.25,%object       @ @.str.25
.L.str.25:
	.asciz	"Distance_thresh (%f) too big for integer arithmetic.\n"
	.size	.L.str.25, 54

	.type	.L.str.26,%object       @ @.str.26
.L.str.26:
	.asciz	"Either reduce it to <=15 or recompile with variable \"total\"\n"
	.size	.L.str.26, 61

	.type	.L.str.27,%object       @ @.str.27
.L.str.27:
	.asciz	"as a float: see top \"defines\" section.\n"
	.size	.L.str.27, 40

	.type	.L.str.28,%object       @ @.str.28
.L.str.28:
	.asciz	"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\n"
	.size	.L.str.28, 65

	.type	.L.str.29,%object       @ @.str.29
.L.str.29:
	.asciz	"Too many corners.\n"
	.size	.L.str.29, 19

	.type	.L.str.30,%object       @ @.str.30
.L.str.30:
	.asciz	"No argument following -d\n"
	.size	.L.str.30, 26

	.type	.L.str.31,%object       @ @.str.31
.L.str.31:
	.asciz	"No argument following -t\n"
	.size	.L.str.31, 26


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
