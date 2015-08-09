	.cpu generic
	.file	"function_64bit_vars.c"
	.text
	.align	2
	.global	dummy
	.type	dummy, %function
dummy:
	sub	sp, sp, #208
	str	x1, [sp,152]
	str	x2, [sp,160]
	str	x3, [sp,168]
	str	x4, [sp,176]
	str	x5, [sp,184]
	str	x6, [sp,192]
	str	x7, [sp,200]
	str	q0, [sp,16]
	str	q1, [sp,32]
	str	q2, [sp,48]
	str	q3, [sp,64]
	str	q4, [sp,80]
	str	q5, [sp,96]
	str	q6, [sp,112]
	str	q7, [sp,128]
	str	x0, [sp,8]
	add	sp, sp, 208
	ret
	.size	dummy, .-dummy
	.align	2
	.global	asm_return_x19
	.type	asm_return_x19, %function
asm_return_x19:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp,16]
	stp	x21, x22, [sp,32]
	stp	x23, x24, [sp,48]
	stp	x25, x26, [sp,64]
	mov	x26, 1001
	mov	x25, 1002
	mov	x24, 1003
	mov	x23, 1004
	mov	x22, 1005
	mov	x21, 1006
	mov	x20, 1007
	mov	x19, 1008
	mov	x0, x26
	mov	x1, x25
	mov	x2, x24
	mov	x3, x23
	mov	x4, x22
	mov	x5, x21
	mov	x6, x20
	mov	x7, x19
	bl	dummy
#APP
// 15 "function_64bit_vars.c" 1
	
    mov x0, x19                   

// 0 "" 2
#NO_APP
	ldp	x19, x20, [sp,16]
	ldp	x21, x22, [sp,32]
	ldp	x23, x24, [sp,48]
	ldp	x25, x26, [sp,64]
	ldp	x29, x30, [sp], 80
	ret
	.size	asm_return_x19, .-asm_return_x19
	.align	2
	.global	asm_return_x26
	.type	asm_return_x26, %function
asm_return_x26:
	stp	x29, x30, [sp, -80]!
	add	x29, sp, 0
	stp	x19, x20, [sp,16]
	stp	x21, x22, [sp,32]
	stp	x23, x24, [sp,48]
	stp	x25, x26, [sp,64]
	mov	x26, 1001
	mov	x25, 1002
	mov	x24, 1003
	mov	x23, 1004
	mov	x22, 1005
	mov	x21, 1006
	mov	x20, 1007
	mov	x19, 1008
	mov	x0, x26
	mov	x1, x25
	mov	x2, x24
	mov	x3, x23
	mov	x4, x22
	mov	x5, x21
	mov	x6, x20
	mov	x7, x19
	bl	dummy
#APP
// 30 "function_64bit_vars.c" 1
	
    mov x0, x26                   

// 0 "" 2
#NO_APP
	ldp	x19, x20, [sp,16]
	ldp	x21, x22, [sp,32]
	ldp	x23, x24, [sp,48]
	ldp	x25, x26, [sp,64]
	ldp	x29, x30, [sp], 80
	ret
	.size	asm_return_x26, .-asm_return_x26
	.section	.rodata
	.align	3
.LC0:
	.string	"asm_return_x19() = %lld\n"
	.align	3
.LC1:
	.string	"asm_return_x26() = %lld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	x1, [x29,16]
	bl	asm_return_x19
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	bl	asm_return_x26
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
