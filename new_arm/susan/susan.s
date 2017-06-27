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
	.file	"susan.ll"
	.globl	usage
	.p2align	2
	.type	usage,%function
	.code	32                      @ @usage
usage:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	printf
	movw	lr, :lower16:.L.str.1
	movt	lr, :upper16:.L.str.1
	str	r0, [r11, #-8]          @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.2
	movt	lr, :upper16:.L.str.2
	str	r0, [r11, #-12]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.3
	movt	lr, :upper16:.L.str.3
	str	r0, [r11, #-16]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.4
	movt	lr, :upper16:.L.str.4
	str	r0, [r11, #-20]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.5
	movt	lr, :upper16:.L.str.5
	str	r0, [r11, #-24]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.6
	movt	lr, :upper16:.L.str.6
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.7
	movt	lr, :upper16:.L.str.7
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.9
	movt	lr, :upper16:.L.str.9
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.10
	movt	lr, :upper16:.L.str.10
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.11
	movt	lr, :upper16:.L.str.11
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, :lower16:.L.str.12
	movt	lr, :upper16:.L.str.12
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #0
	str	r0, [sp]                @ 4-byte Spill
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #808
	sub	sp, sp, #9216
	str	r0, [r11, #-16]
	ldr	r0, [r11, #-16]
	bl	getc
	str	r0, [r11, #-20]
.LBB1_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #35
	bne	.LBB1_3
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	movw	r1, #9000
	add	r0, sp, #8
	ldr	r2, [r11, #-16]
	bl	fgets
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB1_3:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-20]
	cmn	r0, #1
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
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_5:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #48
	blt	.LBB1_8
@ BB#6:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #57
	bgt	.LBB1_8
@ BB#7:
	b	.LBB1_9
.LBB1_8:                                @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [r11, #-16]
	bl	getc
	str	r0, [r11, #-20]
	b	.LBB1_1
.LBB1_9:
	movw	r0, #0
	str	r0, [r11, #-24]
.LBB1_10:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #10
	ldr	r1, [r11, #-24]
	mul	r0, r1, r0
	ldr	r1, [r11, #-20]
	sub	r1, r1, #48
	add	r0, r0, r1
	str	r0, [r11, #-24]
	ldr	r0, [r11, #-16]
	bl	getc
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	cmn	r0, #1
	bne	.LBB1_12
@ BB#11:
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-12]
	b	.LBB1_17
.LBB1_12:                               @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #48
	blt	.LBB1_14
@ BB#13:                                @   in Loop: Header=BB1_10 Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #57
	ble	.LBB1_15
.LBB1_14:
	b	.LBB1_16
.LBB1_15:                               @   in Loop: Header=BB1_10 Depth=1
	b	.LBB1_10
.LBB1_16:
	ldr	r0, [r11, #-24]
	str	r0, [r11, #-12]
.LBB1_17:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
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
	sub	sp, sp, #144
	movw	r12, :lower16:.L.str.15
	movt	r12, :upper16:.L.str.15
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #-4]
	mov	r1, r12
	bl	fopen
	movw	r1, #0
	str	r0, [r11, #-20]
	cmp	r0, r1
	bne	.LBB2_2
@ BB#1:
	movw	r1, :lower16:.L.str.16
	movt	r1, :upper16:.L.str.16
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_2:
	ldr	r0, [r11, #-20]
	bl	fgetc
	strb	r0, [sp, #24]
	ldr	r0, [r11, #-20]
	bl	fgetc
	strb	r0, [sp, #25]
	ldrb	r0, [sp, #24]
	cmp	r0, #80
	bne	.LBB2_4
@ BB#3:
	ldrb	r0, [sp, #25]
	cmp	r0, #53
	beq	.LBB2_5
.LBB2_4:
	movw	r1, :lower16:.L.str.17
	movt	r1, :upper16:.L.str.17
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_5:
	ldr	r0, [r11, #-20]
	bl	getint
	ldr	lr, [r11, #-12]
	str	r0, [lr]
	ldr	r0, [r11, #-20]
	bl	getint
	ldr	lr, [r11, #-16]
	str	r0, [lr]
	ldr	r0, [r11, #-20]
	bl	getint
	str	r0, [sp, #20]
	ldr	r0, [r11, #-12]
	ldr	r0, [r0]
	ldr	lr, [r11, #-16]
	ldr	lr, [lr]
	mul	r0, r0, lr
	bl	malloc
	movw	r1, #1
	ldr	lr, [r11, #-8]
	str	r0, [lr]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	ldr	lr, [r11, #-12]
	ldr	lr, [lr]
	ldr	r2, [r11, #-16]
	ldr	r2, [r2]
	mul	r2, lr, r2
	ldr	r3, [r11, #-20]
	bl	fread
	cmp	r0, #0
	bne	.LBB2_7
@ BB#6:
	movw	r1, :lower16:.L.str.18
	movt	r1, :upper16:.L.str.18
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-4]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB2_7:
	ldr	r0, [r11, #-20]
	bl	fclose
	str	r0, [sp, #4]            @ 4-byte Spill
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	movw	r12, :lower16:.L.str.19
	movt	r12, :upper16:.L.str.19
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [r11, #-20]
	ldr	r0, [r11, #-8]
	mov	r1, r12
	bl	fopen
	movw	r1, #0
	str	r0, [sp, #24]
	cmp	r0, r1
	bne	.LBB3_2
@ BB#1:
	movw	r1, :lower16:.L.str.20
	movt	r1, :upper16:.L.str.20
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-8]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB3_2:
	movw	r1, :lower16:.L.str.21
	movt	r1, :upper16:.L.str.21
	ldr	r0, [sp, #24]
	bl	fprintf
	movw	r1, :lower16:.L.str.22
	movt	r1, :upper16:.L.str.22
	ldr	lr, [sp, #24]
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-20]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, lr
	bl	fprintf
	movw	r1, :lower16:.L.str.23
	movt	r1, :upper16:.L.str.23
	ldr	r2, [sp, #24]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r2
	bl	fprintf
	movw	r2, #1
	ldr	r1, [r11, #-12]
	ldr	r3, [r11, #-16]
	ldr	lr, [r11, #-20]
	mul	r3, r3, lr
	ldr	lr, [sp, #24]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	mov	r3, lr
	bl	fwrite
	cmp	r0, #1
	beq	.LBB3_4
@ BB#3:
	movw	r1, :lower16:.L.str.24
	movt	r1, :upper16:.L.str.24
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	ldr	r2, [r11, #-8]
	bl	fprintf
	movw	r1, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB3_4:
	ldr	r0, [sp, #24]
	bl	fclose
	ldr	lr, [r11, #-4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, lr
	mov	sp, r11
	pop	{r11, pc}
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #48
	movw	r3, #0
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-8]
	ldr	r0, [r0]
	str	r0, [sp, #20]
	str	r3, [r11, #-20]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bge	.LBB4_8
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	ldr	r2, [sp, #24]
	cmp	r1, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	ble	.LBB4_4
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #24]
	str	r0, [sp, #12]           @ 4-byte Spill
.LBB4_4:                                @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	ldr	r2, [sp, #20]
	cmp	r1, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	bge	.LBB4_6
@ BB#5:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [sp, #20]
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB4_6:                                @   in Loop: Header=BB4_1 Depth=1
	b	.LBB4_7
.LBB4_7:                                @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r11, #-20]
	add	r0, r0, #1
	str	r0, [r11, #-20]
	b	.LBB4_1
.LBB4_8:
	movw	r0, #0
	ldr	r1, [sp, #20]
	ldr	r2, [sp, #24]
	sub	r1, r2, r1
	str	r1, [sp, #24]
	str	r0, [r11, #-20]
.LBB4_9:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-20]
	ldr	r1, [r11, #-16]
	cmp	r0, r1
	bge	.LBB4_12
@ BB#10:                                @   in Loop: Header=BB4_9 Depth=1
	movw	r0, #255
	movw	r1, #2
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-20]
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #20]
	sub	r2, r2, r3
	mul	r0, r2, r0
	ldr	r2, [sp, #24]
	str	r1, [sp]                @ 4-byte Spill
	mov	r1, r2
	bl	__divsi3
	ldr	r1, [r11, #-12]
	ldr	r2, [r11, #-20]
	add	r1, r1, r2
	strb	r0, [r1]
@ BB#11:                                @   in Loop: Header=BB4_9 Depth=1
	ldr	r0, [r11, #-20]
	add	r0, r0, #1
	str	r0, [r11, #-20]
	b	.LBB4_9
.LBB4_12:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r3, #516
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	mov	r0, r3
	bl	malloc
	mvn	r1, #255
	movw	r2, #258
	ldr	r3, [r11, #-4]
	str	r0, [r3]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0]
	add	r0, r0, r2
	ldr	r2, [r11, #-4]
	str	r0, [r2]
	str	r1, [sp, #8]
.LBB5_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #257
	ldr	r1, [sp, #8]
	cmp	r1, r0
	bge	.LBB5_6
@ BB#2:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #8]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-8]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vstr	s0, [sp, #4]
	vldr	s0, [sp, #4]
	vldr	s2, [sp, #4]
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #4]
	ldr	r0, [sp, #12]
	cmp	r0, #6
	bne	.LBB5_4
@ BB#3:                                 @   in Loop: Header=BB5_1 Depth=1
	vldr	s0, [sp, #4]
	vldr	s2, [sp, #4]
	vmul.f32	s0, s0, s2
	vldr	s2, [sp, #4]
	vmul.f32	s0, s0, s2
	vstr	s0, [sp, #4]
.LBB5_4:                                @   in Loop: Header=BB5_1 Depth=1
	vldr	s0, [sp, #4]
	vneg.f32	s0, s0
	vcvt.f64.f32	d16, s0
	vmov	r0, r1, d16
	bl	exp
	vmov	d16, r0, r1
	vldr	d17, .LCPI5_0
	vmul.f64	d16, d16, d17
	vcvt.f32.f64	s0, d16
	vstr	s0, [sp, #4]
	vcvt.u32.f32	s0, s0
	vmov	r0, s0
	ldr	r1, [r11, #-4]
	ldr	r1, [r1]
	ldr	lr, [sp, #8]
	add	r1, r1, lr
	strb	r0, [r1]
@ BB#5:                                 @   in Loop: Header=BB5_1 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB5_1
.LBB5_6:
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#7:
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
	push	{r4, r5, r6, r10, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #72
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	movw	r4, #3
	movw	r5, #0
	movw	r6, #2
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	str	r2, [r11, #-32]
	str	r3, [r11, #-36]
	str	lr, [r11, #-40]
	str	r12, [sp, #44]
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-40]
	mul	r1, r1, r12
	mov	r2, r1
	lsl	r1, r1, #2
	and	r3, r5, #255
	str	r1, [sp, #20]           @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [sp, #20]           @ 4-byte Reload
	str	r2, [sp, #16]           @ 4-byte Spill
	mov	r2, r3
	str	r6, [sp, #12]           @ 4-byte Spill
	str	r4, [sp, #8]            @ 4-byte Spill
	bl	memset
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #40]
.LBB6_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB6_3 Depth 2
	ldr	r0, [sp, #40]
	ldr	r1, [sp, #44]
	sub	r1, r1, #3
	cmp	r0, r1
	bge	.LBB6_10
@ BB#2:                                 @   in Loop: Header=BB6_1 Depth=1
	movw	r0, #3
	str	r0, [sp, #36]
.LBB6_3:                                @   Parent Loop BB6_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #36]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #3
	cmp	r0, r1
	bge	.LBB6_8
@ BB#4:                                 @   in Loop: Header=BB6_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [sp, #32]
	ldr	r2, [r11, #-24]
	ldr	r3, [sp, #40]
	sub	r3, r3, #3
	ldr	r12, [r11, #-40]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #36]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-24]
	ldr	r3, [sp, #40]
	ldr	r12, [r11, #-40]
	mul	r3, r3, r12
	ldr	r12, [sp, #36]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #24]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #3
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #5
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #6
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #28]
	add	r1, r1, #2
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #6
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #5
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #3
	ldr	r2, [sp, #28]
	add	r1, r2, r1
	str	r1, [sp, #28]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	add	r3, r2, #1
	str	r3, [sp, #28]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #32]
	add	r1, r2, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [sp, #32]
	add	r0, r1, r0
	str	r0, [sp, #32]
	ldr	r0, [sp, #32]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bgt	.LBB6_6
@ BB#5:                                 @   in Loop: Header=BB6_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [sp, #32]
	sub	r1, r1, r2
	ldr	r2, [r11, #-28]
	ldr	r3, [sp, #40]
	ldr	r12, [r11, #-40]
	ldr	lr, [sp, #36]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r12, [sp]               @ 4-byte Spill
.LBB6_6:                                @   in Loop: Header=BB6_3 Depth=2
	b	.LBB6_7
.LBB6_7:                                @   in Loop: Header=BB6_3 Depth=2
	ldr	r0, [sp, #36]
	add	r0, r0, #1
	str	r0, [sp, #36]
	b	.LBB6_3
.LBB6_8:                                @   in Loop: Header=BB6_1 Depth=1
	b	.LBB6_9
.LBB6_9:                                @   in Loop: Header=BB6_1 Depth=1
	ldr	r0, [sp, #40]
	add	r0, r0, #1
	str	r0, [sp, #40]
	b	.LBB6_1
.LBB6_10:
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r10, r11, pc}
.Lfunc_end6:
	.size	susan_principle, .Lfunc_end6-susan_principle
	.cantunwind
	.fnend

	.globl	susan_principle_small
	.p2align	2
	.type	susan_principle_small,%function
	.code	32                      @ @susan_principle_small
susan_principle_small:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #80
	ldr	r12, [r11, #12]
	ldr	lr, [r11, #8]
	movw	r4, #1
	movw	r5, #730
	movw	r6, #0
	movw	r7, #2
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	str	r2, [r11, #-32]
	str	r3, [r11, #-36]
	str	lr, [r11, #-40]
	str	r12, [r11, #-44]
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-40]
	mul	r1, r1, r12
	mov	r2, r1
	lsl	r1, r1, #2
	and	r3, r6, #255
	str	r1, [sp, #28]           @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [sp, #28]           @ 4-byte Reload
	str	r2, [sp, #24]           @ 4-byte Spill
	mov	r2, r3
	str	r7, [sp, #20]           @ 4-byte Spill
	str	r4, [sp, #16]           @ 4-byte Spill
	str	r5, [sp, #12]           @ 4-byte Spill
	bl	memset
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [r11, #-36]
	ldr	r1, [sp, #16]           @ 4-byte Reload
	str	r1, [sp, #48]
.LBB7_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB7_3 Depth 2
	ldr	r0, [sp, #48]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB7_10
@ BB#2:                                 @   in Loop: Header=BB7_1 Depth=1
	movw	r0, #1
	str	r0, [sp, #44]
.LBB7_3:                                @   Parent Loop BB7_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #44]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB7_8
@ BB#4:                                 @   in Loop: Header=BB7_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [sp, #40]
	ldr	r2, [r11, #-24]
	ldr	r3, [sp, #48]
	sub	r3, r3, #1
	ldr	r12, [r11, #-40]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #44]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #36]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-24]
	ldr	r3, [sp, #48]
	ldr	r12, [r11, #-40]
	mul	r3, r3, r12
	ldr	r12, [sp, #44]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #32]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, #1
	str	r3, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, #1
	str	r3, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #2
	ldr	r2, [sp, #36]
	add	r1, r2, r1
	str	r1, [sp, #36]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #36]
	add	r1, r1, #2
	str	r1, [sp, #36]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [r11, #-40]
	sub	r1, r1, #2
	ldr	r2, [sp, #36]
	add	r1, r2, r1
	str	r1, [sp, #36]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, #1
	str	r3, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	add	r3, r2, #1
	str	r3, [sp, #36]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [sp, #40]
	add	r1, r2, r1
	str	r1, [sp, #40]
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [sp, #40]
	add	r0, r1, r0
	str	r0, [sp, #40]
	ldr	r0, [sp, #40]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bgt	.LBB7_6
@ BB#5:                                 @   in Loop: Header=BB7_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [sp, #40]
	sub	r1, r1, r2
	ldr	r2, [r11, #-28]
	ldr	r3, [sp, #48]
	ldr	r12, [r11, #-40]
	ldr	lr, [sp, #44]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r12, [sp, #4]           @ 4-byte Spill
.LBB7_6:                                @   in Loop: Header=BB7_3 Depth=2
	b	.LBB7_7
.LBB7_7:                                @   in Loop: Header=BB7_3 Depth=2
	ldr	r0, [sp, #44]
	add	r0, r0, #1
	str	r0, [sp, #44]
	b	.LBB7_3
.LBB7_8:                                @   in Loop: Header=BB7_1 Depth=1
	b	.LBB7_9
.LBB7_9:                                @   in Loop: Header=BB7_1 Depth=1
	ldr	r0, [sp, #48]
	add	r0, r0, #1
	str	r0, [sp, #48]
	b	.LBB7_1
.LBB7_10:
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #80
	movw	r12, #0
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [r11, #-12]
	str	r3, [r11, #-16]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	sub	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	sub	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	sub	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #40]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #44]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #48]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	add	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #52]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	add	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #56]
	ldr	r0, [r11, #-4]
	ldr	r1, [r11, #-8]
	add	r1, r1, #1
	ldr	r2, [r11, #-16]
	mul	r1, r1, r2
	ldr	r2, [r11, #-12]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	str	r0, [sp, #60]
	str	r12, [sp, #28]
.LBB8_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB8_3 Depth 2
	ldr	r0, [sp, #28]
	cmp	r0, #7
	bge	.LBB8_10
@ BB#2:                                 @   in Loop: Header=BB8_1 Depth=1
	movw	r0, #0
	str	r0, [sp, #24]
.LBB8_3:                                @   Parent Loop BB8_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #7
	ldr	r1, [sp, #24]
	ldr	r2, [sp, #28]
	sub	r0, r0, r2
	cmp	r1, r0
	bge	.LBB8_8
@ BB#4:                                 @   in Loop: Header=BB8_3 Depth=2
	add	r0, sp, #32
	movw	r1, #2
	ldr	r2, [sp, #24]
	add	r3, sp, #32
	ldr	r12, [r3, r2, lsl #2]
	add	r2, r2, #1
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	cmp	r12, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r1, [sp, #12]           @ 4-byte Spill
	ble	.LBB8_6
@ BB#5:                                 @   in Loop: Header=BB8_3 Depth=2
	add	r0, sp, #32
	movw	r1, #2
	ldr	r2, [sp, #24]
	add	r3, sp, #32
	ldr	r2, [r3, r2, lsl #2]
	str	r2, [sp, #20]
	ldr	r2, [sp, #24]
	add	r12, r3, r2, lsl #2
	ldr	r12, [r12, #4]
	str	r12, [r3, r2, lsl #2]
	ldr	r2, [sp, #20]
	ldr	r12, [sp, #24]
	add	r12, r12, #1
	add	r3, r3, r12, lsl #2
	str	r2, [r3]
	str	r0, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
.LBB8_6:                                @   in Loop: Header=BB8_3 Depth=2
	b	.LBB8_7
.LBB8_7:                                @   in Loop: Header=BB8_3 Depth=2
	ldr	r0, [sp, #24]
	add	r0, r0, #1
	str	r0, [sp, #24]
	b	.LBB8_3
.LBB8_8:                                @   in Loop: Header=BB8_1 Depth=1
	b	.LBB8_9
.LBB8_9:                                @   in Loop: Header=BB8_1 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB8_1
.LBB8_10:
	movw	r1, #2
	ldr	r0, [sp, #44]
	ldr	r2, [sp, #48]
	add	r0, r0, r2
	bl	__divsi3
	and	r0, r0, #255
	mov	sp, r11
	pop	{r11, pc}
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
	sub	sp, sp, #56
	ldr	r12, [r11, #8]
	movw	lr, #0
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [r11, #-24]
	str	r3, [r11, #-28]
	str	r12, [sp, #32]
	str	lr, [sp, #28]
.LBB9_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [r11, #-28]
	ldr	r1, [r1]
	cmp	r0, r1
	bge	.LBB9_4
@ BB#2:                                 @   in Loop: Header=BB9_1 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	ldr	r12, [r11, #-24]
	ldr	r12, [r12]
	lsl	r3, r3, #1
	add	r3, r12, r3
	mul	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #32]
	add	r1, r1, r2
	ldr	r2, [r11, #-16]
	ldr	r2, [r2]
	ldr	r3, [sp, #28]
	ldr	r12, [r11, #-24]
	ldr	r12, [r12]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	ldr	r3, [r3]
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
@ BB#3:                                 @   in Loop: Header=BB9_1 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB9_1
.LBB9_4:
	movw	r0, #0
	str	r0, [sp, #28]
.LBB9_5:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #32]
	cmp	r0, r1
	bge	.LBB9_8
@ BB#6:                                 @   in Loop: Header=BB9_5 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #32]
	sub	r3, r2, #1
	ldr	r12, [sp, #28]
	sub	r3, r3, r12
	ldr	lr, [r11, #-24]
	ldr	lr, [lr]
	add	r4, lr, r2, lsl #1
	mla	r1, r3, r4, r1
	add	r1, r1, r2
	ldr	r2, [r11, #-16]
	ldr	r2, [r2]
	mla	r2, r12, lr, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, lr
	bl	memcpy
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-28]
	ldr	r2, [r2]
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	ldr	r12, [sp, #28]
	add	r2, r2, r12
	ldr	r12, [r11, #-24]
	ldr	r12, [r12]
	lsl	r3, r3, #1
	add	r3, r12, r3
	mul	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [sp, #32]
	add	r1, r1, r2
	ldr	r2, [r11, #-16]
	ldr	r2, [r2]
	ldr	r3, [r11, #-28]
	ldr	r3, [r3]
	ldr	r12, [sp, #28]
	sub	r3, r3, r12
	sub	r3, r3, #1
	ldr	r12, [r11, #-24]
	ldr	r12, [r12]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	ldr	r3, [r3]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
@ BB#7:                                 @   in Loop: Header=BB9_5 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB9_5
.LBB9_8:
	movw	r0, #0
	str	r0, [sp, #28]
.LBB9_9:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB9_11 Depth 2
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #32]
	cmp	r0, r1
	bge	.LBB9_16
@ BB#10:                                @   in Loop: Header=BB9_9 Depth=1
	movw	r0, #0
	str	r0, [sp, #24]
.LBB9_11:                               @   Parent Loop BB9_9 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, #1
	ldr	r1, [sp, #24]
	ldr	r2, [r11, #-28]
	ldr	r2, [r2]
	ldr	r3, [sp, #32]
	lsl	r3, r3, #1
	add	r2, r2, r3
	cmp	r1, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	bge	.LBB9_14
@ BB#12:                                @   in Loop: Header=BB9_11 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #24]
	ldr	r3, [r11, #-24]
	ldr	r3, [r3]
	ldr	r12, [sp, #32]
	add	r3, r3, r12, lsl #1
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #28]
	add	r12, r2, r3
	ldrb	r12, [r1, r12]
	sub	r2, r2, #1
	sub	r2, r2, r3
	strb	r12, [r1, r2]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #24]
	ldr	r3, [r11, #-24]
	ldr	r3, [r3]
	ldr	r12, [sp, #32]
	lsl	lr, r12, #1
	add	r4, r3, r12, lsl #1
	mla	r4, r2, r4, r3
	add	r12, r4, r12
	sub	r12, r12, #1
	ldr	r4, [sp, #28]
	sub	r12, r12, r4
	ldrb	r12, [r1, r12]
	add	r3, r3, lr
	mul	r2, r2, r3
	ldr	r3, [r11, #-24]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	ldr	r3, [sp, #28]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r12, [r1]
	str	r0, [sp, #4]            @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB9_11 Depth=2
	ldr	r0, [sp, #24]
	add	r0, r0, #1
	str	r0, [sp, #24]
	b	.LBB9_11
.LBB9_14:                               @   in Loop: Header=BB9_9 Depth=1
	b	.LBB9_15
.LBB9_15:                               @   in Loop: Header=BB9_9 Depth=1
	ldr	r0, [sp, #28]
	add	r0, r0, #1
	str	r0, [sp, #28]
	b	.LBB9_9
.LBB9_16:
	movw	r0, #1
	ldr	r1, [sp, #32]
	ldr	r2, [r11, #-24]
	ldr	r3, [r2]
	add	r1, r3, r1, lsl #1
	str	r1, [r2]
	ldr	r1, [sp, #32]
	lsl	r1, r1, #1
	ldr	r2, [r11, #-28]
	ldr	r3, [r2]
	add	r1, r3, r1
	str	r1, [r2]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-16]
	str	r1, [r2]
	ldr	r1, [r11, #-12]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end9:
	.size	enlarge, .Lfunc_end9-enlarge
	.cantunwind
	.fnend

	.globl	susan_smoothing
	.p2align	3
	.type	susan_smoothing,%function
	.code	32                      @ @susan_smoothing
susan_smoothing:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #144
	vmov	d16, r2, r3
	ldr	r2, [r11, #16]
	ldr	r3, [r11, #12]
	ldr	r12, [r11, #8]
	vcvt.f32.f64	s0, d16
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	vstr	s0, [r11, #-12]
	str	r12, [r11, #-16]
	str	r3, [r11, #-20]
	str	r2, [r11, #-24]
	ldr	r0, [r11, #-8]
	str	r0, [sp, #52]
	ldr	r0, [r11, #-4]
	cmp	r0, #0
	bne	.LBB10_2
@ BB#1:
	vmov.f64	d16, #1.500000e+00
	vldr	s0, [r11, #-12]
	vcvt.f64.f32	d17, s0
	vmul.f64	d16, d16, d17
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	add	r0, r0, #1
	str	r0, [r11, #-40]
	b	.LBB10_3
.LBB10_2:
	movw	r0, #1
	str	r0, [r11, #-40]
.LBB10_3:
	vmov.f32	s0, #1.500000e+01
	movw	r0, #0
	str	r0, [sp, #44]
	vldr	s2, [r11, #-12]
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	ble	.LBB10_6
@ BB#4:
	ldr	r0, [sp, #44]
	cmp	r0, #0
	bne	.LBB10_6
@ BB#5:
	movw	r0, :lower16:.L.str.25
	movt	r0, :upper16:.L.str.25
	vldr	s0, [r11, #-12]
	vcvt.f64.f32	d16, s0
	vmov	r2, r3, d16
	bl	printf
	movw	r2, :lower16:.L.str.26
	movt	r2, :upper16:.L.str.26
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r2, :lower16:.L.str.27
	movt	r2, :upper16:.L.str.27
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r2
	bl	printf
	movw	r2, #0
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r2
	bl	exit
.LBB10_6:
	movw	r0, #1
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #1
	add	r1, r1, #1
	ldr	r2, [r11, #-16]
	cmp	r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	bgt	.LBB10_8
@ BB#7:
	movw	r0, #1
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #1
	add	r1, r1, #1
	ldr	r2, [r11, #-20]
	cmp	r1, r2
	str	r0, [sp, #24]           @ 4-byte Spill
	ble	.LBB10_9
.LBB10_8:
	movw	r0, :lower16:.L.str.28
	movt	r0, :upper16:.L.str.28
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-16]
	ldr	r3, [r11, #-20]
	bl	printf
	movw	r1, #0
	str	r0, [sp, #20]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB10_9:
	movw	r0, #1
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-40]
	lsl	r3, r2, #1
	add	r1, r1, r2, lsl #1
	ldr	r2, [r11, #-20]
	add	r2, r2, r3
	mul	r1, r1, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	sub	r1, r11, #8
	sub	r2, r11, #16
	sub	r3, r11, #20
	str	r0, [sp, #48]
	ldr	r0, [sp, #48]
	ldr	lr, [r11, #-40]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	str	lr, [sp]
	bl	enlarge
	ldr	r1, [r11, #-4]
	cmp	r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	bne	.LBB10_39
@ BB#10:
	movw	r0, #1
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #1
	add	r1, r1, #1
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-32]
	sub	r1, r1, r2
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-32]
	mul	r1, r1, r2
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	movw	r1, #0
	str	r0, [sp, #64]
	ldr	r0, [sp, #64]
	str	r0, [sp, #60]
	vldr	s0, [r11, #-12]
	vldr	s2, [r11, #-12]
	vmul.f32	s0, s0, s2
	vneg.f32	s0, s0
	vstr	s0, [r11, #-28]
	ldr	r0, [r11, #-40]
	sub	r0, r1, r0
	str	r0, [r11, #-44]
.LBB10_11:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_13 Depth 2
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-40]
	cmp	r0, r1
	bgt	.LBB10_18
@ BB#12:                                @   in Loop: Header=BB10_11 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-40]
	sub	r0, r0, r1
	str	r0, [r11, #-48]
.LBB10_13:                              @   Parent Loop BB10_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-40]
	cmp	r0, r1
	bgt	.LBB10_16
@ BB#14:                                @   in Loop: Header=BB10_13 Depth=2
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-44]
	mul	r0, r0, r1
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-48]
	mul	r1, r1, r2
	add	r0, r0, r1
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vldr	s2, [r11, #-28]
	vdiv.f32	s0, s0, s2
	vcvt.f64.f32	d16, s0
	vmov	r0, r1, d16
	bl	exp
	vmov	d16, r0, r1
	vldr	d17, .LCPI10_1
	vmul.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [sp, #60]
	add	r2, r1, #1
	str	r2, [sp, #60]
	strb	r0, [r1]
@ BB#15:                                @   in Loop: Header=BB10_13 Depth=2
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
	b	.LBB10_13
.LBB10_16:                              @   in Loop: Header=BB10_11 Depth=1
	b	.LBB10_17
.LBB10_17:                              @   in Loop: Header=BB10_11 Depth=1
	ldr	r0, [r11, #-44]
	add	r0, r0, #1
	str	r0, [r11, #-44]
	b	.LBB10_11
.LBB10_18:
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-44]
.LBB10_19:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_21 Depth 2
                                        @       Child Loop BB10_23 Depth 3
                                        @         Child Loop BB10_25 Depth 4
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-40]
	sub	r1, r1, r2
	cmp	r0, r1
	bge	.LBB10_37
@ BB#20:                                @   in Loop: Header=BB10_19 Depth=1
	ldr	r0, [r11, #-40]
	str	r0, [r11, #-48]
.LBB10_21:                              @   Parent Loop BB10_19 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB10_23 Depth 3
                                        @         Child Loop BB10_25 Depth 4
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-16]
	ldr	r2, [r11, #-40]
	sub	r1, r1, r2
	cmp	r0, r1
	bge	.LBB10_35
@ BB#22:                                @   in Loop: Header=BB10_21 Depth=2
	movw	r0, #0
	str	r0, [r11, #-60]
	str	r0, [sp, #44]
	ldr	r1, [sp, #64]
	str	r1, [sp, #60]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-44]
	ldr	r3, [r11, #-40]
	sub	r2, r2, r3
	ldr	r3, [r11, #-16]
	mul	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [r11, #-48]
	add	r1, r1, r2
	ldr	r2, [r11, #-40]
	sub	r2, r0, r2
	add	r1, r1, r2
	str	r1, [sp, #68]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-44]
	ldr	r3, [r11, #-16]
	mul	r2, r2, r3
	ldr	r3, [r11, #-48]
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [sp, #72]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #72]
	add	r1, r1, r2
	str	r1, [sp, #56]
	ldr	r1, [r11, #-40]
	sub	r0, r0, r1
	str	r0, [r11, #-56]
.LBB10_23:                              @   Parent Loop BB10_19 Depth=1
                                        @     Parent Loop BB10_21 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB10_25 Depth 4
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-40]
	cmp	r0, r1
	bgt	.LBB10_30
@ BB#24:                                @   in Loop: Header=BB10_23 Depth=3
	movw	r0, #0
	ldr	r1, [r11, #-40]
	sub	r0, r0, r1
	str	r0, [r11, #-52]
.LBB10_25:                              @   Parent Loop BB10_19 Depth=1
                                        @     Parent Loop BB10_21 Depth=2
                                        @       Parent Loop BB10_23 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-40]
	cmp	r0, r1
	bgt	.LBB10_28
@ BB#26:                                @   in Loop: Header=BB10_25 Depth=4
	movw	r0, #0
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #60]
	add	r2, r1, #1
	str	r2, [sp, #60]
	ldrb	r1, [r1]
	ldr	r2, [sp, #56]
	ldr	r3, [r11, #-64]
	sub	r0, r0, r3
	add	r0, r2, r0
	ldrb	r0, [r0]
	mul	r0, r1, r0
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-60]
	add	r0, r1, r0
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-64]
	mul	r0, r0, r1
	ldr	r1, [sp, #44]
	add	r0, r1, r0
	str	r0, [sp, #44]
@ BB#27:                                @   in Loop: Header=BB10_25 Depth=4
	ldr	r0, [r11, #-52]
	add	r0, r0, #1
	str	r0, [r11, #-52]
	b	.LBB10_25
.LBB10_28:                              @   in Loop: Header=BB10_23 Depth=3
	ldr	r0, [r11, #-36]
	ldr	r1, [sp, #68]
	add	r0, r1, r0
	str	r0, [sp, #68]
@ BB#29:                                @   in Loop: Header=BB10_23 Depth=3
	ldr	r0, [r11, #-56]
	add	r0, r0, #1
	str	r0, [r11, #-56]
	b	.LBB10_23
.LBB10_30:                              @   in Loop: Header=BB10_21 Depth=2
	movw	r0, #10000
	ldr	r1, [r11, #-60]
	sub	r0, r1, r0
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-68]
	cmp	r0, #0
	bne	.LBB10_32
@ BB#31:                                @   in Loop: Header=BB10_21 Depth=2
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-48]
	ldr	r3, [r11, #-16]
	bl	median
	ldr	r1, [sp, #52]
	add	r2, r1, #1
	str	r2, [sp, #52]
	strb	r0, [r1]
	b	.LBB10_33
.LBB10_32:                              @   in Loop: Header=BB10_21 Depth=2
	movw	r0, #10000
	ldr	r1, [sp, #44]
	ldr	r2, [sp, #72]
	mul	r0, r2, r0
	sub	r0, r1, r0
	ldr	r1, [r11, #-68]
	bl	__divsi3
	ldr	r1, [sp, #52]
	add	r2, r1, #1
	str	r2, [sp, #52]
	strb	r0, [r1]
.LBB10_33:                              @   in Loop: Header=BB10_21 Depth=2
	b	.LBB10_34
.LBB10_34:                              @   in Loop: Header=BB10_21 Depth=2
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
	b	.LBB10_21
.LBB10_35:                              @   in Loop: Header=BB10_19 Depth=1
	b	.LBB10_36
.LBB10_36:                              @   in Loop: Header=BB10_19 Depth=1
	ldr	r0, [r11, #-44]
	add	r0, r0, #1
	str	r0, [r11, #-44]
	b	.LBB10_19
.LBB10_37:
	b	.LBB10_51
	.p2align	3
@ BB#38:
.LCPI10_1:
	.long	0                       @ double 100
	.long	1079574528
.LBB10_39:
	movw	r0, #1
	str	r0, [r11, #-44]
.LBB10_40:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB10_42 Depth 2
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-20]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB10_50
@ BB#41:                                @   in Loop: Header=BB10_40 Depth=1
	movw	r0, #1
	str	r0, [r11, #-48]
.LBB10_42:                              @   Parent Loop BB10_40 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-48]
	ldr	r1, [r11, #-16]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB10_48
@ BB#43:                                @   in Loop: Header=BB10_42 Depth=2
	movw	r0, #0
	mvn	r1, #0
	str	r0, [r11, #-60]
	str	r0, [sp, #44]
	ldr	r2, [r11, #-8]
	ldr	r3, [r11, #-44]
	sub	r3, r3, #1
	ldr	r12, [r11, #-16]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-48]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #68]
	ldr	r1, [r11, #-8]
	ldr	r2, [r11, #-44]
	ldr	r3, [r11, #-16]
	mul	r2, r2, r3
	ldr	r3, [r11, #-48]
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [sp, #72]
	ldr	r1, [r11, #-24]
	ldr	r2, [sp, #72]
	add	r1, r1, r2
	str	r1, [sp, #56]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [r11, #-16]
	sub	r1, r1, #2
	ldr	r2, [sp, #68]
	add	r1, r2, r1
	str	r1, [sp, #68]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [r11, #-16]
	sub	r1, r1, #2
	ldr	r2, [sp, #68]
	add	r1, r2, r1
	str	r1, [sp, #68]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	add	r2, r1, #1
	str	r2, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-60]
	add	r1, r2, r1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-64]
	mul	r1, r1, r2
	ldr	r2, [sp, #44]
	add	r1, r2, r1
	str	r1, [sp, #44]
	ldr	r1, [sp, #68]
	ldrb	r1, [r1]
	str	r1, [r11, #-64]
	ldr	r1, [sp, #56]
	ldr	r2, [r11, #-64]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-60]
	add	r0, r1, r0
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-64]
	mul	r0, r0, r1
	ldr	r1, [sp, #44]
	add	r0, r1, r0
	str	r0, [sp, #44]
	ldr	r0, [r11, #-60]
	sub	r0, r0, #100
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-68]
	cmp	r0, #0
	bne	.LBB10_45
@ BB#44:                                @   in Loop: Header=BB10_42 Depth=2
	ldr	r0, [r11, #-8]
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-48]
	ldr	r3, [r11, #-16]
	bl	median
	ldr	r1, [sp, #52]
	add	r2, r1, #1
	str	r2, [sp, #52]
	strb	r0, [r1]
	b	.LBB10_46
.LBB10_45:                              @   in Loop: Header=BB10_42 Depth=2
	movw	r0, #100
	ldr	r1, [sp, #44]
	ldr	r2, [sp, #72]
	mul	r0, r2, r0
	sub	r0, r1, r0
	ldr	r1, [r11, #-68]
	bl	__divsi3
	ldr	r1, [sp, #52]
	add	r2, r1, #1
	str	r2, [sp, #52]
	strb	r0, [r1]
.LBB10_46:                              @   in Loop: Header=BB10_42 Depth=2
	b	.LBB10_47
.LBB10_47:                              @   in Loop: Header=BB10_42 Depth=2
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
	b	.LBB10_42
.LBB10_48:                              @   in Loop: Header=BB10_40 Depth=1
	b	.LBB10_49
.LBB10_49:                              @   in Loop: Header=BB10_40 Depth=1
	ldr	r0, [r11, #-44]
	add	r0, r0, #1
	str	r0, [r11, #-44]
	b	.LBB10_40
.LBB10_50:
	b	.LBB10_51
.LBB10_51:
	mov	sp, r11
	pop	{r11, pc}
@ BB#52:
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
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #36
	ldr	r12, [r11, #8]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	str	r2, [r11, #-16]
	str	r3, [sp, #16]
	str	r12, [sp, #12]
	ldr	r0, [sp, #12]
	cmp	r0, #0
	bne	.LBB11_8
@ BB#1:
	movw	r0, #0
	ldr	r1, [r11, #-12]
	str	r1, [sp]
	str	r0, [sp, #8]
.LBB11_2:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #16]
	mul	r1, r1, r2
	cmp	r0, r1
	bge	.LBB11_7
@ BB#3:                                 @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp]
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB11_5
@ BB#4:                                 @   in Loop: Header=BB11_2 Depth=1
	movw	r0, #255
	mvn	r1, #0
	movw	r2, #0
	ldr	r3, [r11, #-8]
	ldr	r12, [sp]
	ldr	lr, [r11, #-12]
	sub	r12, r12, lr
	add	r3, r3, r12
	ldr	r12, [r11, #-16]
	sub	r2, r2, r12
	add	r2, r3, r2
	add	r1, r2, r1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [r11, #-16]
	sub	r1, r1, #2
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	add	r1, r1, #1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [r11, #-16]
	sub	r1, r1, #2
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
.LBB11_5:                               @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
@ BB#6:                                 @   in Loop: Header=BB11_2 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB11_2
.LBB11_7:
	b	.LBB11_8
.LBB11_8:
	movw	r0, #0
	ldr	r1, [r11, #-12]
	str	r1, [sp]
	str	r0, [sp, #8]
.LBB11_9:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #8]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #16]
	mul	r1, r1, r2
	cmp	r0, r1
	bge	.LBB11_14
@ BB#10:                                @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp]
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB11_12
@ BB#11:                                @   in Loop: Header=BB11_9 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-8]
	ldr	r2, [sp]
	ldr	r3, [r11, #-12]
	sub	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB11_12:                              @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
@ BB#13:                                @   in Loop: Header=BB11_9 Depth=1
	ldr	r0, [sp, #8]
	add	r0, r0, #1
	str	r0, [sp, #8]
	b	.LBB11_9
.LBB11_14:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #240
	movw	r12, #4
	str	r0, [r11, #-16]
	str	r1, [r11, #-20]
	str	r2, [r11, #-24]
	str	r3, [r11, #-28]
	str	r12, [sp, #96]
.LBB12_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB12_3 Depth 2
                                        @       Child Loop BB12_33 Depth 3
                                        @         Child Loop BB12_35 Depth 4
	ldr	r0, [sp, #96]
	ldr	r1, [r11, #-28]
	sub	r1, r1, #4
	cmp	r0, r1
	bge	.LBB12_104
@ BB#2:                                 @   in Loop: Header=BB12_1 Depth=1
	movw	r0, #4
	str	r0, [sp, #92]
.LBB12_3:                               @   Parent Loop BB12_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB12_33 Depth 3
                                        @         Child Loop BB12_35 Depth 4
	ldr	r0, [sp, #92]
	ldr	r1, [r11, #-24]
	sub	r1, r1, #4
	cmp	r0, r1
	bge	.LBB12_102
@ BB#4:                                 @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_100
@ BB#5:                                 @   in Loop: Header=BB12_3 Depth=2
	mvn	r0, #0
	movw	r1, #2
	ldr	r2, [r11, #-16]
	ldr	r3, [sp, #96]
	ldr	r12, [r11, #-24]
	ldr	lr, [sp, #92]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	str	r2, [r11, #-68]
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	sub	r3, r3, #1
	ldr	lr, [r11, #-24]
	mul	r3, r3, lr
	add	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	add	r0, r2, r0
	str	r0, [sp, #88]
	ldr	r0, [sp, #88]
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	ldr	r2, [sp, #88]
	ldrb	r2, [r2, #1]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldrb	r2, [r2, #1]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	ldr	r2, [sp, #88]
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	add	r2, r2, r3
	ldrb	r2, [r2, #2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	add	r0, r0, r2
	str	r0, [sp, #116]
	ldr	r0, [sp, #116]
	cmp	r0, #0
	str	r12, [sp, #84]          @ 4-byte Spill
	str	r1, [sp, #80]           @ 4-byte Spill
	bne	.LBB12_7
@ BB#6:                                 @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #100
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB12_7:                               @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #116]
	cmp	r0, #1
	bne	.LBB12_54
@ BB#8:                                 @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #6
	bge	.LBB12_54
@ BB#9:                                 @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #-4]
	str	r1, [r11, #-64]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #4]
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #-4]
	str	r1, [r11, #-52]
	mov	r1, #0
	str	r1, [r11, #-48]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #4]
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	add	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1, #-4]
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	add	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r1, [r1, r2, lsl #2]
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	add	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	add	r2, r2, #1
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #8
	str	r0, [sp, #76]           @ 4-byte Spill
	bge	.LBB12_11
@ BB#10:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-64]
	str	r1, [r11, #-60]
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-56]
	lsl	r1, r1, #1
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #1
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-44]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-36]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-32]
	lsl	r1, r1, #2
	str	r1, [r11, #-32]
	str	r0, [sp, #72]           @ 4-byte Spill
	b	.LBB12_32
.LBB12_11:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_13
@ BB#12:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-60]
	str	r1, [r11, #-64]
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-52]
	lsl	r1, r1, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	lsl	r1, r1, #1
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-40]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-32]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-36]
	lsl	r1, r1, #2
	str	r1, [r11, #-36]
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB12_31
.LBB12_13:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_15
@ BB#14:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-56]
	str	r1, [r11, #-60]
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-64]
	lsl	r1, r1, #1
	str	r1, [r11, #-64]
	ldr	r1, [r11, #-32]
	lsl	r1, r1, #1
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-52]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-36]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #2
	str	r1, [r11, #-40]
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB12_30
.LBB12_15:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_17
@ BB#16:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-52]
	str	r1, [r11, #-64]
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-60]
	lsl	r1, r1, #1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-36]
	lsl	r1, r1, #1
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-56]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-32]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-44]
	lsl	r1, r1, #2
	str	r1, [r11, #-44]
	str	r0, [sp, #60]           @ 4-byte Spill
	b	.LBB12_29
.LBB12_17:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_19
@ BB#18:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-44]
	str	r1, [r11, #-56]
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-60]
	lsl	r1, r1, #1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-36]
	lsl	r1, r1, #1
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-64]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-64]
	ldr	r1, [r11, #-40]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-52]
	lsl	r1, r1, #2
	str	r1, [r11, #-52]
	str	r0, [sp, #56]           @ 4-byte Spill
	b	.LBB12_28
.LBB12_19:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_21
@ BB#20:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-40]
	str	r1, [r11, #-52]
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-64]
	lsl	r1, r1, #1
	str	r1, [r11, #-64]
	ldr	r1, [r11, #-32]
	lsl	r1, r1, #1
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-60]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-44]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-56]
	lsl	r1, r1, #2
	str	r1, [r11, #-56]
	str	r0, [sp, #52]           @ 4-byte Spill
	b	.LBB12_27
.LBB12_21:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_23
@ BB#22:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-36]
	str	r1, [r11, #-40]
	str	r1, [r11, #-32]
	ldr	r1, [r11, #-52]
	lsl	r1, r1, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	lsl	r1, r1, #1
	str	r1, [r11, #-44]
	ldr	r1, [r11, #-64]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-64]
	ldr	r1, [r11, #-56]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-60]
	lsl	r1, r1, #2
	str	r1, [r11, #-60]
	str	r0, [sp, #48]           @ 4-byte Spill
	b	.LBB12_26
.LBB12_23:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	bge	.LBB12_25
@ BB#24:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #2
	mov	r1, #0
	str	r1, [r11, #-32]
	str	r1, [r11, #-44]
	str	r1, [r11, #-36]
	ldr	r1, [r11, #-40]
	lsl	r1, r1, #1
	str	r1, [r11, #-40]
	ldr	r1, [r11, #-56]
	lsl	r1, r1, #1
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-60]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-60]
	ldr	r1, [r11, #-52]
	add	r1, r1, r1, lsl #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-64]
	lsl	r1, r1, #2
	str	r1, [r11, #-64]
	str	r0, [sp, #44]           @ 4-byte Spill
.LBB12_25:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_26
.LBB12_26:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_27
.LBB12_27:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_28
.LBB12_28:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_29
.LBB12_29:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_30
.LBB12_30:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_31
.LBB12_31:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_32
.LBB12_32:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	str	r0, [sp, #120]
	str	r0, [sp, #100]
.LBB12_33:                              @   Parent Loop BB12_1 Depth=1
                                        @     Parent Loop BB12_3 Depth=2
                                        @ =>    This Loop Header: Depth=3
                                        @         Child Loop BB12_35 Depth 4
	ldr	r0, [sp, #100]
	cmp	r0, #3
	bge	.LBB12_42
@ BB#34:                                @   in Loop: Header=BB12_33 Depth=3
	movw	r0, #0
	str	r0, [sp, #104]
.LBB12_35:                              @   Parent Loop BB12_1 Depth=1
                                        @     Parent Loop BB12_3 Depth=2
                                        @       Parent Loop BB12_33 Depth=3
                                        @ =>      This Inner Loop Header: Depth=4
	ldr	r0, [sp, #104]
	cmp	r0, #3
	bge	.LBB12_40
@ BB#36:                                @   in Loop: Header=BB12_35 Depth=4
	sub	r0, r11, #64
	movw	r1, #2
	ldr	r2, [sp, #100]
	add	r3, r2, r2
	add	r2, r3, r2
	ldr	r3, [sp, #104]
	add	r2, r2, r3
	sub	r3, r11, #64
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #120]
	cmp	r2, r3
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	ble	.LBB12_38
@ BB#37:                                @   in Loop: Header=BB12_35 Depth=4
	sub	r0, r11, #64
	movw	r1, #2
	ldr	r2, [sp, #100]
	add	r3, r2, r2
	add	r2, r3, r2
	ldr	r3, [sp, #104]
	add	r2, r2, r3
	sub	r3, r11, #64
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	str	r2, [sp, #120]
	ldr	r2, [sp, #100]
	str	r2, [sp, #112]
	ldr	r2, [sp, #104]
	str	r2, [sp, #108]
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r1, [sp, #28]           @ 4-byte Spill
.LBB12_38:                              @   in Loop: Header=BB12_35 Depth=4
	b	.LBB12_39
.LBB12_39:                              @   in Loop: Header=BB12_35 Depth=4
	ldr	r0, [sp, #104]
	add	r0, r0, #1
	str	r0, [sp, #104]
	b	.LBB12_35
.LBB12_40:                              @   in Loop: Header=BB12_33 Depth=3
	b	.LBB12_41
.LBB12_41:                              @   in Loop: Header=BB12_33 Depth=3
	ldr	r0, [sp, #100]
	add	r0, r0, #1
	str	r0, [sp, #100]
	b	.LBB12_33
.LBB12_42:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #120]
	cmp	r0, #0
	ble	.LBB12_53
@ BB#43:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #4
	bge	.LBB12_45
@ BB#44:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #112]
	add	r2, r2, r3
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	ldr	r3, [sp, #108]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	strb	r0, [r1]
	b	.LBB12_46
.LBB12_45:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	add	r0, r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #112]
	add	r2, r2, r3
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	ldr	r3, [sp, #108]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	strb	r0, [r1]
.LBB12_46:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #112]
	ldr	r1, [sp, #112]
	add	r0, r0, r1
	ldr	r1, [sp, #108]
	add	r0, r0, r1
	cmp	r0, #3
	bge	.LBB12_52
@ BB#47:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #112]
	sub	r0, r0, #1
	ldr	r1, [sp, #96]
	add	r0, r1, r0
	str	r0, [sp, #96]
	ldr	r0, [sp, #108]
	sub	r0, r0, #2
	ldr	r1, [sp, #92]
	add	r0, r1, r0
	str	r0, [sp, #92]
	ldr	r0, [sp, #96]
	cmp	r0, #4
	bge	.LBB12_49
@ BB#48:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #96]
.LBB12_49:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #92]
	cmp	r0, #4
	bge	.LBB12_51
@ BB#50:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #92]
.LBB12_51:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_52
.LBB12_52:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_53
.LBB12_53:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_54
.LBB12_54:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #116]
	cmp	r0, #2
	bne	.LBB12_89
@ BB#55:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-112]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-116]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-120]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [sp, #124]
	ldr	r0, [r11, #-112]
	ldr	r1, [r11, #-116]
	add	r0, r0, r1
	ldr	r1, [r11, #-120]
	add	r0, r0, r1
	ldr	r1, [sp, #124]
	add	r0, r0, r1
	cmp	r0, #2
	bne	.LBB12_79
@ BB#56:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-112]
	ldr	r1, [sp, #124]
	orr	r0, r0, r1
	ldr	r1, [r11, #-116]
	ldr	r2, [r11, #-120]
	orr	r1, r1, r2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LBB12_79
@ BB#57:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-112]
	cmp	r0, #0
	beq	.LBB12_62
@ BB#58:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB12_60
@ BB#59:                                @   in Loop: Header=BB12_3 Depth=2
	mvn	r0, #0
	movw	r1, #0
	str	r1, [sp, #104]
	str	r0, [sp, #100]
	b	.LBB12_61
.LBB12_60:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	str	r1, [sp, #104]
	str	r0, [sp, #100]
.LBB12_61:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_66
.LBB12_62:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-116]
	cmp	r0, #0
	beq	.LBB12_64
@ BB#63:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #0
	movw	r1, #1
	str	r1, [sp, #104]
	str	r0, [sp, #100]
	b	.LBB12_65
.LBB12_64:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	movw	r1, #0
	str	r1, [sp, #104]
	str	r0, [sp, #100]
.LBB12_65:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_66
.LBB12_66:                              @   in Loop: Header=BB12_3 Depth=2
	vldr	d16, .LCPI12_1
	movw	r0, #2
	ldr	r1, [r11, #-16]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #100]
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #104]
	add	r2, r2, r3
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	vmov	s0, r1
	vcvt.f32.s32	s0, s0
	ldr	r1, [r11, #-68]
	vmov	s2, r1
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	str	r0, [sp, #24]           @ 4-byte Spill
	ble	.LBB12_77
@ BB#67:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #104]
	cmp	r0, #0
	bne	.LBB12_71
@ BB#68:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #100]
	lsl	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #20]           @ 4-byte Spill
	ble	.LBB12_71
@ BB#69:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #100]
	lsl	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #16]           @ 4-byte Spill
	ble	.LBB12_71
@ BB#70:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #100]
	lsl	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #12]           @ 4-byte Spill
	bgt	.LBB12_75
.LBB12_71:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #100]
	cmp	r0, #0
	bne	.LBB12_76
@ BB#72:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #104]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #8]            @ 4-byte Spill
	ble	.LBB12_76
@ BB#73:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	add	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #104]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp, #4]            @ 4-byte Spill
	ble	.LBB12_76
@ BB#74:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	sub	r2, r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [sp, #92]
	mla	r2, r2, r3, r12
	ldr	r3, [sp, #104]
	lsl	r3, r3, #1
	add	r2, r2, r3
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #7
	str	r0, [sp]                @ 4-byte Spill
	ble	.LBB12_76
.LBB12_75:                              @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #3
	movw	r1, #100
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	add	r2, r2, r3
	strb	r1, [r2]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #100]
	add	r2, r2, r3
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	ldr	r3, [sp, #104]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB12_76:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_77
.LBB12_77:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_88
	.p2align	3
@ BB#78:
.LCPI12_1:
	.long	1717986918              @ double 0.69999999999999996
	.long	1072064102
.LBB12_79:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-84]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-88]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-92]
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-84]
	add	r0, r0, r1
	ldr	r1, [r11, #-88]
	add	r0, r0, r1
	ldr	r1, [r11, #-92]
	add	r0, r0, r1
	cmp	r0, #2
	bne	.LBB12_87
@ BB#80:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-92]
	ldr	r1, [r11, #-84]
	orr	r0, r0, r1
	ldr	r1, [r11, #-80]
	ldr	r2, [r11, #-88]
	orr	r1, r1, r2
	and	r0, r0, r1
	cmp	r0, #0
	beq	.LBB12_87
@ BB#81:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-20]
	ldr	r2, [sp, #96]
	sub	r2, r2, #2
	ldr	r3, [r11, #-24]
	mul	r2, r2, r3
	ldr	r3, [sp, #92]
	add	r2, r2, r3
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	cmp	r1, #8
	movw	r1, #0
	movlt	r1, #1
	and	r1, r1, #1
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	sub	r3, r3, #2
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	add	r3, r3, #1
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	orr	r1, r1, r2
	and	r0, r0, r1
	ldr	r1, [r11, #-92]
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	sub	r3, r3, #1
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	sub	r3, r3, #2
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	ldr	r3, [r11, #-20]
	ldr	r12, [sp, #96]
	add	r12, r12, #1
	ldr	lr, [r11, #-24]
	mul	r12, r12, lr
	ldr	lr, [sp, #92]
	add	r12, r12, lr
	sub	r12, r12, #2
	add	r3, r3, r12
	ldrb	r3, [r3]
	cmp	r3, #8
	movw	r3, #0
	movlt	r3, #1
	and	r3, r3, #1
	orr	r2, r2, r3
	and	r1, r1, r2
	orr	r0, r0, r1
	ldr	r1, [r11, #-84]
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	sub	r3, r3, #1
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	add	r3, r3, #2
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	ldr	r3, [r11, #-20]
	ldr	r12, [sp, #96]
	add	r12, r12, #1
	ldr	lr, [r11, #-24]
	mul	r12, r12, lr
	ldr	lr, [sp, #92]
	add	r12, r12, lr
	add	r12, r12, #2
	add	r3, r3, r12
	ldrb	r3, [r3]
	cmp	r3, #8
	movw	r3, #0
	movlt	r3, #1
	and	r3, r3, #1
	orr	r2, r2, r3
	and	r1, r1, r2
	orr	r0, r0, r1
	ldr	r1, [r11, #-88]
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	add	r3, r3, #2
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	sub	r3, r3, #1
	add	r2, r2, r3
	ldrb	r2, [r2]
	cmp	r2, #8
	movw	r2, #0
	movlt	r2, #1
	and	r2, r2, #1
	ldr	r3, [r11, #-20]
	ldr	r12, [sp, #96]
	add	r12, r12, #2
	ldr	lr, [r11, #-24]
	mul	r12, r12, lr
	ldr	lr, [sp, #92]
	add	r12, r12, lr
	add	r12, r12, #1
	add	r3, r3, r12
	ldrb	r3, [r3]
	cmp	r3, #8
	movw	r3, #0
	movlt	r3, #1
	and	r3, r3, #1
	orr	r2, r2, r3
	and	r1, r1, r2
	orr	r0, r0, r1
	cmp	r0, #0
	beq	.LBB12_87
@ BB#82:                                @   in Loop: Header=BB12_3 Depth=2
	mvn	r0, #0
	movw	r1, #100
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	add	r2, r2, r3
	strb	r1, [r2]
	ldr	r1, [sp, #96]
	add	r0, r1, r0
	str	r0, [sp, #96]
	ldr	r0, [sp, #92]
	sub	r0, r0, #2
	str	r0, [sp, #92]
	ldr	r0, [sp, #96]
	cmp	r0, #4
	bge	.LBB12_84
@ BB#83:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #96]
.LBB12_84:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #92]
	cmp	r0, #4
	bge	.LBB12_86
@ BB#85:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #92]
.LBB12_86:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_87
.LBB12_87:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_88
.LBB12_88:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_89
.LBB12_89:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #116]
	cmp	r0, #2
	ble	.LBB12_99
@ BB#90:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-84]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-88]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-92]
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-84]
	add	r0, r0, r1
	ldr	r1, [r11, #-88]
	add	r0, r0, r1
	ldr	r1, [r11, #-92]
	add	r0, r0, r1
	cmp	r0, #1
	ble	.LBB12_98
@ BB#91:                                @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-112]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	sub	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-116]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	sub	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [r11, #-120]
	ldr	r0, [r11, #-20]
	ldr	r1, [sp, #96]
	add	r1, r1, #1
	ldr	r2, [r11, #-24]
	mul	r1, r1, r2
	ldr	r2, [sp, #92]
	add	r1, r1, r2
	add	r1, r1, #1
	add	r0, r0, r1
	ldrb	r0, [r0]
	cmp	r0, #8
	movw	r0, #0
	movlt	r0, #1
	and	r0, r0, #1
	str	r0, [sp, #124]
	ldr	r0, [r11, #-112]
	ldr	r1, [r11, #-80]
	orr	r0, r0, r1
	str	r0, [r11, #-96]
	ldr	r0, [r11, #-116]
	ldr	r1, [r11, #-84]
	orr	r0, r0, r1
	str	r0, [r11, #-100]
	ldr	r0, [sp, #124]
	ldr	r1, [r11, #-88]
	orr	r0, r0, r1
	str	r0, [r11, #-104]
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-92]
	orr	r0, r0, r1
	str	r0, [r11, #-108]
	ldr	r0, [r11, #-96]
	ldr	r1, [r11, #-100]
	add	r0, r0, r1
	ldr	r1, [r11, #-104]
	add	r0, r0, r1
	ldr	r1, [r11, #-108]
	add	r0, r0, r1
	ldr	r1, [r11, #-80]
	ldr	r2, [r11, #-100]
	and	r1, r1, r2
	ldr	r2, [r11, #-84]
	ldr	r3, [r11, #-104]
	and	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [r11, #-88]
	ldr	r3, [r11, #-108]
	and	r2, r2, r3
	add	r1, r1, r2
	ldr	r2, [r11, #-92]
	ldr	r3, [r11, #-96]
	and	r2, r2, r3
	add	r1, r1, r2
	sub	r0, r0, r1
	cmp	r0, #2
	bge	.LBB12_97
@ BB#92:                                @   in Loop: Header=BB12_3 Depth=2
	mvn	r0, #0
	movw	r1, #100
	ldr	r2, [r11, #-20]
	ldr	r3, [sp, #96]
	ldr	r12, [r11, #-24]
	mul	r3, r3, r12
	ldr	r12, [sp, #92]
	add	r3, r3, r12
	add	r2, r2, r3
	strb	r1, [r2]
	ldr	r1, [sp, #96]
	add	r0, r1, r0
	str	r0, [sp, #96]
	ldr	r0, [sp, #92]
	sub	r0, r0, #2
	str	r0, [sp, #92]
	ldr	r0, [sp, #96]
	cmp	r0, #4
	bge	.LBB12_94
@ BB#93:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #96]
.LBB12_94:                              @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #92]
	cmp	r0, #4
	bge	.LBB12_96
@ BB#95:                                @   in Loop: Header=BB12_3 Depth=2
	movw	r0, #4
	str	r0, [sp, #92]
.LBB12_96:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_97
.LBB12_97:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_98
.LBB12_98:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_99
.LBB12_99:                              @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_100
.LBB12_100:                             @   in Loop: Header=BB12_3 Depth=2
	b	.LBB12_101
.LBB12_101:                             @   in Loop: Header=BB12_3 Depth=2
	ldr	r0, [sp, #92]
	add	r0, r0, #1
	str	r0, [sp, #92]
	b	.LBB12_3
.LBB12_102:                             @   in Loop: Header=BB12_1 Depth=1
	b	.LBB12_103
.LBB12_103:                             @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #96]
	add	r0, r0, #1
	str	r0, [sp, #96]
	b	.LBB12_1
.LBB12_104:
	ldr	r0, [r11, #-12]
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
@ BB#105:
.Lfunc_end12:
	.size	susan_thin, .Lfunc_end12-susan_thin
	.cantunwind
	.fnend

	.globl	susan_edges
	.p2align	3
	.type	susan_edges,%function
	.code	32                      @ @susan_edges
susan_edges:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #184
	ldr	r12, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	movw	r5, #3
	movw	r6, #0
	movw	r7, #2
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	str	r2, [r11, #-32]
	str	r3, [r11, #-36]
	str	r4, [r11, #-40]
	str	lr, [r11, #-44]
	str	r12, [r11, #-48]
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-44]
	mul	r1, r1, r12
	mov	r2, r1
	lsl	r1, r1, #2
	and	r3, r6, #255
	str	r1, [sp, #92]           @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [sp, #92]           @ 4-byte Reload
	str	r2, [sp, #88]           @ 4-byte Spill
	mov	r2, r3
	str	r7, [sp, #84]           @ 4-byte Spill
	str	r5, [sp, #80]           @ 4-byte Spill
	bl	memset
	ldr	r0, [sp, #80]           @ 4-byte Reload
	str	r0, [r11, #-60]
.LBB13_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_3 Depth 2
	ldr	r0, [r11, #-60]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #3
	cmp	r0, r1
	bge	.LBB13_11
@ BB#2:                                 @   in Loop: Header=BB13_1 Depth=1
	movw	r0, #3
	str	r0, [r11, #-64]
.LBB13_3:                               @   Parent Loop BB13_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	cmp	r0, r1
	bge	.LBB13_8
@ BB#4:                                 @   in Loop: Header=BB13_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [r11, #-72]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-60]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-64]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	ldr	r12, [r11, #-64]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #96]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #100]
	add	r1, r1, #2
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [sp, #100]
	add	r1, r2, r1
	str	r1, [sp, #100]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	add	r3, r2, #1
	str	r3, [sp, #100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [sp, #96]
	ldr	r2, [sp, #100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-72]
	add	r0, r1, r0
	str	r0, [r11, #-72]
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-40]
	cmp	r0, r1
	bgt	.LBB13_6
@ BB#5:                                 @   in Loop: Header=BB13_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-72]
	sub	r1, r1, r2
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #76]           @ 4-byte Spill
	str	r12, [sp, #72]          @ 4-byte Spill
.LBB13_6:                               @   in Loop: Header=BB13_3 Depth=2
	b	.LBB13_7
.LBB13_7:                               @   in Loop: Header=BB13_3 Depth=2
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	b	.LBB13_3
.LBB13_8:                               @   in Loop: Header=BB13_1 Depth=1
	b	.LBB13_9
.LBB13_9:                               @   in Loop: Header=BB13_1 Depth=1
	ldr	r0, [r11, #-60]
	add	r0, r0, #1
	str	r0, [r11, #-60]
	b	.LBB13_1
	.p2align	3
@ BB#10:
.LCPI13_2:
	.long	3435973837              @ double 0.90000000000000002
	.long	1072483532
.LBB13_11:
	movw	r0, #4
	str	r0, [r11, #-60]
.LBB13_12:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB13_14 Depth 2
	ldr	r0, [r11, #-60]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #4
	cmp	r0, r1
	bge	.LBB13_67
@ BB#13:                                @   in Loop: Header=BB13_12 Depth=1
	movw	r0, #4
	str	r0, [r11, #-64]
.LBB13_14:                              @   Parent Loop BB13_12 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #4
	cmp	r0, r1
	bge	.LBB13_65
@ BB#15:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-60]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-64]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r3, [sp, #64]           @ 4-byte Spill
	ble	.LBB13_63
@ BB#16:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-60]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-64]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-68]
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-68]
	sub	r1, r1, r2
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-60]
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-64]
	add	r12, r12, lr
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #96]
	ldr	r1, [r11, #-72]
	cmp	r1, #600
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r3, [sp, #56]           @ 4-byte Spill
	ble	.LBB13_42
@ BB#17:                                @   in Loop: Header=BB13_14 Depth=2
	vldr	d16, .LCPI13_2
	movw	r0, #3
	movw	r1, #0
	movw	r2, #1
	ldr	r3, [r11, #-24]
	ldr	r12, [r11, #-60]
	sub	r12, r12, #3
	ldr	lr, [r11, #-44]
	mla	r3, r12, lr, r3
	ldr	r12, [r11, #-64]
	add	r3, r3, r12
	sub	r3, r3, #1
	str	r3, [sp, #100]
	mov	r3, #0
	str	r3, [r11, #-84]
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [r11, #-44]
	ldr	r12, [sp, #100]
	add	r3, r12, r3
	sub	r12, r3, #3
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	sub	lr, r3, #2
	str	lr, [sp, #100]
	ldrb	r3, [r3, #-3]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [r11, #-44]
	ldr	r12, [sp, #100]
	add	r3, r12, r3
	sub	r12, r3, #5
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	sub	lr, r3, #4
	str	lr, [sp, #100]
	ldrb	r3, [r3, #-5]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	sub	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [r11, #-44]
	ldr	r12, [sp, #100]
	add	r3, r12, r3
	sub	r12, r3, #6
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	sub	lr, r3, #5
	str	lr, [sp, #100]
	ldrb	r3, [r3, #-6]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldr	r3, [sp, #100]
	add	r12, r3, #2
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	add	lr, r3, #3
	str	lr, [sp, #100]
	ldrb	r3, [r3, #2]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldr	r3, [r11, #-44]
	ldr	r12, [sp, #100]
	add	r3, r12, r3
	sub	r12, r3, #6
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	sub	lr, r3, #5
	str	lr, [sp, #100]
	ldrb	r3, [r3, #-6]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	add	r3, r3, r3, lsl #1
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3
	str	r3, [r11, #-88]
	ldr	r3, [r11, #-44]
	ldr	r12, [sp, #100]
	add	r3, r12, r3
	sub	r12, r3, #5
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	sub	lr, r3, #4
	str	lr, [sp, #100]
	ldrb	r3, [r3, #-5]
	ldrb	r3, [r12, -r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	sub	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	add	lr, r12, #1
	str	lr, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-88]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	r12, [sp, #100]
	ldrb	r12, [r12]
	ldrb	r3, [r3, -r12]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r3, r12, r3, lsl #1
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	mov	r12, r3
	lsl	r3, r3, #1
	ldr	lr, [r11, #-88]
	add	r3, lr, r3
	str	r3, [r11, #-88]
	ldr	r3, [r11, #-44]
	sub	r3, r3, #3
	ldr	lr, [sp, #100]
	add	r3, lr, r3
	str	r3, [sp, #100]
	ldr	r3, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	sub	lr, r1, lr
	add	r3, r3, lr
	ldrb	r3, [r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	ldr	lr, [r11, #-84]
	sub	r3, lr, r3
	str	r3, [r11, #-84]
	ldrb	r3, [r11, #-93]
	mul	r3, r3, r0
	ldr	lr, [r11, #-88]
	add	r3, lr, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	sub	lr, r1, lr
	add	r3, r3, lr
	ldrb	r3, [r3]
	strb	r3, [r11, #-93]
	ldrb	r3, [r11, #-93]
	mul	r3, r3, r0
	ldr	lr, [r11, #-88]
	add	r3, lr, r3
	str	r3, [r11, #-88]
	ldr	r3, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	sub	r1, r1, lr
	add	r1, r3, r1
	ldrb	r1, [r1]
	strb	r1, [r11, #-93]
	ldrb	r1, [r11, #-93]
	ldr	r3, [r11, #-84]
	add	r1, r3, r1
	str	r1, [r11, #-84]
	ldrb	r1, [r11, #-93]
	mul	r0, r1, r0
	ldr	r1, [r11, #-88]
	add	r0, r1, r0
	str	r0, [r11, #-88]
	ldr	r0, [r11, #-84]
	ldr	r1, [r11, #-84]
	mul	r0, r0, r1
	ldr	r1, [r11, #-88]
	ldr	r3, [r11, #-88]
	mul	r1, r1, r3
	add	r0, r0, r1
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov	r0, r1, d17
	vstr	d16, [sp, #48]          @ 8-byte Spill
	str	r2, [sp, #44]           @ 4-byte Spill
	str	r12, [sp, #40]          @ 4-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	vstr	s0, [r11, #-52]
	vldr	s0, [r11, #-52]
	vcvt.f64.f32	d16, s0
	ldr	r0, [r11, #-72]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vldr	d18, [sp, #48]          @ 8-byte Reload
	vmul.f64	d17, d18, d17
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB13_39
@ BB#18:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #0
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-84]
	cmp	r0, #0
	bne	.LBB13_20
@ BB#19:                                @   in Loop: Header=BB13_14 Depth=2
	vldr	s0, .LCPI13_3
	vstr	s0, [r11, #-52]
	b	.LBB13_21
.LBB13_20:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-88]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-84]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-52]
.LBB13_21:                              @   in Loop: Header=BB13_14 Depth=2
	vldr	s0, [r11, #-52]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_23
@ BB#22:                                @   in Loop: Header=BB13_14 Depth=2
	mvn	r0, #0
	vldr	s0, [r11, #-52]
	vneg.f32	s0, s0
	vstr	s0, [r11, #-52]
	str	r0, [r11, #-92]
	b	.LBB13_24
.LBB13_23:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	str	r0, [r11, #-92]
.LBB13_24:                              @   in Loop: Header=BB13_14 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-52]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_26
@ BB#25:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	movw	r1, #0
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_33
.LBB13_26:                              @   in Loop: Header=BB13_14 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [r11, #-52]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB13_28
@ BB#27:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #0
	movw	r1, #1
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_32
.LBB13_28:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	ble	.LBB13_30
@ BB#29:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	str	r0, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_31
.LBB13_30:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	mvn	r1, #0
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
.LBB13_31:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_32
.LBB13_32:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_33
.LBB13_33:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	add	r3, r3, r12
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #36]           @ 4-byte Spill
	ble	.LBB13_38
@ BB#34:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	sub	r3, r3, r12
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #32]           @ 4-byte Spill
	blt	.LBB13_38
@ BB#35:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	add	r3, r3, r12, lsl #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	add	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	ble	.LBB13_38
@ BB#36:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	sub	r3, r3, r12, lsl #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	sub	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #24]           @ 4-byte Spill
	blt	.LBB13_38
@ BB#37:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-60]
	ldr	r3, [r11, #-44]
	mul	r2, r2, r3
	ldr	r3, [r11, #-64]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB13_38:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_40
.LBB13_39:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	str	r0, [r11, #-56]
.LBB13_40:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_43
	.p2align	2
@ BB#41:
.LCPI13_3:
	.long	1232348160              @ float 1.0E+6
.LBB13_42:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	str	r0, [r11, #-56]
.LBB13_43:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-56]
	cmp	r0, #1
	bne	.LBB13_62
@ BB#44:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #3
	movw	r1, #9
	movw	r2, #0
	movw	r3, #2
	ldr	r12, [r11, #-24]
	ldr	lr, [r11, #-60]
	sub	lr, lr, #3
	ldr	r4, [r11, #-44]
	mla	r12, lr, r4, r12
	ldr	lr, [r11, #-64]
	add	r12, r12, lr
	sub	r12, r12, #1
	str	r12, [sp, #100]
	mov	r12, #0
	str	r12, [r11, #-84]
	str	r12, [r11, #-88]
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	add	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [r11, #-44]
	ldr	lr, [sp, #100]
	add	r12, lr, r12
	sub	lr, r12, #3
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	sub	r4, r12, #2
	str	r4, [sp, #100]
	ldrb	r12, [r12, #-3]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #2
	str	r12, [r11, #-92]
	ldr	r12, [r11, #-44]
	ldr	lr, [sp, #100]
	add	r12, lr, r12
	sub	lr, r12, #5
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	sub	r4, r12, #4
	str	r4, [sp, #100]
	ldrb	r12, [r12, #-5]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	add	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [r11, #-44]
	ldr	lr, [sp, #100]
	add	r12, lr, r12
	sub	lr, r12, #6
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	sub	r4, r12, #5
	str	r4, [sp, #100]
	ldrb	r12, [r12, #-6]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldr	r12, [sp, #100]
	add	lr, r12, #2
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	add	r4, r12, #3
	str	r4, [sp, #100]
	ldrb	r12, [r12, #2]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldr	r12, [r11, #-44]
	ldr	lr, [sp, #100]
	add	r12, lr, r12
	sub	lr, r12, #6
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	sub	r4, r12, #5
	str	r4, [sp, #100]
	ldrb	r12, [r12, #-6]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #3
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-92]
	add	r12, lr, r12
	str	r12, [r11, #-92]
	ldr	r12, [r11, #-44]
	ldr	lr, [sp, #100]
	add	r12, lr, r12
	sub	lr, r12, #5
	str	lr, [sp, #100]
	ldr	lr, [sp, #96]
	sub	r4, r12, #4
	str	r4, [sp, #100]
	ldrb	r12, [r12, #-5]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #2
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	add	r4, lr, #1
	str	r4, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-92]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	lr, [sp, #100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-84]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-88]
	add	r12, lr, r12, lsl #2
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	mov	lr, r12
	lsl	r12, r12, #2
	ldr	r4, [r11, #-92]
	add	r12, r4, r12
	str	r12, [r11, #-92]
	ldr	r12, [r11, #-44]
	sub	r12, r12, #3
	ldr	r4, [sp, #100]
	add	r12, r4, r12
	str	r12, [sp, #100]
	ldr	r12, [sp, #96]
	ldr	r4, [sp, #100]
	add	r5, r4, #1
	str	r5, [sp, #100]
	ldrb	r4, [r4]
	sub	r4, r2, r4
	add	r12, r12, r4
	ldrb	r12, [r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	r4, [r11, #-84]
	add	r12, r4, r12
	str	r12, [r11, #-84]
	ldrb	r12, [r11, #-93]
	mul	r12, r12, r1
	ldr	r4, [r11, #-88]
	add	r12, r4, r12
	str	r12, [r11, #-88]
	ldrb	r12, [r11, #-93]
	mul	r12, r12, r0
	ldr	r4, [r11, #-92]
	sub	r12, r4, r12
	str	r12, [r11, #-92]
	ldr	r12, [sp, #96]
	ldr	r4, [sp, #100]
	add	r5, r4, #1
	str	r5, [sp, #100]
	ldrb	r4, [r4]
	sub	r4, r2, r4
	add	r12, r12, r4
	ldrb	r12, [r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	mul	r12, r12, r1
	ldr	r4, [r11, #-88]
	add	r12, r4, r12
	str	r12, [r11, #-88]
	ldr	r12, [sp, #96]
	ldr	r4, [sp, #100]
	ldrb	r4, [r4]
	sub	r2, r2, r4
	add	r2, r12, r2
	ldrb	r2, [r2]
	strb	r2, [r11, #-93]
	ldrb	r2, [r11, #-93]
	ldr	r12, [r11, #-84]
	add	r2, r12, r2
	str	r2, [r11, #-84]
	ldrb	r2, [r11, #-93]
	mul	r1, r2, r1
	ldr	r2, [r11, #-88]
	add	r1, r2, r1
	str	r1, [r11, #-88]
	ldrb	r1, [r11, #-93]
	mul	r0, r1, r0
	ldr	r1, [r11, #-92]
	add	r0, r1, r0
	str	r0, [r11, #-92]
	ldr	r0, [r11, #-88]
	cmp	r0, #0
	str	lr, [sp, #20]           @ 4-byte Spill
	str	r3, [sp, #16]           @ 4-byte Spill
	bne	.LBB13_46
@ BB#45:                                @   in Loop: Header=BB13_14 Depth=2
	vldr	s0, .LCPI13_1
	vstr	s0, [r11, #-52]
	b	.LBB13_47
.LBB13_46:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-84]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-88]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-52]
.LBB13_47:                              @   in Loop: Header=BB13_14 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-52]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB13_49
@ BB#48:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	movw	r1, #0
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_56
.LBB13_49:                              @   in Loop: Header=BB13_14 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [r11, #-52]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB13_51
@ BB#50:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #0
	movw	r1, #1
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_55
.LBB13_51:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-92]
	cmp	r0, #0
	ble	.LBB13_53
@ BB#52:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	mvn	r1, #0
	str	r1, [r11, #-76]
	str	r0, [r11, #-80]
	b	.LBB13_54
.LBB13_53:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #1
	str	r0, [r11, #-76]
	str	r0, [r11, #-80]
.LBB13_54:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_55
.LBB13_55:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_56
.LBB13_56:                              @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	add	r3, r3, r12
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	ble	.LBB13_61
@ BB#57:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	sub	r3, r3, r12
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	blt	.LBB13_61
@ BB#58:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	add	r3, r3, r12, lsl #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	add	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #4]            @ 4-byte Spill
	ble	.LBB13_61
@ BB#59:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-68]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-60]
	ldr	r12, [r11, #-76]
	sub	r3, r3, r12, lsl #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-64]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-80]
	sub	r3, r3, r12, lsl #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB13_61
@ BB#60:                                @   in Loop: Header=BB13_14 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-60]
	ldr	r3, [r11, #-44]
	mul	r2, r2, r3
	ldr	r3, [r11, #-64]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB13_61:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_62
.LBB13_62:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_63
.LBB13_63:                              @   in Loop: Header=BB13_14 Depth=2
	b	.LBB13_64
.LBB13_64:                              @   in Loop: Header=BB13_14 Depth=2
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	b	.LBB13_14
.LBB13_65:                              @   in Loop: Header=BB13_12 Depth=1
	b	.LBB13_66
.LBB13_66:                              @   in Loop: Header=BB13_12 Depth=1
	ldr	r0, [r11, #-60]
	add	r0, r0, #1
	str	r0, [r11, #-60]
	b	.LBB13_12
.LBB13_67:
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
	.p2align	2
@ BB#68:
.LCPI13_1:
	.long	1232348160              @ float 1.0E+6
.Lfunc_end13:
	.size	susan_edges, .Lfunc_end13-susan_edges
	.cantunwind
	.fnend

	.globl	susan_edges_small
	.p2align	3
	.type	susan_edges_small,%function
	.code	32                      @ @susan_edges_small
susan_edges_small:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r10, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #160
	ldr	r12, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	movw	r5, #1
	movw	r6, #730
	movw	r7, #0
	movw	r8, #2
	str	r0, [r11, #-32]
	str	r1, [r11, #-36]
	str	r2, [r11, #-40]
	str	r3, [r11, #-44]
	str	r4, [r11, #-48]
	str	lr, [r11, #-52]
	str	r12, [r11, #-56]
	ldr	r0, [r11, #-36]
	ldr	r1, [r11, #-52]
	mul	r1, r1, r12
	mov	r2, r1
	lsl	r1, r1, #2
	and	r3, r7, #255
	str	r1, [sp, #68]           @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [sp, #68]           @ 4-byte Reload
	str	r2, [sp, #64]           @ 4-byte Spill
	mov	r2, r3
	str	r8, [sp, #60]           @ 4-byte Spill
	str	r5, [sp, #56]           @ 4-byte Spill
	str	r6, [sp, #52]           @ 4-byte Spill
	bl	memset
	ldr	r0, [sp, #52]           @ 4-byte Reload
	str	r0, [r11, #-48]
	ldr	r1, [sp, #56]           @ 4-byte Reload
	str	r1, [r11, #-68]
.LBB14_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB14_3 Depth 2
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-56]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB14_10
@ BB#2:                                 @   in Loop: Header=BB14_1 Depth=1
	movw	r0, #1
	str	r0, [r11, #-72]
.LBB14_3:                               @   Parent Loop BB14_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #1
	cmp	r0, r1
	bge	.LBB14_8
@ BB#4:                                 @   in Loop: Header=BB14_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [r11, #-80]
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-68]
	sub	r3, r3, #1
	ldr	r12, [r11, #-52]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-72]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-52]
	mul	r3, r3, r12
	ldr	r12, [r11, #-72]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #72]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [sp, #76]
	add	r1, r1, #2
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-80]
	add	r1, r2, r1
	str	r1, [r11, #-80]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-80]
	add	r0, r1, r0
	str	r0, [r11, #-80]
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-48]
	cmp	r0, r1
	bgt	.LBB14_6
@ BB#5:                                 @   in Loop: Header=BB14_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-80]
	sub	r1, r1, r2
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-52]
	ldr	lr, [r11, #-72]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [sp, #48]           @ 4-byte Spill
	str	r12, [sp, #44]          @ 4-byte Spill
.LBB14_6:                               @   in Loop: Header=BB14_3 Depth=2
	b	.LBB14_7
.LBB14_7:                               @   in Loop: Header=BB14_3 Depth=2
	ldr	r0, [r11, #-72]
	add	r0, r0, #1
	str	r0, [r11, #-72]
	b	.LBB14_3
.LBB14_8:                               @   in Loop: Header=BB14_1 Depth=1
	b	.LBB14_9
.LBB14_9:                               @   in Loop: Header=BB14_1 Depth=1
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB14_1
.LBB14_10:
	movw	r0, #2
	str	r0, [r11, #-68]
.LBB14_11:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB14_13 Depth 2
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-56]
	sub	r1, r1, #2
	cmp	r0, r1
	bge	.LBB14_63
@ BB#12:                                @   in Loop: Header=BB14_11 Depth=1
	movw	r0, #2
	str	r0, [r11, #-72]
.LBB14_13:                              @   Parent Loop BB14_11 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	cmp	r0, r1
	bge	.LBB14_61
@ BB#14:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-68]
	ldr	r3, [r11, #-52]
	ldr	r12, [r11, #-72]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r3, [sp, #36]           @ 4-byte Spill
	ble	.LBB14_59
@ BB#15:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-68]
	ldr	r3, [r11, #-52]
	ldr	r12, [r11, #-72]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-76]
	ldr	r1, [r11, #-48]
	ldr	r2, [r11, #-76]
	sub	r1, r1, r2
	str	r1, [r11, #-80]
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-32]
	ldr	r12, [r11, #-68]
	ldr	lr, [r11, #-52]
	mul	r12, r12, lr
	ldr	lr, [r11, #-72]
	add	r12, r12, lr
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [sp, #72]
	ldr	r1, [r11, #-80]
	cmp	r1, #250
	str	r0, [sp, #32]           @ 4-byte Spill
	str	r3, [sp, #28]           @ 4-byte Spill
	ble	.LBB14_40
@ BB#16:                                @   in Loop: Header=BB14_13 Depth=2
	vldr	d16, .LCPI14_2
	movw	r0, #0
	mvn	r1, #0
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-68]
	sub	r3, r3, #1
	ldr	r12, [r11, #-52]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-72]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #76]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	sub	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	sub	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	sub	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	sub	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	sub	r1, r2, r1
	str	r1, [sp, #92]
	ldr	r1, [sp, #76]
	add	r1, r1, #2
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	sub	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	strb	r0, [sp, #83]
	ldrb	r0, [sp, #83]
	ldr	r1, [sp, #92]
	add	r0, r1, r0
	str	r0, [sp, #92]
	ldrb	r0, [sp, #83]
	ldr	r1, [sp, #88]
	add	r0, r1, r0
	str	r0, [sp, #88]
	ldr	r0, [sp, #92]
	ldr	r1, [sp, #92]
	mul	r0, r0, r1
	ldr	r1, [sp, #88]
	ldr	r2, [sp, #88]
	mul	r1, r1, r2
	add	r0, r0, r1
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vmov	r0, r1, d17
	vstr	d16, [sp, #16]          @ 8-byte Spill
	bl	sqrt
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	vstr	s0, [r11, #-60]
	vldr	s0, [r11, #-60]
	vcvt.f64.f32	d16, s0
	ldr	r0, [r11, #-80]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vcvt.f64.f32	d17, s0
	vldr	d18, [sp, #16]          @ 8-byte Reload
	vmul.f64	d17, d18, d17
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB14_37
@ BB#17:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #0
	str	r0, [r11, #-64]
	ldr	r0, [sp, #92]
	cmp	r0, #0
	bne	.LBB14_19
@ BB#18:                                @   in Loop: Header=BB14_13 Depth=2
	vldr	s0, .LCPI14_3
	vstr	s0, [r11, #-60]
	b	.LBB14_20
.LBB14_19:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [sp, #88]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [sp, #92]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-60]
.LBB14_20:                              @   in Loop: Header=BB14_13 Depth=2
	vldr	s0, [r11, #-60]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_22
@ BB#21:                                @   in Loop: Header=BB14_13 Depth=2
	mvn	r0, #0
	vldr	s0, [r11, #-60]
	vneg.f32	s0, s0
	vstr	s0, [r11, #-60]
	str	r0, [sp, #84]
	b	.LBB14_23
.LBB14_22:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	str	r0, [sp, #84]
.LBB14_23:                              @   in Loop: Header=BB14_13 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-60]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_25
@ BB#24:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	movw	r1, #0
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_33
.LBB14_25:                              @   in Loop: Header=BB14_13 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [r11, #-60]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB14_27
@ BB#26:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #0
	movw	r1, #1
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_32
.LBB14_27:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [sp, #84]
	cmp	r0, #0
	ble	.LBB14_30
@ BB#28:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	str	r0, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_31
	.p2align	3
@ BB#29:
.LCPI14_2:
	.long	2576980378              @ double 0.40000000000000002
	.long	1071225241
.LBB14_30:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	mvn	r1, #0
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
.LBB14_31:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_32
.LBB14_32:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_33
.LBB14_33:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-84]
	add	r3, r3, r12
	ldr	r12, [r11, #-52]
	ldr	lr, [r11, #-72]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-88]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	ble	.LBB14_36
@ BB#34:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-84]
	sub	r3, r3, r12
	ldr	r12, [r11, #-52]
	ldr	lr, [r11, #-72]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-88]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #8]            @ 4-byte Spill
	blt	.LBB14_36
@ BB#35:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-68]
	ldr	r3, [r11, #-52]
	mul	r2, r2, r3
	ldr	r3, [r11, #-72]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB14_36:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_38
.LBB14_37:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	str	r0, [r11, #-64]
.LBB14_38:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_41
	.p2align	2
@ BB#39:
.LCPI14_3:
	.long	1232348160              @ float 1.0E+6
.LBB14_40:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	str	r0, [r11, #-64]
.LBB14_41:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [r11, #-64]
	cmp	r0, #1
	bne	.LBB14_58
@ BB#42:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #0
	mvn	r1, #0
	ldr	r2, [r11, #-32]
	ldr	r3, [r11, #-68]
	sub	r3, r3, #1
	ldr	r12, [r11, #-52]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-72]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [sp, #76]
	str	r0, [sp, #92]
	str	r0, [sp, #88]
	str	r0, [sp, #84]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #84]
	add	r1, r2, r1
	str	r1, [sp, #84]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #84]
	sub	r1, r2, r1
	str	r1, [sp, #84]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldr	r1, [sp, #76]
	add	r1, r1, #2
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldr	r1, [r11, #-52]
	sub	r1, r1, #2
	ldr	r2, [sp, #76]
	add	r1, r2, r1
	str	r1, [sp, #76]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #92]
	add	r1, r2, r1
	str	r1, [sp, #92]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #84]
	sub	r1, r2, r1
	str	r1, [sp, #84]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	add	r3, r2, #1
	str	r3, [sp, #76]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	strb	r1, [sp, #83]
	ldrb	r1, [sp, #83]
	ldr	r2, [sp, #88]
	add	r1, r2, r1
	str	r1, [sp, #88]
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #76]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	strb	r0, [sp, #83]
	ldrb	r0, [sp, #83]
	ldr	r1, [sp, #92]
	add	r0, r1, r0
	str	r0, [sp, #92]
	ldrb	r0, [sp, #83]
	ldr	r1, [sp, #88]
	add	r0, r1, r0
	str	r0, [sp, #88]
	ldrb	r0, [sp, #83]
	ldr	r1, [sp, #84]
	add	r0, r1, r0
	str	r0, [sp, #84]
	ldr	r0, [sp, #88]
	cmp	r0, #0
	bne	.LBB14_44
@ BB#43:                                @   in Loop: Header=BB14_13 Depth=2
	vldr	s0, .LCPI14_1
	vstr	s0, [r11, #-60]
	b	.LBB14_45
.LBB14_44:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [sp, #92]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [sp, #88]
	vmov	s2, r0
	vcvt.f32.s32	s2, s2
	vdiv.f32	s0, s0, s2
	vstr	s0, [r11, #-60]
.LBB14_45:                              @   in Loop: Header=BB14_13 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-60]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB14_47
@ BB#46:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	movw	r1, #0
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_54
.LBB14_47:                              @   in Loop: Header=BB14_13 Depth=2
	vmov.f64	d16, #2.000000e+00
	vldr	s0, [r11, #-60]
	vcvt.f64.f32	d17, s0
	vcmpe.f64	d17, d16
	vmrs	APSR_nzcv, fpscr
	ble	.LBB14_49
@ BB#48:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #0
	movw	r1, #1
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_53
.LBB14_49:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [sp, #84]
	cmp	r0, #0
	ble	.LBB14_51
@ BB#50:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	mvn	r1, #0
	str	r1, [r11, #-84]
	str	r0, [r11, #-88]
	b	.LBB14_52
.LBB14_51:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #1
	str	r0, [r11, #-84]
	str	r0, [r11, #-88]
.LBB14_52:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_53
.LBB14_53:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_54
.LBB14_54:                              @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-84]
	add	r3, r3, r12
	ldr	r12, [r11, #-52]
	ldr	lr, [r11, #-72]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-88]
	add	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #4]            @ 4-byte Spill
	ble	.LBB14_57
@ BB#55:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-36]
	ldr	r3, [r11, #-68]
	ldr	r12, [r11, #-84]
	sub	r3, r3, r12
	ldr	r12, [r11, #-52]
	ldr	lr, [r11, #-72]
	mla	r3, r3, r12, lr
	ldr	r12, [r11, #-88]
	sub	r3, r3, r12
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp]                @ 4-byte Spill
	blt	.LBB14_57
@ BB#56:                                @   in Loop: Header=BB14_13 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-68]
	ldr	r3, [r11, #-52]
	mul	r2, r2, r3
	ldr	r3, [r11, #-72]
	add	r2, r2, r3
	add	r1, r1, r2
	strb	r0, [r1]
.LBB14_57:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_58
.LBB14_58:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_59
.LBB14_59:                              @   in Loop: Header=BB14_13 Depth=2
	b	.LBB14_60
.LBB14_60:                              @   in Loop: Header=BB14_13 Depth=2
	ldr	r0, [r11, #-72]
	add	r0, r0, #1
	str	r0, [r11, #-72]
	b	.LBB14_13
.LBB14_61:                              @   in Loop: Header=BB14_11 Depth=1
	b	.LBB14_62
.LBB14_62:                              @   in Loop: Header=BB14_11 Depth=1
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB14_11
.LBB14_63:
	ldr	r0, [r11, #-28]
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r10, r11, pc}
	.p2align	2
@ BB#64:
.LCPI14_1:
	.long	1232348160              @ float 1.0E+6
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
	sub	sp, sp, #28
	movw	r12, #0
	str	r0, [r11, #-16]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	str	r12, [sp]
.LBB15_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #24
	ldr	r1, [sp, #16]
	ldr	r2, [sp]
	mul	r0, r2, r0
	add	r0, r1, r0
	ldr	r0, [r0, #8]
	cmp	r0, #7
	beq	.LBB15_6
@ BB#2:                                 @   in Loop: Header=BB15_1 Depth=1
	ldr	r0, [sp, #8]
	cmp	r0, #0
	bne	.LBB15_4
@ BB#3:                                 @   in Loop: Header=BB15_1 Depth=1
	movw	r0, #255
	movw	r1, #0
	mvn	r2, #0
	movw	r3, #24
	ldr	r12, [r11, #-16]
	ldr	lr, [sp, #16]
	ldr	r4, [sp]
	mul	r4, r4, r3
	add	lr, lr, r4
	ldr	lr, [lr, #4]
	sub	lr, lr, #1
	ldr	r4, [sp, #12]
	mul	lr, lr, r4
	add	r12, r12, lr
	ldr	lr, [sp, #16]
	ldr	r4, [sp]
	mul	r3, r4, r3
	add	r3, lr, r3
	ldr	r3, [r3]
	add	r3, r12, r3
	add	r2, r3, r2
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	add	r3, r2, #1
	str	r3, [sp, #4]
	strb	r0, [r2]
	ldr	r2, [sp, #4]
	add	r3, r2, #1
	str	r3, [sp, #4]
	strb	r0, [r2]
	ldr	r2, [sp, #4]
	strb	r0, [r2]
	ldr	r2, [sp, #12]
	sub	r2, r2, #2
	ldr	r3, [sp, #4]
	add	r2, r3, r2
	str	r2, [sp, #4]
	ldr	r2, [sp, #4]
	add	r3, r2, #1
	str	r3, [sp, #4]
	strb	r0, [r2]
	ldr	r2, [sp, #4]
	add	r3, r2, #1
	str	r3, [sp, #4]
	strb	r1, [r2]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #12]
	sub	r1, r1, #2
	ldr	r2, [sp, #4]
	add	r1, r2, r1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	add	r2, r1, #1
	str	r2, [sp, #4]
	strb	r0, [r1]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
	b	.LBB15_5
.LBB15_4:                               @   in Loop: Header=BB15_1 Depth=1
	movw	r0, #0
	movw	r1, #24
	ldr	r2, [r11, #-16]
	ldr	r3, [sp, #16]
	ldr	r12, [sp]
	mul	r12, r12, r1
	add	r3, r3, r12
	ldr	r3, [r3, #4]
	ldr	r12, [sp, #12]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [sp, #16]
	ldr	r12, [sp]
	mul	r1, r12, r1
	add	r1, r3, r1
	ldr	r1, [r1]
	add	r1, r2, r1
	str	r1, [sp, #4]
	ldr	r1, [sp, #4]
	strb	r0, [r1]
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
.LBB15_5:                               @   in Loop: Header=BB15_1 Depth=1
	b	.LBB15_1
.LBB15_6:
	ldr	r0, [r11, #-12]
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
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #488
	ldr	r12, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	movw	r5, #2
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	str	r2, [r11, #-32]
	str	r3, [r11, #-36]
	str	r4, [r11, #-40]
	str	lr, [r11, #-44]
	str	r12, [r11, #-48]
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-44]
	mul	r1, r1, r12
	lsl	r2, r1, #2
	mov	r1, #0
	str	r5, [r11, #-108]        @ 4-byte Spill
	bl	memset
	ldr	r1, [r11, #-44]
	ldr	r2, [r11, #-48]
	mul	r1, r1, r2
	lsl	r1, r1, #2
	str	r0, [r11, #-112]        @ 4-byte Spill
	mov	r0, r1
	bl	malloc
	str	r0, [r11, #-84]
	ldr	r0, [r11, #-44]
	ldr	r1, [r11, #-48]
	mul	r0, r0, r1
	mov	r1, r0
	lsl	r0, r0, #2
	str	r1, [r11, #-116]        @ 4-byte Spill
	bl	malloc
	movw	r1, #5
	str	r0, [r11, #-88]
	str	r1, [r11, #-76]
.LBB16_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_3 Depth 2
	ldr	r0, [r11, #-76]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #5
	cmp	r0, r1
	bge	.LBB16_71
@ BB#2:                                 @   in Loop: Header=BB16_1 Depth=1
	movw	r0, #5
	str	r0, [r11, #-80]
.LBB16_3:                               @   Parent Loop BB16_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	cmp	r0, r1
	bge	.LBB16_69
@ BB#4:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [r11, #-52]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-80]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	ldr	r12, [r11, #-80]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [r11, #-104]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_67
@ BB#5:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-100]
	add	r1, r1, #2
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_66
@ BB#6:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_65
@ BB#7:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_64
@ BB#8:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_63
@ BB#9:                                 @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_62
@ BB#10:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_61
@ BB#11:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_60
@ BB#12:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_59
@ BB#13:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_58
@ BB#14:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_57
@ BB#15:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_56
@ BB#16:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_55
@ BB#17:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_54
@ BB#18:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_53
@ BB#19:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_52
@ BB#20:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [r11, #-100]
	add	r1, r2, r1
	str	r1, [r11, #-100]
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_51
@ BB#21:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	add	r3, r2, #1
	str	r3, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_50
@ BB#22:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-104]
	ldr	r2, [r11, #-100]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB16_49
@ BB#23:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r1, #2
	movw	r0, #3
	movw	r2, #0
	movw	r3, #1
	mov	r12, #0
	str	r12, [r11, #-56]
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-24]
	ldr	lr, [r11, #-76]
	sub	lr, lr, #3
	ldr	r4, [r11, #-44]
	mla	r12, lr, r4, r12
	ldr	lr, [r11, #-80]
	add	r12, r12, lr
	sub	lr, r12, #1
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	str	r12, [r11, #-100]
	ldrb	r12, [r12, #-1]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-100]
	add	r12, lr, r12
	sub	lr, r12, #3
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	sub	r4, r12, #2
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #-3]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-100]
	add	r12, lr, r12
	sub	lr, r12, #5
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	sub	r4, r12, #4
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #-5]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	sub	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-100]
	add	r12, lr, r12
	sub	lr, r12, #6
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	sub	r4, r12, #5
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #-6]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-100]
	add	lr, r12, #2
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	add	r4, r12, #3
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #2]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-100]
	add	r12, lr, r12
	sub	lr, r12, #6
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	sub	r4, r12, #5
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #-6]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	add	r12, r12, r12, lsl #1
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-100]
	add	r12, lr, r12
	sub	lr, r12, #5
	str	lr, [r11, #-100]
	ldr	lr, [r11, #-104]
	sub	r4, r12, #4
	str	r4, [r11, #-100]
	ldrb	r12, [r12, #-5]
	ldrb	r12, [lr, -r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	sub	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	add	r4, lr, #1
	str	r4, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-60]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-100]
	ldrb	lr, [lr]
	ldrb	r12, [r12, -lr]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	lr, [r11, #-56]
	add	r12, lr, r12, lsl #1
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	mov	lr, r12
	lsl	r12, r12, #1
	ldr	r4, [r11, #-60]
	add	r12, r4, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-44]
	sub	r12, r12, #3
	ldr	r4, [r11, #-100]
	add	r12, r4, r12
	str	r12, [r11, #-100]
	ldr	r12, [r11, #-104]
	ldr	r4, [r11, #-100]
	add	r5, r4, #1
	str	r5, [r11, #-100]
	ldrb	r4, [r4]
	sub	r4, r2, r4
	add	r12, r12, r4
	ldrb	r12, [r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	ldr	r4, [r11, #-56]
	sub	r12, r4, r12
	str	r12, [r11, #-56]
	ldrb	r12, [r11, #-93]
	mul	r12, r12, r0
	ldr	r4, [r11, #-60]
	add	r12, r4, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	r4, [r11, #-100]
	add	r5, r4, #1
	str	r5, [r11, #-100]
	ldrb	r4, [r4]
	sub	r4, r2, r4
	add	r12, r12, r4
	ldrb	r12, [r12]
	strb	r12, [r11, #-93]
	ldrb	r12, [r11, #-93]
	mul	r12, r12, r0
	ldr	r4, [r11, #-60]
	add	r12, r4, r12
	str	r12, [r11, #-60]
	ldr	r12, [r11, #-104]
	ldr	r4, [r11, #-100]
	ldrb	r4, [r4]
	sub	r2, r2, r4
	add	r2, r12, r2
	ldrb	r2, [r2]
	strb	r2, [r11, #-93]
	ldrb	r2, [r11, #-93]
	ldr	r12, [r11, #-56]
	add	r2, r12, r2
	str	r2, [r11, #-56]
	ldrb	r2, [r11, #-93]
	mul	r0, r2, r0
	ldr	r2, [r11, #-60]
	add	r0, r2, r0
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-56]
	ldr	r2, [r11, #-56]
	mul	r0, r0, r2
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-60]
	ldr	r2, [r11, #-60]
	mul	r0, r0, r2
	str	r0, [r11, #-72]
	ldr	r0, [r11, #-68]
	ldr	r2, [r11, #-72]
	add	r0, r0, r2
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-64]
	ldr	r2, [r11, #-52]
	ldr	r12, [r11, #-52]
	mul	r2, r2, r12
	str	r0, [r11, #-120]        @ 4-byte Spill
	mov	r0, r2
	str	lr, [r11, #-124]        @ 4-byte Spill
	str	r3, [r11, #-128]        @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [r11, #-120]        @ 4-byte Reload
	cmp	r1, r0
	ble	.LBB16_48
@ BB#24:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-72]
	ldr	r1, [r11, #-68]
	cmp	r0, r1
	bge	.LBB16_35
@ BB#25:                                @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-60]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-56]
	vstr	s0, [r11, #-132]        @ 4-byte Spill
	bl	abs
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vldr	s2, [r11, #-132]        @ 4-byte Reload
	vdiv.f32	s0, s2, s0
	vstr	s0, [r11, #-92]
	ldr	r0, [r11, #-56]
	bl	abs
	ldr	r1, [r11, #-56]
	bl	__divsi3
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-24]
	ldr	lr, [r11, #-76]
	vldr	s0, [r11, #-92]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r0, [r11, #-136]        @ 4-byte Spill
	str	r1, [r11, #-140]        @ 4-byte Spill
	str	lr, [r11, #-144]        @ 4-byte Spill
	bpl	.LBB16_27
@ BB#26:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-92]
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-148]        @ 4-byte Spill
	b	.LBB16_28
.LBB16_27:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-92]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-148]        @ 4-byte Spill
.LBB16_28:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-148]        @ 4-byte Reload
	vmov.f32	s0, #2.000000e+00
	movw	r1, #0
	ldr	r2, [r11, #-144]        @ 4-byte Reload
	add	r0, r2, r0
	ldr	r3, [r11, #-44]
	mul	r0, r0, r3
	ldr	r3, [r11, #-80]
	add	r0, r0, r3
	ldr	r3, [r11, #-64]
	add	r0, r0, r3
	ldr	r3, [r11, #-140]        @ 4-byte Reload
	add	r0, r3, r0
	ldrb	r0, [r0]
	sub	r0, r1, r0
	ldr	r1, [r11, #-136]        @ 4-byte Reload
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r12, [r11, #-104]
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-76]
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r4, [r11, #-152]        @ 4-byte Spill
	str	r0, [r11, #-156]        @ 4-byte Spill
	str	r12, [r11, #-160]       @ 4-byte Spill
	str	lr, [r11, #-164]        @ 4-byte Spill
	bpl	.LBB16_30
@ BB#29:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #2.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-168]        @ 4-byte Spill
	b	.LBB16_31
.LBB16_30:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #2.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-168]        @ 4-byte Spill
.LBB16_31:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-168]        @ 4-byte Reload
	vmov.f32	s0, #3.000000e+00
	movw	r1, #0
	movw	r2, #1
	ldr	r3, [r11, #-152]        @ 4-byte Reload
	add	r0, r3, r0
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r0, r0, r12, lr
	ldr	r12, [r11, #-64]
	lsl	r12, r12, #1
	add	r0, r0, r12
	ldr	r12, [r11, #-164]       @ 4-byte Reload
	add	r0, r12, r0
	ldrb	r0, [r0]
	sub	r0, r1, r0
	ldr	r1, [r11, #-160]        @ 4-byte Reload
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	lr, [r11, #-156]        @ 4-byte Reload
	add	r0, lr, r0
	ldr	r4, [r11, #-104]
	ldr	r5, [r11, #-24]
	ldr	r6, [r11, #-76]
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r6, [r11, #-172]        @ 4-byte Spill
	str	r2, [r11, #-176]        @ 4-byte Spill
	str	r0, [r11, #-180]        @ 4-byte Spill
	str	r4, [r11, #-184]        @ 4-byte Spill
	str	r5, [r11, #-188]        @ 4-byte Spill
	bpl	.LBB16_33
@ BB#32:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-192]        @ 4-byte Spill
	b	.LBB16_34
.LBB16_33:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-192]        @ 4-byte Spill
.LBB16_34:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-192]        @ 4-byte Reload
	movw	r1, #0
	movw	r2, #3
	ldr	r3, [r11, #-172]        @ 4-byte Reload
	add	r0, r3, r0
	ldr	r12, [r11, #-44]
	mul	r0, r0, r12
	ldr	r12, [r11, #-80]
	add	r0, r0, r12
	ldr	r12, [r11, #-64]
	mul	r2, r12, r2
	add	r0, r0, r2
	ldr	r2, [r11, #-188]        @ 4-byte Reload
	add	r0, r2, r0
	ldrb	r0, [r0]
	sub	r0, r1, r0
	ldr	r1, [r11, #-184]        @ 4-byte Reload
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r12, [r11, #-180]       @ 4-byte Reload
	add	r0, r12, r0
	str	r0, [r11, #-64]
	b	.LBB16_45
.LBB16_35:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-56]
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	ldr	r0, [r11, #-60]
	vstr	s0, [r11, #-196]        @ 4-byte Spill
	bl	abs
	vmov	s0, r0
	vcvt.f32.s32	s0, s0
	vldr	s2, [r11, #-196]        @ 4-byte Reload
	vdiv.f32	s0, s2, s0
	vstr	s0, [r11, #-92]
	ldr	r0, [r11, #-60]
	bl	abs
	ldr	r1, [r11, #-60]
	bl	__divsi3
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-104]
	ldr	r1, [r11, #-24]
	ldr	lr, [r11, #-76]
	ldr	r2, [r11, #-64]
	add	r2, lr, r2
	ldr	lr, [r11, #-44]
	mul	r2, r2, lr
	ldr	lr, [r11, #-80]
	add	r2, r2, lr
	vldr	s0, [r11, #-92]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r0, [r11, #-200]        @ 4-byte Spill
	str	r1, [r11, #-204]        @ 4-byte Spill
	str	r2, [r11, #-208]        @ 4-byte Spill
	bpl	.LBB16_37
@ BB#36:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-92]
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-212]        @ 4-byte Spill
	b	.LBB16_38
.LBB16_37:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vldr	s0, [r11, #-92]
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-212]        @ 4-byte Spill
.LBB16_38:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-212]        @ 4-byte Reload
	vmov.f32	s0, #2.000000e+00
	movw	r1, #1
	ldr	r2, [r11, #-208]        @ 4-byte Reload
	add	r0, r2, r0
	ldr	r3, [r11, #-204]        @ 4-byte Reload
	ldrb	r0, [r3, r0]
	ldr	r12, [r11, #-200]       @ 4-byte Reload
	ldrb	r0, [r12, -r0]
	ldr	lr, [r11, #-104]
	ldr	r4, [r11, #-24]
	ldr	r5, [r11, #-76]
	ldr	r6, [r11, #-64]
	lsl	r6, r6, #1
	add	r5, r5, r6
	ldr	r6, [r11, #-44]
	mul	r5, r5, r6
	ldr	r6, [r11, #-80]
	add	r5, r5, r6
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r5, [r11, #-216]        @ 4-byte Spill
	str	r1, [r11, #-220]        @ 4-byte Spill
	str	r0, [r11, #-224]        @ 4-byte Spill
	str	lr, [r11, #-228]        @ 4-byte Spill
	str	r4, [r11, #-232]        @ 4-byte Spill
	bpl	.LBB16_40
@ BB#39:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #2.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-236]        @ 4-byte Spill
	b	.LBB16_41
.LBB16_40:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #2.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [r11, #-236]        @ 4-byte Spill
.LBB16_41:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [r11, #-236]        @ 4-byte Reload
	vmov.f32	s0, #3.000000e+00
	movw	r1, #3
	movw	r2, #0
	ldr	r3, [r11, #-216]        @ 4-byte Reload
	add	r0, r3, r0
	ldr	r12, [r11, #-232]       @ 4-byte Reload
	add	r0, r12, r0
	ldrb	r0, [r0]
	sub	r0, r2, r0
	ldr	r2, [r11, #-228]        @ 4-byte Reload
	add	r0, r2, r0
	ldrb	r0, [r0]
	ldr	lr, [r11, #-224]        @ 4-byte Reload
	add	r0, lr, r0
	ldr	r4, [r11, #-104]
	ldr	r5, [r11, #-24]
	ldr	r6, [r11, #-76]
	ldr	r7, [r11, #-64]
	mul	r1, r7, r1
	add	r1, r6, r1
	ldr	r6, [r11, #-44]
	mul	r1, r1, r6
	ldr	r6, [r11, #-80]
	add	r1, r1, r6
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	str	r1, [r11, #-240]        @ 4-byte Spill
	str	r5, [r11, #-244]        @ 4-byte Spill
	str	r0, [r11, #-248]        @ 4-byte Spill
	str	r4, [sp, #252]          @ 4-byte Spill
	bpl	.LBB16_43
@ BB#42:                                @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vsub.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [sp, #248]          @ 4-byte Spill
	b	.LBB16_44
.LBB16_43:                              @   in Loop: Header=BB16_3 Depth=2
	vmov.f64	d16, #5.000000e-01
	vmov.f32	s0, #3.000000e+00
	vldr	s2, [r11, #-92]
	vmul.f32	s0, s0, s2
	vcvt.f64.f32	d17, s0
	vadd.f64	d16, d17, d16
	vcvt.s32.f64	s0, d16
	vmov	r0, s0
	str	r0, [sp, #248]          @ 4-byte Spill
.LBB16_44:                              @   in Loop: Header=BB16_3 Depth=2
	ldr	r0, [sp, #248]          @ 4-byte Reload
	movw	r1, #0
	ldr	r2, [r11, #-240]        @ 4-byte Reload
	add	r0, r2, r0
	ldr	r3, [r11, #-244]        @ 4-byte Reload
	add	r0, r3, r0
	ldrb	r0, [r0]
	sub	r0, r1, r0
	ldr	r1, [sp, #252]          @ 4-byte Reload
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r12, [r11, #-248]       @ 4-byte Reload
	add	r0, r12, r0
	str	r0, [r11, #-64]
.LBB16_45:                              @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #290
	ldr	r1, [r11, #-64]
	cmp	r1, r0
	ble	.LBB16_47
@ BB#46:                                @   in Loop: Header=BB16_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-52]
	sub	r1, r1, r2
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	str	r1, [r2, r3, lsl #2]
	ldr	r1, [r11, #-56]
	mov	r2, #51
	mul	r1, r1, r2
	ldr	r3, [r11, #-52]
	str	r0, [sp, #244]          @ 4-byte Spill
	mov	r0, r1
	mov	r1, r3
	str	r2, [sp, #240]          @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [r11, #-84]
	ldr	r2, [r11, #-76]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-80]
	mla	r2, r2, r3, r12
	str	r0, [r1, r2, lsl #2]
	ldr	r0, [r11, #-60]
	ldr	r1, [sp, #240]          @ 4-byte Reload
	mul	r0, r0, r1
	ldr	r1, [r11, #-52]
	bl	__divsi3
	ldr	r1, [r11, #-88]
	ldr	r2, [r11, #-76]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-80]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	str	r0, [r1]
	str	r3, [sp, #236]          @ 4-byte Spill
.LBB16_47:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_48
.LBB16_48:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_49
.LBB16_49:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_50
.LBB16_50:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_51
.LBB16_51:                              @   in Loop: Header=BB16_3 Depth=2
	b	.LBB16_52
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
	ldr	r0, [r11, #-80]
	add	r0, r0, #1
	str	r0, [r11, #-80]
	b	.LBB16_3
.LBB16_69:                              @   in Loop: Header=BB16_1 Depth=1
	b	.LBB16_70
.LBB16_70:                              @   in Loop: Header=BB16_1 Depth=1
	ldr	r0, [r11, #-76]
	add	r0, r0, #1
	str	r0, [r11, #-76]
	b	.LBB16_1
.LBB16_71:
	movw	r0, #5
	movw	r1, #0
	str	r1, [r11, #-52]
	str	r0, [r11, #-76]
.LBB16_72:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB16_74 Depth 2
	ldr	r0, [r11, #-76]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #5
	cmp	r0, r1
	bge	.LBB16_132
@ BB#73:                                @   in Loop: Header=BB16_72 Depth=1
	movw	r0, #5
	str	r0, [r11, #-80]
.LBB16_74:                              @   Parent Loop BB16_72 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-80]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	cmp	r0, r1
	bge	.LBB16_130
@ BB#75:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-76]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-80]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-56]
	cmp	r1, #0
	str	r0, [sp, #232]          @ 4-byte Spill
	str	r3, [sp, #228]          @ 4-byte Spill
	ble	.LBB16_128
@ BB#76:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #224]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#77:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #220]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#78:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #216]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#79:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #212]          @ 4-byte Spill
	str	r12, [sp, #208]         @ 4-byte Spill
	ble	.LBB16_127
@ BB#80:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #204]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#81:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #200]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#82:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #196]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#83:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #192]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#84:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #188]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#85:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #184]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#86:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #180]          @ 4-byte Spill
	str	r12, [sp, #176]         @ 4-byte Spill
	ble	.LBB16_127
@ BB#87:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #172]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#88:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #168]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#89:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #164]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#90:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #160]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#91:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #156]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#92:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #152]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#93:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #148]          @ 4-byte Spill
	str	r12, [sp, #144]         @ 4-byte Spill
	ble	.LBB16_127
@ BB#94:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#95:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #136]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#96:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #132]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#97:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #128]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#98:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #124]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#99:                                @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #120]          @ 4-byte Spill
	ble	.LBB16_127
@ BB#100:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #116]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#101:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #112]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#102:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #108]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#103:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #104]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#104:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #100]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#105:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #96]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#106:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #92]           @ 4-byte Spill
	str	r12, [sp, #88]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#107:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #84]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#108:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #80]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#109:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #76]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#110:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #72]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#111:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #68]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#112:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #64]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#113:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #60]           @ 4-byte Spill
	str	r12, [sp, #56]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#114:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #52]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#115:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#116:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #44]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#117:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #40]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#118:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #36]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#119:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #32]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#120:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	str	r12, [sp, #24]          @ 4-byte Spill
	blt	.LBB16_127
@ BB#121:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #20]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#122:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #16]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#123:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-76]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-80]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #12]           @ 4-byte Spill
	blt	.LBB16_127
@ BB#124:                               @   in Loop: Header=BB16_74 Depth=2
	movw	r0, #15000
	movw	r1, #24
	movw	r2, #2
	ldr	r3, [r11, #-40]
	ldr	r12, [r11, #-52]
	add	r12, r12, r12, lsl #1
	add	r3, r3, r12, lsl #3
	mov	r12, #0
	str	r12, [r3, #8]
	ldr	r3, [r11, #-80]
	ldr	r12, [r11, #-40]
	ldr	lr, [r11, #-52]
	add	lr, lr, lr, lsl #1
	str	r3, [r12, lr, lsl #3]
	ldr	r3, [r11, #-76]
	ldr	r12, [r11, #-40]
	ldr	lr, [r11, #-52]
	add	lr, lr, lr, lsl #1
	add	r12, r12, lr, lsl #3
	str	r3, [r12, #4]
	ldr	r3, [r11, #-84]
	ldr	r12, [r11, #-76]
	ldr	lr, [r11, #-44]
	ldr	r4, [r11, #-80]
	mla	r12, r12, lr, r4
	ldr	r3, [r3, r12, lsl #2]
	ldr	r12, [r11, #-40]
	ldr	lr, [r11, #-52]
	add	lr, lr, lr, lsl #1
	add	r12, r12, lr, lsl #3
	str	r3, [r12, #12]
	ldr	r3, [r11, #-88]
	ldr	r12, [r11, #-76]
	ldr	lr, [r11, #-44]
	ldr	r4, [r11, #-80]
	mla	r12, r12, lr, r4
	mov	lr, r12
	add	r3, r3, r12, lsl #2
	ldr	r3, [r3]
	ldr	r12, [r11, #-40]
	ldr	r4, [r11, #-52]
	mul	r4, r4, r1
	add	r12, r12, r4
	str	r3, [r12, #16]
	ldr	r3, [r11, #-24]
	ldr	r12, [r11, #-76]
	ldr	r4, [r11, #-44]
	mul	r12, r12, r4
	ldr	r4, [r11, #-80]
	add	r12, r12, r4
	add	r3, r3, r12
	ldrb	r3, [r3]
	ldr	r12, [r11, #-40]
	ldr	r4, [r11, #-52]
	mul	r1, r4, r1
	add	r1, r12, r1
	str	r3, [r1, #20]
	ldr	r1, [r11, #-52]
	add	r1, r1, #1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-52]
	cmp	r1, r0
	str	r2, [sp, #8]            @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	bne	.LBB16_126
@ BB#125:
	movw	r1, :lower16:.L.str.29
	movt	r1, :upper16:.L.str.29
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB16_126:                             @   in Loop: Header=BB16_74 Depth=2
	b	.LBB16_127
.LBB16_127:                             @   in Loop: Header=BB16_74 Depth=2
	b	.LBB16_128
.LBB16_128:                             @   in Loop: Header=BB16_74 Depth=2
	b	.LBB16_129
.LBB16_129:                             @   in Loop: Header=BB16_74 Depth=2
	ldr	r0, [r11, #-80]
	add	r0, r0, #1
	str	r0, [r11, #-80]
	b	.LBB16_74
.LBB16_130:                             @   in Loop: Header=BB16_72 Depth=1
	b	.LBB16_131
.LBB16_131:                             @   in Loop: Header=BB16_72 Depth=1
	ldr	r0, [r11, #-76]
	add	r0, r0, #1
	str	r0, [r11, #-76]
	b	.LBB16_72
.LBB16_132:
	movw	r0, #7
	movw	r1, #24
	ldr	r2, [r11, #-40]
	ldr	r3, [r11, #-52]
	mul	r1, r3, r1
	add	r1, r2, r1
	str	r0, [r1, #8]
	ldr	r0, [r11, #-84]
	bl	free
	ldr	r0, [r11, #-88]
	bl	free
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
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
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #328
	ldr	r12, [r11, #16]
	ldr	lr, [r11, #12]
	ldr	r4, [r11, #8]
	movw	r5, #7
	movw	r6, #0
	movw	r7, #2
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	str	r2, [r11, #-32]
	str	r3, [r11, #-36]
	str	r4, [r11, #-40]
	str	lr, [r11, #-44]
	str	r12, [r11, #-48]
	ldr	r0, [r11, #-28]
	ldr	r1, [r11, #-44]
	mul	r1, r1, r12
	mov	r2, r1
	lsl	r1, r1, #2
	and	r3, r6, #255
	str	r1, [r11, #-80]         @ 4-byte Spill
	mov	r1, r3
	ldr	r3, [r11, #-80]         @ 4-byte Reload
	str	r2, [r11, #-84]         @ 4-byte Spill
	mov	r2, r3
	str	r7, [r11, #-88]         @ 4-byte Spill
	str	r5, [r11, #-92]         @ 4-byte Spill
	bl	memset
	ldr	r0, [r11, #-92]         @ 4-byte Reload
	str	r0, [r11, #-64]
.LBB17_1:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB17_3 Depth 2
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #7
	cmp	r0, r1
	bge	.LBB17_46
@ BB#2:                                 @   in Loop: Header=BB17_1 Depth=1
	movw	r0, #7
	str	r0, [r11, #-68]
.LBB17_3:                               @   Parent Loop BB17_1 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #7
	cmp	r0, r1
	bge	.LBB17_44
@ BB#4:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	mvn	r1, #0
	movw	r2, #100
	str	r2, [r11, #-52]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	add	r2, r2, r3
	ldr	r3, [r11, #-68]
	add	r2, r2, r3
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-32]
	ldr	r2, [r11, #-24]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	mul	r3, r3, r12
	ldr	r12, [r11, #-68]
	add	r3, r3, r12
	add	r2, r2, r3
	ldrb	r2, [r2]
	add	r1, r1, r2
	str	r1, [r11, #-76]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r2, r0, r2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-52]
	add	r1, r2, r1
	str	r1, [r11, #-52]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_42
@ BB#5:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-72]
	add	r1, r1, #2
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_41
@ BB#6:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_40
@ BB#7:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_39
@ BB#8:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #6
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_38
@ BB#9:                                 @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_37
@ BB#10:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_36
@ BB#11:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_35
@ BB#12:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_34
@ BB#13:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_33
@ BB#14:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_32
@ BB#15:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #5
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_31
@ BB#16:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_30
@ BB#17:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_29
@ BB#18:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_28
@ BB#19:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_27
@ BB#20:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-44]
	sub	r1, r1, #3
	ldr	r2, [r11, #-72]
	add	r1, r2, r1
	str	r1, [r11, #-72]
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_26
@ BB#21:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	add	r3, r2, #1
	str	r3, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_25
@ BB#22:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #0
	ldr	r1, [r11, #-76]
	ldr	r2, [r11, #-72]
	ldrb	r2, [r2]
	sub	r0, r0, r2
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [r11, #-52]
	add	r0, r1, r0
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [r11, #-36]
	cmp	r0, r1
	bge	.LBB17_24
@ BB#23:                                @   in Loop: Header=BB17_3 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-36]
	ldr	r2, [r11, #-52]
	sub	r1, r1, r2
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	str	r1, [r2]
	str	r0, [r11, #-96]         @ 4-byte Spill
	str	r12, [r11, #-100]       @ 4-byte Spill
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
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB17_3
.LBB17_44:                              @   in Loop: Header=BB17_1 Depth=1
	b	.LBB17_45
.LBB17_45:                              @   in Loop: Header=BB17_1 Depth=1
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	b	.LBB17_1
.LBB17_46:
	movw	r0, #7
	movw	r1, #0
	str	r1, [r11, #-52]
	str	r0, [r11, #-64]
.LBB17_47:                              @ =>This Loop Header: Depth=1
                                        @     Child Loop BB17_49 Depth 2
	ldr	r0, [r11, #-64]
	ldr	r1, [r11, #-48]
	sub	r1, r1, #7
	cmp	r0, r1
	bge	.LBB17_107
@ BB#48:                                @   in Loop: Header=BB17_47 Depth=1
	movw	r0, #7
	str	r0, [r11, #-68]
.LBB17_49:                              @   Parent Loop BB17_47 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-68]
	ldr	r1, [r11, #-44]
	sub	r1, r1, #7
	cmp	r0, r1
	bge	.LBB17_105
@ BB#50:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-64]
	ldr	r3, [r11, #-44]
	ldr	r12, [r11, #-68]
	mla	r2, r2, r3, r12
	mov	r3, r2
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-56]
	ldr	r1, [r11, #-56]
	cmp	r1, #0
	str	r0, [r11, #-104]        @ 4-byte Spill
	str	r3, [r11, #-108]        @ 4-byte Spill
	ble	.LBB17_103
@ BB#51:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-112]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#52:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-116]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#53:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-120]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#54:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-124]        @ 4-byte Spill
	str	r12, [r11, #-128]       @ 4-byte Spill
	ble	.LBB17_102
@ BB#55:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-132]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#56:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-136]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#57:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-140]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#58:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-144]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#59:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-148]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#60:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-152]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#61:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-156]        @ 4-byte Spill
	str	r12, [r11, #-160]       @ 4-byte Spill
	ble	.LBB17_102
@ BB#62:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-164]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#63:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [r11, #-168]        @ 4-byte Spill
	ble	.LBB17_102
@ BB#64:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #172]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#65:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #168]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#66:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #164]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#67:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #160]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#68:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #156]          @ 4-byte Spill
	str	r12, [sp, #152]         @ 4-byte Spill
	ble	.LBB17_102
@ BB#69:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #148]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#70:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #144]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#71:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	sub	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #140]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#72:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #136]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#73:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #132]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#74:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #128]          @ 4-byte Spill
	ble	.LBB17_102
@ BB#75:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #124]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#76:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #120]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#77:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #116]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#78:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #112]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#79:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #108]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#80:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #104]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#81:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #100]          @ 4-byte Spill
	str	r12, [sp, #96]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#82:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #92]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#83:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #88]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#84:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #1
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #84]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#85:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #80]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#86:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #76]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#87:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #72]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#88:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r12, [sp, #64]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#89:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #60]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#90:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #56]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#91:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #2
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #52]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#92:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #48]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#93:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #44]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#94:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	sub	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #40]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#95:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	mov	r12, r3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #36]           @ 4-byte Spill
	str	r12, [sp, #32]          @ 4-byte Spill
	blt	.LBB17_102
@ BB#96:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #1
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #28]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#97:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #2
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #24]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#98:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #2
	ldr	r1, [r11, #-56]
	ldr	r2, [r11, #-28]
	ldr	r3, [r11, #-64]
	add	r3, r3, #3
	ldr	r12, [r11, #-44]
	ldr	lr, [r11, #-68]
	mla	r3, r3, r12, lr
	add	r3, r3, #3
	add	r2, r2, r3, lsl #2
	ldr	r2, [r2]
	cmp	r1, r2
	str	r0, [sp, #20]           @ 4-byte Spill
	blt	.LBB17_102
@ BB#99:                                @   in Loop: Header=BB17_49 Depth=2
	movw	r0, #15000
	movw	r1, #24
	movw	r2, #15
	movw	r3, #25
	movw	r12, #0
	ldr	lr, [r11, #-40]
	ldr	r4, [r11, #-52]
	mul	r4, r4, r1
	add	lr, lr, r4
	str	r12, [lr, #8]
	ldr	r12, [r11, #-68]
	ldr	lr, [r11, #-40]
	ldr	r4, [r11, #-52]
	mul	r4, r4, r1
	add	lr, lr, r4
	str	r12, [lr]
	ldr	r12, [r11, #-64]
	ldr	lr, [r11, #-40]
	ldr	r4, [r11, #-52]
	mul	r4, r4, r1
	add	lr, lr, r4
	str	r12, [lr, #4]
	ldr	r12, [r11, #-24]
	ldr	lr, [r11, #-64]
	sub	lr, lr, #2
	ldr	r4, [r11, #-44]
	mul	lr, lr, r4
	ldr	r4, [r11, #-68]
	add	lr, lr, r4
	sub	lr, lr, #2
	add	r12, r12, lr
	ldrb	r12, [r12]
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	sub	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #1
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	sub	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #1
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	ldr	lr, [r11, #-24]
	ldr	r4, [r11, #-64]
	add	r4, r4, #2
	ldr	r5, [r11, #-44]
	mul	r4, r4, r5
	ldr	r5, [r11, #-68]
	add	r4, r4, r5
	add	r4, r4, #2
	add	lr, lr, r4
	ldrb	lr, [lr]
	add	r12, r12, lr
	str	r12, [r11, #-56]
	ldr	r12, [r11, #-56]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r12
	str	r1, [sp, #12]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #8]            @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-52]
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mul	r2, r2, r3
	add	r1, r1, r2
	str	r0, [r1, #20]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-64]
	sub	r1, r1, #2
	ldr	r2, [r11, #-44]
	mul	r1, r1, r2
	ldr	r2, [r11, #-68]
	add	r1, r1, r2
	add	r1, r1, #2
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	add	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	add	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	sub	r0, r0, r1
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-56]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	add	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	add	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	sub	r0, r0, r1
	ldr	r1, [r11, #-56]
	add	r0, r1, r0
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-24]
	ldr	r1, [r11, #-64]
	add	r1, r1, #2
	ldr	r2, [r11, #-44]
	mul	r1, r1, r2
	ldr	r2, [r11, #-68]
	add	r1, r1, r2
	sub	r1, r1, #2
	add	r0, r0, r1
	ldrb	r0, [r0]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #2
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #2
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	sub	r0, r0, r1
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-60]
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #1
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	add	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	add	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	ldr	r1, [r11, #-24]
	ldr	r2, [r11, #-64]
	sub	r2, r2, #1
	ldr	r12, [r11, #-44]
	mul	r2, r2, r12
	ldr	r12, [r11, #-68]
	add	r2, r2, r12
	sub	r2, r2, #2
	add	r1, r1, r2
	ldrb	r1, [r1]
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	sub	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r12, r12, #1
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r11, #-24]
	ldr	r12, [r11, #-64]
	sub	r12, r12, #1
	ldr	lr, [r11, #-44]
	mul	r12, r12, lr
	ldr	lr, [r11, #-68]
	add	r12, r12, lr
	add	r12, r12, #2
	add	r2, r2, r12
	ldrb	r2, [r2]
	add	r1, r1, r2
	sub	r0, r0, r1
	ldr	r1, [r11, #-60]
	add	r0, r1, r0
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-56]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-52]
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mul	r2, r2, r3
	add	r1, r1, r2
	str	r0, [r1, #12]
	ldr	r0, [r11, #-60]
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	ldr	r1, [r11, #-40]
	ldr	r2, [r11, #-52]
	ldr	r3, [sp, #12]           @ 4-byte Reload
	mul	r2, r2, r3
	add	r1, r1, r2
	str	r0, [r1, #16]
	ldr	r0, [r11, #-52]
	add	r0, r0, #1
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-52]
	ldr	r1, [sp, #16]           @ 4-byte Reload
	cmp	r0, r1
	bne	.LBB17_101
@ BB#100:
	movw	r1, :lower16:.L.str.29
	movt	r1, :upper16:.L.str.29
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB17_101:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_102
.LBB17_102:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_103
.LBB17_103:                             @   in Loop: Header=BB17_49 Depth=2
	b	.LBB17_104
.LBB17_104:                             @   in Loop: Header=BB17_49 Depth=2
	ldr	r0, [r11, #-68]
	add	r0, r0, #1
	str	r0, [r11, #-68]
	b	.LBB17_49
.LBB17_105:                             @   in Loop: Header=BB17_47 Depth=1
	b	.LBB17_106
.LBB17_106:                             @   in Loop: Header=BB17_47 Depth=1
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	b	.LBB17_47
.LBB17_107:
	movw	r0, #7
	movw	r1, #24
	ldr	r2, [r11, #-40]
	ldr	r3, [r11, #-52]
	mul	r1, r3, r1
	add	r1, r2, r1
	str	r0, [r1, #8]
	ldr	r0, [r11, #-20]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end17:
	.size	susan_corners_quick, .Lfunc_end17-susan_corners_quick
	.cantunwind
	.fnend

	.globl	main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #888
	sub	sp, sp, #97280
	sub	sp, sp, #262144
	movw	r2, #0
	movw	r3, #2650
	movw	r12, #1850
	movw	lr, #1
	movw	r4, #20
	movw	r5, #3
	vmov.f32	s0, #4.000000e+00
	str	r2, [r11, #-20]
	str	r0, [r11, #-24]
	str	r1, [r11, #-28]
	vstr	s0, [r11, #-132]
	str	r5, [r11, #-140]
	str	r4, [r11, #-144]
	str	r2, [r11, #-148]
	str	lr, [r11, #-152]
	str	r2, [r11, #-156]
	str	r2, [r11, #-160]
	str	r2, [r11, #-164]
	str	r12, [r11, #-168]
	str	r3, [r11, #-172]
	str	r2, [r11, #-176]
	ldr	r0, [r11, #-24]
	cmp	r0, #3
	bge	.LBB18_2
@ BB#1:
	bl	usage
	str	r0, [sp, #136]          @ 4-byte Spill
.LBB18_2:
	sub	r1, r11, #120
	sub	r2, r11, #184
	sub	r3, r11, #188
	ldr	r0, [r11, #-28]
	ldr	r0, [r0, #4]
	bl	get_image
.LBB18_3:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r11, #-140]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	bge	.LBB18_27
@ BB#4:                                 @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-140]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r1, [r11, #-116]
	ldr	r1, [r11, #-116]
	ldrb	r1, [r1]
	cmp	r1, #45
	str	r0, [sp, #132]          @ 4-byte Spill
	bne	.LBB18_25
@ BB#5:                                 @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [r11, #-116]
	add	r1, r0, #1
	str	r1, [r11, #-116]
	ldrb	r0, [r0, #1]
	sub	r0, r0, #51
	cmp	r0, #65
	str	r0, [sp, #128]          @ 4-byte Spill
	bhi	.LBB18_24
@ BB#6:                                 @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [sp, #128]          @ 4-byte Reload
	lsl	r1, r0, #2
	adr	r2, .LJTI18_0
	ldr	r1, [r1, r2]
	mov	pc, r1
@ BB#7:
	.p2align	2
.LJTI18_0:
	.long	.LBB18_14
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_13
	.long	.LBB18_10
	.long	.LBB18_16
	.long	.LBB18_9
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_24
	.long	.LBB18_12
	.long	.LBB18_24
	.long	.LBB18_11
	.long	.LBB18_15
	.long	.LBB18_24
	.long	.LBB18_8
	.long	.LBB18_21
.LBB18_8:                               @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #0
	str	r0, [r11, #-176]
	b	.LBB18_24
.LBB18_9:                               @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-176]
	b	.LBB18_24
.LBB18_10:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	str	r0, [r11, #-176]
	b	.LBB18_24
.LBB18_11:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-148]
	b	.LBB18_24
.LBB18_12:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #0
	str	r0, [r11, #-152]
	b	.LBB18_24
.LBB18_13:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-160]
	b	.LBB18_24
.LBB18_14:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-156]
	b	.LBB18_24
.LBB18_15:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-164]
	b	.LBB18_24
.LBB18_16:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [r11, #-140]
	add	r0, r0, #1
	str	r0, [r11, #-140]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	blt	.LBB18_18
@ BB#17:
	movw	r0, :lower16:.L.str.30
	movt	r0, :upper16:.L.str.30
	bl	printf
	movw	lr, #0
	str	r0, [sp, #124]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB18_18:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-140]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r0, [sp, #120]          @ 4-byte Spill
	mov	r0, r1
	bl	atof
	vmov	d16, r0, r1
	vcvt.f32.f64	s0, d16
	vstr	s0, [r11, #-132]
	vldr	s0, [r11, #-132]
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB18_20
@ BB#19:                                @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #1
	str	r0, [r11, #-156]
.LBB18_20:                              @   in Loop: Header=BB18_3 Depth=1
	b	.LBB18_24
.LBB18_21:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [r11, #-140]
	add	r0, r0, #1
	str	r0, [r11, #-140]
	ldr	r1, [r11, #-24]
	cmp	r0, r1
	blt	.LBB18_23
@ BB#22:
	movw	r0, :lower16:.L.str.31
	movt	r0, :upper16:.L.str.31
	bl	printf
	movw	lr, #0
	str	r0, [sp, #116]          @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB18_23:                              @   in Loop: Header=BB18_3 Depth=1
	movw	r0, #2
	ldr	r1, [r11, #-28]
	ldr	r2, [r11, #-140]
	add	r1, r1, r2, lsl #2
	ldr	r1, [r1]
	str	r0, [sp, #112]          @ 4-byte Spill
	mov	r0, r1
	bl	atoi
	str	r0, [r11, #-144]
.LBB18_24:                              @   in Loop: Header=BB18_3 Depth=1
	b	.LBB18_26
.LBB18_25:                              @   in Loop: Header=BB18_3 Depth=1
	bl	usage
	str	r0, [sp, #108]          @ 4-byte Spill
.LBB18_26:                              @   in Loop: Header=BB18_3 Depth=1
	ldr	r0, [r11, #-140]
	add	r0, r0, #1
	str	r0, [r11, #-140]
	b	.LBB18_3
.LBB18_27:
	ldr	r0, [r11, #-148]
	cmp	r0, #1
	bne	.LBB18_30
@ BB#28:
	ldr	r0, [r11, #-176]
	cmp	r0, #0
	bne	.LBB18_30
@ BB#29:
	movw	r0, #1
	str	r0, [r11, #-176]
.LBB18_30:
	ldr	r0, [r11, #-176]
	cmp	r0, #0
	str	r0, [sp, #104]          @ 4-byte Spill
	beq	.LBB18_33
	b	.LBB18_31
.LBB18_31:
	ldr	r0, [sp, #104]          @ 4-byte Reload
	cmp	r0, #1
	beq	.LBB18_34
	b	.LBB18_32
.LBB18_32:
	ldr	r0, [sp, #104]          @ 4-byte Reload
	cmp	r0, #2
	beq	.LBB18_46
	b	.LBB18_53
.LBB18_33:
	sub	r0, r11, #124
	movw	r2, #2
	ldr	r1, [r11, #-144]
	bl	setup_brightness_lut
	ldr	r0, [r11, #-156]
	ldr	r1, [r11, #-120]
	vldr	s0, [r11, #-132]
	vcvt.f64.f32	d16, s0
	ldr	r2, [r11, #-184]
	ldr	lr, [r11, #-188]
	ldr	r3, [r11, #-124]
	str	r2, [sp, #100]          @ 4-byte Spill
	str	r3, [sp, #96]           @ 4-byte Spill
	vmov	r2, r3, d16
	ldr	r12, [sp, #100]         @ 4-byte Reload
	str	r12, [sp]
	str	lr, [sp, #4]
	ldr	lr, [sp, #96]           @ 4-byte Reload
	str	lr, [sp, #8]
	bl	susan_smoothing
	b	.LBB18_53
.LBB18_34:
	movw	r0, #2
	ldr	r1, [r11, #-184]
	ldr	r2, [r11, #-188]
	mul	r1, r1, r2
	mov	r2, r1
	lsl	r1, r1, #2
	str	r0, [sp, #92]           @ 4-byte Spill
	mov	r0, r1
	str	r2, [sp, #88]           @ 4-byte Spill
	bl	malloc
	sub	r1, r11, #124
	movw	r2, #6
	str	r0, [r11, #-136]
	ldr	r0, [r11, #-144]
	str	r0, [sp, #84]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #84]           @ 4-byte Reload
	bl	setup_brightness_lut
	ldr	r0, [r11, #-148]
	cmp	r0, #0
	beq	.LBB18_39
@ BB#35:
	ldr	r0, [r11, #-156]
	cmp	r0, #0
	beq	.LBB18_37
@ BB#36:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-124]
	ldr	r3, [r11, #-172]
	ldr	r12, [r11, #-184]
	ldr	lr, [r11, #-188]
	str	r12, [sp]
	str	lr, [sp, #4]
	bl	susan_principle_small
	str	r0, [sp, #80]           @ 4-byte Spill
	b	.LBB18_38
.LBB18_37:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-124]
	ldr	r3, [r11, #-172]
	ldr	r12, [r11, #-184]
	ldr	lr, [r11, #-188]
	str	r12, [sp]
	str	lr, [sp, #4]
	bl	susan_principle
	str	r0, [sp, #76]           @ 4-byte Spill
.LBB18_38:
	ldr	r0, [r11, #-136]
	ldr	r1, [r11, #-120]
	ldr	r2, [r11, #-184]
	ldr	r3, [r11, #-188]
	mul	r2, r2, r3
	bl	int_to_uchar
	str	r0, [sp, #72]           @ 4-byte Spill
	b	.LBB18_45
.LBB18_39:
	ldr	r0, [r11, #-184]
	ldr	r1, [r11, #-188]
	mul	r0, r0, r1
	bl	malloc
	movw	r1, #100
	str	r0, [r11, #-128]
	ldr	r0, [r11, #-128]
	ldr	lr, [r11, #-184]
	ldr	r2, [r11, #-188]
	mul	r2, lr, r2
	and	r1, r1, #255
	bl	memset
	ldr	r0, [r11, #-156]
	cmp	r0, #0
	beq	.LBB18_41
@ BB#40:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-128]
	ldr	r3, [r11, #-124]
	ldr	r12, [r11, #-172]
	ldr	lr, [r11, #-184]
	ldr	r4, [r11, #-188]
	str	r12, [sp]
	str	lr, [sp, #4]
	str	r4, [sp, #8]
	bl	susan_edges_small
	str	r0, [sp, #68]           @ 4-byte Spill
	b	.LBB18_42
.LBB18_41:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-128]
	ldr	r3, [r11, #-124]
	ldr	r12, [r11, #-172]
	ldr	lr, [r11, #-184]
	ldr	r4, [r11, #-188]
	str	r12, [sp]
	str	lr, [sp, #4]
	str	r4, [sp, #8]
	bl	susan_edges
	str	r0, [sp, #64]           @ 4-byte Spill
.LBB18_42:
	ldr	r0, [r11, #-152]
	cmp	r0, #0
	beq	.LBB18_44
@ BB#43:
	ldr	r0, [r11, #-136]
	ldr	r1, [r11, #-128]
	ldr	r2, [r11, #-184]
	ldr	r3, [r11, #-188]
	bl	susan_thin
	str	r0, [sp, #60]           @ 4-byte Spill
.LBB18_44:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-128]
	ldr	r2, [r11, #-184]
	ldr	r3, [r11, #-188]
	ldr	r12, [r11, #-160]
	str	r12, [sp]
	bl	edge_draw
	str	r0, [sp, #56]           @ 4-byte Spill
.LBB18_45:
	b	.LBB18_53
.LBB18_46:
	movw	r0, #2
	ldr	r1, [r11, #-184]
	ldr	r2, [r11, #-188]
	mul	r1, r1, r2
	mov	r2, r1
	lsl	r1, r1, #2
	str	r0, [sp, #52]           @ 4-byte Spill
	mov	r0, r1
	str	r2, [sp, #48]           @ 4-byte Spill
	bl	malloc
	sub	r1, r11, #124
	movw	r2, #6
	str	r0, [r11, #-136]
	ldr	r0, [r11, #-144]
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #44]           @ 4-byte Reload
	bl	setup_brightness_lut
	ldr	r0, [r11, #-148]
	cmp	r0, #0
	beq	.LBB18_48
@ BB#47:
	ldr	r0, [r11, #-120]
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-124]
	ldr	r3, [r11, #-168]
	ldr	r12, [r11, #-184]
	ldr	lr, [r11, #-188]
	str	r12, [sp]
	str	lr, [sp, #4]
	bl	susan_principle
	ldr	r1, [r11, #-136]
	ldr	r2, [r11, #-120]
	ldr	r3, [r11, #-184]
	ldr	r12, [r11, #-188]
	mul	r3, r3, r12
	str	r0, [sp, #40]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	int_to_uchar
	str	r0, [sp, #36]           @ 4-byte Spill
	b	.LBB18_52
.LBB18_48:
	ldr	r0, [r11, #-164]
	cmp	r0, #0
	beq	.LBB18_50
@ BB#49:
	add	r0, sp, #140
	ldr	r1, [r11, #-120]
	ldr	r2, [r11, #-136]
	ldr	r3, [r11, #-124]
	ldr	r12, [r11, #-168]
	ldr	lr, [r11, #-184]
	ldr	r4, [r11, #-188]
	str	r0, [sp, #32]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	ldr	r12, [sp, #32]          @ 4-byte Reload
	str	r12, [sp]
	str	lr, [sp, #4]
	str	r4, [sp, #8]
	bl	susan_corners_quick
	str	r0, [sp, #28]           @ 4-byte Spill
	b	.LBB18_51
.LBB18_50:
	add	r0, sp, #140
	ldr	r1, [r11, #-120]
	ldr	r2, [r11, #-136]
	ldr	r3, [r11, #-124]
	ldr	r12, [r11, #-168]
	ldr	lr, [r11, #-184]
	ldr	r4, [r11, #-188]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r12
	ldr	r12, [sp, #24]          @ 4-byte Reload
	str	r12, [sp]
	str	lr, [sp, #4]
	str	r4, [sp, #8]
	bl	susan_corners
	str	r0, [sp, #20]           @ 4-byte Spill
.LBB18_51:
	add	r1, sp, #140
	ldr	r0, [r11, #-120]
	ldr	r2, [r11, #-184]
	ldr	r3, [r11, #-160]
	bl	corner_draw
	str	r0, [sp, #16]           @ 4-byte Spill
.LBB18_52:
	b	.LBB18_53
.LBB18_53:
	ldr	r0, [r11, #-28]
	ldr	r0, [r0, #8]
	ldr	r1, [r11, #-120]
	ldr	r2, [r11, #-184]
	ldr	r3, [r11, #-188]
	bl	put_image
	ldr	r1, [r11, #-20]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
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
