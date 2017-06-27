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
	.file	"crc_32_t.bc"
	.globl	updateCRC32
	.p2align	2
	.type	updateCRC32,%function
	.code	32                      @ @updateCRC32
updateCRC32:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #88
	bfc	sp, #0, #4
	movw	r2, #8
	movw	r3, :lower16:crc_32_tab
	movt	r3, :upper16:crc_32_tab
	movw	r12, #2
	strb	r0, [sp, #79]
	str	r1, [sp, #44]
	vdup.32	q8, r1
	add	r0, sp, #48
	vst1.64	{d16, d17}, [r0:128]
	ldrb	r0, [sp, #79]
	vdup.32	q8, r0
	add	lr, sp, #16
	vst1.32	{d16, d17}, [lr]
	eor	r0, r1, r0
	uxtb	r0, r0
	mov	r1, r0
	movw	lr, :lower16:crc_32_tab
	movt	lr, :upper16:crc_32_tab
	add	r0, lr, r0, lsl #2
	ldr	r0, [r0]
	ldr	lr, [sp, #44]
	lsr	lr, lr, #8
	eor	r0, r0, lr
	str	r12, [sp, #12]          @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	str	r1, [sp]                @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	updateCRC32, .Lfunc_end0-updateCRC32
	.cantunwind
	.fnend

	.globl	crc32file
	.p2align	2
	.type	crc32file,%function
	.code	32                      @ @crc32file
crc32file:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #208
	bfc	sp, #0, #4
	movw	r3, :lower16:.L.str
	movt	r3, :upper16:.L.str
	movw	r12, #0
	mvn	lr, #0
	str	r0, [sp, #120]
	str	r1, [sp, #116]
	str	r2, [sp, #112]
	str	lr, [sp, #76]
	ldr	r0, [sp, #112]
	str	r12, [r0]
	ldr	r0, [sp, #120]
	mov	r1, r3
	bl	fopen
	movw	r1, #0
	str	r0, [sp, #108]
	cmp	r0, r1
	bne	.LBB1_2
@ BB#1:
	ldr	r0, [sp, #120]
	bl	perror
	mvn	r0, #0
	str	r0, [sp, #124]
	b	.LBB1_13
.LBB1_2:
	b	.LBB1_3
.LBB1_3:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #108]
	bl	getc
	str	r0, [sp, #44]
	cmn	r0, #1
	beq	.LBB1_5
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=1
	movw	r0, #8
	movw	r1, :lower16:crc_32_tab
	movt	r1, :upper16:crc_32_tab
	movw	r2, #2
	ldr	r3, [sp, #112]
	ldr	r12, [r3]
	add	r12, r12, #1
	str	r12, [r3]
	ldr	r3, [sp, #76]
	ldr	r12, [sp, #44]
	eor	r3, r3, r12
	uxtb	r3, r3
	mov	r12, r3
	movw	lr, :lower16:crc_32_tab
	movt	lr, :upper16:crc_32_tab
	add	r3, lr, r3, lsl #2
	ldr	r3, [r3]
	ldr	lr, [sp, #76]
	lsr	lr, lr, #8
	eor	r3, r3, lr
	str	r3, [sp, #76]
	str	r0, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	str	r2, [sp, #32]           @ 4-byte Spill
	str	r12, [sp, #28]          @ 4-byte Spill
	b	.LBB1_3
.LBB1_5:
	ldr	r0, [sp, #108]
	bl	ferror
	cmp	r0, #0
	beq	.LBB1_7
@ BB#6:
	ldr	r0, [sp, #120]
	bl	perror
	mvn	r0, #0
	ldr	lr, [sp, #112]
	str	r0, [lr]
.LBB1_7:
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [sp, #108]
	str	r0, [sp, #24]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #20]           @ 4-byte Spill
	bl	fclose
	ldr	r1, [sp, #76]
	vdup.32	q8, r1
	add	r2, sp, #80
	vst1.64	{d16, d17}, [r2:128]
	vmvn	q8, q8
	vst1.64	{d16, d17}, [r2]
	vmov.f64	d18, d16
	vmov.32	r2, d18[0]
	vmov.32	lr, d18[1]
	vmov.f64	d18, d17
	vmov.32	r3, d18[0]
	add	lr, r2, lr
	add	r3, lr, r3
	ldr	lr, [sp, #20]           @ 4-byte Reload
	eor	r1, r1, lr
	ldr	r12, [sp, #24]          @ 4-byte Reload
	mul	r4, r1, r12
	str	r1, [sp, #156]
	cmp	r3, r4
	str	r0, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	str	r1, [sp, #4]            @ 4-byte Spill
	beq	.LBB1_12
@ BB#8:
	ldr	r0, [sp, #12]           @ 4-byte Reload
	ldr	r1, [sp, #8]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB1_10
@ BB#9:
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #156]
	b	.LBB1_11
.LBB1_10:
	ldr	r0, [sp, #8]            @ 4-byte Reload
	str	r0, [sp, #156]
.LBB1_11:
	b	.LBB1_12
.LBB1_12:
	movw	r0, #0
	ldr	r1, [sp, #156]
	str	r1, [sp, #76]
	ldr	r1, [sp, #116]
	ldr	r2, [sp, #4]            @ 4-byte Reload
	str	r2, [r1]
	str	r0, [sp, #124]
.LBB1_13:
	ldr	r0, [sp, #124]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end1:
	.size	crc32file, .Lfunc_end1-crc32file
	.cantunwind
	.fnend

	.globl	crc32buf
	.p2align	2
	.type	crc32buf,%function
	.code	32                      @ @crc32buf
crc32buf:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #152
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #60
	mvn	r3, #0
	str	r0, [r2, #60]
	str	r1, [r2, #32]
	str	r3, [r2]
	str	r2, [r6, #44]           @ 4-byte Spill
.LBB2_1:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #32]
	cmp	r1, #0
	beq	.LBB2_9
@ BB#2:                                 @   in Loop: Header=BB2_1 Depth=1
	movw	r0, #8
	movw	r1, :lower16:crc_32_tab
	movt	r1, :upper16:crc_32_tab
	movw	r2, #2
	ldr	r3, [r6, #44]           @ 4-byte Reload
	ldr	r12, [r3]
	vdup.32	q8, r12
	add	lr, r6, #64
	vst1.64	{d16, d17}, [lr:128]
	ldr	lr, [r3, #60]
	ldrb	lr, [lr]
	mov	r4, sp
	sub	r4, r4, #16
	bfc	r4, #0, #4
	mov	sp, r4
	vdup.32	q8, lr
	vst1.32	{d16, d17}, [r4]
	eor	r12, r12, lr
	uxtb	r12, r12
	mov	lr, r12
	movw	r4, :lower16:crc_32_tab
	movt	r4, :upper16:crc_32_tab
	add	r12, r4, r12, lsl #2
	ldr	r12, [r12]
	ldr	r4, [r3]
	lsr	r4, r4, #8
	eor	r12, r12, r4
	str	r12, [r3]
	str	r0, [r6, #40]           @ 4-byte Spill
	str	r1, [r6, #36]           @ 4-byte Spill
	str	r2, [r6, #32]           @ 4-byte Spill
	str	lr, [r6, #28]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB2_1 Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	r3, [r2, #32]
	vdup.32	q8, r3
	add	r12, r6, #96
	vst1.64	{d16, d17}, [r12:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r12, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r4, d20[0]
	add	lr, r12, lr
	add	lr, lr, r4
	add	r1, r3, r1
	mul	r0, r1, r0
	str	r1, [r2, #64]
	cmp	lr, r0
	str	r1, [r6, #24]           @ 4-byte Spill
	str	r12, [r6, #20]          @ 4-byte Spill
	str	lr, [r6, #16]           @ 4-byte Spill
	beq	.LBB2_8
@ BB#4:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #20]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB2_6
@ BB#5:                                 @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
	b	.LBB2_7
.LBB2_6:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #64]
.LBB2_7:                                @   in Loop: Header=BB2_1 Depth=1
	b	.LBB2_8
.LBB2_8:                                @   in Loop: Header=BB2_1 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #64]
	str	r1, [r0, #32]
	ldr	r1, [r0, #60]
	add	r1, r1, #1
	str	r1, [r0, #60]
	b	.LBB2_1
.LBB2_9:
	mvn	r0, #0
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1]
	vdup.32	q8, r2
	vorr	q9, q8, q8
	add	r3, r6, #64
	vst1.64	{d16, d17}, [r3:128]
	eor	r0, r2, r0
	vst1.64	{d18, d19}, [r6:128]    @ 16-byte Spill
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end2:
	.size	crc32buf, .Lfunc_end2-crc32buf
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
	sub	sp, sp, #280
	bfc	sp, #0, #4
	mov	r6, sp
	add	r2, r6, #60
	movw	r3, #0
	str	r3, [r2, #128]
	str	r0, [r2, #96]
	str	r1, [r2, #92]
	str	r3, [r2]
	str	r2, [r6, #44]           @ 4-byte Spill
.LBB3_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #3
	mvn	r1, #0
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	r3, [r2, #96]
	vdup.32	q8, r3
	add	r12, r6, #160
	vst1.64	{d16, d17}, [r12:128]
	vmov.i8	q9, #0xff
	vadd.i32	q8, q8, q9
	vst1.64	{d16, d17}, [r12]
	vmov.f64	d20, d16
	vmov.32	r12, d20[0]
	vmov.32	lr, d20[1]
	vmov.f64	d20, d17
	vmov.32	r4, d20[0]
	add	lr, r12, lr
	add	lr, lr, r4
	add	r1, r3, r1
	mul	r0, r1, r0
	str	r1, [r2, #192]
	cmp	lr, r0
	str	r1, [r6, #40]           @ 4-byte Spill
	str	r12, [r6, #36]          @ 4-byte Spill
	str	lr, [r6, #32]           @ 4-byte Spill
	beq	.LBB3_6
@ BB#2:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #32]           @ 4-byte Reload
	ldr	r1, [r6, #36]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_4
@ BB#3:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #40]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #192]
	b	.LBB3_5
.LBB3_4:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #36]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #192]
.LBB3_5:                                @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_6
.LBB3_6:                                @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0, #192]
	str	r1, [r0, #96]
	ldr	r1, [r6, #40]           @ 4-byte Reload
	cmp	r1, #0
	ble	.LBB3_13
@ BB#7:                                 @   in Loop: Header=BB3_1 Depth=1
	movw	r0, #3
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #92]
	add	r3, r2, #4
	str	r3, [r1, #92]
	ldr	r2, [r2, #4]
	add	r1, r6, #124
	add	r3, r6, #92
	str	r0, [r6, #28]           @ 4-byte Spill
	mov	r0, r2
	mov	r2, r3
	bl	crc32file
	mov	r1, r0
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	r3, [r2]
	vdup.32	q8, r3
	add	lr, r6, #64
	vst1.64	{d16, d17}, [lr:128]
	mov	r12, sp
	sub	r12, r12, #16
	bfc	r12, #0, #4
	mov	sp, r12
	vdup.32	q9, r0
	vst1.32	{d18, d19}, [r12]
	vorr	q8, q8, q9
	vst1.64	{d16, d17}, [lr]
	vmov.f64	d20, d16
	vmov.32	r0, d20[0]
	vmov.32	r12, d20[1]
	vmov.f64	d20, d17
	vmov.32	lr, d20[0]
	add	r12, r0, r12
	add	r12, r12, lr
	orr	r1, r3, r1
	ldr	r3, [r6, #28]           @ 4-byte Reload
	mul	lr, r1, r3
	str	r1, [r2, #160]
	cmp	r12, lr
	str	r0, [r6, #24]           @ 4-byte Spill
	str	r12, [r6, #20]          @ 4-byte Spill
	str	r1, [r6, #16]           @ 4-byte Spill
	beq	.LBB3_12
@ BB#8:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #20]           @ 4-byte Reload
	ldr	r1, [r6, #24]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB3_10
@ BB#9:                                 @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #16]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #160]
	b	.LBB3_11
.LBB3_10:                               @   in Loop: Header=BB3_1 Depth=1
	ldr	r0, [r6, #24]           @ 4-byte Reload
	ldr	r1, [r6, #44]           @ 4-byte Reload
	str	r0, [r1, #160]
.LBB3_11:                               @   in Loop: Header=BB3_1 Depth=1
	b	.LBB3_12
.LBB3_12:                               @   in Loop: Header=BB3_1 Depth=1
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	ldr	r1, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r1, #160]
	str	r2, [r1]
	ldr	r1, [r1, #64]
	ldr	r2, [r6, #44]           @ 4-byte Reload
	ldr	r2, [r2, #32]
	ldr	r3, [r6, #44]           @ 4-byte Reload
	ldr	r12, [r3, #92]
	ldr	r3, [r12]
	bl	printf
	str	r0, [r6, #12]           @ 4-byte Spill
	b	.LBB3_1
.LBB3_13:
	ldr	r0, [r6, #44]           @ 4-byte Reload
	ldr	r1, [r0]
	cmp	r1, #0
	movw	r1, #0
	movne	r1, #1
	and	r0, r1, #1
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cantunwind
	.fnend

	.type	crc_32_tab,%object      @ @crc_32_tab
	.data
	.p2align	2
crc_32_tab:
	.long	0                       @ 0x0
	.long	1996959894              @ 0x77073096
	.long	3993919788              @ 0xee0e612c
	.long	2567524794              @ 0x990951ba
	.long	124634137               @ 0x76dc419
	.long	1886057615              @ 0x706af48f
	.long	3915621685              @ 0xe963a535
	.long	2657392035              @ 0x9e6495a3
	.long	249268274               @ 0xedb8832
	.long	2044508324              @ 0x79dcb8a4
	.long	3772115230              @ 0xe0d5e91e
	.long	2547177864              @ 0x97d2d988
	.long	162941995               @ 0x9b64c2b
	.long	2125561021              @ 0x7eb17cbd
	.long	3887607047              @ 0xe7b82d07
	.long	2428444049              @ 0x90bf1d91
	.long	498536548               @ 0x1db71064
	.long	1789927666              @ 0x6ab020f2
	.long	4089016648              @ 0xf3b97148
	.long	2227061214              @ 0x84be41de
	.long	450548861               @ 0x1adad47d
	.long	1843258603              @ 0x6ddde4eb
	.long	4107580753              @ 0xf4d4b551
	.long	2211677639              @ 0x83d385c7
	.long	325883990               @ 0x136c9856
	.long	1684777152              @ 0x646ba8c0
	.long	4251122042              @ 0xfd62f97a
	.long	2321926636              @ 0x8a65c9ec
	.long	335633487               @ 0x14015c4f
	.long	1661365465              @ 0x63066cd9
	.long	4195302755              @ 0xfa0f3d63
	.long	2366115317              @ 0x8d080df5
	.long	997073096               @ 0x3b6e20c8
	.long	1281953886              @ 0x4c69105e
	.long	3579855332              @ 0xd56041e4
	.long	2724688242              @ 0xa2677172
	.long	1006888145              @ 0x3c03e4d1
	.long	1258607687              @ 0x4b04d447
	.long	3524101629              @ 0xd20d85fd
	.long	2768942443              @ 0xa50ab56b
	.long	901097722               @ 0x35b5a8fa
	.long	1119000684              @ 0x42b2986c
	.long	3686517206              @ 0xdbbbc9d6
	.long	2898065728              @ 0xacbcf940
	.long	853044451               @ 0x32d86ce3
	.long	1172266101              @ 0x45df5c75
	.long	3705015759              @ 0xdcd60dcf
	.long	2882616665              @ 0xabd13d59
	.long	651767980               @ 0x26d930ac
	.long	1373503546              @ 0x51de003a
	.long	3369554304              @ 0xc8d75180
	.long	3218104598              @ 0xbfd06116
	.long	565507253               @ 0x21b4f4b5
	.long	1454621731              @ 0x56b3c423
	.long	3485111705              @ 0xcfba9599
	.long	3099436303              @ 0xb8bda50f
	.long	671266974               @ 0x2802b89e
	.long	1594198024              @ 0x5f058808
	.long	3322730930              @ 0xc60cd9b2
	.long	2970347812              @ 0xb10be924
	.long	795835527               @ 0x2f6f7c87
	.long	1483230225              @ 0x58684c11
	.long	3244367275              @ 0xc1611dab
	.long	3060149565              @ 0xb6662d3d
	.long	1994146192              @ 0x76dc4190
	.long	31158534                @ 0x1db7106
	.long	2563907772              @ 0x98d220bc
	.long	4023717930              @ 0xefd5102a
	.long	1907459465              @ 0x71b18589
	.long	112637215               @ 0x6b6b51f
	.long	2680153253              @ 0x9fbfe4a5
	.long	3904427059              @ 0xe8b8d433
	.long	2013776290              @ 0x7807c9a2
	.long	251722036               @ 0xf00f934
	.long	2517215374              @ 0x9609a88e
	.long	3775830040              @ 0xe10e9818
	.long	2137656763              @ 0x7f6a0dbb
	.long	141376813               @ 0x86d3d2d
	.long	2439277719              @ 0x91646c97
	.long	3865271297              @ 0xe6635c01
	.long	1802195444              @ 0x6b6b51f4
	.long	476864866               @ 0x1c6c6162
	.long	2238001368              @ 0x856530d8
	.long	4066508878              @ 0xf262004e
	.long	1812370925              @ 0x6c0695ed
	.long	453092731               @ 0x1b01a57b
	.long	2181625025              @ 0x8208f4c1
	.long	4111451223              @ 0xf50fc457
	.long	1706088902              @ 0x65b0d9c6
	.long	314042704               @ 0x12b7e950
	.long	2344532202              @ 0x8bbeb8ea
	.long	4240017532              @ 0xfcb9887c
	.long	1658658271              @ 0x62dd1ddf
	.long	366619977               @ 0x15da2d49
	.long	2362670323              @ 0x8cd37cf3
	.long	4224994405              @ 0xfbd44c65
	.long	1303535960              @ 0x4db26158
	.long	984961486               @ 0x3ab551ce
	.long	2747007092              @ 0xa3bc0074
	.long	3569037538              @ 0xd4bb30e2
	.long	1256170817              @ 0x4adfa541
	.long	1037604311              @ 0x3dd895d7
	.long	2765210733              @ 0xa4d1c46d
	.long	3554079995              @ 0xd3d6f4fb
	.long	1131014506              @ 0x4369e96a
	.long	879679996               @ 0x346ed9fc
	.long	2909243462              @ 0xad678846
	.long	3663771856              @ 0xda60b8d0
	.long	1141124467              @ 0x44042d73
	.long	855842277               @ 0x33031de5
	.long	2852801631              @ 0xaa0a4c5f
	.long	3708648649              @ 0xdd0d7cc9
	.long	1342533948              @ 0x5005713c
	.long	654459306               @ 0x270241aa
	.long	3188396048              @ 0xbe0b1010
	.long	3373015174              @ 0xc90c2086
	.long	1466479909              @ 0x5768b525
	.long	544179635               @ 0x206f85b3
	.long	3110523913              @ 0xb966d409
	.long	3462522015              @ 0xce61e49f
	.long	1591671054              @ 0x5edef90e
	.long	702138776               @ 0x29d9c998
	.long	2966460450              @ 0xb0d09822
	.long	3352799412              @ 0xc7d7a8b4
	.long	1504918807              @ 0x59b33d17
	.long	783551873               @ 0x2eb40d81
	.long	3082640443              @ 0xb7bd5c3b
	.long	3233442989              @ 0xc0ba6cad
	.long	3988292384              @ 0xedb88320
	.long	2596254646              @ 0x9abfb3b6
	.long	62317068                @ 0x3b6e20c
	.long	1957810842              @ 0x74b1d29a
	.long	3939845945              @ 0xead54739
	.long	2647816111              @ 0x9dd277af
	.long	81470997                @ 0x4db2615
	.long	1943803523              @ 0x73dc1683
	.long	3814918930              @ 0xe3630b12
	.long	2489596804              @ 0x94643b84
	.long	225274430               @ 0xd6d6a3e
	.long	2053790376              @ 0x7a6a5aa8
	.long	3826175755              @ 0xe40ecf0b
	.long	2466906013              @ 0x9309ff9d
	.long	167816743               @ 0xa00ae27
	.long	2097651377              @ 0x7d079eb1
	.long	4027552580              @ 0xf00f9344
	.long	2265490386              @ 0x8708a3d2
	.long	503444072               @ 0x1e01f268
	.long	1762050814              @ 0x6906c2fe
	.long	4150417245              @ 0xf762575d
	.long	2154129355              @ 0x806567cb
	.long	426522225               @ 0x196c3671
	.long	1852507879              @ 0x6e6b06e7
	.long	4275313526              @ 0xfed41b76
	.long	2312317920              @ 0x89d32be0
	.long	282753626               @ 0x10da7a5a
	.long	1742555852              @ 0x67dd4acc
	.long	4189708143              @ 0xf9b9df6f
	.long	2394877945              @ 0x8ebeeff9
	.long	397917763               @ 0x17b7be43
	.long	1622183637              @ 0x60b08ed5
	.long	3604390888              @ 0xd6d6a3e8
	.long	2714866558              @ 0xa1d1937e
	.long	953729732               @ 0x38d8c2c4
	.long	1340076626              @ 0x4fdff252
	.long	3518719985              @ 0xd1bb67f1
	.long	2797360999              @ 0xa6bc5767
	.long	1068828381              @ 0x3fb506dd
	.long	1219638859              @ 0x48b2364b
	.long	3624741850              @ 0xd80d2bda
	.long	2936675148              @ 0xaf0a1b4c
	.long	906185462               @ 0x36034af6
	.long	1090812512              @ 0x41047a60
	.long	3747672003              @ 0xdf60efc3
	.long	2825379669              @ 0xa867df55
	.long	829329135               @ 0x316e8eef
	.long	1181335161              @ 0x4669be79
	.long	3412177804              @ 0xcb61b38c
	.long	3160834842              @ 0xbc66831a
	.long	628085408               @ 0x256fd2a0
	.long	1382605366              @ 0x5268e236
	.long	3423369109              @ 0xcc0c7795
	.long	3138078467              @ 0xbb0b4703
	.long	570562233               @ 0x220216b9
	.long	1426400815              @ 0x5505262f
	.long	3317316542              @ 0xc5ba3bbe
	.long	2998733608              @ 0xb2bd0b28
	.long	733239954               @ 0x2bb45a92
	.long	1555261956              @ 0x5cb36a04
	.long	3268935591              @ 0xc2d7ffa7
	.long	3050360625              @ 0xb5d0cf31
	.long	752459403               @ 0x2cd99e8b
	.long	1541320221              @ 0x5bdeae1d
	.long	2607071920              @ 0x9b64c2b0
	.long	3965973030              @ 0xec63f226
	.long	1969922972              @ 0x756aa39c
	.long	40735498                @ 0x26d930a
	.long	2617837225              @ 0x9c0906a9
	.long	3943577151              @ 0xeb0e363f
	.long	1913087877              @ 0x72076785
	.long	83908371                @ 0x5005713
	.long	2512341634              @ 0x95bf4a82
	.long	3803740692              @ 0xe2b87a14
	.long	2075208622              @ 0x7bb12bae
	.long	213261112               @ 0xcb61b38
	.long	2463272603              @ 0x92d28e9b
	.long	3855990285              @ 0xe5d5be0d
	.long	2094854071              @ 0x7cdcefb7
	.long	198958881               @ 0xbdbdf21
	.long	2262029012              @ 0x86d3d2d4
	.long	4057260610              @ 0xf1d4e242
	.long	1759359992              @ 0x68ddb3f8
	.long	534414190               @ 0x1fda836e
	.long	2176718541              @ 0x81be16cd
	.long	4139329115              @ 0xf6b9265b
	.long	1873836001              @ 0x6fb077e1
	.long	414664567               @ 0x18b74777
	.long	2282248934              @ 0x88085ae6
	.long	4279200368              @ 0xff0f6a70
	.long	1711684554              @ 0x66063bca
	.long	285281116               @ 0x11010b5c
	.long	2405801727              @ 0x8f659eff
	.long	4167216745              @ 0xf862ae69
	.long	1634467795              @ 0x616bffd3
	.long	376229701               @ 0x166ccf45
	.long	2685067896              @ 0xa00ae278
	.long	3608007406              @ 0xd70dd2ee
	.long	1308918612              @ 0x4e048354
	.long	956543938               @ 0x3903b3c2
	.long	2808555105              @ 0xa7672661
	.long	3495958263              @ 0xd06016f7
	.long	1231636301              @ 0x4969474d
	.long	1047427035              @ 0x3e6e77db
	.long	2932959818              @ 0xaed16a4a
	.long	3654703836              @ 0xd9d65adc
	.long	1088359270              @ 0x40df0b66
	.long	936918000               @ 0x37d83bf0
	.long	2847714899              @ 0xa9bcae53
	.long	3736837829              @ 0xdebb9ec5
	.long	1202900863              @ 0x47b2cf7f
	.long	817233897               @ 0x30b5ffe9
	.long	3183342108              @ 0xbdbdf21c
	.long	3401237130              @ 0xcabac28a
	.long	1404277552              @ 0x53b39330
	.long	615818150               @ 0x24b4a3a6
	.long	3134207493              @ 0xbad03605
	.long	3453421203              @ 0xcdd70693
	.long	1423857449              @ 0x54de5729
	.long	601450431               @ 0x23d967bf
	.long	3009837614              @ 0xb3667a2e
	.long	3294710456              @ 0xc4614ab8
	.long	1567103746              @ 0x5d681b02
	.long	711928724               @ 0x2a6f2b94
	.long	3020668471              @ 0xb40bbe37
	.long	3272380065              @ 0xc30c8ea1
	.long	1510334235              @ 0x5a05df1b
	.long	755167117               @ 0x2d02ef8d
	.size	crc_32_tab, 1024

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"%08lX %7ld %s\n"
	.size	.L.str.1, 15


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
