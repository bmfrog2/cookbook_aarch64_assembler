	.cpu generic
	.file	"register_fp.c"
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
	.global	callee2
	.type	callee2, %function
callee2:
	sub	sp, sp, #32
	str	x0, [sp,8]
	ldr	x0, [sp,8]
	ldr	x0, [x0]
	str	x0, [sp,24]
	ldr	x0, [sp,24]
	add	sp, sp, 32
	ret
	.size	callee2, .-callee2
	.section	.rodata
	.align	3
.LC0:
	.string	"v1 address = %llX\n"
	.text
	.align	2
	.type	asm_return_x29, %function
asm_return_x29:
	sub	sp, sp, #816
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	add	x0, x29, 24
	mov	x1, 1001
	str	x1, [x0]
	add	x0, x29, 24
	mov	x1, 1099
	str	x1, [x0,792]
	add	x0, x29, 24
	bl	callee2
	str	x0, [x29,824]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	add	x1, x29, 24
	bl	printf
#APP
// 35 "register_fp.c" 1
	
    mov x0, x29                   

// 0 "" 2
#NO_APP
	ldp	x29, x30, [sp], 16
	add	sp, sp, 816
	ret
	.size	asm_return_x29, .-asm_return_x29
	.section	.rodata
	.align	3
.LC1:
	.string	"asm_return_x29() = %lld\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	x1, [x29,16]
	bl	asm_return_x29
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
