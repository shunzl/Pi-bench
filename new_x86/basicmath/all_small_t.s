	.text
	.file	"all_small_t.bc"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.quad	4607182418800017408     # double 1
.LCPI0_1:
	.quad	-4601271444289093632    # double -10.5
	.quad	-4601271444289093632    # double -10.5
.LCPI0_2:
	.quad	4629700416936869888     # double 32
	.quad	4629700416936869888     # double 32
.LCPI0_3:
	.quad	-4594234569871327232    # double -30
	.quad	-4594234569871327232    # double -30
.LCPI0_4:
	.quad	-4606619468846596096    # double -4.5
	.quad	-4606619468846596096    # double -4.5
.LCPI0_5:
	.quad	4625478292286210048     # double 17
	.quad	4625478292286210048     # double 17
.LCPI0_6:
	.quad	-4608308318706860032    # double -3.5
	.quad	-4608308318706860032    # double -3.5
.LCPI0_7:
	.quad	4626885667169763328     # double 22
	.quad	4626885667169763328     # double 22
.LCPI0_8:
	.quad	-4593953094894616576    # double -31
	.quad	-4593953094894616576    # double -31
.LCPI0_9:
	.quad	-4599470004438145434    # double -13.699999999999999
	.quad	-4599470004438145434    # double -13.699999999999999
.LCPI0_10:
	.quad	-4593249407452839936    # double -35
	.quad	-4593249407452839936    # double -35
.LCPI0_11:
	.quad	1072497001              # 0x3fed0169
	.quad	1072497001              # 0x3fed0169
.LCPI0_20:
	.quad	4616189618054758400     # double 4
	.quad	4616189618054758400     # double 4
.LCPI0_21:
	.quad	4640537203540230144     # double 180
	.quad	4640537203540230144     # double 180
.LCPI0_22:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
.LCPI0_23:
	.quad	4621819117588971520     # double 10
	.quad	4621819117588971520     # double 10
.LCPI0_25:
	.quad	4617315517961601024     # double 5
	.quad	4617315517961601024     # double 5
.LCPI0_28:
	.quad	-4616189618054758400    # double -1
	.quad	-4616189618054758400    # double -1
.LCPI0_31:
	.quad	4602678819172646912     # double 0.5
	.quad	4602678819172646912     # double 0.5
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_12:
	.quad	4607182418800017408     # double 1
.LCPI0_13:
	.quad	4621819117588971520     # double 10
.LCPI0_14:
	.quad	4645040803167600640     # double 360
.LCPI0_15:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_16:
	.quad	4611686018427387904     # double 2
.LCPI0_17:
	.quad	4616189618054758400     # double 4
.LCPI0_18:
	.quad	4640537203540230144     # double 180
.LCPI0_19:
	.quad	4613937818241073152     # double 3
.LCPI0_24:
	.quad	4617315517961601024     # double 5
.LCPI0_26:
	.quad	4624633867356078080     # double 15
.LCPI0_27:
	.quad	-4616189618054758400    # double -1
.LCPI0_29:
	.quad	-4600989969312382976    # double -11
