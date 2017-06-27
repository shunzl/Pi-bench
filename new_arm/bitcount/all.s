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
	.globl	alloc_bit_array
	.p2align	2
	.type	alloc_bit_array,%function
	.code	32                      @ @alloc_bit_array
alloc_bit_array:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r1, #1
	movw	r2, #3
	movw	r3, #8
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	add	r0, r0, #8
	sub	r0, r0, #1
	str	r1, [sp, #4]            @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp]                @ 4-byte Spill
	bl	__udivsi3
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	calloc
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	alloc_bit_array, .Lfunc_end0-alloc_bit_array
	.cantunwind
	.fnend

	.globl	getbit
	.p2align	2
	.type	getbit,%function
	.code	32                      @ @getbit
getbit:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r2, #1
	movw	r3, #8
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	ldr	r0, [r11, #-8]
	mov	r1, r3
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r2, [sp, #8]            @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [r11, #-4]
	add	r0, r1, r0
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	ldrb	r0, [r0]
	ldr	r1, [r11, #-8]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #12]           @ 4-byte Reload
	bl	__modsi3
	ldr	r1, [sp, #8]            @ 4-byte Reload
	lsl	r0, r1, r0
	ldr	r2, [sp, #4]            @ 4-byte Reload
	and	r0, r2, r0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	getbit, .Lfunc_end1-getbit
	.cantunwind
	.fnend

	.globl	setbit
	.p2align	2
	.type	setbit,%function
	.code	32                      @ @setbit
setbit:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r3, #8
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r11, #-8]
	mov	r1, r3
	bl	__divsi3
	ldr	r1, [r11, #-4]
	add	r0, r1, r0
	str	r0, [r11, #-4]
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.LBB2_2
@ BB#1:
	movw	r0, #1
	movw	r1, #8
	ldr	r2, [r11, #-8]
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r2
	bl	__modsi3
	ldr	r1, [sp, #8]            @ 4-byte Reload
	lsl	r0, r1, r0
	ldr	r2, [r11, #-4]
	ldrb	lr, [r2]
	orr	r0, lr, r0
	strb	r0, [r2]
	b	.LBB2_3
.LBB2_2:
	mvn	r0, #0
	movw	r1, #1
	movw	r2, #8
	ldr	r3, [r11, #-8]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r3
	str	r1, [sp]                @ 4-byte Spill
	mov	r1, r2
	bl	__modsi3
	ldr	r1, [sp]                @ 4-byte Reload
	lsl	r0, r1, r0
	ldr	r2, [sp, #4]            @ 4-byte Reload
	eor	r0, r0, r2
	ldr	r3, [r11, #-4]
	ldrb	lr, [r3]
	and	r0, lr, r0
	strb	r0, [r3]
.LBB2_3:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	setbit, .Lfunc_end2-setbit
	.cantunwind
	.fnend

	.globl	flipbit
	.p2align	2
	.type	flipbit,%function
	.code	32                      @ @flipbit
flipbit:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r2, #1
	movw	r3, #8
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	mov	r1, r3
	str	r3, [sp, #4]            @ 4-byte Spill
	str	r2, [sp]                @ 4-byte Spill
	bl	__divsi3
	ldr	r1, [r11, #-4]
	add	r0, r1, r0
	str	r0, [r11, #-4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__modsi3
	ldr	r1, [sp]                @ 4-byte Reload
	lsl	r0, r1, r0
	ldr	r2, [r11, #-4]
	ldrb	r3, [r2]
	eor	r0, r3, r0
	strb	r0, [r2]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	flipbit, .Lfunc_end3-flipbit
	.cantunwind
	.fnend

	.globl	bit_count
	.p2align	2
	.type	bit_count,%function
	.code	32                      @ @bit_count
bit_count:
	.fnstart
@ BB#0:
	sub	sp, sp, #8
	movw	r1, #0
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.LBB4_5
@ BB#1:
	b	.LBB4_2
.LBB4_2:                                @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp]
	add	r0, r0, #1
	str	r0, [sp]
@ BB#3:                                 @   in Loop: Header=BB4_2 Depth=1
	movw	r0, #0
	ldr	r1, [sp, #4]
	ldr	r2, [sp, #4]
	sub	r2, r2, #1
	and	r1, r1, r2
	str	r1, [sp, #4]
	cmp	r0, r1
	bne	.LBB4_2
@ BB#4:
	b	.LBB4_5
.LBB4_5:
	ldr	r0, [sp]
	add	sp, sp, #8
	bx	lr
.Lfunc_end4:
	.size	bit_count, .Lfunc_end4-bit_count
	.cantunwind
	.fnend

	.globl	bitcount
	.p2align	2
	.type	bitcount,%function
	.code	32                      @ @bitcount
bitcount:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #44
	movw	r1, #65535
	movw	r2, #16
	ldr	r3, .LCPI5_0
	ldr	r12, .LCPI5_1
	movw	lr, #8
	ldr	r4, .LCPI5_2
	ldr	r5, .LCPI5_3
	movw	r6, #4
	ldr	r7, .LCPI5_4
	ldr	r8, .LCPI5_5
	movw	r9, #2
	ldr	r10, .LCPI5_6
	str	r0, [sp, #36]           @ 4-byte Spill
	ldr	r0, .LCPI5_7
	str	r0, [sp, #32]           @ 4-byte Spill
	movw	r0, #1
	str	r0, [sp, #28]           @ 4-byte Spill
	ldr	r0, .LCPI5_8
	str	r0, [sp, #24]           @ 4-byte Spill
	ldr	r0, [sp, #36]           @ 4-byte Reload
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	str	r1, [sp, #20]           @ 4-byte Spill
	ldr	r1, [sp, #24]           @ 4-byte Reload
	and	r0, r0, r1
	lsr	r0, r0, #1
	ldr	r1, [r11, #-32]
	str	r0, [sp, #16]           @ 4-byte Spill
	ldr	r0, [sp, #32]           @ 4-byte Reload
	and	r1, r1, r0
	ldr	r0, [sp, #16]           @ 4-byte Reload
	add	r0, r0, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	and	r0, r0, r10
	lsr	r0, r0, #2
	ldr	r1, [r11, #-32]
	and	r1, r1, r8
	add	r0, r0, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	and	r0, r0, r7
	lsr	r0, r0, #4
	ldr	r1, [r11, #-32]
	and	r1, r1, r5
	add	r0, r0, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	and	r0, r0, r4
	lsr	r0, r0, #8
	ldr	r1, [r11, #-32]
	and	r1, r1, r12
	add	r0, r0, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	and	r0, r0, r3
	lsr	r0, r0, #16
	ldr	r1, [r11, #-32]
	ldr	r3, [sp, #20]           @ 4-byte Reload
	and	r1, r1, r3
	add	r0, r0, r1
	str	r0, [r11, #-32]
	ldr	r0, [r11, #-32]
	str	r6, [sp, #12]           @ 4-byte Spill
	str	r9, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	str	lr, [sp]                @ 4-byte Spill
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	2
@ BB#1:
.LCPI5_0:
	.long	4294901760              @ 0xffff0000
.LCPI5_1:
	.long	16711935                @ 0xff00ff
.LCPI5_2:
	.long	4278255360              @ 0xff00ff00
.LCPI5_3:
	.long	252645135               @ 0xf0f0f0f
.LCPI5_4:
	.long	4042322160              @ 0xf0f0f0f0
.LCPI5_5:
	.long	858993459               @ 0x33333333
.LCPI5_6:
	.long	3435973836              @ 0xcccccccc
.LCPI5_7:
	.long	1431655765              @ 0x55555555
.LCPI5_8:
	.long	2863311530              @ 0xaaaaaaaa
.Lfunc_end5:
	.size	bitcount, .Lfunc_end5-bitcount
	.cantunwind
	.fnend

	.globl	ntbl_bitcount
	.p2align	2
	.type	ntbl_bitcount,%function
	.code	32                      @ @ntbl_bitcount
ntbl_bitcount:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #32
	movw	r1, :lower16:bits
	movt	r1, :upper16:bits
	movw	r2, #28
	movw	r3, #24
	movw	r12, #20
	movw	lr, #16
	movw	r4, #12
	movw	r5, #8
	movw	r6, #4
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	and	r0, r0, #15
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r7, [r11, #-20]
	and	r7, r7, #240
	lsr	r7, r7, #4
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #3840
	lsr	r7, r7, #8
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #61440
	lsr	r7, r7, #12
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #983040
	lsr	r7, r7, #16
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #15728640
	lsr	r7, r7, #20
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #251658240
	lsr	r7, r7, #24
	add	r7, r1, r7
	ldrb	r7, [r7]
	add	r0, r0, r7
	ldr	r7, [r11, #-20]
	and	r7, r7, #-268435456
	lsr	r7, r7, #28
	add	r1, r1, r7
	ldrb	r1, [r1]
	add	r0, r0, r1
	str	r6, [sp, #24]           @ 4-byte Spill
	str	r5, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	str	r3, [sp, #12]           @ 4-byte Spill
	str	r12, [sp, #8]           @ 4-byte Spill
	str	lr, [sp, #4]            @ 4-byte Spill
	str	r4, [sp]                @ 4-byte Spill
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end6:
	.size	ntbl_bitcount, .Lfunc_end6-ntbl_bitcount
	.cantunwind
	.fnend

	.globl	BW_btbl_bitcount
	.p2align	2
	.type	BW_btbl_bitcount,%function
	.code	32                      @ @BW_btbl_bitcount
BW_btbl_bitcount:
	.fnstart
@ BB#0:
	sub	sp, sp, #8
	movw	r1, :lower16:bits
	movt	r1, :upper16:bits
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	str	r0, [sp]
	ldrb	r0, [sp]
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldrb	r2, [sp, #1]
	add	r2, r1, r2
	ldrb	r2, [r2]
	add	r0, r0, r2
	ldrb	r2, [sp, #3]
	add	r2, r1, r2
	ldrb	r2, [r2]
	add	r0, r0, r2
	ldrb	r2, [sp, #2]
	add	r1, r1, r2
	ldrb	r1, [r1]
	add	r0, r0, r1
	add	sp, sp, #8
	bx	lr
.Lfunc_end7:
	.size	BW_btbl_bitcount, .Lfunc_end7-BW_btbl_bitcount
	.cantunwind
	.fnend

	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,%function
	.code	32                      @ @AR_btbl_bitcount
AR_btbl_bitcount:
	.fnstart
@ BB#0:
	sub	sp, sp, #12
	movw	r1, :lower16:bits
	movt	r1, :upper16:bits
	add	r2, sp, #8
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	ldr	r0, [sp, #4]
	add	r2, r0, #1
	str	r2, [sp, #4]
	ldrb	r0, [r0]
	add	r0, r1, r0
	ldrb	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp, #4]
	add	r2, r0, #1
	str	r2, [sp, #4]
	ldrb	r0, [r0]
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r2, [sp]
	add	r0, r2, r0
	str	r0, [sp]
	ldr	r0, [sp, #4]
	add	r2, r0, #1
	str	r2, [sp, #4]
	ldrb	r0, [r0]
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r2, [sp]
	add	r0, r2, r0
	str	r0, [sp]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0]
	add	r0, r1, r0
	ldrb	r0, [r0]
	ldr	r1, [sp]
	add	r0, r1, r0
	str	r0, [sp]
	ldr	r0, [sp]
	add	sp, sp, #12
	bx	lr
.Lfunc_end8:
	.size	AR_btbl_bitcount, .Lfunc_end8-AR_btbl_bitcount
	.cantunwind
	.fnend

	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,%function
	.code	32                      @ @ntbl_bitcnt
ntbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r1, #0
	movw	r2, #4
	movw	r3, :lower16:bits.1
	movt	r3, :upper16:bits.1
	str	r0, [r11, #-4]
	ldr	r0, [r11, #-4]
	and	r0, r0, #15
	add	r0, r3, r0
	ldrb	r0, [r0]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	asr	r0, r0, #4
	str	r0, [r11, #-4]
	cmp	r1, r0
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB9_2
@ BB#1:
	ldr	r0, [r11, #-4]
	bl	ntbl_bitcnt
	ldr	lr, [sp, #8]
	add	r0, lr, r0
	str	r0, [sp, #8]
.LBB9_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end9:
	.size	ntbl_bitcnt, .Lfunc_end9-ntbl_bitcnt
	.cantunwind
	.fnend

	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,%function
	.code	32                      @ @btbl_bitcnt
btbl_bitcnt:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r1, #0
	movw	r2, #8
	movw	r3, :lower16:bits.1
	movt	r3, :upper16:bits.1
	str	r0, [r11, #-4]
	ldrb	r0, [r11, #-4]
	and	r0, r0, #255
	add	r0, r3, r0
	ldrb	r0, [r0]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-4]
	asr	r0, r0, #8
	str	r0, [r11, #-4]
	cmp	r1, r0
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB10_2
@ BB#1:
	ldr	r0, [r11, #-4]
	bl	btbl_bitcnt
	ldr	lr, [sp, #8]
	add	r0, lr, r0
	str	r0, [sp, #8]
.LBB10_2:
	ldr	r0, [sp, #8]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end10:
	.size	btbl_bitcnt, .Lfunc_end10-btbl_bitcnt
	.cantunwind
	.fnend

	.globl	main
	.p2align	3
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #136
	vldr	d16, .LCPI11_0
	vldr	d17, .LCPI11_1
	movw	r2, #0
	str	r2, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	vstr	d17, [r11, #-40]
	vstr	d16, [r11, #-48]
	ldr	r0, [r11, #-8]
	cmp	r0, #2
	bge	.LBB11_2
@ BB#1:
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	mvn	r1, #0
	str	r0, [sp, #56]           @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB11_2:
	ldr	r0, [r11, #-12]
	ldr	r0, [r0, #4]
	bl	atoi
	movw	lr, :lower16:.L.str.8
	movt	lr, :upper16:.L.str.8
	str	r0, [sp, #60]
	mov	r0, lr
	bl	puts
	movw	lr, #0
	str	lr, [r11, #-52]
	str	r0, [sp, #52]           @ 4-byte Spill
.LBB11_3:                               @ =>This Loop Header: Depth=1
                                        @     Child Loop BB11_5 Depth 2
	ldr	r0, [r11, #-52]
	cmp	r0, #7
	bge	.LBB11_14
@ BB#4:                                 @   in Loop: Header=BB11_3 Depth=1
	bl	clock
	movw	lr, #0
	str	r0, [r11, #-16]
	str	lr, [sp, #68]
	str	lr, [r11, #-64]
	bl	rand
	str	r0, [sp, #64]
.LBB11_5:                               @   Parent Loop BB11_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [r11, #-64]
	ldr	r1, [sp, #60]
	cmp	r0, r1
	bge	.LBB11_8
@ BB#6:                                 @   in Loop: Header=BB11_5 Depth=2
	movw	r0, :lower16:main.pBitCntFunc
	movt	r0, :upper16:main.pBitCntFunc
	movw	r1, #2
	ldr	r2, [r11, #-52]
	movw	r3, :lower16:main.pBitCntFunc
	movt	r3, :upper16:main.pBitCntFunc
	add	r2, r3, r2, lsl #2
	ldr	r2, [r2]
	ldr	r3, [sp, #64]
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, r3
	str	r1, [sp, #44]           @ 4-byte Spill
	blx	r2
	ldr	r1, [sp, #68]
	add	r0, r1, r0
	str	r0, [sp, #68]
@ BB#7:                                 @   in Loop: Header=BB11_5 Depth=2
	ldr	r0, [r11, #-64]
	add	r0, r0, #1
	str	r0, [r11, #-64]
	ldr	r0, [sp, #64]
	add	r0, r0, #13
	str	r0, [sp, #64]
	b	.LBB11_5
.LBB11_8:                               @   in Loop: Header=BB11_3 Depth=1
	bl	clock
	vldr	d16, .LCPI11_2
	str	r0, [r11, #-20]
	ldr	r0, [r11, #-20]
	ldr	lr, [r11, #-16]
	sub	r0, r0, lr
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	vstr	d16, [r11, #-32]
	vldr	d16, [r11, #-32]
	vldr	d17, [r11, #-40]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	bpl	.LBB11_10
@ BB#9:                                 @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [r11, #-32]
	vstr	d16, [r11, #-40]
	ldr	r0, [r11, #-52]
	str	r0, [r11, #-56]
.LBB11_10:                              @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [r11, #-32]
	vldr	d17, [r11, #-48]
	vcmpe.f64	d16, d17
	vmrs	APSR_nzcv, fpscr
	ble	.LBB11_12
@ BB#11:                                @   in Loop: Header=BB11_3 Depth=1
	vldr	d16, [r11, #-32]
	vstr	d16, [r11, #-48]
	ldr	r0, [r11, #-52]
	str	r0, [r11, #-60]
.LBB11_12:                              @   in Loop: Header=BB11_3 Depth=1
	movw	r0, :lower16:.L.str.9
	movt	r0, :upper16:.L.str.9
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [r11, #-52]
	movw	r12, :lower16:main.text
	movt	r12, :upper16:main.text
	add	r3, r12, r3, lsl #2
	ldr	r3, [r3]
	vldr	d16, [r11, #-32]
	ldr	r12, [sp, #68]
	str	r1, [sp, #40]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #36]           @ 4-byte Spill
	vmov	r2, r3, d16
	str	r12, [sp]
	bl	printf
	str	r0, [sp, #32]           @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB11_3 Depth=1
	ldr	r0, [r11, #-52]
	add	r0, r0, #1
	str	r0, [r11, #-52]
	b	.LBB11_3
.LBB11_14:
	movw	r0, :lower16:.L.str.11
	movt	r0, :upper16:.L.str.11
	movw	r1, :lower16:main.text
	movt	r1, :upper16:main.text
	movw	r2, #2
	ldr	r3, [r11, #-56]
	movw	r12, :lower16:main.text
	movt	r12, :upper16:main.text
	ldr	r3, [r12, r3, lsl #2]
	movw	lr, :lower16:.L.str.10
	movt	lr, :upper16:.L.str.10
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, lr
	str	r1, [sp, #24]           @ 4-byte Spill
	mov	r1, r3
	str	r12, [sp, #20]          @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	bl	printf
	ldr	r1, [r11, #-60]
	ldr	r2, [sp, #20]           @ 4-byte Reload
	add	r1, r2, r1, lsl #2
	ldr	r1, [r1]
	ldr	r3, [sp, #28]           @ 4-byte Reload
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r3
	bl	printf
	movw	r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	mov	sp, r11
	pop	{r11, pc}
	.p2align	3
@ BB#15:
.LCPI11_0:
	.long	0                       @ double 0
	.long	0
.LCPI11_1:
	.long	4294967295              @ double 1.7976931348623157E+308
	.long	2146435071
.LCPI11_2:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cantunwind
	.fnend

	.p2align	2
	.type	bit_shifter,%function
	.code	32                      @ @bit_shifter
bit_shifter:
	.fnstart
@ BB#0:
	sub	sp, sp, #20
	movw	r1, #0
	str	r0, [sp, #16]
	str	r1, [sp, #8]
	str	r1, [sp, #12]
.LBB12_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	ldr	r1, [sp, #16]
	cmp	r1, #0
	str	r0, [sp, #4]            @ 4-byte Spill
	beq	.LBB12_3
@ BB#2:                                 @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #12]
	cmp	r0, #32
	movw	r0, #0
	movlo	r0, #1
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB12_3:                               @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB12_6
@ BB#4:                                 @   in Loop: Header=BB12_1 Depth=1
	ldr	r0, [sp, #16]
	and	r0, r0, #1
	ldr	r1, [sp, #8]
	add	r0, r1, r0
	str	r0, [sp, #8]
@ BB#5:                                 @   in Loop: Header=BB12_1 Depth=1
	movw	r0, #1
	ldr	r1, [sp, #12]
	add	r1, r1, #1
	str	r1, [sp, #12]
	ldr	r1, [sp, #16]
	asr	r1, r1, #1
	str	r1, [sp, #16]
	str	r0, [sp]                @ 4-byte Spill
	b	.LBB12_1
.LBB12_6:
	ldr	r0, [sp, #8]
	add	sp, sp, #20
	bx	lr
.Lfunc_end12:
	.size	bit_shifter, .Lfunc_end12-bit_shifter
	.cantunwind
	.fnend

	.globl	bfopen
	.p2align	2
	.type	bfopen,%function
	.code	32                      @ @bfopen
bfopen:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r2, #8
	str	r0, [sp, #8]
	str	r1, [sp, #4]
	mov	r0, r2
	bl	malloc
	movw	r1, #0
	str	r0, [sp]
	ldr	r0, [sp]
	cmp	r1, r0
	bne	.LBB13_2
@ BB#1:
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB13_5
.LBB13_2:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	bl	fopen
	movw	r1, #0
	ldr	lr, [sp]
	str	r0, [lr]
	ldr	r0, [sp]
	ldr	r0, [r0]
	cmp	r1, r0
	bne	.LBB13_4
@ BB#3:
	ldr	r0, [sp]
	bl	free
	movw	r0, #0
	str	r0, [r11, #-4]
	b	.LBB13_5
.LBB13_4:
	movw	r0, #0
	ldr	r1, [sp]
	strb	r0, [r1, #5]
	ldr	r1, [sp]
	strb	r0, [r1, #7]
	ldr	r0, [sp]
	str	r0, [r11, #-4]
.LBB13_5:
	ldr	r0, [r11, #-4]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end13:
	.size	bfopen, .Lfunc_end13-bfopen
	.cantunwind
	.fnend

	.globl	bfread
	.p2align	2
	.type	bfread,%function
	.code	32                      @ @bfread
bfread:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	movw	r1, #0
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldrb	r0, [r0, #5]
	cmp	r1, r0
	bne	.LBB14_2
@ BB#1:
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	bl	fgetc
	movw	lr, #8
	ldr	r1, [sp, #4]
	strb	r0, [r1, #4]
	ldr	r0, [sp, #4]
	strb	lr, [r0, #5]
.LBB14_2:
	movw	r0, #1
	movw	r1, #255
	ldr	r2, [sp, #4]
	ldrb	r3, [r2, #5]
	add	r1, r3, r1
	strb	r1, [r2, #5]
	ldr	r1, [sp, #4]
	ldrb	r1, [r1, #4]
	ldr	r2, [sp, #4]
	ldrb	r2, [r2, #5]
	lsl	r0, r0, r2
	and	r0, r1, r0
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	and	r0, r0, #1
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end14:
	.size	bfread, .Lfunc_end14-bfread
	.cantunwind
	.fnend

	.globl	bfwrite
	.p2align	2
	.type	bfwrite,%function
	.code	32                      @ @bfwrite
bfwrite:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r2, #8
	str	r0, [r11, #-4]
	str	r1, [sp, #8]
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #7]
	cmp	r2, r0
	bne	.LBB15_2
@ BB#1:
	ldr	r0, [sp, #8]
	ldrb	r0, [r0, #6]
	ldr	r1, [sp, #8]
	ldr	r1, [r1]
	bl	fputc
	movw	r1, #0
	ldr	lr, [sp, #8]
	strb	r1, [lr, #7]
	str	r0, [sp, #4]            @ 4-byte Spill
.LBB15_2:
	movw	r0, #1
	movw	r1, #1
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #7]
	add	r1, r3, r1
	strb	r1, [r2, #7]
	ldr	r1, [sp, #8]
	ldrb	r2, [r1, #6]
	lsl	r2, r2, #1
	strb	r2, [r1, #6]
	ldr	r1, [r11, #-4]
	and	r1, r1, #1
	ldr	r2, [sp, #8]
	ldrb	r3, [r2, #6]
	orr	r1, r3, r1
	strb	r1, [r2, #6]
	str	r0, [sp]                @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end15:
	.size	bfwrite, .Lfunc_end15-bfwrite
	.cantunwind
	.fnend

	.globl	bfclose
	.p2align	2
	.type	bfclose,%function
	.code	32                      @ @bfclose
bfclose:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #8
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r0, [r0]
	bl	fclose
	ldr	lr, [sp, #4]
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, lr
	bl	free
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end16:
	.size	bfclose, .Lfunc_end16-bfclose
	.cantunwind
	.fnend

	.globl	bitstring
	.p2align	2
	.type	bitstring,%function
	.code	32                      @ @bitstring
bitstring:
	.fnstart
@ BB#0:
	push	{r4, r10, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #40
	movw	r12, #0
	movw	lr, #4
	movw	r4, #2
	str	r0, [r11, #-12]
	str	r1, [r11, #-16]
	str	r2, [r11, #-20]
	str	r3, [sp, #24]
	ldr	r0, [sp, #24]
	ldr	r1, [r11, #-20]
	ldr	r2, [r11, #-20]
	asr	r2, r2, #2
	add	r1, r1, r2
	ldr	r2, [r11, #-20]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #8]            @ 4-byte Spill
	mov	r1, lr
	str	r12, [sp, #4]           @ 4-byte Spill
	str	r4, [sp]                @ 4-byte Spill
	bl	__modsi3
	cmp	r0, #0
	movw	r0, #0
	movne	r0, #1
	tst	r0, #1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	moveq	r0, #1
	ldr	r1, [sp, #8]            @ 4-byte Reload
	sub	r0, r1, r0
	ldr	r1, [sp, #12]           @ 4-byte Reload
	sub	r0, r1, r0
	str	r0, [sp, #16]
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #20]
.LBB17_1:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #16]
	cmp	r0, r1
	bge	.LBB17_4
@ BB#2:                                 @   in Loop: Header=BB17_1 Depth=1
	movw	r0, #32
	ldr	r1, [r11, #-12]
	add	r2, r1, #1
	str	r2, [r11, #-12]
	strb	r0, [r1]
@ BB#3:                                 @   in Loop: Header=BB17_1 Depth=1
	ldr	r0, [sp, #20]
	add	r0, r0, #1
	str	r0, [sp, #20]
	b	.LBB17_1
.LBB17_4:
	b	.LBB17_5
.LBB17_5:                               @ =>This Inner Loop Header: Depth=1
	mvn	r0, #0
	ldr	r1, [r11, #-20]
	add	r0, r1, r0
	str	r0, [r11, #-20]
	cmp	r0, #0
	blt	.LBB17_10
@ BB#6:                                 @   in Loop: Header=BB17_5 Depth=1
	movw	r1, #4
	ldr	r0, [r11, #-16]
	ldr	r2, [r11, #-20]
	asr	r0, r0, r2
	and	r0, r0, #1
	add	r0, r0, #48
	ldr	r2, [r11, #-12]
	add	r3, r2, #1
	str	r3, [r11, #-12]
	strb	r0, [r2]
	ldr	r0, [r11, #-20]
	bl	__modsi3
	cmp	r0, #0
	bne	.LBB17_9
@ BB#7:                                 @   in Loop: Header=BB17_5 Depth=1
	ldr	r0, [r11, #-20]
	cmp	r0, #0
	beq	.LBB17_9
@ BB#8:                                 @   in Loop: Header=BB17_5 Depth=1
	movw	r0, #32
	ldr	r1, [r11, #-12]
	add	r2, r1, #1
	str	r2, [r11, #-12]
	strb	r0, [r1]
.LBB17_9:                               @   in Loop: Header=BB17_5 Depth=1
	b	.LBB17_5
.LBB17_10:
	movw	r0, #0
	ldr	r1, [r11, #-12]
	strb	r0, [r1]
	sub	sp, r11, #8
	pop	{r4, r10, r11, pc}
.Lfunc_end17:
	.size	bitstring, .Lfunc_end17-bitstring
	.cantunwind
	.fnend

	.globl	bstr_i
	.p2align	2
	.type	bstr_i,%function
	.code	32                      @ @bstr_i
bstr_i:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r1, #0
	str	r0, [r11, #-4]
	str	r1, [sp, #12]
.LBB18_1:                               @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	movw	r1, #0
	ldr	r2, [r11, #-4]
	cmp	r2, r1
	str	r0, [sp, #8]            @ 4-byte Spill
	beq	.LBB18_4
@ BB#2:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, #0
	ldr	r1, [r11, #-4]
	ldrb	r1, [r1]
	cmp	r1, #0
	str	r0, [sp, #8]            @ 4-byte Spill
	beq	.LBB18_4
@ BB#3:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, :lower16:.L.str.12
	movt	r0, :upper16:.L.str.12
	ldr	r1, [r11, #-4]
	ldrb	r1, [r1]
	bl	strchr
	movw	r1, #0
	cmp	r0, r1
	movw	r0, #0
	movne	r0, #1
	str	r0, [sp, #8]            @ 4-byte Spill
.LBB18_4:                               @   in Loop: Header=BB18_1 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	tst	r0, #1
	beq	.LBB18_6
@ BB#5:                                 @   in Loop: Header=BB18_1 Depth=1
	movw	r0, #1
	ldr	r1, [r11, #-4]
	add	r2, r1, #1
	str	r2, [r11, #-4]
	ldrb	r1, [r1]
	sub	r1, r1, #48
	str	r1, [r11, #-8]
	ldr	r1, [sp, #12]
	lsl	r1, r1, #1
	str	r1, [sp, #12]
	ldr	r1, [r11, #-8]
	and	r1, r1, #1
	ldr	r2, [sp, #12]
	orr	r1, r2, r1
	str	r1, [sp, #12]
	str	r0, [sp, #4]            @ 4-byte Spill
	b	.LBB18_1
.LBB18_6:
	ldr	r0, [sp, #12]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end18:
	.size	bstr_i, .Lfunc_end18-bstr_i
	.cantunwind
	.fnend

	.type	bits,%object            @ @bits
	.data
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,%object          @ @bits.1
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,%object        @ @.str.7
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.7:
	.asciz	"Usage: bitcnts <iterations>\n"
	.size	.L.str.7, 29

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"Bit counter algorithm benchmark\n"
	.size	.L.str.8, 33

	.type	main.pBitCntFunc,%object @ @main.pBitCntFunc
	.data
	.p2align	2
main.pBitCntFunc:
	.long	bit_count
	.long	bitcount
	.long	ntbl_bitcnt
	.long	ntbl_bitcount
	.long	BW_btbl_bitcount
	.long	AR_btbl_bitcount
	.long	bit_shifter
	.size	main.pBitCntFunc, 28

	.type	main.text,%object       @ @main.text
	.p2align	2
main.text:
	.long	.L.str
	.long	.L.str.1
	.long	.L.str.2
	.long	.L.str.3
	.long	.L.str.4
	.long	.L.str.5
	.long	.L.str.6
	.size	main.text, 28

	.type	.L.str.9,%object        @ @.str.9
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str.9:
	.asciz	"%-38s> Time: %7.3f sec.; Bits: %ld\n"
	.size	.L.str.9, 36

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"\nBest  > %s\n"
	.size	.L.str.10, 13

	.type	.L.str.11,%object       @ @.str.11
.L.str.11:
	.asciz	"Worst > %s\n"
	.size	.L.str.11, 12

	.type	.L.str,%object          @ @.str
.L.str:
	.asciz	"Optimized 1 bit/loop counter"
	.size	.L.str, 29

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Ratko's mystery algorithm"
	.size	.L.str.1, 26

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Recursive bit count by nybbles"
	.size	.L.str.2, 31

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Non-recursive bit count by nybbles"
	.size	.L.str.3, 35

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Non-recursive bit count by bytes (BW)"
	.size	.L.str.4, 38

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"Non-recursive bit count by bytes (AR)"
	.size	.L.str.5, 38

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Shift and count bits"
	.size	.L.str.6, 21

	.type	.L.str.12,%object       @ @.str.12
.L.str.12:
	.asciz	"01"
	.size	.L.str.12, 3


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
