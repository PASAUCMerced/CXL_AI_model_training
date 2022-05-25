	.file	"main.cpp"
	.text
	.p2align 4,,15
	.globl	_Z8Step_AVXmPfS_S_S_mbii
	.type	_Z8Step_AVXmPfS_S_S_mbii, @function
_Z8Step_AVXmPfS_S_S_mbii:
.LFB7177:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%r9, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	leaq	0(,%r9,4), %r13
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	movslq	296(%rsp), %rax
	movq	%rcx, (%rsp)
	imulq	%rax, %r13
	andq	$-128, %r14
	je	.L1
	leaq	32(%rsi), %rax
	xorl	%r11d, %r11d
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L5:
	leaq	134217728(%r11), %r15
	cmpq	%r14, %r15
	jbe	.L3
	cmpq	%r11, %r14
	jbe	.L1
	movq	%r14, %r12
.L4:
	movq	(%rsp), %rax
	leaq	(%r8,%r13), %rbx
	leaq	16(%rsp), %r9
	leaq	80(%rsp), %rdi
	leaq	144(%rsp), %rsi
	leaq	(%rax,%r13), %rbp
	movq	8(%rsp), %rax
	leaq	(%rax,%r13), %r10
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	-32(%r10), %rax
	movq	%rbx, %rcx
	movq	%rbp, %rdx
	.p2align 4,,10
	.p2align 3
.L6:
	vmovdqa	(%r9), %xmm0
	addq	$4, %rax
	addq	$4, %rdx
	addq	$4, %rcx
	vmovups	%xmm0, -4(%rax)
	vmovdqa	16(%r9), %xmm0
	vmovups	%xmm0, 12(%rax)
	vmovdqa	32(%r9), %xmm0
	vmovups	%xmm0, 28(%rax)
	vmovdqa	48(%r9), %xmm0
	vmovups	%xmm0, 44(%rax)
	vmovdqa	(%rdi), %xmm0
	vmovups	%xmm0, -4(%rdx)
	vmovdqa	16(%rdi), %xmm0
	vmovups	%xmm0, 12(%rdx)
	vmovdqa	32(%rdi), %xmm0
	vmovups	%xmm0, 28(%rdx)
	vmovdqa	48(%rdi), %xmm0
	vmovups	%xmm0, 44(%rdx)
	vmovdqa	(%rsi), %xmm0
	vmovups	%xmm0, -4(%rcx)
	vmovdqa	16(%rsi), %xmm0
	vmovups	%xmm0, 12(%rcx)
	vmovdqa	32(%rsi), %xmm0
	vmovups	%xmm0, 28(%rcx)
	vmovdqa	48(%rsi), %xmm0
	vmovups	%xmm0, 44(%rcx)
	cmpq	%r10, %rax
	jne	.L6
	subq	$-128, %r11
	addq	$512, %rbp
	addq	$512, %rbx
	addq	$512, %r10
	cmpq	%r12, %r11
	jb	.L8
.L7:
	addq	$536870912, %r13
	cmpq	%r14, %r15
	movq	%r15, %r11
	jb	.L5
