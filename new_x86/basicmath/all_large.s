	.text
	.file	"all_large.bc"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	-4594234569871327232    # double -30
.LCPI0_1:
	.quad	4629700416936869888     # double 32
.LCPI0_2:
	.quad	-4601271444289093632    # double -10.5
.LCPI0_3:
	.quad	4607182418800017408     # double 1
.LCPI0_4:
	.quad	4625478292286210048     # double 17
.LCPI0_5:
	.quad	-4606619468846596096    # double -4.5
.LCPI0_6:
	.quad	-4593953094894616576    # double -31
.LCPI0_7:
	.quad	4626885667169763328     # double 22
.LCPI0_8:
	.quad	-4608308318706860032    # double -3.5
.LCPI0_9:
	.quad	-4593249407452839936    # double -35
.LCPI0_10:
	.quad	-4599470004438145434    # double -13.699999999999999
.LCPI0_11:
	.quad	4622945017495814144     # double 12
.LCPI0_12:
	.quad	4617315517961601024     # double 5
.LCPI0_13:
	.quad	4623136420479977390     # double 12.34
.LCPI0_14:
	.quad	4613937818241073152     # double 3
.LCPI0_15:
	.quad	-4596036009722275430    # double -23.600000000000001
.LCPI0_16:
	.quad	4618441417868443648     # double 6
.LCPI0_17:
	.quad	-4588894285875684311    # double -67.890000000000001
.LCPI0_18:
	.quad	-4602678819172646912    # double -8
.LCPI0_19:
	.quad	4629981891913580544     # double 34
.LCPI0_20:
	.quad	4620130267728707584     # double 7.5
.LCPI0_21:
	.quad	4621070394150921175     # double 8.6699999999999999
.LCPI0_22:
	.quad	4631530004285489152     # double 45
.LCPI0_23:
	.quad	4625196817309499392     # double 16
.LCPI0_24:
	.quad	4617653287933653811     # double 5.2999999999999998
.LCPI0_25:
	.quad	-4613037098315599053    # double -1.7
.LCPI0_26:
	.quad	-4600427019358961664    # double -12
.LCPI0_27:
	.quad	4621819117588971520     # double 10
.LCPI0_28:
	.quad	4645040803167600640     # double 360
.LCPI0_29:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_30:
	.quad	4611686018427387904     # double 2
.LCPI0_31:
	.quad	4616189618054758400     # double 4
.LCPI0_32:
	.quad	4640537203540230144     # double 180
.LCPI0_33:
	.quad	4663055201677082624     # double 5760
.LCPI0_34:
	.quad	4562254508917369340     # double 0.001
.LCPI0_35:
	.quad	4624633867356078080     # double 15
.LCPI0_36:
	.quad	4598175219545276416     # double 0.25
.LCPI0_37:
	.quad	-4616189618054758400    # double -1
.LCPI0_38:
	.quad	-4606056518893174784    # double -5
.LCPI0_39:
	.quad	4603669611090668421     # double 0.60999999999999999
