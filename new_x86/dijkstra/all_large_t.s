	.text
	.file	"all_large_t.bc"
	.globl	print_path
	.p2align	4, 0x90
	.type	print_path,@function
print_path:                             # @print_path
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -36(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-36(%rbp), %rax
	cmpl	$9999, 4(%rdi,%rax,8)   # imm = 0x270F
	je	.LBB0_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	4(%rax,%rcx,8), %esi
	callq	print_path
.LBB0_2:
	movabsq	$.L.str, %rdi
	movl	-36(%rbp), %esi
	movb	$0, %al
	callq	printf
	movq	stdout, %rdi
	movl	%eax, -40(%rbp)         # 4-byte Spill
	callq	fflush
	movl	%eax, -44(%rbp)         # 4-byte Spill
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	print_path, .Lfunc_end0-print_path

	.globl	enqueue
	.p2align	4, 0x90
	.type	enqueue,@function
enqueue:                                # @enqueue
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$112, %rsp
	movl	$24, %eax
	movl	%eax, %ecx
	movl	%edi, -20(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -84(%rbp)
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -96(%rbp)
	movq	qHead, %rax
	movq	%rax, -104(%rbp)
	cmpq	$0, -96(%rbp)
	jne	.LBB1_2
# BB#1:
	movabsq	$.L.str.1, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	$1, %edi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	exit
.LBB1_2:
	movl	-20(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-52(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movl	-84(%rbp), %eax
	movq	-96(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-96(%rbp), %rcx
	movq	$0, 16(%rcx)
	cmpq	$0, -104(%rbp)
	jne	.LBB1_4
# BB#3:
	movq	-96(%rbp), %rax
	movq	%rax, qHead
	jmp	.LBB1_8
.LBB1_4:
	jmp	.LBB1_5
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB1_7
# BB#6:                                 #   in Loop: Header=BB1_5 Depth=1
	movq	-104(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB1_5
.LBB1_7:
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB1_8:
	movl	g_qCount, %eax
	addl	$1, %eax
	movl	%eax, g_qCount
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	enqueue, .Lfunc_end1-enqueue

	.globl	dequeue
	.p2align	4, 0x90
	.type	dequeue,@function
dequeue:                                # @dequeue
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	qHead, %rdx
	movq	%rdx, -32(%rbp)
	cmpq	$0, qHead
	je	.LBB2_2
# BB#1:
	movq	qHead, %rax
	movl	(%rax), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, (%rax)
	movq	qHead, %rax
	movl	4(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	qHead, %rax
	movl	8(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	qHead, %rax
	movq	16(%rax), %rax
	movq	%rax, qHead
	movq	-32(%rbp), %rdi
	movb	$0, %al
	callq	free
	movl	g_qCount, %ecx
	addl	$-1, %ecx
	movl	%ecx, g_qCount
	movl	%eax, -36(%rbp)         # 4-byte Spill
.LBB2_2:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dequeue, .Lfunc_end2-dequeue

	.globl	qcount
	.p2align	4, 0x90
	.type	qcount,@function
qcount:                                 # @qcount
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	g_qCount, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	qcount, .Lfunc_end3-qcount

	.globl	dijkstra
	.p2align	4, 0x90
	.type	dijkstra,@function
dijkstra:                               # @dijkstra
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$176, %rsp
	movl	%edi, -116(%rbp)
	movl	%esi, -148(%rbp)
	movl	$0, ch
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$100, ch
	jge	.LBB4_4
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movslq	ch, %rax
	movl	$9999, rgnNodes(,%rax,8) # imm = 0x270F
	movslq	ch, %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	ch, %eax
	addl	$1, %eax
	movl	%eax, ch
	jmp	.LBB4_1
.LBB4_4:
	movl	-116(%rbp), %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB4_6
# BB#5:
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -152(%rbp)        # 4-byte Spill
	jmp	.LBB4_19
.LBB4_6:
	xorl	%esi, %esi
	movl	$9999, %edx             # imm = 0x270F
	movslq	-116(%rbp), %rax
	movl	$0, rgnNodes(,%rax,8)
	movslq	-116(%rbp), %rax
	movl	$9999, rgnNodes+4(,%rax,8) # imm = 0x270F
	movl	-116(%rbp), %edi
	callq	enqueue
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	callq	qcount
	cmpl	$0, %eax
	jle	.LBB4_18
# BB#8:                                 #   in Loop: Header=BB4_7 Depth=1
	movabsq	$iNode, %rdi
	movabsq	$iDist, %rsi
	movabsq	$iPrev, %rdx
	callq	dequeue
	movl	$0, i
.LBB4_9:                                #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$100, i
	jge	.LBB4_17
# BB#10:                                #   in Loop: Header=BB4_9 Depth=2
	movabsq	$AdjMatrix, %rax
	movslq	iNode, %rcx
	imulq	$400, %rcx, %rcx        # imm = 0x190
	addq	%rcx, %rax
	movslq	i, %rcx
	movl	(%rax,%rcx,4), %edx
	movl	%edx, iCost
	cmpl	$9999, %edx             # imm = 0x270F
	je	.LBB4_15
# BB#11:                                #   in Loop: Header=BB4_9 Depth=2
	movl	$9999, %eax             # imm = 0x270F
	movslq	i, %rcx
	cmpl	rgnNodes(,%rcx,8), %eax
	je	.LBB4_13
# BB#12:                                #   in Loop: Header=BB4_9 Depth=2
	movslq	i, %rax
	movl	rgnNodes(,%rax,8), %ecx
	movl	iCost, %edx
	addl	iDist, %edx
	cmpl	%edx, %ecx
	jle	.LBB4_14
.LBB4_13:                               #   in Loop: Header=BB4_9 Depth=2
	movl	iDist, %eax
	addl	iCost, %eax
	movslq	i, %rcx
	movl	%eax, rgnNodes(,%rcx,8)
	movl	iNode, %eax
	movslq	i, %rcx
	movl	%eax, rgnNodes+4(,%rcx,8)
	movl	i, %edi
	movl	iDist, %eax
	addl	iCost, %eax
	movl	iNode, %edx
	movl	%eax, %esi
	callq	enqueue
.LBB4_14:                               #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_15
.LBB4_15:                               #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_16
.LBB4_16:                               #   in Loop: Header=BB4_9 Depth=2
	movl	i, %eax
	addl	$1, %eax
	movl	%eax, i
	jmp	.LBB4_9
.LBB4_17:                               #   in Loop: Header=BB4_7 Depth=1
	jmp	.LBB4_7
.LBB4_18:
	movabsq	$.L.str.3, %rdi
	movslq	-148(%rbp), %rax
	movl	rgnNodes(,%rax,8), %esi
	movb	$0, %al
	callq	printf
	movabsq	$.L.str.4, %rdi
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	printf
	movabsq	$rgnNodes, %rdi
	movl	-148(%rbp), %esi
	movl	%eax, -160(%rbp)        # 4-byte Spill
	callq	print_path
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB4_19:
	movl	-84(%rbp), %eax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	dijkstra, .Lfunc_end4-dijkstra

	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI5_0:
	.long	50                      # 0x32
	.long	50                      # 0x32
	.long	50                      # 0x32
	.long	50                      # 0x32
.LCPI5_1:
	.long	1374389535              # 0x51eb851f
	.long	1374389535              # 0x51eb851f
	.long	1374389535              # 0x51eb851f
	.long	1374389535              # 0x51eb851f
.LCPI5_2:
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
	.long	100                     # 0x64
.LCPI5_3:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$272, %rsp              # imm = 0x110
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -80(%rbp)
	movl	$0, -84(%rbp)
	movl	%edi, -116(%rbp)
	movq	%rsi, -128(%rbp)
	cmpl	$2, -116(%rbp)
	jge	.LBB5_2
# BB#1:
	movabsq	$.L.str.6, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movabsq	$.L.str.7, %rsi
	movq	stderr, %rdi
	movl	%eax, -228(%rbp)        # 4-byte Spill
	movb	$0, %al
	callq	fprintf
	movl	%eax, -232(%rbp)        # 4-byte Spill
.LBB5_2:
	movq	-128(%rbp), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.8, %ecx
	movl	%ecx, %esi
	callq	fopen
	movq	%rax, -224(%rbp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movl	$0, -148(%rbp)
.LBB5_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_5 Depth 2
	cmpl	$100, -148(%rbp)
	jge	.LBB5_10
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -176(%rbp)
	movl	$0, -180(%rbp)
.LBB5_5:                                #   Parent Loop BB5_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$100, -180(%rbp)
	jge	.LBB5_8
# BB#6:                                 #   in Loop: Header=BB5_5 Depth=2
	movabsq	$.L.str.9, %rsi
	leaq	-212(%rbp), %rdx
	movq	-224(%rbp), %rdi
	movb	$0, %al
	callq	fscanf
	movabsq	$AdjMatrix, %rdx
	movl	-212(%rbp), %ecx
	movslq	-148(%rbp), %rsi
	imulq	$400, %rsi, %rsi        # imm = 0x190
	addq	%rsi, %rdx
	movslq	-180(%rbp), %rsi
	movl	%ecx, (%rdx,%rsi,4)
	movl	%eax, -236(%rbp)        # 4-byte Spill
# BB#7:                                 #   in Loop: Header=BB5_5 Depth=2
	movl	-180(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -176(%rbp)
	movaps	.LCPI5_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -176(%rbp)
	addl	$1, %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB5_5
.LBB5_8:                                #   in Loop: Header=BB5_3 Depth=1
	jmp	.LBB5_9
.LBB5_9:                                #   in Loop: Header=BB5_3 Depth=1
	movl	-148(%rbp), %eax
	movd	%eax, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, -144(%rbp)
	movaps	.LCPI5_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, -144(%rbp)
	addl	$1, %eax
	movl	%eax, -148(%rbp)
	jmp	.LBB5_3
.LBB5_10:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movl	$0, -148(%rbp)
	movaps	.LCPI5_0(%rip), %xmm0   # xmm0 = [50,50,50,50]
	movaps	%xmm0, -176(%rbp)
	movl	$50, -180(%rbp)
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	cmpl	$100, -148(%rbp)
	jge	.LBB5_24
# BB#12:                                #   in Loop: Header=BB5_11 Depth=1
	movl	$100, %eax
	movl	-180(%rbp), %ecx
	movaps	-176(%rbp), %xmm0
	movaps	.LCPI5_1(%rip), %xmm1   # xmm1 = [1374389535,1374389535,1374389535,1374389535]
	movaps	%xmm1, %xmm2
	psrad	$31, %xmm2
	pand	%xmm0, %xmm2
	movaps	%xmm0, %xmm3
	psrad	$31, %xmm3
	pand	%xmm1, %xmm3
	paddd	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	pmuludq	%xmm1, %xmm2
	pshufd	$237, %xmm2, %xmm2      # xmm2 = xmm2[1,3,2,3]
	pshufd	$245, %xmm1, %xmm1      # xmm1 = xmm1[1,1,3,3]
	pshufd	$245, %xmm0, %xmm4      # xmm4 = xmm0[1,1,3,3]
	pmuludq	%xmm1, %xmm4
	pshufd	$237, %xmm4, %xmm1      # xmm1 = xmm4[1,3,2,3]
	punpckldq	%xmm1, %xmm2    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	psubd	%xmm3, %xmm2
	movaps	%xmm2, %xmm1
	psrld	$31, %xmm1
	psrad	$5, %xmm2
	paddd	%xmm1, %xmm2
	movaps	.LCPI5_2(%rip), %xmm1   # xmm1 = [100,100,100,100]
	movaps	%xmm2, %xmm3
	pmuludq	%xmm1, %xmm3
	pshufd	$232, %xmm3, %xmm3      # xmm3 = xmm3[0,2,2,3]
	pshufd	$245, %xmm2, %xmm2      # xmm2 = xmm2[1,1,3,3]
	pmuludq	%xmm1, %xmm2
	pshufd	$232, %xmm2, %xmm1      # xmm1 = xmm2[0,2,2,3]
	punpckldq	%xmm1, %xmm3    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	psubd	%xmm3, %xmm0
	movdqa	%xmm0, -176(%rbp)
	movl	%eax, -240(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-240(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movl	%edx, -180(%rbp)
	movl	-148(%rbp), %edi
	movl	-180(%rbp), %esi
	callq	dijkstra
	movl	%eax, -244(%rbp)        # 4-byte Spill
# BB#13:                                #   in Loop: Header=BB5_11 Depth=1
	movl	-148(%rbp), %eax
	movaps	-144(%rbp), %xmm0
	movaps	.LCPI5_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -144(%rbp)
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
	movl	%eax, -20(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -248(%rbp)        # 4-byte Spill
	movl	%edi, -252(%rbp)        # 4-byte Spill
	movl	%eax, -256(%rbp)        # 4-byte Spill
	je	.LBB5_18
# BB#14:                                #   in Loop: Header=BB5_11 Depth=1
	movl	-252(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-248(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB5_16
# BB#15:                                #   in Loop: Header=BB5_11 Depth=1
	movl	-256(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
	jmp	.LBB5_17
.LBB5_16:                               #   in Loop: Header=BB5_11 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	movl	%eax, -20(%rbp)
.LBB5_17:                               #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_18
.LBB5_18:                               #   in Loop: Header=BB5_11 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -148(%rbp)
	movl	-180(%rbp), %eax
	movaps	-176(%rbp), %xmm0
	movaps	.LCPI5_3(%rip), %xmm1   # xmm1 = [1,1,1,1]
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -176(%rbp)
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
	movl	%eax, -52(%rbp)
	cmpl	%edx, %edi
	movl	%ecx, -260(%rbp)        # 4-byte Spill
	movl	%edi, -264(%rbp)        # 4-byte Spill
	movl	%eax, -268(%rbp)        # 4-byte Spill
	je	.LBB5_23
# BB#19:                                #   in Loop: Header=BB5_11 Depth=1
	movl	-264(%rbp), %eax        # 4-byte Reload
	cltd
	movl	-260(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	cmpl	$3, %eax
	je	.LBB5_21
# BB#20:                                #   in Loop: Header=BB5_11 Depth=1
	movl	-268(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
	jmp	.LBB5_22
.LBB5_21:                               #   in Loop: Header=BB5_11 Depth=1
	movl	-260(%rbp), %eax        # 4-byte Reload
	movl	%eax, -52(%rbp)
.LBB5_22:                               #   in Loop: Header=BB5_11 Depth=1
	jmp	.LBB5_23
.LBB5_23:                               #   in Loop: Header=BB5_11 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -180(%rbp)
	jmp	.LBB5_11
.LBB5_24:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end5:
	.size	main, .Lfunc_end5-main

	.type	qHead,@object           # @qHead
	.bss
	.globl	qHead
	.p2align	3
qHead:
	.quad	0
	.size	qHead, 8

	.type	g_qCount,@object        # @g_qCount
	.globl	g_qCount
	.p2align	2
g_qCount:
	.long	0                       # 0x0
	.size	g_qCount, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %d"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Out of memory.\n"
	.size	.L.str.1, 16

	.type	ch,@object              # @ch
	.comm	ch,4,4
	.type	rgnNodes,@object        # @rgnNodes
	.comm	rgnNodes,800,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Shortest path is 0 in cost. Just stay where you are.\n"
	.size	.L.str.2, 54

	.type	iNode,@object           # @iNode
	.comm	iNode,4,4
	.type	iDist,@object           # @iDist
	.comm	iDist,4,4
	.type	iPrev,@object           # @iPrev
	.comm	iPrev,4,4
	.type	i,@object               # @i
	.comm	i,4,4
	.type	AdjMatrix,@object       # @AdjMatrix
	.comm	AdjMatrix,40000,16
	.type	iCost,@object           # @iCost
	.comm	iCost,4,4
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Shortest path is %d in cost. "
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Path is: "
	.size	.L.str.4, 10

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\n"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Usage: dijkstra <filename>\n"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Only supports matrix size is #define'd.\n"
	.size	.L.str.7, 41

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"r"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d"
	.size	.L.str.9, 3


	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
