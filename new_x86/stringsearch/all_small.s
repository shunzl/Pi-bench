	.text
	.file	"all_small.bc"
	.globl	bmha_init
	.p2align	4, 0x90
	.type	bmha_init,@function
bmha_init:                              # @bmha_init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, pat
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, patlen
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$255, -12(%rbp)
	jg	.LBB0_14
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	patlen, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, skip(,%rcx,4)
	movl	patlen, %eax
	subl	$1, %eax
	movl	%eax, -16(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -16(%rbp)
	jl	.LBB0_8
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	movb	%al, %cl
	movzbl	%cl, %eax
	movl	%eax, %edx
	movzbl	lowervec(,%rdx), %eax
	movq	pat, %rdx
	movslq	-16(%rbp), %rsi
	movzbl	(%rdx,%rsi), %edi
	movl	%edi, %edx
	movzbl	lowervec(,%rdx), %edi
	cmpl	%edi, %eax
	jne	.LBB0_6
# BB#5:                                 #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_8
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	jmp	.LBB0_7
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -16(%rbp)
	jl	.LBB0_10
# BB#9:                                 #   in Loop: Header=BB0_1 Depth=1
	movl	patlen, %eax
	subl	-16(%rbp), %eax
	subl	$1, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, skip(,%rcx,4)
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	movl	patlen, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_12
# BB#11:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-12(%rbp), %rax
	movl	$32767, skip(,%rax,4)   # imm = 0x7FFF
.LBB0_12:                               #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_14:
	movl	patlen, %eax
	movl	%eax, skip2
	movl	$0, -12(%rbp)
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	patlen, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_20
# BB#16:                                #   in Loop: Header=BB0_15 Depth=1
	movq	pat, %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movzbl	lowervec(,%rax), %edx
	movq	pat, %rax
	movl	patlen, %esi
	subl	$1, %esi
	movslq	%esi, %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, %eax
	movzbl	lowervec(,%rax), %esi
	cmpl	%esi, %edx
	jne	.LBB0_18
# BB#17:                                #   in Loop: Header=BB0_15 Depth=1
	movl	patlen, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, skip2
.LBB0_18:                               #   in Loop: Header=BB0_15 Depth=1
	jmp	.LBB0_19
.LBB0_19:                               #   in Loop: Header=BB0_15 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_15
.LBB0_20:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	bmha_init, .Lfunc_end0-bmha_init

	.globl	bmha_search
	.p2align	4, 0x90
	.type	bmha_search,@function
bmha_search:                            # @bmha_search
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	patlen, %esi
	subl	$1, %esi
	subl	-20(%rbp), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB1_2
# BB#1:
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_2:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
                                        #     Child Loop BB1_9 Depth 2
	jmp	.LBB1_4
.LBB1_4:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movl	skip(,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, %edx
	jge	.LBB1_6
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=2
	jmp	.LBB1_4
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB1_8
# BB#7:
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-24(%rbp), %eax
	subl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, -24(%rbp)
	movl	patlen, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
.LBB1_9:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB1_11
# BB#10:                                #   in Loop: Header=BB1_9 Depth=2
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movzbl	lowervec(,%rax), %edx
	movq	pat, %rax
	movslq	-28(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	movl	%esi, %eax
	movzbl	lowervec(,%rax), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -41(%rbp)         # 1-byte Spill
.LBB1_11:                               #   in Loop: Header=BB1_9 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB1_12
	jmp	.LBB1_13
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=2
	jmp	.LBB1_9
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB1_15
# BB#14:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_18
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	movl	skip2, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jl	.LBB1_17
# BB#16:
	movq	$0, -8(%rbp)
	jmp	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_3 Depth=1
	jmp	.LBB1_3
.LBB1_18:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	bmha_search, .Lfunc_end1-bmha_search

	.globl	bmhi_init
	.p2align	4, 0x90
	.type	bmhi_init,@function
bmhi_init:                              # @bmhi_init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, patlen.1
	movq	pat.2, %rdi
	movslq	patlen.1, %rsi
	callq	realloc
	movq	%rax, pat.2
	cmpq	$0, pat.2
	jne	.LBB2_2
# BB#1:
	movl	$1, %edi
	callq	exit
.LBB2_2:
	movabsq	$bhmi_cleanup, %rdi
	callq	atexit
	movl	%eax, -20(%rbp)         # 4-byte Spill
# BB#3:
	movl	$0, -12(%rbp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	patlen.1, %eax
	jge	.LBB2_7
# BB#5:                                 #   in Loop: Header=BB2_4 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	toupper
	movb	%al, %dl
	movq	pat.2, %rcx
	movslq	-12(%rbp), %rsi
	movb	%dl, (%rcx,%rsi)
# BB#6:                                 #   in Loop: Header=BB2_4 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_4
.LBB2_7:
	movl	$0, -12(%rbp)
.LBB2_8:                                # =>This Inner Loop Header: Depth=1
	cmpl	$255, -12(%rbp)
	jg	.LBB2_11
# BB#9:                                 #   in Loop: Header=BB2_8 Depth=1
	movl	patlen.1, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, skip.3(,%rcx,4)
# BB#10:                                #   in Loop: Header=BB2_8 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_8
.LBB2_11:
	movl	$0, -12(%rbp)
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	patlen.1, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_15
# BB#13:                                #   in Loop: Header=BB2_12 Depth=1
	movl	patlen.1, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movq	pat.2, %rcx
	movslq	-12(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	movl	%esi, %ecx
	movl	%eax, skip.3(,%rcx,4)
	movl	patlen.1, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movq	pat.2, %rcx
	movslq	-12(%rbp), %rdx
	movzbl	(%rcx,%rdx), %edi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	tolower
	movslq	%eax, %rcx
	movl	-24(%rbp), %eax         # 4-byte Reload
	movl	%eax, skip.3(,%rcx,4)
# BB#14:                                #   in Loop: Header=BB2_12 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_12
.LBB2_15:
	movq	pat.2, %rax
	movl	patlen.1, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movzbl	(%rax,%rdx), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-16(%rbp), %rax
	movl	$32767, skip.3(,%rax,4) # imm = 0x7FFF
	movl	-16(%rbp), %edi
	callq	tolower
	movslq	%eax, %rdx
	movl	$32767, skip.3(,%rdx,4) # imm = 0x7FFF
	movl	patlen.1, %eax
	movl	%eax, skip2.4
	movl	$0, -12(%rbp)
.LBB2_16:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	patlen.1, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB2_21
# BB#17:                                #   in Loop: Header=BB2_16 Depth=1
	movq	pat.2, %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	cmpl	-16(%rbp), %edx
	jne	.LBB2_19
# BB#18:                                #   in Loop: Header=BB2_16 Depth=1
	movl	patlen.1, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, skip2.4
.LBB2_19:                               #   in Loop: Header=BB2_16 Depth=1
	jmp	.LBB2_20
.LBB2_20:                               #   in Loop: Header=BB2_16 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB2_16
.LBB2_21:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	bmhi_init, .Lfunc_end2-bmhi_init

	.globl	bhmi_cleanup
	.p2align	4, 0x90
	.type	bhmi_cleanup,@function
bhmi_cleanup:                           # @bhmi_cleanup
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	pat.2, %rdi
	callq	free
	popq	%rbp
	retq
.Lfunc_end3:
	.size	bhmi_cleanup, .Lfunc_end3-bhmi_cleanup

	.globl	bmhi_search
	.p2align	4, 0x90
	.type	bmhi_search,@function
bmhi_search:                            # @bmhi_search
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	patlen.1, %esi
	subl	$1, %esi
	subl	-20(%rbp), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB4_2
# BB#1:
	movq	$0, -8(%rbp)
	jmp	.LBB4_18
.LBB4_2:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
                                        #     Child Loop BB4_9 Depth 2
	jmp	.LBB4_4
.LBB4_4:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movl	skip.3(,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, %edx
	jge	.LBB4_6
# BB#5:                                 #   in Loop: Header=BB4_4 Depth=2
	jmp	.LBB4_4
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB4_8
# BB#7:
	movq	$0, -8(%rbp)
	jmp	.LBB4_18
.LBB4_8:                                #   in Loop: Header=BB4_3 Depth=1
	movl	-24(%rbp), %eax
	subl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, -24(%rbp)
	movl	patlen.1, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
.LBB4_9:                                #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB4_11
# BB#10:                                #   in Loop: Header=BB4_9 Depth=2
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	toupper
	movq	pat.2, %rcx
	movslq	-28(%rbp), %rdx
	movzbl	(%rcx,%rdx), %edi
	cmpl	%edi, %eax
	sete	%sil
	movb	%sil, -41(%rbp)         # 1-byte Spill
.LBB4_11:                               #   in Loop: Header=BB4_9 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB4_12
	jmp	.LBB4_13
.LBB4_12:                               #   in Loop: Header=BB4_9 Depth=2
	jmp	.LBB4_9
.LBB4_13:                               #   in Loop: Header=BB4_3 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB4_15
# BB#14:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB4_18
.LBB4_15:                               #   in Loop: Header=BB4_3 Depth=1
	movl	skip2.4, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jl	.LBB4_17
# BB#16:
	movq	$0, -8(%rbp)
	jmp	.LBB4_18
.LBB4_17:                               #   in Loop: Header=BB4_3 Depth=1
	jmp	.LBB4_3
.LBB4_18:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	bmhi_search, .Lfunc_end4-bmhi_search

	.globl	bmh_init
	.p2align	4, 0x90
	.type	bmh_init,@function
bmh_init:                               # @bmh_init
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, pat.5
	movq	-8(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, patlen.6
	movl	$0, -12(%rbp)
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$255, -12(%rbp)
	jg	.LBB5_4
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	patlen.6, %eax
	movslq	-12(%rbp), %rcx
	movl	%eax, skip.7(,%rcx,4)
# BB#3:                                 #   in Loop: Header=BB5_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_1
.LBB5_4:
	movl	$0, -12(%rbp)
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	patlen.6, %eax
	jge	.LBB5_8
# BB#6:                                 #   in Loop: Header=BB5_5 Depth=1
	movl	patlen.6, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movq	pat.5, %rcx
	movslq	-12(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	movl	%esi, %ecx
	movl	%eax, skip.7(,%rcx,4)
# BB#7:                                 #   in Loop: Header=BB5_5 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_5
.LBB5_8:
	movq	pat.5, %rax
	movl	patlen.6, %ecx
	subl	$1, %ecx
	movslq	%ecx, %rdx
	movzbl	(%rax,%rdx), %ecx
	movl	%ecx, -16(%rbp)
	movslq	-16(%rbp), %rax
	movl	$32767, skip.7(,%rax,4) # imm = 0x7FFF
	movl	patlen.6, %ecx
	movl	%ecx, skip2.8
	movl	$0, -12(%rbp)
.LBB5_9:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movl	patlen.6, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	.LBB5_14
# BB#10:                                #   in Loop: Header=BB5_9 Depth=1
	movq	pat.5, %rax
	movslq	-12(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	cmpl	-16(%rbp), %edx
	jne	.LBB5_12
# BB#11:                                #   in Loop: Header=BB5_9 Depth=1
	movl	patlen.6, %eax
	subl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, skip2.8
.LBB5_12:                               #   in Loop: Header=BB5_9 Depth=1
	jmp	.LBB5_13
.LBB5_13:                               #   in Loop: Header=BB5_9 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB5_9
.LBB5_14:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	bmh_init, .Lfunc_end5-bmh_init

	.globl	bmh_search
	.p2align	4, 0x90
	.type	bmh_search,@function
bmh_search:                             # @bmh_search
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	patlen.6, %esi
	subl	$1, %esi
	subl	-20(%rbp), %esi
	movl	%esi, -24(%rbp)
	cmpl	$0, -24(%rbp)
	jl	.LBB6_2
# BB#1:
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_2:
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -16(%rbp)
.LBB6_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_4 Depth 2
                                        #     Child Loop BB6_9 Depth 2
	jmp	.LBB6_4
.LBB6_4:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movl	skip.7(,%rax,4), %edx
	addl	-24(%rbp), %edx
	movl	%edx, -24(%rbp)
	cmpl	$0, %edx
	jge	.LBB6_6
# BB#5:                                 #   in Loop: Header=BB6_4 Depth=2
	jmp	.LBB6_4
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=1
	movl	$32767, %eax            # imm = 0x7FFF
	movl	-24(%rbp), %ecx
	subl	-20(%rbp), %eax
	cmpl	%eax, %ecx
	jge	.LBB6_8
# BB#7:
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_8:                                #   in Loop: Header=BB6_3 Depth=1
	movl	-24(%rbp), %eax
	subl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, -24(%rbp)
	movl	patlen.6, %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rcx
	movl	-24(%rbp), %eax
	subl	-28(%rbp), %eax
	movslq	%eax, %rdx
	addq	%rdx, %rcx
	movq	%rcx, -40(%rbp)
.LBB6_9:                                #   Parent Loop BB6_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jl	.LBB6_11
# BB#10:                                #   in Loop: Header=BB6_9 Depth=2
	movq	-40(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	pat.5, %rax
	movslq	-28(%rbp), %rcx
	movzbl	(%rax,%rcx), %esi
	cmpl	%esi, %edx
	sete	%dil
	movb	%dil, -41(%rbp)         # 1-byte Spill
.LBB6_11:                               #   in Loop: Header=BB6_9 Depth=2
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_12
	jmp	.LBB6_13
.LBB6_12:                               #   in Loop: Header=BB6_9 Depth=2
	jmp	.LBB6_9
.LBB6_13:                               #   in Loop: Header=BB6_3 Depth=1
	cmpl	$0, -28(%rbp)
	jge	.LBB6_15
# BB#14:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB6_18
.LBB6_15:                               #   in Loop: Header=BB6_3 Depth=1
	movl	skip2.8, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	cmpl	$0, %eax
	jl	.LBB6_17
# BB#16:
	movq	$0, -8(%rbp)
	jmp	.LBB6_18
.LBB6_17:                               #   in Loop: Header=BB6_3 Depth=1
	jmp	.LBB6_3
.LBB6_18:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	bmh_search, .Lfunc_end6-bmh_search

	.globl	init_search
	.p2align	4, 0x90
	.type	init_search,@function
init_search:                            # @init_search
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
	movq	%rax, len
	movq	$0, -16(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	cmpq	$255, -16(%rbp)
	ja	.LBB7_4
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	len, %rax
	movq	-16(%rbp), %rcx
	movq	%rax, table(,%rcx,8)
# BB#3:                                 #   in Loop: Header=BB7_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_1
.LBB7_4:
	movq	$0, -16(%rbp)
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpq	len, %rax
	jae	.LBB7_8
# BB#6:                                 #   in Loop: Header=BB7_5 Depth=1
	movq	len, %rax
	subq	-16(%rbp), %rax
	subq	$1, %rax
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rcx,%rdx), %esi
	movl	%esi, %ecx
	movq	%rax, table(,%rcx,8)
# BB#7:                                 #   in Loop: Header=BB7_5 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_5
.LBB7_8:
	movq	-8(%rbp), %rax
	movq	%rax, findme
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	init_search, .Lfunc_end7-init_search

	.globl	strsearch
	.p2align	4, 0x90
	.type	strsearch,@function
strsearch:                              # @strsearch
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	len, %rdi
	subq	$1, %rdi
	movq	%rdi, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
	movq	%rax, -48(%rbp)
.LBB8_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_3 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jae	.LBB8_13
# BB#2:                                 #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_3
.LBB8_3:                                #   Parent Loop BB8_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-32(%rbp), %rdx
	cmpq	-48(%rbp), %rdx
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jae	.LBB8_5
# BB#4:                                 #   in Loop: Header=BB8_3 Depth=2
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movzbl	(%rax,%rcx), %edx
	movl	%edx, %eax
	movq	table(,%rax,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, %rax
	seta	%sil
	movb	%sil, -49(%rbp)         # 1-byte Spill
.LBB8_5:                                #   in Loop: Header=BB8_3 Depth=2
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_6
	jmp	.LBB8_7
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=2
	movq	-24(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB8_3
.LBB8_7:                                #   in Loop: Header=BB8_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	cmpq	-24(%rbp), %rcx
	jne	.LBB8_12
# BB#8:                                 #   in Loop: Header=BB8_1 Depth=1
	movq	findme, %rdi
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	len, %rcx
	addq	$1, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movq	len, %rdx
	movq	%rax, %rsi
	callq	strncmp
	xorl	%r8d, %r8d
	cmpl	%eax, %r8d
	jne	.LBB8_10
# BB#9:
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB8_14
.LBB8_10:                               #   in Loop: Header=BB8_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
# BB#11:                                #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_12
.LBB8_12:                               #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_1
.LBB8_13:
	movq	$0, -8(%rbp)
.LBB8_14:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	strsearch, .Lfunc_end8-strsearch

	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# BB#0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$1008, %rsp             # imm = 0x3F0
	movabsq	$.Lmain.search_strings, %rax
	movl	$456, %ecx              # imm = 0x1C8
	movl	%ecx, %edx
	leaq	-944(%rbp), %rsi
	movabsq	$.Lmain.find_strings, %rdi
	movl	$464, %ecx              # imm = 0x1D0
	movl	%ecx, %r8d
	leaq	-480(%rbp), %r9
	movl	$0, -4(%rbp)
	movq	%rdi, -960(%rbp)        # 8-byte Spill
	movq	%r9, %rdi
	movq	-960(%rbp), %r9         # 8-byte Reload
	movq	%rsi, -968(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-968(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	movq	-984(%rbp), %rsi        # 8-byte Reload
	movq	-976(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movl	$0, -948(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movslq	-948(%rbp), %rax
	cmpq	$0, -480(%rbp,%rax,8)
	je	.LBB9_6
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	movslq	-948(%rbp), %rax
	movq	-480(%rbp,%rax,8), %rdi
	callq	init_search
	movslq	-948(%rbp), %rax
	movq	-944(%rbp,%rax,8), %rdi
	callq	strsearch
	movabsq	$.L.str.104, %rdi
	movabsq	$.L.str.106, %rcx
	movabsq	$.L.str.105, %rdx
	movq	%rax, -16(%rbp)
	movslq	-948(%rbp), %rax
	movq	-480(%rbp,%rax,8), %rsi
	cmpq	$0, -16(%rbp)
	cmovneq	%rdx, %rcx
	movslq	-948(%rbp), %rax
	movq	-944(%rbp,%rax,8), %rax
	movq	%rcx, %rdx
	movq	%rax, %rcx
	movb	$0, %al
	callq	printf
	cmpq	$0, -16(%rbp)
	movl	%eax, -988(%rbp)        # 4-byte Spill
	je	.LBB9_4
# BB#3:                                 #   in Loop: Header=BB9_1 Depth=1
	movabsq	$.L.str.107, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	printf
	movl	%eax, -992(%rbp)        # 4-byte Spill
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	movl	$10, %edi
	callq	putchar
	movl	%eax, -996(%rbp)        # 4-byte Spill
# BB#5:                                 #   in Loop: Header=BB9_1 Depth=1
	movl	-948(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -948(%rbp)
	jmp	.LBB9_1
.LBB9_6:
	xorl	%eax, %eax
	addq	$1008, %rsp             # imm = 0x3F0
	popq	%rbp
	retq
.Lfunc_end9:
	.size	main, .Lfunc_end9-main

	.type	lowervec,@object        # @lowervec
	.data
	.globl	lowervec
	.p2align	4
lowervec:
	.ascii	"\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\177cueaaaaceeeiiiaae\221\222ooouuyou\233\234\235\236\237aiounn\246\247\250\251\252\253\254\255\256\257\260\261\262\263\264\265\266\267\270\271\272\273\274\275\276\277\300\301\302\303\304\305\306\307\310\311\312\313\314\315\316\317\320\321\322\323\324\325\326\327\330\331\332\333\334\335\336\337\340\341\342\343\344\345\346\347\350\351\352\353\354\355\356\357\360\361\362\363\364\365\366\367\370\371\372\373\374\375\376\377"
	.size	lowervec, 256

	.type	pat,@object             # @pat
	.local	pat
	.comm	pat,8,8
	.type	patlen,@object          # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,@object            # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object           # @skip2
	.local	skip2
	.comm	skip2,4,4
	.type	patlen.1,@object        # @patlen.1
	.local	patlen.1
	.comm	patlen.1,4,4
	.type	pat.2,@object           # @pat.2
	.local	pat.2
	.comm	pat.2,8,8
	.type	skip.3,@object          # @skip.3
	.local	skip.3
	.comm	skip.3,1024,16
	.type	skip2.4,@object         # @skip2.4
	.local	skip2.4
	.comm	skip2.4,4,4
	.type	pat.5,@object           # @pat.5
	.local	pat.5
	.comm	pat.5,8,8
	.type	patlen.6,@object        # @patlen.6
	.local	patlen.6
	.comm	patlen.6,4,4
	.type	skip.7,@object          # @skip.7
	.local	skip.7
	.comm	skip.7,1024,16
	.type	skip2.8,@object         # @skip2.8
	.local	skip2.8
	.comm	skip2.8,4,4
	.type	len,@object             # @len
	.local	len
	.comm	len,8,8
	.type	table,@object           # @table
	.local	table
	.comm	table,2048,16
	.type	findme,@object          # @findme
	.local	findme
	.comm	findme,8,8
	.type	.Lmain.find_strings,@object # @main.find_strings
	.section	.rodata,"a",@progbits
	.p2align	4
.Lmain.find_strings:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.26
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.18
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	0
	.size	.Lmain.find_strings, 464

	.type	.Lmain.search_strings,@object # @main.search_strings
	.p2align	4
.Lmain.search_strings:
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.58
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.size	.Lmain.search_strings, 456

	.type	.L.str.105,@object      # @.str.105
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.105:
	.zero	1
	.size	.L.str.105, 1

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	" not"
	.size	.L.str.106, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"\"%s\" is%s in \"%s\""
	.size	.L.str.104, 18

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	" [\"%s\"]"
	.size	.L.str.107, 8

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"cabbie"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"your"
	.size	.L.str.54, 5

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"It isn't here"
	.size	.L.str.55, 14

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"But it is here"
	.size	.L.str.56, 15

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"hodad"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"yoohoo"
	.size	.L.str.58, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"xx"
	.size	.L.str.9, 3

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"x"
	.size	.L.str.10, 2

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"."
	.size	.L.str.59, 2

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"In recent years, the field of photonic "
	.size	.L.str.60, 40

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"crystals has found new"
	.size	.L.str.61, 23

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"applications in the RF and microwave"
	.size	.L.str.62, 37

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"regime. A new type of metallic"
	.size	.L.str.63, 31

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"electromagnetic crystal has been"
	.size	.L.str.64, 33

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"developed that is having a"
	.size	.L.str.65, 27

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"significant impact on the field of"
	.size	.L.str.66, 35

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"antennas. It consists of a"
	.size	.L.str.67, 27

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"conductive surface, covered with a"
	.size	.L.str.68, 35

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"special texture which alters its"
	.size	.L.str.69, 33

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"electromagnetic properties. Made of solid"
	.size	.L.str.70, 42

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"metal, the structure"
	.size	.L.str.71, 21

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"conducts DC currents, but over a"
	.size	.L.str.72, 33

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"particular frequency range it does"
	.size	.L.str.73, 35

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"not conduct AC currents. It does not"
	.size	.L.str.74, 37

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"reverse the phase of reflected"
	.size	.L.str.75, 31

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"waves, and the effective image currents"
	.size	.L.str.76, 40

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"appear in-phase, rather than"
	.size	.L.str.77, 29

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"out-of-phase as they are on normal"
	.size	.L.str.78, 35

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"conductors. Furthermore, surface"
	.size	.L.str.79, 33

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"waves do not propagate, and instead"
	.size	.L.str.80, 36

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"radiate efficiently into free"
	.size	.L.str.81, 30

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"space. This new material, termed a"
	.size	.L.str.82, 35

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"high-impedance surface, provides"
	.size	.L.str.83, 33

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"a useful new ground plane for novel"
	.size	.L.str.84, 36

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"low-profile antennas and other"
	.size	.L.str.85, 31

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"electromagnetic structures."
	.size	.L.str.86, 28

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"The recent protests about the Michigamua"
	.size	.L.str.87, 41

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"student organization have raised an"
	.size	.L.str.88, 36

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"important question as to the proper nature"
	.size	.L.str.89, 43

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"and scope of University involvement"
	.size	.L.str.90, 36

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"with student organizations. Accordingly"
	.size	.L.str.91, 40

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"the panel described in my Statement of"
	.size	.L.str.92, 39

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"February 25, 2000 that is considering the"
	.size	.L.str.93, 42

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"question of privileged space also will"
	.size	.L.str.94, 39

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"consider under what circumstances and in"
	.size	.L.str.95, 41

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"what ways the University, its"
	.size	.L.str.96, 30

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"administrators and faculty members should"
	.size	.L.str.97, 42

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"be associated with such organizations"
	.size	.L.str.98, 38

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"and it will recommend guiding principles"
	.size	.L.str.99, 41

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"in this regard. The University's"
	.size	.L.str.100, 33

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Executive Officers and I will then decide"
	.size	.L.str.101, 42

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"whether and how to implement such"
	.size	.L.str.102, 34

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"principles."
	.size	.L.str.103, 12

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"abb"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"you"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"not"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"it"
	.size	.L.str.3, 3

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dad"
	.size	.L.str.4, 4

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"yoo"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"hoo"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"oo"
	.size	.L.str.7, 3

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"oh"
	.size	.L.str.8, 3

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"field"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"new"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"row"
	.size	.L.str.13, 4

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"regime"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"boom"
	.size	.L.str.15, 5

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"that"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"impact"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"and"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"zoom"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"texture"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"magnet"
	.size	.L.str.21, 7

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"doom"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"loom"
	.size	.L.str.23, 5

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"freq"
	.size	.L.str.24, 5

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"current"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"phase"
	.size	.L.str.26, 6

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"images"
	.size	.L.str.27, 7

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"appears"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"conductor"
	.size	.L.str.29, 10

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"wavez"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"normal"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"free"
	.size	.L.str.32, 5

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"termed"
	.size	.L.str.33, 7

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"provide"
	.size	.L.str.34, 8

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"for"
	.size	.L.str.35, 4

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"struct"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"about"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"have"
	.size	.L.str.38, 5

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"proper"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"involve"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"describedly"
	.size	.L.str.41, 12

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"thats"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"spaces"
	.size	.L.str.43, 7

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"circumstance"
	.size	.L.str.44, 13

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"the"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"member"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"such"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"guide"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"regard"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"officers"
	.size	.L.str.50, 9

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"implement"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"principalities"
	.size	.L.str.52, 15


	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.ident	"clang version 4.0.0 (trunk)"
	.section	".note.GNU-stack","",@progbits