.LCPI0_30:
	.quad	4602678819172646912     # double 0.5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$1600, %rsp             # imm = 0x640
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 1184(%rsp)
	movl	$0, 1180(%rsp)
	movapd	.LCPI0_0(%rip), %xmm1   # xmm1 = [1.000000e+00,1.000000e+00]
	movapd	%xmm1, 1152(%rsp)
	movabsq	$4607182418800017408, %rax # imm = 0x3FF0000000000000
	movq	%rax, 1144(%rsp)
	movapd	.LCPI0_1(%rip), %xmm2   # xmm2 = [-1.050000e+01,-1.050000e+01]
	movapd	%xmm2, 1120(%rsp)
	movabsq	$-4601271444289093632, %rcx # imm = 0xC025000000000000
	movq	%rcx, 1112(%rsp)
	movapd	.LCPI0_2(%rip), %xmm2   # xmm2 = [3.200000e+01,3.200000e+01]
	movapd	%xmm2, 1088(%rsp)
	movabsq	$4629700416936869888, %rcx # imm = 0x4040000000000000
	movq	%rcx, 1080(%rsp)
	movapd	.LCPI0_3(%rip), %xmm2   # xmm2 = [-3.000000e+01,-3.000000e+01]
	movapd	%xmm2, 1056(%rsp)
	movabsq	$-4594234569871327232, %rcx # imm = 0xC03E000000000000
	movq	%rcx, 1048(%rsp)
	movapd	%xmm1, 1024(%rsp)
	movq	%rax, 1016(%rsp)
	movapd	.LCPI0_4(%rip), %xmm3   # xmm3 = [-4.500000e+00,-4.500000e+00]
	movapd	%xmm3, 992(%rsp)
	movabsq	$-4606619468846596096, %rdx # imm = 0xC012000000000000
	movq	%rdx, 984(%rsp)
	movapd	.LCPI0_5(%rip), %xmm3   # xmm3 = [1.700000e+01,1.700000e+01]
	movapd	%xmm3, 960(%rsp)
	movabsq	$4625478292286210048, %rdx # imm = 0x4031000000000000
	movq	%rdx, 952(%rsp)
	movapd	%xmm2, 928(%rsp)
	movq	%rcx, 920(%rsp)
	movapd	%xmm1, 896(%rsp)
	movq	%rax, 888(%rsp)
	movapd	.LCPI0_6(%rip), %xmm2   # xmm2 = [-3.500000e+00,-3.500000e+00]
	movapd	%xmm2, 864(%rsp)
	movabsq	$-4608308318706860032, %rcx # imm = 0xC00C000000000000
	movq	%rcx, 856(%rsp)
	movapd	.LCPI0_7(%rip), %xmm2   # xmm2 = [2.200000e+01,2.200000e+01]
	movapd	%xmm2, 832(%rsp)
	movabsq	$4626885667169763328, %rcx # imm = 0x4036000000000000
	movq	%rcx, 824(%rsp)
	movapd	.LCPI0_8(%rip), %xmm2   # xmm2 = [-3.100000e+01,-3.100000e+01]
	movapd	%xmm2, 800(%rsp)
	movabsq	$-4593953094894616576, %rcx # imm = 0xC03F000000000000
	movq	%rcx, 792(%rsp)
	movapd	%xmm1, 768(%rsp)
	movq	%rax, 760(%rsp)
	movapd	.LCPI0_9(%rip), %xmm2   # xmm2 = [-1.370000e+01,-1.370000e+01]
	movapd	%xmm2, 736(%rsp)
	movabsq	$-4599470004438145434, %rcx # imm = 0xC02B666666666666
	movq	%rcx, 728(%rsp)
	movapd	%xmm1, 704(%rsp)
	movq	%rax, 696(%rsp)
	movapd	.LCPI0_10(%rip), %xmm1  # xmm1 = [-3.500000e+01,-3.500000e+01]
	movapd	%xmm1, 672(%rsp)
	movabsq	$-4593249407452839936, %rax # imm = 0xC041800000000000
	movq	%rax, 664(%rsp)
	movaps	.LCPI0_11(%rip), %xmm1  # xmm1 = [1072497001,1072497001]
	movaps	%xmm1, 528(%rsp)
	movaps	%xmm1, 512(%rsp)
	movq	$1072497001, 504(%rsp)  # imm = 0x3FED0169
	movaps	%xmm0, 464(%rsp)
	movaps	%xmm0, 448(%rsp)
	movq	$0, 440(%rsp)
	movl	$.L.str, %esi
	movl	%esi, %edi
	xorl	%esi, %esi
	movb	%sil, %r8b
	movb	%r8b, %al
	movaps	%xmm0, 416(%rsp)        # 16-byte Spill
	movb	%r8b, 415(%rsp)         # 1-byte Spill
	callq	printf
	movsd	1144(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	1112(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	1080(%rsp), %xmm2       # xmm2 = mem[0],zero
	movsd	1048(%rsp), %xmm3       # xmm3 = mem[0],zero
	leaq	588(%rsp), %rdi
	leaq	640(%rsp), %rsi
	movl	%eax, 408(%rsp)         # 4-byte Spill
	callq	SolveCubic
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	movb	415(%rsp), %al          # 1-byte Reload
	callq	printf
	movaps	416(%rsp), %xmm0        # 16-byte Reload
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 404(%rsp)         # 4-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB0_4
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	556(%rsp), %rax
	movsd	640(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 400(%rsp)         # 4-byte Spill
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	556(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 560(%rsp)
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 560(%rsp)
	addl	$1, %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_1
.LBB0_4:
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, 399(%rsp)          # 1-byte Spill
	callq	printf
	movsd	1016(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	984(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	952(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	920(%rsp), %xmm3        # xmm3 = mem[0],zero
	leaq	588(%rsp), %rdi
	leaq	640(%rsp), %rsi
	movl	%eax, 392(%rsp)         # 4-byte Spill
	callq	SolveCubic
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	movb	399(%rsp), %al          # 1-byte Reload
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 388(%rsp)         # 4-byte Spill
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB0_8
# BB#6:                                 #   in Loop: Header=BB0_5 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	556(%rsp), %rax
	movsd	640(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 384(%rsp)         # 4-byte Spill
# BB#7:                                 #   in Loop: Header=BB0_5 Depth=1
	movl	556(%rsp), %eax
	movaps	560(%rsp), %xmm0
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 560(%rsp)
	addl	$1, %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_5
.LBB0_8:
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, 383(%rsp)          # 1-byte Spill
	callq	printf
	movsd	888(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	856(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	824(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	792(%rsp), %xmm3        # xmm3 = mem[0],zero
	leaq	588(%rsp), %rdi
	leaq	640(%rsp), %rsi
	movl	%eax, 376(%rsp)         # 4-byte Spill
	callq	SolveCubic
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	movb	383(%rsp), %al          # 1-byte Reload
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 372(%rsp)         # 4-byte Spill
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB0_12
# BB#10:                                #   in Loop: Header=BB0_9 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	556(%rsp), %rax
	movsd	640(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 368(%rsp)         # 4-byte Spill
# BB#11:                                #   in Loop: Header=BB0_9 Depth=1
	movl	556(%rsp), %eax
	movaps	560(%rsp), %xmm0
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 560(%rsp)
	addl	$1, %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_9
.LBB0_12:
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, 367(%rsp)          # 1-byte Spill
	callq	printf
	movsd	760(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	728(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	696(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	664(%rsp), %xmm3        # xmm3 = mem[0],zero
	leaq	588(%rsp), %rdi
	leaq	640(%rsp), %rsi
	movl	%eax, 360(%rsp)         # 4-byte Spill
	callq	SolveCubic
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	movb	367(%rsp), %al          # 1-byte Reload
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 356(%rsp)         # 4-byte Spill
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB0_16
# BB#14:                                #   in Loop: Header=BB0_13 Depth=1
	movabsq	$.L.str.2, %rdi
	movslq	556(%rsp), %rax
	movsd	640(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 352(%rsp)         # 4-byte Spill
# BB#15:                                #   in Loop: Header=BB0_13 Depth=1
	movl	556(%rsp), %eax
	movaps	560(%rsp), %xmm0
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 560(%rsp)
	addl	$1, %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_13
.LBB0_16:
	movsd	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.3, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movsd	%xmm0, 344(%rsp)        # 8-byte Spill
	callq	printf
	movapd	.LCPI0_0(%rip), %xmm0   # xmm0 = [1.000000e+00,1.000000e+00]
	movapd	%xmm0, 1152(%rsp)
	movsd	344(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1144(%rsp)
	movl	%eax, 340(%rsp)         # 4-byte Spill
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_23 Depth 4
                                        #           Child Loop BB0_25 Depth 5
	movsd	.LCPI0_13(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	1144(%rsp), %xmm0
	jbe	.LBB0_56
# BB#18:                                #   in Loop: Header=BB0_17 Depth=1
	movsd	.LCPI0_13(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	.LCPI0_23(%rip), %xmm1  # xmm1 = [1.000000e+01,1.000000e+01]
	movapd	%xmm1, 1120(%rsp)
	movsd	%xmm0, 1112(%rsp)
.LBB0_19:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_21 Depth 3
                                        #         Child Loop BB0_23 Depth 4
                                        #           Child Loop BB0_25 Depth 5
	xorps	%xmm0, %xmm0
	movsd	1112(%rsp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_49
# BB#20:                                #   in Loop: Header=BB0_19 Depth=2
	movsd	.LCPI0_24(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	.LCPI0_25(%rip), %xmm1  # xmm1 = [5.000000e+00,5.000000e+00]
	movapd	%xmm1, 1088(%rsp)
	movsd	%xmm0, 1080(%rsp)
.LBB0_21:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_23 Depth 4
                                        #           Child Loop BB0_25 Depth 5
	movsd	.LCPI0_26(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	1080(%rsp), %xmm0
	jbe	.LBB0_42
# BB#22:                                #   in Loop: Header=BB0_21 Depth=3
	movsd	.LCPI0_27(%rip), %xmm0  # xmm0 = mem[0],zero
	movapd	.LCPI0_28(%rip), %xmm1  # xmm1 = [-1.000000e+00,-1.000000e+00]
	movapd	%xmm1, 1056(%rsp)
	movsd	%xmm0, 1048(%rsp)
.LBB0_23:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_25 Depth 5
	movsd	.LCPI0_29(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	1048(%rsp), %xmm1       # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB0_35
# BB#24:                                #   in Loop: Header=BB0_23 Depth=4
	movsd	1144(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	1112(%rsp), %xmm1       # xmm1 = mem[0],zero
	movsd	1080(%rsp), %xmm2       # xmm2 = mem[0],zero
	movsd	1048(%rsp), %xmm3       # xmm3 = mem[0],zero
	leaq	588(%rsp), %rdi
	leaq	640(%rsp), %rsi
	callq	SolveCubic
	movl	$.L.str.1, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 336(%rsp)         # 4-byte Spill
.LBB0_25:                               #   Parent Loop BB0_17 Depth=1
                                        #     Parent Loop BB0_19 Depth=2
                                        #       Parent Loop BB0_21 Depth=3
                                        #         Parent Loop BB0_23 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	556(%rsp), %eax
	cmpl	588(%rsp), %eax
	jge	.LBB0_28
# BB#26:                                #   in Loop: Header=BB0_25 Depth=5
	movabsq	$.L.str.2, %rdi
	movslq	556(%rsp), %rax
	movsd	640(%rsp,%rax,8), %xmm0 # xmm0 = mem[0],zero
	movb	$1, %al
	callq	printf
	movl	%eax, 332(%rsp)         # 4-byte Spill
# BB#27:                                #   in Loop: Header=BB0_25 Depth=5
	movl	556(%rsp), %eax
	movaps	560(%rsp), %xmm0
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, 560(%rsp)
	addl	$1, %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_25
.LBB0_28:                               #   in Loop: Header=BB0_23 Depth=4
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, 328(%rsp)         # 4-byte Spill
# BB#29:                                #   in Loop: Header=BB0_23 Depth=4
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	1048(%rsp), %xmm2       # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movaps	%xmm3, 1056(%rsp)
	movapd	.LCPI0_28(%rip), %xmm4  # xmm4 = [-1.000000e+00,-1.000000e+00]
	addpd	%xmm4, %xmm3
	movapd	%xmm3, 1056(%rsp)
	movaps	%xmm3, %xmm4
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm2, 1560(%rsp)
	ucomisd	%xmm1, %xmm5
	movsd	%xmm4, 320(%rsp)        # 8-byte Spill
	movsd	%xmm2, 312(%rsp)        # 8-byte Spill
	movsd	%xmm5, 304(%rsp)        # 8-byte Spill
	jne	.LBB0_30
	jp	.LBB0_30
	jmp	.LBB0_34
.LBB0_30:                               #   in Loop: Header=BB0_23 Depth=4
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	304(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	320(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_31
	jp	.LBB0_31
	jmp	.LBB0_32
.LBB0_31:                               #   in Loop: Header=BB0_23 Depth=4
	movsd	312(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1560(%rsp)
	jmp	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_23 Depth=4
	movsd	320(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1560(%rsp)
.LBB0_33:                               #   in Loop: Header=BB0_23 Depth=4
	jmp	.LBB0_34
.LBB0_34:                               #   in Loop: Header=BB0_23 Depth=4
	movsd	1560(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 1048(%rsp)
	jmp	.LBB0_23
.LBB0_35:                               #   in Loop: Header=BB0_21 Depth=3
	jmp	.LBB0_36
.LBB0_36:                               #   in Loop: Header=BB0_21 Depth=3
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_30(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	1080(%rsp), %xmm2       # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movaps	%xmm3, 1088(%rsp)
	movapd	.LCPI0_31(%rip), %xmm4  # xmm4 = [5.000000e-01,5.000000e-01]
	addpd	%xmm4, %xmm3
	movapd	%xmm3, 1088(%rsp)
	movaps	%xmm3, %xmm4
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm2, 1528(%rsp)
	ucomisd	%xmm1, %xmm5
	movsd	%xmm4, 296(%rsp)        # 8-byte Spill
	movsd	%xmm2, 288(%rsp)        # 8-byte Spill
	movsd	%xmm5, 280(%rsp)        # 8-byte Spill
	jne	.LBB0_37
	jp	.LBB0_37
	jmp	.LBB0_41
.LBB0_37:                               #   in Loop: Header=BB0_21 Depth=3
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	280(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	296(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_38
	jp	.LBB0_38
	jmp	.LBB0_39
.LBB0_38:                               #   in Loop: Header=BB0_21 Depth=3
	movsd	288(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1528(%rsp)
	jmp	.LBB0_40
.LBB0_39:                               #   in Loop: Header=BB0_21 Depth=3
	movsd	296(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1528(%rsp)
.LBB0_40:                               #   in Loop: Header=BB0_21 Depth=3
	jmp	.LBB0_41
.LBB0_41:                               #   in Loop: Header=BB0_21 Depth=3
	movsd	1528(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 1080(%rsp)
	jmp	.LBB0_21
.LBB0_42:                               #   in Loop: Header=BB0_19 Depth=2
	jmp	.LBB0_43
.LBB0_43:                               #   in Loop: Header=BB0_19 Depth=2
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_27(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	1112(%rsp), %xmm2       # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movaps	%xmm3, 1120(%rsp)
	movapd	.LCPI0_28(%rip), %xmm4  # xmm4 = [-1.000000e+00,-1.000000e+00]
	addpd	%xmm4, %xmm3
	movapd	%xmm3, 1120(%rsp)
	movaps	%xmm3, %xmm4
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm2, 1496(%rsp)
	ucomisd	%xmm1, %xmm5
	movsd	%xmm4, 272(%rsp)        # 8-byte Spill
	movsd	%xmm2, 264(%rsp)        # 8-byte Spill
	movsd	%xmm5, 256(%rsp)        # 8-byte Spill
	jne	.LBB0_44
	jp	.LBB0_44
	jmp	.LBB0_48
.LBB0_44:                               #   in Loop: Header=BB0_19 Depth=2
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	256(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	272(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_45
	jp	.LBB0_45
	jmp	.LBB0_46
.LBB0_45:                               #   in Loop: Header=BB0_19 Depth=2
	movsd	264(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1496(%rsp)
	jmp	.LBB0_47
.LBB0_46:                               #   in Loop: Header=BB0_19 Depth=2
	movsd	272(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1496(%rsp)
.LBB0_47:                               #   in Loop: Header=BB0_19 Depth=2
	jmp	.LBB0_48
.LBB0_48:                               #   in Loop: Header=BB0_19 Depth=2
	movsd	1496(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 1112(%rsp)
	jmp	.LBB0_19
.LBB0_49:                               #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_50
.LBB0_50:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	1144(%rsp), %xmm2       # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movaps	%xmm3, 1152(%rsp)
	movapd	.LCPI0_0(%rip), %xmm4   # xmm4 = [1.000000e+00,1.000000e+00]
	addpd	%xmm4, %xmm3
	movapd	%xmm3, 1152(%rsp)
	movaps	%xmm3, %xmm4
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm3, %xmm5
	addsd	%xmm1, %xmm2
	movaps	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	%xmm2, 1464(%rsp)
	ucomisd	%xmm1, %xmm5
	movsd	%xmm4, 248(%rsp)        # 8-byte Spill
	movsd	%xmm2, 240(%rsp)        # 8-byte Spill
	movsd	%xmm5, 232(%rsp)        # 8-byte Spill
	jne	.LBB0_51
	jp	.LBB0_51
	jmp	.LBB0_55
.LBB0_51:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	232(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	248(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_52
	jp	.LBB0_52
	jmp	.LBB0_53
.LBB0_52:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	240(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1464(%rsp)
	jmp	.LBB0_54
.LBB0_53:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	248(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1464(%rsp)
.LBB0_54:                               #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               #   in Loop: Header=BB0_17 Depth=1
	movsd	1464(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 1144(%rsp)
	jmp	.LBB0_17
.LBB0_56:
	movl	$.L.str.4, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 560(%rsp)
	movl	$0, 556(%rsp)
	movl	%eax, 228(%rsp)         # 4-byte Spill
.LBB0_57:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1001, 556(%rsp)        # imm = 0x3E9
	jge	.LBB0_65
# BB#58:                                #   in Loop: Header=BB0_57 Depth=1
	leaq	496(%rsp), %rsi
	movslq	556(%rsp), %rdi
	callq	usqrt
	movabsq	$.L.str.5, %rdi
	movl	556(%rsp), %esi
	movl	496(%rsp), %edx
	movb	$0, %al
	callq	printf
	movl	%eax, 224(%rsp)         # 4-byte Spill
# BB#59:                                #   in Loop: Header=BB0_57 Depth=1
	movl	556(%rsp), %eax
	movaps	560(%rsp), %xmm0
	movaps	.LCPI0_22(%rip), %xmm1  # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 560(%rsp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	addl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, 1436(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 220(%rsp)         # 4-byte Spill
	movl	%edi, 216(%rsp)         # 4-byte Spill
	movl	%eax, 212(%rsp)         # 4-byte Spill
	je	.LBB0_64
# BB#60:                                #   in Loop: Header=BB0_57 Depth=1
	movl	216(%rsp), %eax         # 4-byte Reload
	cltd
	movl	220(%rsp), %ecx         # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB0_62
# BB#61:                                #   in Loop: Header=BB0_57 Depth=1
	movl	212(%rsp), %eax         # 4-byte Reload
	movl	%eax, 1436(%rsp)
	jmp	.LBB0_63
.LBB0_62:                               #   in Loop: Header=BB0_57 Depth=1
	movl	220(%rsp), %eax         # 4-byte Reload
	movl	%eax, 1436(%rsp)
.LBB0_63:                               #   in Loop: Header=BB0_57 Depth=1
	jmp	.LBB0_64
.LBB0_64:                               #   in Loop: Header=BB0_57 Depth=1
	movl	1436(%rsp), %eax
	movl	%eax, 556(%rsp)
	jmp	.LBB0_57
.LBB0_65:
	xorps	%xmm0, %xmm0
	movq	504(%rsp), %rdi
	leaq	496(%rsp), %rsi
	movsd	%xmm0, 200(%rsp)        # 8-byte Spill
	callq	usqrt
	movq	504(%rsp), %rsi
	movl	496(%rsp), %edx
	movl	$.L.str.6, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movb	%cl, 199(%rsp)          # 1-byte Spill
	callq	printf
	movl	$.L.str.7, %edx
	movl	%edx, %edi
	movb	199(%rsp), %cl          # 1-byte Reload
	movl	%eax, 192(%rsp)         # 4-byte Spill
	movb	%cl, %al
	callq	printf
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 624(%rsp)
	movsd	200(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	movl	%eax, 188(%rsp)         # 4-byte Spill
.LBB0_66:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_14(%rip), %xmm0  # xmm0 = mem[0],zero
	ucomisd	616(%rsp), %xmm0
	jb	.LBB0_69
# BB#67:                                #   in Loop: Header=BB0_66 Depth=1
	movabsq	$.L.str.8, %rdi
	movsd	.LCPI0_18(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	616(%rsp), %xmm2        # xmm2 = mem[0],zero
	movaps	%xmm2, %xmm3
	movaps	%xmm2, %xmm4
	movlhps	%xmm4, %xmm4            # xmm4 = xmm4[0,0]
	movaps	%xmm4, 624(%rsp)
	movsd	.LCPI0_12(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	%xmm0, 176(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movq	%rdi, 168(%rsp)         # 8-byte Spill
	movsd	%xmm3, 160(%rsp)        # 8-byte Spill
	movsd	%xmm1, 152(%rsp)        # 8-byte Spill
	movsd	%xmm2, 144(%rsp)        # 8-byte Spill
	callq	atan
	movaps	%xmm0, %xmm1
	movsd	%xmm0, 1368(%rsp)
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movupd	%xmm0, 1344(%rsp)
	movsd	152(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	144(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	176(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	168(%rsp), %rdi         # 8-byte Reload
	movsd	160(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$2, %al
	callq	printf
	movl	%eax, 140(%rsp)         # 4-byte Spill
# BB#68:                                #   in Loop: Header=BB0_66 Depth=1
	movsd	.LCPI0_12(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	616(%rsp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movaps	%xmm2, 624(%rsp)
	movapd	.LCPI0_0(%rip), %xmm3   # xmm3 = [1.000000e+00,1.000000e+00]
	addpd	%xmm3, %xmm2
	movapd	%xmm2, 624(%rsp)
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 616(%rsp)
	jmp	.LBB0_66
.LBB0_69:
	xorps	%xmm0, %xmm0
	movl	$.L.str.9, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	movsd	%xmm0, 128(%rsp)        # 8-byte Spill
	callq	puts
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 624(%rsp)
	movsd	128(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	movl	%eax, 124(%rsp)         # 4-byte Spill
.LBB0_70:                               # =>This Inner Loop Header: Depth=1
	movsd	.LCPI0_15(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_16(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	.LCPI0_17(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	616(%rsp), %xmm3        # xmm3 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm4  # xmm4 = mem[0],zero
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movaps	%xmm4, %xmm0
	movsd	%xmm3, 104(%rsp)        # 8-byte Spill
	movsd	%xmm1, 96(%rsp)         # 8-byte Spill
	movsd	%xmm2, 88(%rsp)         # 8-byte Spill
	callq	atan
	movaps	%xmm0, %xmm1
	movsd	%xmm0, 1320(%rsp)
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movupd	%xmm0, 1296(%rsp)
	movsd	88(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	96(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	112(%rsp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	104(%rsp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	ucomisd	%xmm2, %xmm1
	jb	.LBB0_78
# BB#71:                                #   in Loop: Header=BB0_70 Depth=1
	movabsq	$.L.str.10, %rdi
	movsd	.LCPI0_17(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	616(%rsp), %xmm1        # xmm1 = mem[0],zero
	movsd	.LCPI0_18(%rip), %xmm2  # xmm2 = mem[0],zero
	movaps	%xmm1, %xmm3
	mulsd	%xmm2, %xmm3
	movsd	.LCPI0_12(%rip), %xmm2  # xmm2 = mem[0],zero
	movsd	%xmm0, 80(%rsp)         # 8-byte Spill
	movaps	%xmm2, %xmm0
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm1, 56(%rsp)         # 8-byte Spill
	callq	atan
	movaps	%xmm0, %xmm1
	movsd	%xmm0, 1272(%rsp)
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movupd	%xmm0, 1248(%rsp)
	movsd	80(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	64(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movq	72(%rsp), %rdi          # 8-byte Reload
	movsd	56(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$2, %al
	callq	printf
	movl	%eax, 52(%rsp)          # 4-byte Spill
# BB#72:                                #   in Loop: Header=BB0_70 Depth=1
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	.LCPI0_12(%rip), %xmm1  # xmm1 = mem[0],zero
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movaps	%xmm1, %xmm0
	callq	atan
	movsd	%xmm0, 1224(%rsp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, 1200(%rsp)
	movapd	.LCPI0_20(%rip), %xmm2  # xmm2 = [4.000000e+00,4.000000e+00]
	mulpd	%xmm2, %xmm1
	movsd	.LCPI0_17(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movapd	.LCPI0_21(%rip), %xmm2  # xmm2 = [1.800000e+02,1.800000e+02]
	divpd	%xmm2, %xmm1
	movsd	.LCPI0_18(%rip), %xmm2  # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm0
	movsd	616(%rsp), %xmm2        # xmm2 = mem[0],zero
	movapd	624(%rsp), %xmm3
	addpd	%xmm1, %xmm3
	movapd	%xmm3, 624(%rsp)
	movaps	%xmm3, %xmm1
	movhlps	%xmm3, %xmm3            # xmm3 = xmm3[1,1]
	movaps	%xmm1, %xmm4
	addsd	%xmm3, %xmm4
	addsd	%xmm3, %xmm4
	addsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	40(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	mulsd	%xmm3, %xmm0
	movsd	%xmm2, 1400(%rsp)
	ucomisd	%xmm0, %xmm4
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	movsd	%xmm1, 24(%rsp)         # 8-byte Spill
	movsd	%xmm4, 16(%rsp)         # 8-byte Spill
	jne	.LBB0_73
	jp	.LBB0_73
	jmp	.LBB0_77
.LBB0_73:                               #   in Loop: Header=BB0_70 Depth=1
	movsd	.LCPI0_19(%rip), %xmm0  # xmm0 = mem[0],zero
	movsd	16(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	divsd	%xmm2, %xmm1
	ucomisd	%xmm0, %xmm1
	jne	.LBB0_74
	jp	.LBB0_74
	jmp	.LBB0_75
.LBB0_74:                               #   in Loop: Header=BB0_70 Depth=1
	movsd	32(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1400(%rsp)
	jmp	.LBB0_76
.LBB0_75:                               #   in Loop: Header=BB0_70 Depth=1
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, 1400(%rsp)
.LBB0_76:                               #   in Loop: Header=BB0_70 Depth=1
	jmp	.LBB0_77
.LBB0_77:                               #   in Loop: Header=BB0_70 Depth=1
	movsd	1400(%rsp), %xmm0       # xmm0 = mem[0],zero
	movsd	%xmm0, 616(%rsp)
	jmp	.LBB0_70
.LBB0_78:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_0:
	.quad	4616189618054758400     # double 4
.LCPI1_1:
	.quad	4640537203540230144     # double 180
.LCPI1_2:
	.quad	4607182418800017408     # double 1
	.text
	.globl	rad2deg
	.p2align	4, 0x90
	.type	rad2deg,@function
rad2deg:                                # @rad2deg
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$96, %rsp
	movsd	.LCPI1_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movaps	%xmm0, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movaps	%xmm2, -64(%rbp)
	movsd	.LCPI1_1(%rip), %xmm2   # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movsd	.LCPI1_2(%rip), %xmm2   # xmm2 = mem[0],zero
	movsd	%xmm0, -80(%rbp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	atan
	movaps	%xmm0, %xmm1
	movsd	%xmm0, -24(%rbp)
	movlhps	%xmm0, %xmm0            # xmm0 = xmm0[0,0]
	movupd	%xmm0, -48(%rbp)
	movsd	-88(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	rad2deg, .Lfunc_end1-rad2deg

	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI2_0:
	.quad	4640537203540230144     # double 180
.LCPI2_1:
	.quad	4607182418800017408     # double 1
.LCPI2_2:
	.quad	4616189618054758400     # double 4
	.text
	.globl	deg2rad
	.p2align	4, 0x90
	.type	deg2rad,@function
deg2rad:                                # @deg2rad
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$80, %rsp
	movsd	.LCPI2_0(%rip), %xmm1   # xmm1 = mem[0],zero
	movsd	%xmm0, -72(%rbp)
	movsd	.LCPI2_1(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	%xmm1, -80(%rbp)        # 8-byte Spill
	callq	atan
	movsd	%xmm0, -24(%rbp)
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, -48(%rbp)
	movsd	.LCPI2_2(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movapd	%xmm2, -64(%rbp)
	mulsd	%xmm1, %xmm0
	movsd	-80(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	addq	$80, %rsp
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
	andq	$-64, %rsp
	subq	$1920, %rsp             # imm = 0x780
	xorps	%xmm4, %xmm4
	movsd	%xmm0, 520(%rsp)
	movsd	%xmm1, 488(%rsp)
	movsd	%xmm2, 456(%rsp)
	movsd	%xmm3, 424(%rsp)
	movq	%rdi, 416(%rsp)
	movq	%rsi, 408(%rsp)
	movsd	488(%rsp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, 496(%rsp)
	movsd	520(%rsp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movaps	%xmm2, 528(%rsp)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 256(%rsp)
	fldl	256(%rsp)
	fstpt	384(%rsp)
	movsd	456(%rsp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, 464(%rsp)
	movsd	520(%rsp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movaps	%xmm2, 528(%rsp)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 248(%rsp)
	fldl	248(%rsp)
	fstpt	368(%rsp)
	movsd	424(%rsp), %xmm0        # xmm0 = mem[0],zero
	movaps	%xmm0, %xmm1
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movaps	%xmm1, 432(%rsp)
	movsd	520(%rsp), %xmm1        # xmm1 = mem[0],zero
	movaps	%xmm1, %xmm2
	movlhps	%xmm2, %xmm2            # xmm2 = xmm2[0,0]
	movaps	%xmm2, 528(%rsp)
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 240(%rsp)
	fldl	240(%rsp)
	fstpt	352(%rsp)
	fldt	384(%rsp)
	fmul	%st(0), %st(0)
	fldt	368(%rsp)
	flds	.LCPI3_0(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_1(%rip)
	fdivr	%st(0), %st(1)
	fxch	%st(1)
	fstpt	336(%rsp)
	fldt	384(%rsp)
	fld	%st(0)
	fadd	%st(1)
	fmul	%st(1)
	fmul	%st(1)
	fxch	%st(1)
	fmulp	%st(2)
	fldt	368(%rsp)
	fmulp	%st(2)
	fsubp	%st(1)
	fldt	352(%rsp)
	flds	.LCPI3_2(%rip)
	fmulp	%st(1)
	faddp	%st(1)
	flds	.LCPI3_3(%rip)
	fdivrp	%st(1)
	fld	%st(0)
	fstpt	320(%rsp)
	fmul	%st(0), %st(0)
	fldt	336(%rsp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fsubrp	%st(1)
	fstpl	232(%rsp)
	movsd	232(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, 296(%rsp)
	ucomisd	296(%rsp), %xmm4
	jb	.LBB3_2
# BB#1:
	movq	416(%rsp), %rax
	movl	$3, (%rax)
	fldt	320(%rsp)
	fldt	336(%rsp)
	fld	%st(0)
	fmul	%st(1)
	fmulp	%st(1)
	fstpl	208(%rsp)
	movsd	208(%rsp), %xmm0        # xmm0 = mem[0],zero
	fstpt	124(%rsp)               # 10-byte Folded Spill
	callq	sqrt
	movsd	%xmm0, 200(%rsp)
	fldl	200(%rsp)
	fldt	124(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	fstpl	192(%rsp)
	movsd	192(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	acos
	movsd	%xmm0, 264(%rsp)
	fldt	336(%rsp)
	fstpl	184(%rsp)
	movsd	184(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	.LCPI3_6(%rip), %xmm1   # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	264(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI3_7(%rip), %xmm3   # xmm3 = mem[0],zero
	divsd	%xmm3, %xmm2
	movsd	%xmm0, 112(%rsp)        # 8-byte Spill
	movaps	%xmm2, %xmm0
	movsd	%xmm1, 104(%rsp)        # 8-byte Spill
	movsd	%xmm3, 96(%rsp)         # 8-byte Spill
	callq	cos
	movsd	112(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 176(%rsp)
	fldl	176(%rsp)
	fldt	384(%rsp)
	flds	.LCPI3_8(%rip)
	fdivr	%st(0), %st(1)
	fxch	%st(2)
	fsubp	%st(1)
	movq	408(%rsp), %rax
	fstpl	(%rax)
	fldt	336(%rsp)
	fstpl	168(%rsp)
	movsd	168(%rsp), %xmm0        # xmm0 = mem[0],zero
	fstpt	84(%rsp)                # 10-byte Folded Spill
	callq	sqrt
	movsd	104(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	264(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	.LCPI3_9(%rip), %xmm3   # xmm3 = mem[0],zero
	movsd	%xmm0, 72(%rsp)         # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm3, 64(%rsp)         # 8-byte Spill
	movsd	%xmm2, 56(%rsp)         # 8-byte Spill
	callq	atan
	movsd	.LCPI3_10(%rip), %xmm1  # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	56(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	movsd	%xmm1, 48(%rsp)         # 8-byte Spill
	callq	cos
	movsd	72(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 160(%rsp)
	fldl	160(%rsp)
	fldt	384(%rsp)
	fldt	84(%rsp)                # 10-byte Folded Reload
	fdivrp	%st(1)
	fsubrp	%st(1)
	movq	408(%rsp), %rax
	fstpl	8(%rax)
	fldt	336(%rsp)
	fstpl	152(%rsp)
	movsd	152(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	movsd	104(%rsp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	264(%rsp), %xmm2        # xmm2 = mem[0],zero
	movsd	64(%rsp), %xmm3         # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm2, 32(%rsp)         # 8-byte Spill
	callq	atan
	movsd	48(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	32(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	movsd	96(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	divsd	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
	callq	cos
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, 144(%rsp)
	fldl	144(%rsp)
	fldt	384(%rsp)
	fldt	84(%rsp)                # 10-byte Folded Reload
	fdivrp	%st(1)
	fsubrp	%st(1)
	fstpl	136(%rsp)
	movsd	136(%rsp), %xmm0        # xmm0 = mem[0],zero
	movq	408(%rsp), %rax
	movsd	%xmm0, 16(%rax)
	jmp	.LBB3_3
.LBB3_2:
	movq	416(%rsp), %rax
	movl	$1, (%rax)
	movsd	296(%rsp), %xmm0        # xmm0 = mem[0],zero
	callq	sqrt
	fldt	320(%rsp)
	fstpl	224(%rsp)
	movsd	224(%rsp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI3_4(%rip), %xmm2   # xmm2 = [nan,nan]
	andpd	%xmm2, %xmm1
	movaps	%xmm1, %xmm2
	movsd	%xmm0, 616(%rsp)
	movaps	%xmm0, %xmm3
	movlhps	%xmm3, %xmm3            # xmm3 = xmm3[0,0]
	movups	%xmm3, 592(%rsp)
	movlpd	%xmm1, 568(%rsp)
	movlhps	%xmm1, %xmm1            # xmm1 = xmm1[0,0]
	movups	%xmm1, 544(%rsp)
	addsd	%xmm2, %xmm0
	movsd	.LCPI3_5(%rip), %xmm1   # xmm1 = mem[0],zero
	callq	pow
	movq	408(%rsp), %rax
	movsd	%xmm0, (%rax)
	fldt	336(%rsp)
	movq	408(%rsp), %rax
	fldl	(%rax)
	fdivr	%st(0), %st(1)
	faddp	%st(1)
	fstpl	(%rax)
	fldt	320(%rsp)
	fldz
	fucompi	%st(1)
	fstp	%st(0)
	movl	$1, %ecx
	movl	$-1, %edx
	cmoval	%ecx, %edx
	cvtsi2sdl	%edx, %xmm0
	movq	408(%rsp), %rax
	movsd	(%rax), %xmm1           # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm1, (%rax)
	fldt	384(%rsp)
	flds	.LCPI3_0(%rip)
	fdivrp	%st(1)
	movq	408(%rsp), %rax
	fldl	(%rax)
	faddp	%st(1)
	fstpl	216(%rsp)
	movsd	216(%rsp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax)
.LBB3_3:
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SolveCubic, .Lfunc_end3-SolveCubic

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI4_0:
	.quad	3221225472              # 0xc0000000
	.quad	3221225472              # 0xc0000000
.LCPI4_1:
	.quad	1                       # 0x1
	.quad	1                       # 0x1
.LCPI4_2:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	usqrt
	.p2align	4, 0x90
	.type	usqrt,@function
usqrt:                                  # @usqrt
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	andq	$-32, %rsp
	subq	$608, %rsp              # imm = 0x260
	movq	%rdi, 312(%rsp)
	movq	%rsi, 304(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	$0, 248(%rsp)
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movq	$0, 184(%rsp)
	movaps	%xmm0, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	movq	$0, 120(%rsp)
	movaps	%xmm0, 96(%rsp)
	movl	$0, 92(%rsp)
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$32, 92(%rsp)
	jge	.LBB4_26
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	184(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	psllq	$2, %xmm0
	movq	312(%rsp), %rcx
	movd	%rcx, %xmm1
	pshufd	$68, %xmm1, %xmm1       # xmm1 = xmm1[0,1,0,1]
	movaps	%xmm1, 336(%rsp)
	movaps	%xmm1, 320(%rsp)
	movaps	.LCPI4_0(%rip), %xmm2   # xmm2 = [3221225472,3221225472]
	pand	%xmm2, %xmm1
	movl	%ecx, %edx
	andl	$-1073741824, %edx      # imm = 0xC0000000
	movl	%edx, %ecx
	psrlq	$30, %xmm1
	shrq	$30, %rcx
	paddq	%xmm1, %xmm0
	movaps	%xmm0, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	leaq	(%rcx,%rax,4), %rax
	movq	%rax, 184(%rsp)
	movq	312(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	psllq	$2, %xmm0
	movaps	%xmm0, 336(%rsp)
	movaps	%xmm0, 320(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movq	%rcx, %rdi
	movq	%rcx, %r8
	addq	%rsi, %r8
	addq	%rdi, %r8
	shlq	$2, %rax
	imulq	$3, %rax, %rsi
	movq	%rax, 536(%rsp)
	cmpq	%rsi, %r8
	movq	%r8, 80(%rsp)           # 8-byte Spill
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	%rax, 64(%rsp)          # 8-byte Spill
	je	.LBB4_7
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	80(%rsp), %rax          # 8-byte Reload
	cqto
	movq	72(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB4_5
# BB#4:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 536(%rsp)
	jmp	.LBB4_6
.LBB4_5:                                #   in Loop: Header=BB4_1 Depth=1
	movq	72(%rsp), %rax          # 8-byte Reload
	movq	%rax, 536(%rsp)
.LBB4_6:                                #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_7
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	movq	536(%rsp), %rax
	movq	%rax, 312(%rsp)
	movq	248(%rsp), %rax
	movd	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	paddq	%xmm0, %xmm0
	movaps	.LCPI4_1(%rip), %xmm1   # xmm1 = [1,1]
	movaps	%xmm0, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movq	%rax, %rcx
	addq	%rcx, %rcx
	movq	%rcx, 248(%rsp)
	movaps	256(%rsp), %xmm0
	movaps	272(%rsp), %xmm2
	paddq	%xmm2, %xmm2
	paddq	%xmm0, %xmm0
	shlq	$2, %rax
	paddq	%xmm1, %xmm0
	paddq	%xmm1, %xmm2
	movaps	%xmm2, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	addq	$1, %rax
	movq	%rax, 120(%rsp)
	movq	184(%rsp), %rax
	cmpq	120(%rsp), %rax
	jb	.LBB4_19
# BB#8:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	120(%rsp), %rax
	movq	184(%rsp), %rcx
	movaps	192(%rsp), %xmm0
	movaps	208(%rsp), %xmm1
	movaps	128(%rsp), %xmm2
	movaps	144(%rsp), %xmm3
	psubq	%xmm2, %xmm0
	psubq	%xmm3, %xmm1
	movaps	%xmm1, 208(%rsp)
	movaps	%xmm0, 192(%rsp)
	movd	%xmm0, %rdx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rsi
	movd	%xmm1, %rdi
	movq	%rdx, %r8
	addq	%rsi, %r8
	addq	%rdi, %r8
	subq	%rax, %rcx
	imulq	$3, %rcx, %rax
	movq	%rcx, 472(%rsp)
	cmpq	%rax, %r8
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movq	%r8, 40(%rsp)           # 8-byte Spill
	je	.LBB4_13
# BB#9:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	cqto
	movq	48(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB4_11
# BB#10:                                #   in Loop: Header=BB4_1 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 472(%rsp)
	jmp	.LBB4_12
.LBB4_11:                               #   in Loop: Header=BB4_1 Depth=1
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	%rax, 472(%rsp)
.LBB4_12:                               #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_13
.LBB4_13:                               #   in Loop: Header=BB4_1 Depth=1
	movq	472(%rsp), %rax
	movq	%rax, 184(%rsp)
	movq	248(%rsp), %rax
	movaps	256(%rsp), %xmm0
	movaps	272(%rsp), %xmm1
	movaps	.LCPI4_1(%rip), %xmm2   # xmm2 = [1,1]
	paddq	%xmm2, %xmm0
	paddq	%xmm2, %xmm1
	movaps	%xmm1, 272(%rsp)
	movaps	%xmm0, 256(%rsp)
	movd	%xmm0, %rcx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %rdx
	movd	%xmm1, %rsi
	movq	%rcx, %rdi
	addq	%rdx, %rdi
	addq	%rsi, %rdi
	addq	$1, %rax
	imulq	$3, %rax, %rdx
	movq	%rax, 408(%rsp)
	cmpq	%rdx, %rdi
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rdi, 24(%rsp)          # 8-byte Spill
	movq	%rax, 16(%rsp)          # 8-byte Spill
	je	.LBB4_18
# BB#14:                                #   in Loop: Header=BB4_1 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	cqto
	movq	32(%rsp), %rcx          # 8-byte Reload
	idivq	%rcx
	cmpq	$3, %rax
	je	.LBB4_16
# BB#15:                                #   in Loop: Header=BB4_1 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 408(%rsp)
	jmp	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_1 Depth=1
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	%rax, 408(%rsp)
.LBB4_17:                               #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_18
.LBB4_18:                               #   in Loop: Header=BB4_1 Depth=1
	movq	408(%rsp), %rax
	movq	%rax, 248(%rsp)
.LBB4_19:                               #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_20
.LBB4_20:                               #   in Loop: Header=BB4_1 Depth=1
	movl	92(%rsp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, 96(%rsp)
	movaps	.LCPI4_2(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, 96(%rsp)
	movd	%xmm0, %ecx
	pshufd	$229, %xmm0, %xmm1      # xmm1 = xmm0[1,1,2,3]
	movd	%xmm1, %edx
	pshufd	$78, %xmm0, %xmm0       # xmm0 = xmm0[2,3,0,1]
	movd	%xmm0, %esi
	movl	%ecx, %edi
	addl	%edx, %edi
	addl	%esi, %edi
	addl	$1, %eax
	imull	$3, %eax, %edx
	movl	%eax, 380(%rsp)
	cmpl	%edx, %edi
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	movl	%edi, 8(%rsp)           # 4-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	je	.LBB4_25
# BB#21:                                #   in Loop: Header=BB4_1 Depth=1
	movl	8(%rsp), %eax           # 4-byte Reload
	cltd
	movl	12(%rsp), %ecx          # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB4_23
# BB#22:                                #   in Loop: Header=BB4_1 Depth=1
	movl	4(%rsp), %eax           # 4-byte Reload
	movl	%eax, 380(%rsp)
	jmp	.LBB4_24
.LBB4_23:                               #   in Loop: Header=BB4_1 Depth=1
	movl	12(%rsp), %eax          # 4-byte Reload
	movl	%eax, 380(%rsp)
.LBB4_24:                               #   in Loop: Header=BB4_1 Depth=1
	jmp	.LBB4_25
.LBB4_25:                               #   in Loop: Header=BB4_1 Depth=1
	movl	380(%rsp), %eax
	movl	%eax, 92(%rsp)
	jmp	.LBB4_1
.LBB4_26:
	movq	304(%rsp), %rax
	movq	248(%rsp), %rcx
	movq	%rcx, (%rax)
	movq	%rbp, %rsp
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
	.asciz	"\nsqrt(%lX) = %X\n"
	.size	.L.str.6, 17

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
