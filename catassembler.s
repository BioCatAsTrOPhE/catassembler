	.file	"catassembler_base.c"
# GNU C11 (GCC) version 7.3.1 20180303 (Red Hat 7.3.1-5) (x86_64-redhat-linux)
#	compiled by GNU C version 7.3.1 20180303 (Red Hat 7.3.1-5), GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.2, isl version none
# warning: MPFR header version 3.1.5 differs from library version 3.1.6-p2.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passées :  ../catassembler_base.c -mtune=generic -march=x86-64
# -O -fverbose-asm
# options activées :  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers
# -fcombine-stack-adjustments -fcommon -fcompare-elim -fcprop-registers
# -fdefer-pop -fdelete-null-pointer-checks -fdwarf2-cfi-asm
# -fearly-inlining -feliminate-unused-debug-types -fforward-propagate
# -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm -fgnu-runtime
# -fgnu-unique -fguess-branch-probability -fident -fif-conversion
# -fif-conversion2 -finline -finline-atomics -finline-functions-called-once
# -fipa-profile -fipa-pure-const -fipa-reference -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots -fivopts
# -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -fpeephole -fplt -fprefetch-loop-arrays -freg-struct-return
# -freorder-blocks -fsched-critical-path-heuristic
# -fsched-dep-count-heuristic -fsched-group-heuristic -fsched-interblock
# -fsched-last-insn-heuristic -fsched-rank-heuristic -fsched-spec
# -fsched-spec-insn-heuristic -fsched-stalled-insns-dep -fschedule-fusion
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftoplevel-reorder
# -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp
# -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim -ftree-dce
# -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop -ftree-pta
# -ftree-reassoc -ftree-scev-cprop -ftree-sink -ftree-slsr -ftree-sra
# -ftree-ter -funit-at-a-time -funwind-tables -fverbose-asm
# -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	">unitig_%i\n"
	.text
	.globl	print_fasta_header
	.type	print_fasta_header, @function
print_fasta_header:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
	movl	%edi, %esi	# number, number
# ../catassembler_base.c:5:     printf(">unitig_%i\n", number);
	movl	$.LC0, %edi	#,
	movl	$0, %eax	#,
	call	printf	#
# ../catassembler_base.c:6: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	print_fasta_header, .-print_fasta_header
	.globl	check_nuc
	.type	check_nuc, @function
check_nuc:
.LFB12:
	.cfi_startproc
# ../catassembler_base.c:10:     return t == 'A' || t == 'C' || t == 'G' || t == 'T' || t == 'a' || t == 'c' || t == 'g' || t == 't' || t == 'N' || t == 'n';
	leal	-65(%rdi), %ecx	#, _31
	movl	$0, %eax	#, <retval>
	cmpl	$51, %ecx	#, _31
	ja	.L3	#,
	movabsq	$2287280539050053, %rax	#, tmp96
	shrq	%cl, %rax	# _31, tmp95
	andl	$1, %eax	#, <retval>
.L3:
# ../catassembler_base.c:11: }
	rep ret
	.cfi_endproc
.LFE12:
	.size	check_nuc, .-check_nuc
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# ../catassembler_base.c:24:     int cpt = 0;
	movl	$0, %r14d	#, cpt
# ../catassembler_base.c:23:     int previous = -1;
	movl	$-1, %ebp	#, previous
# ../catassembler_base.c:21:     state = PRINT;
	movl	$0, %r12d	#, state
# ../catassembler_base.c:47: 	putc(tampon, stdout);
	movl	$0, %r13d	#, state
	jmp	.L7	#
.L16:
# ../catassembler_base.c:31:     if((previous == -1 || previous == '\n') && !check_nuc(tampon))
	movl	%ebx, %edi	# tampon,
	call	check_nuc	#
	testl	%eax, %eax	# _5
	jne	.L11	#,
# ../catassembler_base.c:34: 	if(tampon == '>' || tampon == '@')
	leal	-62(%rbx), %eax	#, tmp106
	testl	$-3, %eax	#, tmp106
	je	.L19	#,
.L12:
# ../catassembler_base.c:47: 	putc(tampon, stdout);
	movl	$1, %r12d	#, state
	jmp	.L15	#
.L19:
# ../catassembler_base.c:36: 	    print_fasta_header(++cpt);
	addl	$1, %r14d	#, cpt
	movl	%r14d, %edi	# cpt,
	call	print_fasta_header	#
	jmp	.L12	#
.L11:
# ../catassembler_base.c:40:     if(previous == '\n' && check_nuc(tampon))
	cmpl	$10, %ebp	#, previous
	je	.L14	#,
.L13:
# ../catassembler_base.c:45:     if(state == PRINT)
	testl	%r12d, %r12d	# state
	jne	.L15	#,
.L14:
# ../catassembler_base.c:47: 	putc(tampon, stdout);
	movq	stdout(%rip), %rsi	# stdout,
	movl	%ebx, %edi	# tampon,
	call	_IO_putc	#
	movl	%r13d, %r12d	# state, state
.L15:
	movl	%ebx, %ebp	# tampon, previous
.L7:
# ../catassembler_base.c:27:     tampon = getc(stdin);
	movq	stdin(%rip), %rdi	# stdin,
	call	_IO_getc	#
	movl	%eax, %ebx	#, tampon
# ../catassembler_base.c:28:     if(tampon == EOF)
	cmpl	$-1, %eax	#, tampon
	je	.L17	#,
# ../catassembler_base.c:31:     if((previous == -1 || previous == '\n') && !check_nuc(tampon))
	cmpl	$-1, %ebp	#, previous
	je	.L16	#,
	cmpl	$10, %ebp	#, previous
	je	.L16	#,
# ../catassembler_base.c:40:     if(previous == '\n' && check_nuc(tampon))
	cmpl	$10, %ebp	#, previous
	jne	.L13	#,
# ../catassembler_base.c:40:     if(previous == '\n' && check_nuc(tampon))
	movl	%eax, %edi	# tampon,
	call	check_nuc	#
	testl	%eax, %eax	# _9
	jne	.L14	#,
	jmp	.L13	#
.L17:
# ../catassembler_base.c:51: }
	movl	$0, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 7.3.1 20180303 (Red Hat 7.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