.LCPI0_40:
	.quad	4601796113645682295     # double 0.45100000000000001
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$320, %rsp              # imm = 0x140
	movabsq	$.L.str, %rdi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movl	$0, -4(%rbp)
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movq	$1072497001, -88(%rbp)  # imm = 0x3FED0169
	movq	$0, -104(%rbp)
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -116(%rbp)        # 4-byte Spill
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_1
.LBB0_4:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_4(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_5(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -120(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_8
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -128(%rbp)        # 4-byte Spill
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_5
.LBB0_8:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_6(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_7(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_8(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -132(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -136(%rbp)        # 4-byte Spill
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_12
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -140(%rbp)        # 4-byte Spill
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_9
.LBB0_12:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_9(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_3(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI0_10(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -144(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -148(%rbp)        # 4-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_16
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -152(%rbp)        # 4-byte Spill
# BB#15:                                #   in Loop: Header=BB0_13 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_13
.LBB0_16:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_11(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_13(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_14(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_20
# BB#18:                                #   in Loop: Header=BB0_17 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -164(%rbp)        # 4-byte Spill
# BB#19:                                #   in Loop: Header=BB0_17 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_17
.LBB0_20:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -168(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -172(%rbp)        # 4-byte Spill
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_24
# BB#22:                                #   in Loop: Header=BB0_21 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -176(%rbp)        # 4-byte Spill
# BB#23:                                #   in Loop: Header=BB0_21 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_21
.LBB0_24:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_20(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_21(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_22(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -180(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -184(%rbp)        # 4-byte Spill
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_28
# BB#26:                                #   in Loop: Header=BB0_25 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -188(%rbp)        # 4-byte Spill
# BB#27:                                #   in Loop: Header=BB0_25 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_25
.LBB0_28:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	.LCPI0_23(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_24(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_25(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_26(%rip), %xmm3  # xmm3 = mem[0],zero
	movsd	%xmm3, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%eax, -192(%rbp)        # 4-byte Spill
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -196(%rbp)        # 4-byte Spill
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_32
# BB#30:                                #   in Loop: Header=BB0_29 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -200(%rbp)        # 4-byte Spill
# BB#31:                                #   in Loop: Header=BB0_29 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_29
.LBB0_32:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rbp)
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB0_33:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_35 Depth 2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_41 Depth 5
	movsd	.LCPI0_27(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-16(%rbp), %xmm0
	jbe	.LBB0_52
# BB#34:                                #   in Loop: Header=BB0_33 Depth=1
	movsd	.LCPI0_27(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
.LBB0_35:                               #   Parent Loop BB0_33 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_37 Depth 3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_41 Depth 5
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_50
# BB#36:                                #   in Loop: Header=BB0_35 Depth=2
	movsd	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB0_37:                               #   Parent Loop BB0_33 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_39 Depth 4
                                        #           Child Loop BB0_41 Depth 5
	movsd	.LCPI0_35(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-32(%rbp), %xmm0
	jbe	.LBB0_48
# BB#38:                                #   in Loop: Header=BB0_37 Depth=3
	movsd	.LCPI0_37(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
.LBB0_39:                               #   Parent Loop BB0_33 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_41 Depth 5
	movsd	.LCPI0_38(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_46
# BB#40:                                #   in Loop: Header=BB0_39 Depth=4
	leaq	-76(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-32(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm3        # xmm3 = mem[0],zero
	callq	SolveCubic
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB0_41:                               #   Parent Loop BB0_33 Depth=1
                                        #     Parent Loop BB0_35 Depth=2
                                        #       Parent Loop BB0_37 Depth=3
                                        #         Parent Loop BB0_39 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-80(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jge	.LBB0_44
# BB#42:                                #   in Loop: Header=BB0_41 Depth=5
	movabsq	$.L.str.2, %rdi
	movslq	-80(%rbp), %rax
	movsd	-64(%rbp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, -212(%rbp)        # 4-byte Spill
# BB#43:                                #   in Loop: Header=BB0_41 Depth=5
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_41
.LBB0_44:                               #   in Loop: Header=BB0_39 Depth=4
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -216(%rbp)        # 4-byte Spill
# BB#45:                                #   in Loop: Header=BB0_39 Depth=4
	movsd	.LCPI0_40(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-40(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	jmp	.LBB0_39
.LBB0_46:                               #   in Loop: Header=BB0_37 Depth=3
	jmp	.LBB0_47
.LBB0_47:                               #   in Loop: Header=BB0_37 Depth=3
	movsd	.LCPI0_39(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	jmp	.LBB0_37
.LBB0_48:                               #   in Loop: Header=BB0_35 Depth=2
	jmp	.LBB0_49
.LBB0_49:                               #   in Loop: Header=BB0_35 Depth=2
	movsd	.LCPI0_36(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, -24(%rbp)
	jmp	.LBB0_35
.LBB0_50:                               #   in Loop: Header=BB0_33 Depth=1
	jmp	.LBB0_51
.LBB0_51:                               #   in Loop: Header=BB0_33 Depth=1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.LBB0_33
.LBB0_52:
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf
	movl	$0, -80(%rbp)
	movl	%eax, -220(%rbp)        # 4-byte Spill
.LBB0_53:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100000, -80(%rbp)      # imm = 0x186A0
	jge	.LBB0_56
# BB#54:                                #   in Loop: Header=BB0_53 Depth=1
	leaq	-96(%rbp), %rsi
	movslq	-80(%rbp), %rdi
	callq	usqrt
	movabsq	$.L.str.5, %rdi
	movl	-80(%rbp), %esi
	movl	-96(%rbp), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -224(%rbp)        # 4-byte Spill
# BB#55:                                #   in Loop: Header=BB0_53 Depth=1
	movl	-80(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -80(%rbp)
	jmp	.LBB0_53
.LBB0_56:
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movq	$1072497001, -88(%rbp)  # imm = 0x3FED0169
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	cmpq	$1072513385, -88(%rbp)  # imm = 0x3FED4169
	jae	.LBB0_60
# BB#58:                                #   in Loop: Header=BB0_57 Depth=1
	leaq	-96(%rbp), %rsi
	movq	-88(%rbp), %rdi
	callq	usqrt
	movabsq	$.L.str.6, %rdi
	movq	-88(%rbp), %rsi
	movl	-96(%rbp), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, -232(%rbp)        # 4-byte Spill
# BB#59:                                #   in Loop: Header=BB0_57 Depth=1
	movq	-88(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_57
.LBB0_60:
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	%eax, -236(%rbp)        # 4-byte Spill
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_28(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	-72(%rbp), %xmm0
	jb	.LBB0_64
# BB#62:                                #   in Loop: Header=BB0_61 Depth=1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	%xmm2, -248(%rbp)       # 8-byte Spill
	movsd	%xmm1, -256(%rbp)       # 8-byte Spill
	callq	atan
	movabsq	$.L.str.8, %rdi
	movsd	.LCPI0_32(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_31(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	movsd	-248(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm2, %xmm0
	divsd	%xmm1, %xmm0
	movsd	-256(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -264(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-264(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	printf
	movl	%eax, -268(%rbp)        # 4-byte Spill
# BB#63:                                #   in Loop: Header=BB0_61 Depth=1
	movsd	.LCPI0_34(%rip), %xmm0  # xmm0 = mem[0],zero
	addsd	-72(%rbp), %xmm0
	movsd	%xmm0, -72(%rbp)
	jmp	.LBB0_61
.LBB0_64:
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	puts
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movl	%eax, -272(%rbp)        # 4-byte Spill
.LBB0_65:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movsd	%xmm1, -280(%rbp)       # 8-byte Spill
	callq	atan
	movsd	.LCPI0_29(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_30(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	.LCPI0_31(%rip), %xmm3  # xmm3 = mem[0],zero
	mulsd	%xmm0, %xmm3
	mulsd	%xmm3, %xmm2
	addsd	%xmm1, %xmm2
	movsd	-280(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm2
	jb	.LBB0_68
# BB#66:                                #   in Loop: Header=BB0_65 Depth=1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	.LCPI0_32(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-72(%rbp), %xmm1
	movsd	%xmm1, -288(%rbp)       # 8-byte Spill
	movsd	%xmm2, -296(%rbp)       # 8-byte Spill
	callq	atan
	movabsq	$.L.str.10, %rdi
	movsd	.LCPI0_31(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-288(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm0, -304(%rbp)       # 8-byte Spill
	movaps	%xmm1, %xmm0
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movb	$2, %al
	callq	printf
	movl	%eax, -308(%rbp)        # 4-byte Spill
# BB#67:                                #   in Loop: Header=BB0_65 Depth=1
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	atan
	movsd	.LCPI0_33(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_31(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	divsd	%xmm1, %xmm2
	addsd	-72(%rbp), %xmm2
	movsd	%xmm2, -72(%rbp)
	jmp	.LBB0_65
.LBB0_68:
	xorl	%eax, %eax
	addq	$320, %rsp              # imm = 0x140
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4616189618054758400     # double 4
.LCPI1_1:
	.quad	4607182418800017408     # double 1
.LCPI1_2:
	.quad	4640537203540230144     # double 180
	.text
	.globl	rad2deg
	.p2align	4, 0x90
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	.LCPI1_1(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	mulsd	-8(%rbp), %xmm2
	movaps	%xmm1, %xmm0
	movsd	%xmm2, -16(%rbp)        # 8-byte Spill
	callq	atan
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_0:
	.quad	4640537203540230144     # double 180
.LCPI2_1:
	.quad	4616189618054758400     # double 4
.LCPI2_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	deg2rad
	.p2align	4, 0x90
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -8(%rbp)
	movaps	%xmm1, %xmm0
	callq	atan
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	.LCPI2_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm0, %xmm2
	mulsd	-8(%rbp), %xmm2
	divsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	deg2rad, .Lfunc_end2-deg2rad

	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_0:
	.long	3225419776              # float -3
.LCPI3_1:
	.long	1091567616              # float 9
.LCPI3_2:
	.long	1104674816              # float 27
.LCPI3_3:
	.long	1113063424              # float 54
.LCPI3_8:
	.long	1077936128              # float 3
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_4:
	.quad	9223372036854775807     # double NaN
	.quad	9223372036854775807     # double NaN
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI3_5:
	.quad	4599676419421066581     # double 0.33333333333333331
.LCPI3_6:
	.quad	-4611686018427387904    # double -2
.LCPI3_7:
	.quad	4613937818241073152     # double 3
.LCPI3_9:
	.quad	4607182418800017408     # double 1
.LCPI3_10:
	.quad	4616189618054758400     # double 4
	.text
	.globl	SolveCubic
	.p2align	4, 0x90
	.type	SolveCubic,@function
SolveCubic:                             # @SolveCubic
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$384, %rsp              # imm = 0x180
	xorps	%xmm4, %xmm4
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -152(%rbp)
	fldl	-152(%rbp)
	fstpt	-64(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%rbp)
	fldl	-160(%rbp)
	fstpt	-80(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%rbp)
	fldl	-168(%rbp)
	fstpt	-96(%rbp)
	fldt	-64(%rbp)
	fmul	%st(0), %st(0)
	fldt	-80(%rbp)
	flds	.LCPI3_0(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_1(%rip)
	fdivr	%st(0), %st(1)
	fxch	%st(1)
	fstpt	-112(%rbp)
	fldt	-64(%rbp)
	fld	%st(0)
	fadd	%st(1)
	fmul	%st(1)
	fmul	%st(1)
	fxch	%st(1)
	fmulp	%st(2)
	fldt	-80(%rbp)
	fmulp	%st(2)
	fsubp	%st(1)
	fldt	-96(%rbp)
	flds	.LCPI3_2(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_3(%rip)
	fdivrp	%st(1)
	fld	%st(0)
	fstpt	-128(%rbp)
	fmul	%st(0), %st(0)
	fldt	-112(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fsubrp	%st(1)
	fstpl	-176(%rbp)
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, -136(%rbp)
	ucomisd	-136(%rbp), %xmm4
	jb	.LBB3_2
# BB#1:
	movq	-40(%rbp), %rax
	movl	$3, (%rax)
	fldt	-128(%rbp)
	fldt	-112(%rbp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fstpl	-200(%rbp)
	movsd	-200(%rbp), %xmm0       # xmm0 = mem[0],zero
	fstpt	-284(%rbp)              # 10-byte Folded Spill
	callq	sqrt
	movsd	%xmm0, -208(%rbp)
	fldl	-208(%rbp)
	fldt	-284(%rbp)              # 10-byte Folded Reload
	fdivp	%st(1)
	fstpl	-216(%rbp)
	movsd	-216(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, -144(%rbp)
	fldt	-112(%rbp)
	fstpl	-224(%rbp)
	movsd	-224(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	.LCPI3_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	movsd	%xmm0, -296(%rbp)       # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -304(%rbp)       # 8-byte Spill
	movsd	%xmm3, -312(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-296(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -232(%rbp)
	fldl	-232(%rbp)
	fldt	-64(%rbp)
	flds	.LCPI3_8(%rip)
	fdivr	%st(0), %st(1)
	fxch	%st(2)
	fsubp	%st(1)
	movq	-48(%rbp), %rax
	fstpl	(%rax)
	fldt	-112(%rbp)
	fstpl	-240(%rbp)
	movsd	-240(%rbp), %xmm0       # xmm0 = mem[0],zero
	fstpt	-324(%rbp)              # 10-byte Folded Spill
	callq	sqrt
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	.LCPI3_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm0, -336(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm3, -344(%rbp)       # 8-byte Spill
	movsd	%xmm2, -352(%rbp)       # 8-byte Spill
	callq	atan
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	-352(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -360(%rbp)       # 8-byte Spill
	callq	cos
	movsd	-336(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -248(%rbp)
	fldl	-248(%rbp)
	fldt	-64(%rbp)
	fldt	-324(%rbp)              # 10-byte Folded Reload
	fdivrp	%st(1)
	fsubrp	%st(1)
	movq	-48(%rbp), %rax
	fstpl	8(%rax)
	fldt	-112(%rbp)
	fstpl	-256(%rbp)
	movsd	-256(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	movsd	-304(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-144(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-344(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, -368(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, -376(%rbp)       # 8-byte Spill
	callq	atan
	movsd	-360(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-376(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	-312(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cos
	movsd	-368(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, -264(%rbp)
	fldl	-264(%rbp)
	fldt	-64(%rbp)
	fldt	-324(%rbp)              # 10-byte Folded Reload
	fdivrp	%st(1)
	fsubrp	%st(1)
	fstpl	-272(%rbp)
	movsd	-272(%rbp), %xmm0       # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB3_3
.LBB3_2:
	movq	-40(%rbp), %rax
	movl	$1, (%rax)
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	callq	sqrt
	fldt	-128(%rbp)
	fstpl	-184(%rbp)
	movsd	-184(%rbp), %xmm1       # xmm1 = mem[0],zero
	movapd	.LCPI3_4(%rip), %xmm2   # xmm2 = [nan,nan]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movq	-48(%rbp), %rax
	movsd	%xmm0, (%rax)
	fldt	-112(%rbp)
	movq	-48(%rbp), %rax
	fldl	(%rax)
	fdivr	%st(0), %st(1)
	faddp	%st(1)
	fstpl	(%rax)
	fldt	-128(%rbp)
	fldz
	fucompi	%st(1)
	fstp	%st(0)
	movl	$1, %ecx
	movl	$-1, %edx
	cmoval	%ecx, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	-48(%rbp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	fldt	-64(%rbp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	movq	-48(%rbp), %rax
	fldl	(%rax)
	faddp	%st(1)
	fstpl	-192(%rbp)
	movsd	-192(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
.LBB3_3:
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic

	.globl	usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$32, -44(%rbp)
	jge	.LBB4_6
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rax
	shlq	$2, %rax
	movabsq	$3221225472, %rcx       # imm = 0xC0000000
	andq	-8(%rbp), %rcx
	shrq	$30, %rcx
	addq	%rcx, %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	shlq	$2, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	shlq	$1, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jb	.LBB4_4
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
.LBB4_4:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_5
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB4_1
.LBB4_6:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, (%rax)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	usqrt, .Lfunc_end4-usqrt

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"********* CUBIC FUNCTIONS ***********\n"
	.size	.L.str, 39

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Solutions:"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" %f"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\n"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"********* INTEGER SQR ROOTS ***********\n"
	.size	.L.str.4, 41

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"sqrt(%3d) = %2d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"sqrt(%lX) = %X\n"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"********* ANGLE CONVERSION ***********\n"
	.size	.L.str.7, 40

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%3.0f degrees = %.12f radians\n"
	.size	.L.str.8, 31

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.zero	1
	.size	.L.str.9, 1

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%.12f radians = %3.0f degrees\n"
	.size	.L.str.10, 31


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
