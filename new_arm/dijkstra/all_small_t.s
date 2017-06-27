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
	.globl	print_path
	.p2align	2
	.type	print_path,%function
	.code	32                      @ @print_path
print_path:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #56
	bfc	sp, #0, #4
	movw	r2, #9999
	movw	r3, #3
	str	r0, [sp, #52]
	str	r1, [sp, #28]
	ldr	r0, [sp, #52]
	mov	r12, r1
	add	r0, r0, r1, lsl #3
	ldr	r0, [r0, #4]
	cmp	r0, r2
	str	r3, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	beq	.LBB0_2
@ BB#1:
	movw	r0, #3
	ldr	r1, [sp, #52]
	mov	r2, r1
	ldr	r3, [sp, #28]
	add	r1, r1, r3, lsl #3
	ldr	r1, [r1, #4]
	str	r0, [sp, #16]           @ 4-byte Spill
	mov	r0, r2
	bl	print_path
.LBB0_2:
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	ldr	r1, [sp, #28]
	bl	printf
	movw	r1, :lower16:stdout
	movt	r1, :upper16:stdout
	ldr	r1, [r1]
	str	r0, [sp, #12]           @ 4-byte Spill
	mov	r0, r1
	bl	fflush
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path
	.cantunwind
	.fnend

	.globl	enqueue
	.p2align	2
	.type	enqueue,%function
	.code	32                      @ @enqueue
enqueue:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #104
	bfc	sp, #0, #4
	movw	r3, #16
	str	r0, [sp, #76]
	str	r1, [sp, #44]
	str	r2, [sp, #12]
	mov	r0, r3
	bl	malloc
	movw	r1, #0
	movw	r2, :lower16:qHead
	movt	r2, :upper16:qHead
	str	r0, [sp, #8]
	ldr	r0, [r2]
	str	r0, [sp, #4]
	ldr	r0, [sp, #8]
	cmp	r0, r1
	bne	.LBB1_2
@ BB#1:
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, #1
	str	r0, [sp]                @ 4-byte Spill
	mov	r0, r1
	bl	exit
.LBB1_2:
	movw	r0, #0
	ldr	r1, [sp, #76]
	ldr	r2, [sp, #8]
	str	r1, [r2]
	ldr	r1, [sp, #44]
	ldr	r2, [sp, #8]
	str	r1, [r2, #4]
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	str	r1, [r2, #8]
	ldr	r1, [sp, #8]
	str	r0, [r1, #12]
	ldr	r1, [sp, #4]
	cmp	r1, r0
	bne	.LBB1_4
@ BB#3:
	movw	r0, :lower16:qHead
	movt	r0, :upper16:qHead
	ldr	r1, [sp, #8]
	str	r1, [r0]
	b	.LBB1_8
.LBB1_4:
	b	.LBB1_5
.LBB1_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #0
	ldr	r1, [sp, #4]
	ldr	r1, [r1, #12]
	cmp	r1, r0
	beq	.LBB1_7
@ BB#6:                                 @   in Loop: Header=BB1_5 Depth=1
	ldr	r0, [sp, #4]
	ldr	r0, [r0, #12]
	str	r0, [sp, #4]
	b	.LBB1_5
.LBB1_7:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	str	r0, [r1, #12]
.LBB1_8:
	movw	r0, :lower16:g_qCount
	movt	r0, :upper16:g_qCount
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end1:
	.size	enqueue, .Lfunc_end1-enqueue
	.cantunwind
	.fnend

	.globl	dequeue
	.p2align	2
	.type	dequeue,%function
	.code	32                      @ @dequeue
dequeue:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #24
	movw	r3, #0
	movw	r12, :lower16:qHead
	movt	r12, :upper16:qHead
	str	r0, [r11, #-4]
	str	r1, [r11, #-8]
	str	r2, [sp, #12]
	ldr	r0, [r12]
	str	r0, [sp, #8]
	ldr	r0, [r12]
	cmp	r0, r3
	beq	.LBB2_2
@ BB#1:
	movw	r0, :lower16:free
	movt	r0, :upper16:free
	movw	r1, :lower16:qHead
	movt	r1, :upper16:qHead
	ldr	r2, [r1]
	ldr	r2, [r2]
	ldr	r3, [r11, #-4]
	str	r2, [r3]
	ldr	r2, [r1]
	ldr	r2, [r2, #4]
	ldr	r3, [r11, #-8]
	str	r2, [r3]
	ldr	r2, [r1]
	ldr	r2, [r2, #8]
	ldr	r3, [sp, #12]
	str	r2, [r3]
	ldr	r2, [r1]
	ldr	r2, [r2, #12]
	str	r2, [r1]
	ldr	r1, [sp, #8]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	ldr	r1, [sp, #4]            @ 4-byte Reload
	blx	r1
	movw	r1, :lower16:g_qCount
	movt	r1, :upper16:g_qCount
	mvn	r2, #0
	ldr	r3, [r1]
	add	r2, r3, r2
	str	r2, [r1]
	str	r0, [sp]                @ 4-byte Spill
.LBB2_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end2:
	.size	dequeue, .Lfunc_end2-dequeue
	.cantunwind
	.fnend

	.globl	qcount
	.p2align	2
	.type	qcount,%function
	.code	32                      @ @qcount
qcount:
	.fnstart
@ BB#0:
	movw	r0, :lower16:g_qCount
	movt	r0, :upper16:g_qCount
	ldr	r0, [r0]
	bx	lr
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount
	.cantunwind
	.fnend

	.globl	dijkstra
	.p2align	2
	.type	dijkstra,%function
	.code	32                      @ @dijkstra
dijkstra:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r11, lr}
	add	r11, sp, #16
	sub	sp, sp, #232
	bfc	sp, #0, #4
	movw	r2, #0
	movw	r3, :lower16:ch
	movt	r3, :upper16:ch
	str	r0, [sp, #108]
	str	r1, [sp, #76]
	str	r2, [r3]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:ch
	movt	r0, :upper16:ch
	ldr	r0, [r0]
	cmp	r0, #100
	bge	.LBB4_4
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, #9999
	movw	r1, :lower16:rgnNodes
	movt	r1, :upper16:rgnNodes
	movw	r2, #3
	movw	r3, :lower16:ch
	movt	r3, :upper16:ch
	ldr	r12, [r3]
	movw	lr, :lower16:rgnNodes
	movt	lr, :upper16:rgnNodes
	movw	r4, #9999
	str	r4, [lr, r12, lsl #3]
	ldr	r3, [r3]
	add	r3, lr, r3, lsl #3
	str	r0, [r3, #4]
	str	r2, [sp, #72]           @ 4-byte Spill
	str	r1, [sp, #68]           @ 4-byte Spill
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	movw	r0, :lower16:ch
	movt	r0, :upper16:ch
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	b	.LBB4_1
.LBB4_4:
	ldr	r0, [sp, #108]
	ldr	r1, [sp, #76]
	cmp	r0, r1
	bne	.LBB4_6
@ BB#5:
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	bl	printf
	str	r0, [sp, #64]           @ 4-byte Spill
	b	.LBB4_19
.LBB4_6:
	movw	r1, #0
	movw	r0, #9999
	movw	r2, :lower16:rgnNodes
	movt	r2, :upper16:rgnNodes
	movw	r3, #3
	ldr	r12, [sp, #108]
	movw	lr, :lower16:rgnNodes
	movt	lr, :upper16:rgnNodes
	mov	r4, #0
	str	r4, [lr, r12, lsl #3]
	ldr	r12, [sp, #108]
	add	r12, lr, r12, lsl #3
	str	r0, [r12, #4]
	ldr	r12, [sp, #108]
	str	r0, [sp, #60]           @ 4-byte Spill
	mov	r0, r12
	ldr	r12, [sp, #60]          @ 4-byte Reload
	str	r2, [sp, #56]           @ 4-byte Spill
	mov	r2, r12
	str	r3, [sp, #52]           @ 4-byte Spill
	bl	enqueue
.LBB4_7:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB4_9 Depth 2
	bl	qcount
	cmp	r0, #0
	ble	.LBB4_18
@ BB#8:                                 @   in Loop: Header=BB4_7 Depth=1
	movw	r0, :lower16:iNode
	movt	r0, :upper16:iNode
	movw	r1, :lower16:iDist
	movt	r1, :upper16:iDist
	movw	r2, :lower16:iPrev
	movt	r2, :upper16:iPrev
	bl	dequeue
	movw	r0, #0
	movw	r1, :lower16:i
	movt	r1, :upper16:i
	str	r0, [r1]
.LBB4_9:                                @   Parent Loop BB4_7 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	movw	r0, :lower16:i
	movt	r0, :upper16:i
	ldr	r0, [r0]
	cmp	r0, #100
	bge	.LBB4_17
@ BB#10:                                @   in Loop: Header=BB4_9 Depth=2
	movw	r0, #9999
	movw	r1, :lower16:iCost
	movt	r1, :upper16:iCost
	movw	r2, #2
	movw	r3, :lower16:iNode
	movt	r3, :upper16:iNode
	ldr	r3, [r3]
	movw	r12, :lower16:AdjMatrix
	movt	r12, :upper16:AdjMatrix
	mov	lr, #400
	mla	r3, r3, lr, r12
	mov	r12, r3
	movw	lr, :lower16:i
	movt	lr, :upper16:i
	ldr	lr, [lr]
	add	r3, r3, lr, lsl #2
	ldr	r3, [r3]
	str	r3, [r1]
	cmp	r3, r0
	str	r2, [sp, #48]           @ 4-byte Spill
	str	r12, [sp, #44]          @ 4-byte Spill
	beq	.LBB4_15
@ BB#11:                                @   in Loop: Header=BB4_9 Depth=2
	movw	r0, #9999
	movw	r1, :lower16:rgnNodes
	movt	r1, :upper16:rgnNodes
	movw	r2, #3
	movw	r3, :lower16:i
	movt	r3, :upper16:i
	ldr	r3, [r3]
	movw	r12, :lower16:rgnNodes
	movt	r12, :upper16:rgnNodes
	add	r3, r12, r3, lsl #3
	ldr	r3, [r3]
	cmp	r0, r3
	str	r2, [sp, #40]           @ 4-byte Spill
	str	r1, [sp, #36]           @ 4-byte Spill
	beq	.LBB4_13
@ BB#12:                                @   in Loop: Header=BB4_9 Depth=2
	movw	r0, :lower16:iDist
	movt	r0, :upper16:iDist
	movw	r1, :lower16:iCost
	movt	r1, :upper16:iCost
	movw	r2, :lower16:rgnNodes
	movt	r2, :upper16:rgnNodes
	movw	r3, #3
	movw	r12, :lower16:i
	movt	r12, :upper16:i
	ldr	r12, [r12]
	movw	lr, :lower16:rgnNodes
	movt	lr, :upper16:rgnNodes
	add	r12, lr, r12, lsl #3
	ldr	r12, [r12]
	ldr	r1, [r1]
	ldr	r0, [r0]
	add	r0, r1, r0
	cmp	r12, r0
	str	r3, [sp, #32]           @ 4-byte Spill
	str	r2, [sp, #28]           @ 4-byte Spill
	ble	.LBB4_14
.LBB4_13:                               @   in Loop: Header=BB4_9 Depth=2
	movw	r0, :lower16:iNode
	movt	r0, :upper16:iNode
	movw	r1, :lower16:iCost
	movt	r1, :upper16:iCost
	movw	r2, :lower16:iDist
	movt	r2, :upper16:iDist
	movw	r3, :lower16:i
	movt	r3, :upper16:i
	movw	r12, :lower16:rgnNodes
	movt	r12, :upper16:rgnNodes
	movw	lr, #3
	movw	r4, :lower16:iDist
	movt	r4, :upper16:iDist
	ldr	r4, [r4]
	movw	r5, :lower16:iCost
	movt	r5, :upper16:iCost
	ldr	r5, [r5]
	add	r4, r4, r5
	movw	r5, :lower16:i
	movt	r5, :upper16:i
	ldr	r6, [r5]
	movw	r7, :lower16:rgnNodes
	movt	r7, :upper16:rgnNodes
	str	r4, [r7, r6, lsl #3]
	movw	r4, :lower16:iNode
	movt	r4, :upper16:iNode
	ldr	r4, [r4]
	ldr	r5, [r5]
	add	r5, r7, r5, lsl #3
	str	r4, [r5, #4]
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r1, [r1]
	add	r1, r2, r1
	ldr	r2, [r0]
	mov	r0, r3
	str	lr, [sp, #24]           @ 4-byte Spill
	str	r12, [sp, #20]          @ 4-byte Spill
	bl	enqueue
.LBB4_14:                               @   in Loop: Header=BB4_9 Depth=2
	b	.LBB4_15
.LBB4_15:                               @   in Loop: Header=BB4_9 Depth=2
	b	.LBB4_16
.LBB4_16:                               @   in Loop: Header=BB4_9 Depth=2
	movw	r0, :lower16:i
	movt	r0, :upper16:i
	ldr	r1, [r0]
	add	r1, r1, #1
	str	r1, [r0]
	b	.LBB4_9
.LBB4_17:                               @   in Loop: Header=BB4_7 Depth=1
	b	.LBB4_7
.LBB4_18:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	movw	r1, :lower16:rgnNodes
	movt	r1, :upper16:rgnNodes
	movw	r2, #3
	ldr	r3, [sp, #76]
	movw	r12, :lower16:rgnNodes
	movt	r12, :upper16:rgnNodes
	add	r3, r12, r3, lsl #3
	ldr	r3, [r3]
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	str	r2, [sp, #12]           @ 4-byte Spill
	bl	printf
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:rgnNodes
	movt	r1, :upper16:rgnNodes
	ldr	r2, [sp, #76]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	print_path
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	bl	printf
	str	r0, [sp]                @ 4-byte Spill
.LBB4_19:
	ldr	r0, [sp, #140]
	sub	sp, r11, #16
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra
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
	sub	sp, sp, #312
	bfc	sp, #0, #4
	movw	r2, #0
	vmov.i32	q8, #0x0
	add	r3, sp, #224
	vst1.64	{d16, d17}, [r3]
	str	r2, [sp, #220]
	str	r0, [sp, #188]
	str	r1, [sp, #184]
	ldr	r0, [sp, #188]
	cmp	r0, #2
	bge	.LBB5_2
@ BB#1:
	movw	r1, :lower16:.L.str.6
	movt	r1, :upper16:.L.str.6
	movw	r0, :lower16:stderr
	movt	r0, :upper16:stderr
	ldr	r0, [r0]
	bl	fprintf
	movw	r1, :lower16:.L.str.7
	movt	r1, :upper16:.L.str.7
	movw	lr, :lower16:stderr
	movt	lr, :upper16:stderr
	ldr	lr, [lr]
	str	r0, [sp, #84]           @ 4-byte Spill
	mov	r0, lr
	bl	fprintf
	str	r0, [sp, #80]           @ 4-byte Spill
.LBB5_2:
	movw	r0, #0
	ldr	r1, [sp, #184]
	ldr	r1, [r1, #4]
	movw	r2, :lower16:.L.str.8
	movt	r2, :upper16:.L.str.8
	str	r0, [sp, #76]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	bl	fopen
	str	r0, [sp, #88]
	vmov.i32	q8, #0x0
	add	r0, sp, #160
	vst1.64	{d16, d17}, [r0]
	ldr	r0, [sp, #76]           @ 4-byte Reload
	str	r0, [sp, #156]
.LBB5_3:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB5_5 Depth 2
	ldr	r0, [sp, #156]
	cmp	r0, #100
	bge	.LBB5_10
@ BB#4:                                 @   in Loop: Header=BB5_3 Depth=1
	movw	r0, #0
	vmov.i32	q8, #0x0
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #124]
.LBB5_5:                                @   Parent Loop BB5_3 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	ldr	r0, [sp, #124]
	cmp	r0, #100
	bge	.LBB5_8
@ BB#6:                                 @   in Loop: Header=BB5_5 Depth=2
	movw	r0, #2
	ldr	r1, [sp, #88]
	movw	r2, :lower16:.L.str.9
	movt	r2, :upper16:.L.str.9
	add	r3, sp, #92
	str	r0, [sp, #72]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	fscanf
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #156]
	movw	r3, :lower16:AdjMatrix
	movt	r3, :upper16:AdjMatrix
	mov	lr, #400
	mla	r2, r2, lr, r3
	mov	r3, r2
	ldr	lr, [sp, #124]
	add	r2, r2, lr, lsl #2
	str	r1, [r2]
	str	r0, [sp, #68]           @ 4-byte Spill
	str	r3, [sp, #64]           @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB5_5 Depth=2
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
	add	lr, sp, #48
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_5
.LBB5_8:                                @   in Loop: Header=BB5_3 Depth=1
	b	.LBB5_9
.LBB5_9:                                @   in Loop: Header=BB5_3 Depth=1
	ldr	r0, [sp, #156]
	vdup.32	q8, r0
	add	r1, sp, #160
	vst1.64	{d16, d17}, [r1:128]
	vmov.i32	q9, #0x1
	vadd.i32	q8, q8, q9
	vorr	q9, q8, q8
	vst1.64	{d16, d17}, [r1]
	add	r0, r0, #1
	str	r0, [sp, #156]
	add	lr, sp, #32
	vst1.64	{d18, d19}, [lr:128]    @ 16-byte Spill
	b	.LBB5_3
.LBB5_10:
	movw	r0, #50
	vmov.i32	q8, #0x0
	add	r1, sp, #160
	vst1.64	{d16, d17}, [r1]
	mov	r1, #0
	str	r1, [sp, #156]
	vmov.i32	q8, #0x32
	add	r1, sp, #128
	vst1.64	{d16, d17}, [r1]
	str	r0, [sp, #124]
.LBB5_11:                               @ =>This Inner Loop Header: Depth=1
	ldr	r0, [sp, #156]
	cmp	r0, #20
	bge	.LBB5_24
@ BB#12:                                @   in Loop: Header=BB5_11 Depth=1
	movw	r1, #100
	ldr	r0, [sp, #124]
	add	r2, sp, #128
	vld1.64	{d16, d17}, [r2:128]
	vmov.f64	d18, d16
	vmov.32	r3, d18[1]
	movw	r12, #34079
	movt	r12, #20971
	smmul	lr, r3, r12
	asr	r4, lr, #5
	add	lr, r4, lr, lsr #31
	mov	r4, #100
	mls	r3, lr, r4, r3
	vmov.32	lr, d18[0]
	smmul	r5, lr, r12
	asr	r6, r5, #5
	add	r5, r6, r5, lsr #31
	mls	lr, r5, r4, lr
                                        @ implicit-def: %Q10
	vmov.f64	d18, d20
	vmov.32	d18[0], lr
                                        @ implicit-def: %Q10
	vmov.f64	d20, d18
	vmov.f64	d18, d20
	vmov.32	d18[1], r3
	vmov.f64	d20, d18
	vmov.f64	d18, d21
	vmov.f64	d19, d17
	vmov.32	r3, d19[0]
	smmul	lr, r3, r12
	asr	r5, lr, #5
	add	lr, r5, lr, lsr #31
	mls	r3, lr, r4, r3
	vmov.32	d18[0], r3
	vmov.f64	d21, d18
	vmov.f64	d18, d21
	vmov.32	r3, d19[1]
	smmul	r12, r3, r12
	asr	lr, r12, #5
	add	r12, lr, r12, lsr #31
	mls	r3, r12, r4, r3
	vmov.32	d18[1], r3
	vmov.f64	d21, d18
	vst1.64	{d20, d21}, [r2]
	bl	__modsi3
	str	r0, [sp, #124]
	ldr	r0, [sp, #156]
	ldr	r1, [sp, #124]
	bl	dijkstra
	str	r0, [sp, #28]           @ 4-byte Spill
@ BB#13:                                @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #156]
	add	r2, sp, #160
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
	str	r1, [sp, #284]
	cmp	r3, r0
	str	r1, [sp, #24]           @ 4-byte Spill
	str	r3, [sp, #20]           @ 4-byte Spill
	str	r2, [sp, #16]           @ 4-byte Spill
	beq	.LBB5_18
@ BB#14:                                @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #20]           @ 4-byte Reload
	ldr	r1, [sp, #16]           @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_16
@ BB#15:                                @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #24]           @ 4-byte Reload
	str	r0, [sp, #284]
	b	.LBB5_17
.LBB5_16:                               @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #16]           @ 4-byte Reload
	str	r0, [sp, #284]
.LBB5_17:                               @   in Loop: Header=BB5_11 Depth=1
	b	.LBB5_18
.LBB5_18:                               @   in Loop: Header=BB5_11 Depth=1
	movw	r0, #3
	ldr	r1, [sp, #284]
	str	r1, [sp, #156]
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
	str	r1, [sp, #252]
	cmp	r3, r0
	str	r1, [sp, #12]           @ 4-byte Spill
	str	r3, [sp, #8]            @ 4-byte Spill
	str	r2, [sp, #4]            @ 4-byte Spill
	beq	.LBB5_23
@ BB#19:                                @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #8]            @ 4-byte Reload
	ldr	r1, [sp, #4]            @ 4-byte Reload
	bl	__divsi3
	cmp	r0, #3
	beq	.LBB5_21
@ BB#20:                                @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #12]           @ 4-byte Reload
	str	r0, [sp, #252]
	b	.LBB5_22
.LBB5_21:                               @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #4]            @ 4-byte Reload
	str	r0, [sp, #252]
.LBB5_22:                               @   in Loop: Header=BB5_11 Depth=1
	b	.LBB5_23
.LBB5_23:                               @   in Loop: Header=BB5_11 Depth=1
	ldr	r0, [sp, #252]
	str	r0, [sp, #124]
	b	.LBB5_11
.LBB5_24:
	movw	r0, #0
	bl	exit
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cantunwind
	.fnend

	.type	qHead,%object           @ @qHead
	.bss
	.globl	qHead
	.p2align	2
qHead:
	.long	0
	.size	qHead, 4

	.type	g_qCount,%object        @ @g_qCount
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                       @ 0x0
	.size	g_qCount, 4

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Out of memory.\n"
	.size	.L.str.1, 16

	.type	ch,%object              @ @ch
	.comm	ch,4,4
	.type	rgnNodes,%object        @ @rgnNodes
	.comm	rgnNodes,800,4
	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"Shortest path is 0 in cost. Just stay where you are.\n"
	.size	.L.str.2, 54

	.type	iNode,%object           @ @iNode
	.comm	iNode,4,4
	.type	iDist,%object           @ @iDist
	.comm	iDist,4,4
	.type	iPrev,%object           @ @iPrev
	.comm	iPrev,4,4
	.type	i,%object               @ @i
	.comm	i,4,4
	.type	AdjMatrix,%object       @ @AdjMatrix
	.comm	AdjMatrix,40000,4
	.type	iCost,%object           @ @iCost
	.comm	iCost,4,4
	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"Shortest path is %d in cost. "
	.size	.L.str.3, 30

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"Path is: "
	.size	.L.str.4, 10

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"Usage: dijkstra <filename>\n"
	.size	.L.str.6, 28

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"Only supports matrix size is #define'd.\n"
	.size	.L.str.7, 41

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
