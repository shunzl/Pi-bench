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
	push	{r4, r5, r11, lr}
	add	r11, sp, #8
	sub	sp, sp, #288
	movw	r0, #3
	mov	r1, #0
	str	r1, [r11, #-12]
	sub	r2, r11, #88
	str	r2, [r11, #-92]
	add	r2, sp, #96
	str	r2, [sp, #92]
	str	r1, [sp, #72]
	str	r1, [sp, #68]
	str	r1, [sp, #60]
	str	r1, [sp, #56]
	str	r1, [sp, #44]
	movw	r1, #5000
	str	r1, [sp, #40]
	movw	r1, :lower16:.L.str
	movt	r1, :upper16:.L.str
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r1
	bl	printf
	str	r0, [sp, #32]           @ 4-byte Spill
	bl	readInput
	movw	r0, :lower16:i_ub
	movt	r0, :upper16:i_ub
	ldr	r0, [r0]
	lsl	r0, r0, #3
	bl	malloc
	str	r0, [sp, #48]
	movw	r0, :lower16:x_size
	movt	r0, :upper16:x_size
	ldr	r0, [r0]
	lsl	r0, r0, #3
	bl	malloc
	str	r0, [sp, #52]
	ldr	r0, [sp, #92]
	bl	allocMem
	ldr	r0, [r11, #-92]
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #48]
	bl	init
	add	r0, sp, #84
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #28]           @ 4-byte Spill
	bl	clock
	movw	r1, #0
	str	r0, [sp, #72]
	str	r1, [sp, #44]
.LBB0_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, #5000
	ldr	r1, [sp, #44]
	cmp	r1, r0
	bge	.LBB0_4
@ BB#2:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [r11, #-92]
	ldr	r1, [sp, #92]
	ldr	r2, [sp, #52]
	ldr	r3, [sp, #48]
	bl	rmatmult3
@ BB#3:                                 @   in Loop: Header=BB0_1 Depth=1
	ldr	r0, [sp, #44]
	add	r0, r0, #1
	str	r0, [sp, #44]
	b	.LBB0_1
.LBB0_4:
	add	r0, sp, #76
	movw	r1, #0
	bl	gettimeofday
	str	r0, [sp, #24]           @ 4-byte Spill
	bl	clock
	movw	r1, :lower16:.L.str.1
	movt	r1, :upper16:.L.str.1
	str	r0, [sp, #68]
	mov	r0, r1
	bl	printf
	movw	r1, #0
	str	r1, [sp, #44]
	str	r0, [sp, #20]           @ 4-byte Spill
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:i_ub
	movt	r0, :upper16:i_ub
	ldr	r1, [sp, #44]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB0_8
@ BB#6:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r0, :lower16:.L.str.2
	movt	r0, :upper16:.L.str.2
	movw	r1, #3
	ldr	r2, [sp, #44]
	mov	r3, r2
	ldr	r12, [sp, #48]
	add	r2, r12, r2, lsl #3
	vldr	d16, [r2]
	str	r1, [sp, #16]           @ 4-byte Spill
	mov	r1, r3
	vmov	r2, r3, d16
	bl	printf
	str	r0, [sp, #12]           @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB0_5 Depth=1
	movw	r1, #5
	movw	r0, :lower16:i_ub
	movt	r0, :upper16:i_ub
	ldr	r0, [r0]
	bl	__divsi3
	ldr	r1, [sp, #44]
	add	r0, r1, r0
	str	r0, [sp, #44]
	b	.LBB0_5
.LBB0_8:
	movw	r0, :lower16:.L.str.3
	movt	r0, :upper16:.L.str.3
	vldr	d16, .LCPI0_0
	ldr	r1, [sp, #76]
	ldr	r2, [sp, #84]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d17, s0
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #88]
	sub	r1, r1, r2
	vmov	s0, r1
	vcvt.f64.s32	d18, s0
	vdiv.f64	d16, d18, d16
	vadd.f64	d16, d17, d16
	vstr	d16, [sp, #56]
	vldr	d16, [sp, #56]
	vmov	r2, r3, d16
	bl	printf
	movw	r1, :lower16:.L.str.4
	movt	r1, :upper16:.L.str.4
	vldr	d16, .LCPI0_0
	ldr	r2, [sp, #68]
	ldr	r3, [sp, #72]
	sub	r2, r2, r3
	vmov	s0, r2
	vcvt.f64.s32	d17, s0
	vdiv.f64	d16, d17, d16
	str	r0, [sp, #8]            @ 4-byte Spill
	mov	r0, r1
	vmov	r2, r3, d16
	bl	printf
	ldr	r1, [r11, #-12]
	str	r0, [sp, #4]            @ 4-byte Spill
	mov	r0, r1
	sub	sp, r11, #8
	pop	{r4, r5, r11, pc}
	.p2align	3
@ BB#9:
.LCPI0_0:
	.long	0                       @ double 1.0E+6
	.long	1093567616
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cantunwind
	.fnend

	.globl	rmatmult3
	.p2align	2
	.type	rmatmult3,%function
	.code	32                      @ @rmatmult3
rmatmult3:
	.fnstart
@ BB#0:
	sub	sp, sp, #296
	movw	r12, #3
	str	r0, [sp, #292]
	str	r1, [sp, #288]
	str	r2, [sp, #284]
	str	r3, [sp, #280]
	movw	r0, :lower16:.L.str.5
	movt	r0, :upper16:.L.str.5
	str	r0, [sp, #276]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #8]
	str	r0, [sp, #256]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #20]
	str	r0, [sp, #252]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #12]
	str	r0, [sp, #248]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #24]
	str	r0, [sp, #244]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #16]
	str	r0, [sp, #240]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #28]
	str	r0, [sp, #236]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #68]
	str	r0, [sp, #232]
	ldr	r0, [sp, #292]
	ldr	r0, [r0, #72]
	str	r0, [sp, #228]
	ldr	r0, [sp, #288]
	ldr	r0, [r0]
	str	r0, [sp, #224]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #4]
	str	r0, [sp, #220]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #8]
	str	r0, [sp, #216]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #12]
	str	r0, [sp, #212]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #16]
	str	r0, [sp, #208]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #20]
	str	r0, [sp, #204]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #24]
	str	r0, [sp, #200]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #28]
	str	r0, [sp, #196]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #32]
	str	r0, [sp, #192]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #36]
	str	r0, [sp, #188]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #40]
	str	r0, [sp, #184]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #44]
	str	r0, [sp, #180]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #48]
	str	r0, [sp, #176]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #52]
	str	r0, [sp, #172]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #56]
	str	r0, [sp, #168]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #60]
	str	r0, [sp, #164]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #64]
	str	r0, [sp, #160]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #68]
	str	r0, [sp, #156]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #72]
	str	r0, [sp, #152]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #76]
	str	r0, [sp, #148]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #80]
	str	r0, [sp, #144]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #84]
	str	r0, [sp, #140]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #88]
	str	r0, [sp, #136]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #92]
	str	r0, [sp, #132]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #96]
	str	r0, [sp, #128]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #100]
	str	r0, [sp, #124]
	ldr	r0, [sp, #288]
	ldr	r0, [r0, #104]
	str	r0, [sp, #120]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #116]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	str	r0, [sp, #112]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #108]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #104]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	str	r0, [sp, #100]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #96]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #92]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	str	r0, [sp, #88]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	sub	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #84]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #80]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	str	r0, [sp, #76]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #72]
	ldr	r0, [sp, #284]
	sub	r0, r0, #8
	str	r0, [sp, #68]
	ldr	r0, [sp, #284]
	str	r0, [sp, #64]
	ldr	r0, [sp, #284]
	add	r0, r0, #8
	str	r0, [sp, #60]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #56]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	str	r0, [sp, #52]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #48]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #44]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	str	r0, [sp, #40]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	sub	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #36]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #32]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	str	r0, [sp, #28]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #24]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	sub	r0, r0, #8
	str	r0, [sp, #20]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	str	r0, [sp, #16]
	ldr	r0, [sp, #284]
	ldr	r1, [sp, #228]
	add	r0, r0, r1, lsl #3
	ldr	r1, [sp, #232]
	add	r0, r0, r1, lsl #3
	add	r0, r0, #8
	str	r0, [sp, #12]
	ldr	r0, [sp, #240]
	str	r0, [sp, #260]
	str	r12, [sp, #8]           @ 4-byte Spill
.LBB1_1:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB1_3 Depth 2
                                        @       Child Loop BB1_5 Depth 3
	ldr	r0, [sp, #260]
	ldr	r1, [sp, #236]
	cmp	r0, r1
	bge	.LBB1_12
@ BB#2:                                 @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #248]
	str	r0, [sp, #264]
.LBB1_3:                                @   Parent Loop BB1_1 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB1_5 Depth 3
	ldr	r0, [sp, #264]
	ldr	r1, [sp, #244]
	cmp	r0, r1
	bge	.LBB1_10
@ BB#4:                                 @   in Loop: Header=BB1_3 Depth=2
	ldr	r0, [sp, #256]
	str	r0, [sp, #268]
.LBB1_5:                                @   Parent Loop BB1_1 Depth=1
                                        @     Parent Loop BB1_3 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
	ldr	r0, [sp, #268]
	ldr	r1, [sp, #252]
	cmp	r0, r1
	bge	.LBB1_8
@ BB#6:                                 @   in Loop: Header=BB1_5 Depth=3
	movw	r0, #3
	ldr	r1, [sp, #268]
	ldr	r2, [sp, #264]
	ldr	r3, [sp, #232]
	mla	r1, r2, r3, r1
	ldr	r2, [sp, #260]
	ldr	r3, [sp, #228]
	mla	r1, r2, r3, r1
	str	r1, [sp, #272]
	ldr	r2, [sp, #224]
	add	r2, r2, r1, lsl #3
	vldr	d16, [r2]
	ldr	r2, [sp, #116]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	vmul.f64	d16, d16, d17
	ldr	r2, [sp, #220]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #112]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #216]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #108]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #212]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #104]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #208]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #100]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #204]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #96]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #200]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #92]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #196]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #88]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #192]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #84]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #188]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #80]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #184]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #76]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #180]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #72]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #176]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #68]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #172]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #64]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #168]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #60]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #164]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #56]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #160]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #52]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #156]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #48]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #152]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #44]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #148]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #40]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #144]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #36]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #140]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #32]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #136]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #28]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #132]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #24]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #128]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #20]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #124]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #16]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #120]
	add	r2, r2, r1, lsl #3
	vldr	d17, [r2]
	ldr	r2, [sp, #12]
	add	r2, r2, r1, lsl #3
	vldr	d18, [r2]
	vmul.f64	d17, d17, d18
	vadd.f64	d16, d16, d17
	ldr	r2, [sp, #280]
	mov	r3, r1
	add	r1, r2, r1, lsl #3
	vstr	d16, [r1]
	str	r0, [sp, #4]            @ 4-byte Spill
	str	r3, [sp]                @ 4-byte Spill
@ BB#7:                                 @   in Loop: Header=BB1_5 Depth=3
	ldr	r0, [sp, #268]
	add	r0, r0, #1
	str	r0, [sp, #268]
	b	.LBB1_5
.LBB1_8:                                @   in Loop: Header=BB1_3 Depth=2
	b	.LBB1_9
.LBB1_9:                                @   in Loop: Header=BB1_3 Depth=2
	ldr	r0, [sp, #264]
	add	r0, r0, #1
	str	r0, [sp, #264]
	b	.LBB1_3
.LBB1_10:                               @   in Loop: Header=BB1_1 Depth=1
	b	.LBB1_11
.LBB1_11:                               @   in Loop: Header=BB1_1 Depth=1
	ldr	r0, [sp, #260]
	add	r0, r0, #1
	str	r0, [sp, #260]
	b	.LBB1_1
.LBB1_12:
	add	sp, sp, #296
	bx	lr
.Lfunc_end1:
	.size	rmatmult3, .Lfunc_end1-rmatmult3
	.cantunwind
	.fnend

	.globl	readInput
	.p2align	2
	.type	readInput,%function
	.code	32                      @ @readInput
readInput:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	add	r11, sp, #24
	sub	sp, sp, #88
	movw	r0, :lower16:.L.str.8
	movt	r0, :upper16:.L.str.8
	movw	r1, :lower16:.L.str.1.9
	movt	r1, :upper16:.L.str.1.9
	bl	fopen
	movw	r1, #0
	str	r0, [r11, #-28]
	cmp	r0, r1
	bne	.LBB2_2
@ BB#1:
	movw	r0, :lower16:.L.str.2.10
	movt	r0, :upper16:.L.str.2.10
	bl	printf
	movw	lr, :lower16:.L.str.3.11
	movt	lr, :upper16:.L.str.3.11
	str	r0, [r11, #-32]         @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #1
	str	r0, [r11, #-36]         @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB2_2:
	movw	r1, :lower16:.L.str.4.12
	movt	r1, :upper16:.L.str.4.12
	movw	r2, :lower16:kmin
	movt	r2, :upper16:kmin
	movw	r3, :lower16:kmax
	movt	r3, :upper16:kmax
	movw	r0, :lower16:jmin
	movt	r0, :upper16:jmin
	movw	r12, :lower16:jmax
	movt	r12, :upper16:jmax
	movw	lr, :lower16:imin
	movt	lr, :upper16:imin
	movw	r4, :lower16:imax
	movt	r4, :upper16:imax
	movw	r5, :lower16:kp
	movt	r5, :upper16:kp
	movw	r6, :lower16:jp
	movt	r6, :upper16:jp
	ldr	r7, [r11, #-28]
	str	r0, [r11, #-40]         @ 4-byte Spill
	mov	r0, r7
	ldr	r7, [r11, #-40]         @ 4-byte Reload
	str	r7, [sp]
	str	r12, [sp, #4]
	str	lr, [sp, #8]
	str	r4, [sp, #12]
	str	r5, [sp, #16]
	str	r6, [sp, #20]
	bl	fscanf
	movw	r1, :lower16:.L.str.5.13
	movt	r1, :upper16:.L.str.5.13
	str	r0, [r11, #-44]         @ 4-byte Spill
	mov	r0, r1
	bl	printf
	movw	r1, :lower16:.L.str.6
	movt	r1, :upper16:.L.str.6
	movw	r2, :lower16:jp
	movt	r2, :upper16:jp
	movw	r3, :lower16:kp
	movt	r3, :upper16:kp
	movw	r12, :lower16:imax
	movt	r12, :upper16:imax
	movw	lr, :lower16:imin
	movt	lr, :upper16:imin
	movw	r4, :lower16:jmax
	movt	r4, :upper16:jmax
	movw	r5, :lower16:jmin
	movt	r5, :upper16:jmin
	movw	r6, :lower16:kmax
	movt	r6, :upper16:kmax
	movw	r7, :lower16:kmin
	movt	r7, :upper16:kmin
	ldr	r7, [r7]
	ldr	r6, [r6]
	ldr	r5, [r5]
	ldr	r4, [r4]
	ldr	lr, [lr]
	ldr	r12, [r12]
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r0, [r11, #-48]         @ 4-byte Spill
	mov	r0, r1
	mov	r1, r7
	str	r2, [r11, #-52]         @ 4-byte Spill
	mov	r2, r6
	str	r3, [sp, #56]           @ 4-byte Spill
	mov	r3, r5
	str	r4, [sp]
	str	lr, [sp, #4]
	str	r12, [sp, #8]
	ldr	r12, [sp, #56]          @ 4-byte Reload
	str	r12, [sp, #12]
	ldr	lr, [r11, #-52]         @ 4-byte Reload
	str	lr, [sp, #16]
	bl	printf
	movw	r1, :lower16:jp
	movt	r1, :upper16:jp
	movw	r2, :lower16:kp
	movt	r2, :upper16:kp
	movw	r3, :lower16:i_lb
	movt	r3, :upper16:i_lb
	movw	r12, :lower16:i_ub
	movt	r12, :upper16:i_ub
	movw	lr, :lower16:kmax
	movt	lr, :upper16:kmax
	movw	r4, :lower16:jmax
	movt	r4, :upper16:jmax
	movw	r5, :lower16:imax
	movt	r5, :upper16:imax
	movw	r6, :lower16:kmin
	movt	r6, :upper16:kmin
	movw	r7, :lower16:jmin
	movt	r7, :upper16:jmin
	movw	r8, :lower16:imin
	movt	r8, :upper16:imin
	ldr	r8, [r8]
	ldr	r7, [r7]
	ldr	r9, [r1]
	mul	r7, r7, r9
	add	r7, r8, r7
	ldr	r6, [r6]
	ldr	r8, [r2]
	mul	r6, r6, r8
	add	r6, r7, r6
	str	r6, [r3]
	ldr	r5, [r5]
	sub	r5, r5, #1
	ldr	r4, [r4]
	sub	r4, r4, #1
	ldr	r6, [r1]
	mul	r4, r4, r6
	add	r4, r5, r4
	ldr	lr, [lr]
	sub	lr, lr, #1
	ldr	r5, [r2]
	mul	lr, lr, r5
	add	lr, r4, lr
	add	lr, lr, #1
	str	lr, [r12]
	ldr	r3, [r3]
	ldr	r2, [r2]
	sub	r2, r3, r2
	ldr	r1, [r1]
	sub	r1, r2, r1
	sub	r1, r1, #1
	cmp	r1, #0
	str	r0, [sp, #52]           @ 4-byte Spill
	bge	.LBB2_4
@ BB#3:
	movw	r0, :lower16:.L.str.2.10
	movt	r0, :upper16:.L.str.2.10
	bl	printf
	movw	lr, :lower16:.L.str.7
	movt	lr, :upper16:.L.str.7
	str	r0, [sp, #48]           @ 4-byte Spill
	mov	r0, lr
	bl	printf
	movw	lr, #1
	str	r0, [sp, #44]           @ 4-byte Spill
	mov	r0, lr
	bl	exit
.LBB2_4:
	movw	r0, :lower16:.L.str.8.14
	movt	r0, :upper16:.L.str.8.14
	movw	r1, :lower16:x_size
	movt	r1, :upper16:x_size
	movw	r2, #1
	movw	r3, :lower16:i_ub
	movt	r3, :upper16:i_ub
	ldr	r3, [r3]
	movw	r12, :lower16:kp
	movt	r12, :upper16:kp
	ldr	r12, [r12]
	movw	lr, :lower16:jp
	movt	lr, :upper16:jp
	ldr	lr, [lr]
	add	r12, r12, lr
	add	r12, r12, #1
	lsl	r12, r12, #1
	add	r3, r3, r12
	add	r3, r3, #10
	str	r3, [r1]
	str	r2, [sp, #40]           @ 4-byte Spill
	bl	printf
	movw	r1, :lower16:.L.str.9
	movt	r1, :upper16:.L.str.9
	movw	r2, :lower16:x_size
	movt	r2, :upper16:x_size
	movw	r3, :lower16:i_ub
	movt	r3, :upper16:i_ub
	movw	r12, :lower16:i_lb
	movt	r12, :upper16:i_lb
	ldr	r12, [r12]
	ldr	r3, [r3]
	ldr	r2, [r2]
	str	r0, [sp, #36]           @ 4-byte Spill
	mov	r0, r1
	mov	r1, r12
	str	r2, [sp, #32]           @ 4-byte Spill
	mov	r2, r3
	ldr	r3, [sp, #32]           @ 4-byte Reload
	bl	printf
	ldr	r1, [r11, #-28]
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, r1
	bl	fclose
	str	r0, [sp, #24]           @ 4-byte Spill
	sub	sp, r11, #24
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end2:
	.size	readInput, .Lfunc_end2-readInput
	.cantunwind
	.fnend

	.globl	allocMem
	.p2align	2
	.type	allocMem,%function
	.code	32                      @ @allocMem
allocMem:
	.fnstart
@ BB#0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #16
	movw	r1, #3
	str	r0, [r11, #-4]
	movw	r0, :lower16:i_ub
	movt	r0, :upper16:i_ub
	ldr	r0, [r0]
	lsl	r0, r0, #3
	str	r0, [sp, #8]
	ldr	r0, [sp, #8]
	str	r1, [sp, #4]            @ 4-byte Spill
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #4]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #8]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #12]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #16]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #20]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #24]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #28]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #32]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #36]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #40]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #44]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #48]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #52]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #56]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #60]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #64]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #68]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #72]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #76]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #80]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #84]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #88]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #92]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #96]
	ldr	r0, [sp, #8]
	bl	malloc
	ldr	r1, [r11, #-4]
	str	r0, [r1, #100]
	ldr	r0, [sp, #8]
	bl	malloc
	movw	r1, #0
	ldr	lr, [r11, #-4]
	str	r0, [lr, #104]
	ldr	r0, [r11, #-4]
	ldr	r0, [r0, #104]
	cmp	r0, r1
	bne	.LBB3_2
@ BB#1:
	movw	r0, :lower16:.L.str.10
	movt	r0, :upper16:.L.str.10
	bl	printf
	str	r0, [sp]                @ 4-byte Spill
.LBB3_2:
	mov	sp, r11
	pop	{r11, pc}
.Lfunc_end3:
	.size	allocMem, .Lfunc_end3-allocMem
	.cantunwind
	.fnend

	.globl	init
	.p2align	3
	.type	init,%function
	.code	32                      @ @init
init:
	.fnstart
@ BB#0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add	r11, sp, #28
	sub	sp, sp, #128
	movw	r12, #0
	movw	lr, :lower16:kp
	movt	lr, :upper16:kp
	movw	r4, :lower16:jp
	movt	r4, :upper16:jp
	movw	r5, :lower16:kmax
	movt	r5, :upper16:kmax
	movw	r6, :lower16:kmin
	movt	r6, :upper16:kmin
	movw	r7, :lower16:jmax
	movt	r7, :upper16:jmax
	movw	r8, :lower16:jmin
	movt	r8, :upper16:jmin
	movw	r9, :lower16:imax
	movt	r9, :upper16:imax
	movw	r10, :lower16:imin
	movt	r10, :upper16:imin
	str	r0, [r11, #-32]
	str	r1, [r11, #-36]
	str	r2, [r11, #-40]
	str	r3, [r11, #-44]
	ldr	r0, [r10]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #8]
	ldr	r0, [r9]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #20]
	ldr	r0, [r8]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #12]
	ldr	r0, [r7]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #24]
	ldr	r0, [r6]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #16]
	ldr	r0, [r5]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #28]
	ldr	r0, [r4]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #68]
	ldr	r0, [lr]
	ldr	r1, [r11, #-32]
	str	r0, [r1, #72]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0]
	str	r0, [r11, #-52]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #4]
	str	r0, [r11, #-56]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #8]
	str	r0, [r11, #-60]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #12]
	str	r0, [r11, #-64]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #16]
	str	r0, [r11, #-68]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #20]
	str	r0, [r11, #-72]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #24]
	str	r0, [r11, #-76]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #28]
	str	r0, [sp, #76]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #32]
	str	r0, [sp, #72]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #36]
	str	r0, [sp, #68]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #40]
	str	r0, [sp, #64]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #44]
	str	r0, [sp, #60]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #48]
	str	r0, [sp, #56]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #52]
	str	r0, [sp, #52]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #56]
	str	r0, [sp, #48]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #60]
	str	r0, [sp, #44]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #64]
	str	r0, [sp, #40]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #68]
	str	r0, [sp, #36]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #72]
	str	r0, [sp, #32]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #76]
	str	r0, [sp, #28]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #80]
	str	r0, [sp, #24]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #84]
	str	r0, [sp, #20]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #88]
	str	r0, [sp, #16]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #92]
	str	r0, [sp, #12]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #96]
	str	r0, [sp, #8]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #100]
	str	r0, [sp, #4]
	ldr	r0, [r11, #-36]
	ldr	r0, [r0, #104]
	str	r0, [sp]
	str	r12, [r11, #-48]
.LBB4_1:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:i_ub
	movt	r0, :upper16:i_ub
	ldr	r1, [r11, #-48]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB4_4
@ BB#2:                                 @   in Loop: Header=BB4_1 Depth=1
	vldr	d16, .LCPI4_0
	ldr	r0, [r11, #-44]
	add	r1, r0, #8
	str	r1, [r11, #-44]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-52]
	add	r1, r0, #8
	str	r1, [r11, #-52]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-56]
	add	r1, r0, #8
	str	r1, [r11, #-56]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #2
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-60]
	add	r1, r0, #8
	str	r1, [r11, #-60]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #3
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-64]
	add	r1, r0, #8
	str	r1, [r11, #-64]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #4
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-68]
	add	r1, r0, #8
	str	r1, [r11, #-68]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #5
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-72]
	add	r1, r0, #8
	str	r1, [r11, #-72]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #6
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [r11, #-76]
	add	r1, r0, #8
	str	r1, [r11, #-76]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #7
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #76]
	add	r1, r0, #8
	str	r1, [sp, #76]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #8
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #72]
	add	r1, r0, #8
	str	r1, [sp, #72]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #9
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #68]
	add	r1, r0, #8
	str	r1, [sp, #68]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #10
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #64]
	add	r1, r0, #8
	str	r1, [sp, #64]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #11
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #60]
	add	r1, r0, #8
	str	r1, [sp, #60]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #12
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #56]
	add	r1, r0, #8
	str	r1, [sp, #56]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #13
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #52]
	add	r1, r0, #8
	str	r1, [sp, #52]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #14
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #48]
	add	r1, r0, #8
	str	r1, [sp, #48]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #15
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #44]
	add	r1, r0, #8
	str	r1, [sp, #44]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #16
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #40]
	add	r1, r0, #8
	str	r1, [sp, #40]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #17
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #36]
	add	r1, r0, #8
	str	r1, [sp, #36]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #18
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #32]
	add	r1, r0, #8
	str	r1, [sp, #32]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #19
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #28]
	add	r1, r0, #8
	str	r1, [sp, #28]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #20
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #24]
	add	r1, r0, #8
	str	r1, [sp, #24]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #21
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #20]
	add	r1, r0, #8
	str	r1, [sp, #20]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #22
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #16]
	add	r1, r0, #8
	str	r1, [sp, #16]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #23
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #12]
	add	r1, r0, #8
	str	r1, [sp, #12]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #24
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #8]
	add	r1, r0, #8
	str	r1, [sp, #8]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #25
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp, #4]
	add	r1, r0, #8
	str	r1, [sp, #4]
	vstr	d16, [r0]
	ldr	r0, [r11, #-48]
	add	r0, r0, #26
	vmov	s0, r0
	vcvt.f64.s32	d16, s0
	ldr	r0, [sp]
	add	r1, r0, #8
	str	r1, [sp]
	vstr	d16, [r0]
@ BB#3:                                 @   in Loop: Header=BB4_1 Depth=1
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
	b	.LBB4_1
.LBB4_4:
	movw	r0, #0
	str	r0, [r11, #-48]
.LBB4_5:                                @ =>This Inner Loop Header: Depth=1
	movw	r0, :lower16:x_size
	movt	r0, :upper16:x_size
	ldr	r1, [r11, #-48]
	ldr	r0, [r0]
	cmp	r1, r0
	bge	.LBB4_8
@ BB#6:                                 @   in Loop: Header=BB4_5 Depth=1
	vmov.f64	d16, #2.000000e+00
	ldr	r0, [r11, #-48]
	vmov	s0, r0
	vcvt.f64.s32	d17, s0
	vmul.f64	d16, d16, d17
	ldr	r0, [r11, #-40]
	add	r1, r0, #8
	str	r1, [r11, #-40]
	vstr	d16, [r0]
@ BB#7:                                 @   in Loop: Header=BB4_5 Depth=1
	ldr	r0, [r11, #-48]
	add	r0, r0, #1
	str	r0, [r11, #-48]
	b	.LBB4_5
.LBB4_8:
	sub	sp, r11, #28
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
	.p2align	3
@ BB#9:
.LCPI4_0:
	.long	0                       @ double 0
	.long	0
.Lfunc_end4:
	.size	init, .Lfunc_end4-init
	.cantunwind
	.fnend

	.type	i_ub,%object            @ @i_ub
	.comm	i_ub,4,4
	.type	x_size,%object          @ @x_size
	.comm	x_size,4,4
	.type	kmin,%object            @ @kmin
	.comm	kmin,4,4
	.type	kmax,%object            @ @kmax
	.comm	kmax,4,4
	.type	jmin,%object            @ @jmin
	.comm	jmin,4,4
	.type	jmax,%object            @ @jmax
	.comm	jmax,4,4
	.type	imin,%object            @ @imin
	.comm	imin,4,4
	.type	imax,%object            @ @imax
	.comm	imax,4,4
	.type	kp,%object              @ @kp
	.comm	kp,4,4
	.type	jp,%object              @ @jp
	.comm	jp,4,4
	.type	i_lb,%object            @ @i_lb
	.comm	i_lb,4,4
	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"\nSequoia Benchmark Version 1.0\n\n"
	.size	.L.str, 33

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"***** results \n"
	.size	.L.str.1, 16

	.type	.L.str.2,%object        @ @.str.2
.L.str.2:
	.asciz	"i = %10d      b[i] = %e \n"
	.size	.L.str.2, 26

	.type	.L.str.3,%object        @ @.str.3
.L.str.3:
	.asciz	"\nWall time = %f seconds. \n"
	.size	.L.str.3, 27

	.type	.L.str.4,%object        @ @.str.4
.L.str.4:
	.asciz	"\nCPU  time = %f seconds. \n\n"
	.size	.L.str.4, 28

	.type	.L.str.5,%object        @ @.str.5
.L.str.5:
	.asciz	"rmatmult3"
	.size	.L.str.5, 10

	.type	.L.str.8,%object        @ @.str.8
.L.str.8:
	.asciz	"irsmk_input"
	.size	.L.str.8, 12

	.type	.L.str.1.9,%object      @ @.str.1.9
.L.str.1.9:
	.asciz	"r"
	.size	.L.str.1.9, 2

	.type	.L.str.2.10,%object     @ @.str.2.10
.L.str.2.10:
	.asciz	"***** ERROR \n"
	.size	.L.str.2.10, 14

	.type	.L.str.3.11,%object     @ @.str.3.11
.L.str.3.11:
	.asciz	"      Cannot open input file irsmk_input \n"
	.size	.L.str.3.11, 43

	.type	.L.str.4.12,%object     @ @.str.4.12
.L.str.4.12:
	.asciz	"%d %d %d %d %d %d %d %d"
	.size	.L.str.4.12, 24

	.type	.L.str.5.13,%object     @ @.str.5.13
.L.str.5.13:
	.asciz	"***** input  \n"
	.size	.L.str.5.13, 15

	.type	.L.str.6,%object        @ @.str.6
.L.str.6:
	.asciz	"kmin = %8d     kmax = %8d \njmin = %8d     jmax = %8d \nimin = %8d     imax = %8d \nkp   = %8d     jp   = %8d \n \n \n"
	.size	.L.str.6, 113

	.type	.L.str.7,%object        @ @.str.7
.L.str.7:
	.asciz	"      lb of xdbl < 0 \n"
	.size	.L.str.7, 23

	.type	.L.str.8.14,%object     @ @.str.8.14
.L.str.8.14:
	.asciz	"***** array bounds  \n"
	.size	.L.str.8.14, 22

	.type	.L.str.9,%object        @ @.str.9
.L.str.9:
	.asciz	"i_lb = %10d    i_ub = %10d    x_size = %10d \n \n \n"
	.size	.L.str.9, 50

	.type	.L.str.10,%object       @ @.str.10
.L.str.10:
	.asciz	"*****ERROR: allocMem out of memory \n"
	.size	.L.str.10, 37


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",%progbits