.L1:
	movq	216(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L18
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L3:
	.cfi_restore_state
	cmpq	%r11, %r15
	movq	%r15, %r12
	ja	.L4
	jmp	.L7
.L18:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE7177:
	.size	_Z8Step_AVXmPfS_S_S_mbii, .-_Z8Step_AVXmPfS_S_S_mbii
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev:
.LFB7758:
	.cfi_startproc
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE(%rip), %rax
	movq	%rax, (%rdi)
	jmp	_ZNSt6thread6_StateD2Ev@PLT
	.cfi_endproc
.LFE7758:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED1Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED2Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED5Ev,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev:
.LFB7760:
	.cfi_startproc
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	%rax, (%rdi)
	call	_ZNSt6thread6_StateD2Ev@PLT
	movq	%rbx, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	_ZdlPv@PLT
	.cfi_endproc
.LFE7760:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev
	.section	.text._ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv,"axG",@progbits,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv:
.LFB7777:
	.cfi_startproc
	movq	%rdi, %rax
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
	movq	32(%rdi), %rcx
	movl	8(%rax), %r8d
	movq	40(%rdi), %rdx
	movq	48(%rdi), %rsi
	movslq	56(%rdi), %rdi
	movslq	20(%rax), %r9
	pushq	%r8
	.cfi_def_cfa_offset 32
	movl	12(%rax), %r8d
	pushq	%r8
	.cfi_def_cfa_offset 40
	movzbl	16(%rax), %r8d
	pushq	%r8
	.cfi_def_cfa_offset 48
	movq	24(%rax), %r8
	call	*64(%rax)
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7777:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"rb"
.LC1:
	.string	"Can not open file\n"
.LC2:
	.string	"%d %d asdasd\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB7178:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA7178
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	$10, %edx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movq	24(%rsi), %rdi
	movq	8(%rsi), %rbx
	movq	16(%rsi), %rbp
	xorl	%esi, %esi
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	strtol@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rbx, %rdi
.LEHB0:
	call	fopen@PLT
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rbx
	movq	%rbp, %rdi
	call	fopen@PLT
	testq	%rbx, %rbx
	movq	%rax, %rbp
	je	.L40
	testq	%rax, %rax
	je	.L40
.L25:
	leaq	72(%rsp), %rdi
	movq	%rbx, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	leaq	76(%rsp), %rdi
	movq	%rbp, %rcx
	movl	$1, %edx
	movl	$4, %esi
	call	fread@PLT
	movl	72(%rsp), %ecx
	movl	76(%rsp), %edx
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movslq	72(%rsp), %rsi
	movl	$64, %edi
	salq	$2, %rsi
	call	aligned_alloc@PLT
	movslq	76(%rsp), %rsi
	movl	$64, %edi
	movq	%rax, %r13
	movq	%rax, 8(%rsp)
	salq	$2, %rsi
	call	aligned_alloc@PLT
	movslq	72(%rsp), %rsi
	movl	$64, %edi
	movq	%rax, %r12
	movq	%rax, 16(%rsp)
	salq	$2, %rsi
	call	aligned_alloc@PLT
	movslq	76(%rsp), %rsi
	movl	$64, %edi
	movq	%rax, %r14
	salq	$2, %rsi
	call	aligned_alloc@PLT
	movslq	72(%rsp), %rdx
	movq	%rbx, %rcx
	movl	$4, %esi
	movq	%r13, %rdi
	movq	%rax, %r15
	call	fread@PLT
	movslq	76(%rsp), %rdx
	movq	%rbp, %rcx
	movq	%r12, %rdi
	movl	$4, %esi
	call	fread@PLT
	movslq	76(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r14, %rdi
	salq	$2, %rdx
	call	memset@PLT
	movslq	72(%rsp), %rdx
	xorl	%esi, %esi
	movq	%r15, %rdi
	salq	$2, %rdx
	call	memset@PLT
	call	_ZNSt6thread20hardware_concurrencyEv@PLT
	movl	%eax, %edi
	movq	%rdi, %r12
	salq	$3, %rdi
	call	_Znam@PLT
	movq	%rax, 24(%rsp)
	movl	%r12d, %eax
	subl	$1, %eax
	movl	%eax, 52(%rsp)
	je	.L27
	leal	-2(%r12), %eax
	xorl	%ebx, %ebx
	movq	%rax, 56(%rsp)
	addq	$1, %rax
	movq	%rax, 40(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L28:
	movl	$8, %edi
	call	_Znwm@PLT
.LEHE0:
	movl	$72, %edi
	movq	$0, (%rax)
	movq	%rax, %rbp
	movl	76(%rsp), %r13d
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	leaq	16+_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE(%rip), %rcx
	movq	8(%rsp), %rdx
	movq	32(%rsp), %rsi
	movl	%r12d, 8(%rax)
	movl	%ebx, 12(%rax)
	movq	%rbp, %rdi
	movq	%rcx, (%rax)
	movq	16(%rsp), %rcx
	movq	%rdx, 48(%rax)
	movq	pthread_create@GOTPCREL(%rip), %rdx
	movb	$0, 16(%rax)
	movl	%r13d, 20(%rax)
	movq	%rcx, 40(%rax)
	leaq	_Z8Step_AVXmPfS_S_S_mbii(%rip), %rcx
	movq	%r15, 24(%rax)
	movq	%r14, 32(%rax)
	movl	$0, 56(%rax)
	movq	%rcx, 64(%rax)
	movq	%rax, 80(%rsp)
.LEHB2:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE2:
	movq	80(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L29
	movq	(%rdi), %rax
	call	*8(%rax)
	movq	24(%rsp), %rax
	movq	%rbp, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	40(%rsp), %rbx
	jne	.L28
.L30:
	subq	$8, %rsp
	.cfi_def_cfa_offset 168
	movq	%r15, %r8
	movq	%r14, %rcx
	pushq	%r12
	.cfi_def_cfa_offset 176
	movl	68(%rsp), %eax
	xorl	%edi, %edi
	pushq	%rax
	.cfi_def_cfa_offset 184
	pushq	$0
	.cfi_def_cfa_offset 192
	movslq	108(%rsp), %r9
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rsi
	call	_Z8Step_AVXmPfS_S_S_mbii
	movq	56(%rsp), %rax
	movq	88(%rsp), %rbx
	addq	$32, %rsp
	.cfi_def_cfa_offset 160
	leaq	8(%rax,%rbx,8), %rbx
	movq	%rax, %rbp
	.p2align 4,,10
	.p2align 3
.L35:
	movq	0(%rbp), %rdi
	addq	$8, %rbp
.LEHB3:
	call	_ZNSt6thread4joinEv@PLT
	cmpq	%rbx, %rbp
	jne	.L35
.L36:
	movq	24(%rsp), %rdi
	call	_ZdaPv@PLT
	movq	8(%rsp), %rdi
	call	free@PLT
	movq	16(%rsp), %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	movq	%r15, %rdi
	call	free@PLT
	xorl	%eax, %eax
	movq	88(%rsp), %rdx
	xorq	%fs:40, %rdx
	jne	.L52
	addq	$104, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
	movq	24(%rsp), %rax
	movq	%rbp, (%rax,%rbx,8)
	addq	$1, %rbx
	cmpq	%rbx, 40(%rsp)
	jne	.L28
	jmp	.L30
.L40:
	leaq	.LC1(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L25
.L27:
	subq	$8, %rsp
	.cfi_def_cfa_offset 168
	movq	%r15, %r8
	movq	%r14, %rcx
	pushq	$1
	.cfi_def_cfa_offset 176
	pushq	$0
	.cfi_def_cfa_offset 184
	xorl	%edi, %edi
	pushq	$0
	.cfi_def_cfa_offset 192
	movslq	108(%rsp), %r9
	movq	48(%rsp), %rdx
	movq	40(%rsp), %rsi
	call	_Z8Step_AVXmPfS_S_S_mbii
	addq	$32, %rsp
	.cfi_def_cfa_offset 160
	jmp	.L36
.L52:
	call	__stack_chk_fail@PLT
.L38:
	movq	%rax, %rbx
	vzeroupper
.L34:
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
	call	_Unwind_Resume@PLT
.LEHE3:
.L39:
	movq	80(%rsp), %rdi
	movq	%rax, %rbx
	testq	%rdi, %rdi
	je	.L49
	movq	(%rdi), %rax
	vzeroupper
	call	*8(%rax)
	jmp	.L34
.L49:
	vzeroupper
	jmp	.L34
	.cfi_endproc
.LFE7178:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA7178:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7178-.LLSDACSB7178
.LLSDACSB7178:
	.uleb128 .LEHB0-.LFB7178
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB7178
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L38-.LFB7178
	.uleb128 0
	.uleb128 .LEHB2-.LFB7178
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L39-.LFB7178
	.uleb128 0
	.uleb128 .LEHB3-.LFB7178
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE7178:
	.section	.text.startup
	.size	main, .-main
	.weak	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE
	.section	.rodata._ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,"aG",@progbits,_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,comdat
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, 91
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE:
	.string	"NSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE"
	.weak	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE
	.section	.data.rel.ro._ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,"awG",@progbits,_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,comdat
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE
	.quad	_ZTINSt6thread6_StateE
	.weak	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE
	.section	.data.rel.ro.local._ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,"awG",@progbits,_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE,comdat
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJPFvmPfS3_S3_S3_mbiiEiS3_S3_S3_S3_ibijEEEEE6_M_runEv
	.globl	_bias_correction2
	.data
	.align 32
	.type	_bias_correction2, @object
	.size	_bias_correction2, 4
_bias_correction2:
	.long	1073741824
	.globl	_bias_correction1
	.align 32
	.type	_bias_correction1, @object
	.size	_bias_correction1, 4
_bias_correction1:
	.long	1036831949
	.globl	_bias_correction
	.align 32
	.type	_bias_correction, @object
	.size	_bias_correction, 4
_bias_correction:
	.long	1065353216
	.globl	_should_log
	.bss
	.align 32
	.type	_should_log, @object
	.size	_should_log, 1
_should_log:
	.zero	1
	.globl	_adamw_mode
	.data
	.align 32
	.type	_adamw_mode, @object
	.size	_adamw_mode, 1
_adamw_mode:
	.byte	1
	.globl	_weight_decay
	.bss
	.align 32
	.type	_weight_decay, @object
	.size	_weight_decay, 4
_weight_decay:
	.zero	4
	.globl	_eps
	.data
	.align 32
	.type	_eps, @object
	.size	_eps, 4
_eps:
	.long	841731191
	.globl	_betta2
	.align 32
	.type	_betta2, @object
	.size	_betta2, 4
_betta2:
	.long	1065336439
	.globl	_betta1
	.align 32
	.type	_betta1, @object
	.size	_betta1, 4
_betta1:
	.long	1063675494
	.globl	_alpha
	.align 32
	.type	_alpha, @object
	.size	_alpha, 4
_alpha:
	.long	981668463
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
