	.cpu generic
	.file	"function_64bit_args.c"
	.text
	.align	2
	.global	asm_return_a1
	.type	asm_return_a1, %function
asm_return_a1:
	sub	sp, sp, #64
	str	x0, [sp,56]
	str	x1, [sp,48]
	str	x2, [sp,40]
	str	x3, [sp,32]
	str	x4, [sp,24]
	str	x5, [sp,16]
	str	x6, [sp,8]
	str	x7, [sp]
#APP
// 5 "function_64bit_args.c" 1
	

// 0 "" 2
#NO_APP
	add	sp, sp, 64
	ret
	.size	asm_return_a1, .-asm_return_a1
	.align	2
	.global	asm_return_a2
	.type	asm_return_a2, %function
asm_return_a2:
	sub	sp, sp, #64
	str	x0, [sp,56]
	str	x1, [sp,48]
	str	x2, [sp,40]
	str	x3, [sp,32]
	str	x4, [sp,24]
	str	x5, [sp,16]
	str	x6, [sp,8]
	str	x7, [sp]
#APP
// 9 "function_64bit_args.c" 1
	
    mov x0, x1           

// 0 "" 2
#NO_APP
	add	sp, sp, 64
	ret
	.size	asm_return_a2, .-asm_return_a2
	.align	2
	.global	asm_return_a3
	.type	asm_return_a3, %function
asm_return_a3:
	sub	sp, sp, #64
	str	x0, [sp,56]
	str	x1, [sp,48]
	str	x2, [sp,40]
	str	x3, [sp,32]
	str	x4, [sp,24]
	str	x5, [sp,16]
	str	x6, [sp,8]
	str	x7, [sp]
#APP
// 14 "function_64bit_args.c" 1
	
    mov x0, x2           

// 0 "" 2
#NO_APP
	add	sp, sp, 64
	ret
	.size	asm_return_a3, .-asm_return_a3
	.align	2
	.global	asm_return_a8
	.type	asm_return_a8, %function
asm_return_a8:
	sub	sp, sp, #64
	str	x0, [sp,56]
	str	x1, [sp,48]
	str	x2, [sp,40]
	str	x3, [sp,32]
	str	x4, [sp,24]
	str	x5, [sp,16]
	str	x6, [sp,8]
	str	x7, [sp]
#APP
// 19 "function_64bit_args.c" 1
	
    mov x0, x7           

// 0 "" 2
#NO_APP
	add	sp, sp, 64
	ret
	.size	asm_return_a8, .-asm_return_a8
	.align	2
	.global	asm_return_a9
	.type	asm_return_a9, %function
asm_return_a9:
	sub	sp, sp, #64
	str	x0, [sp,56]
	str	x1, [sp,48]
	str	x2, [sp,40]
	str	x3, [sp,32]
	str	x4, [sp,24]
	str	x5, [sp,16]
	str	x6, [sp,8]
	str	x7, [sp]
#APP
// 24 "function_64bit_args.c" 1
	
    mov x0, x8           

// 0 "" 2
#NO_APP
	add	sp, sp, 64
	ret
	.size	asm_return_a9, .-asm_return_a9
	.section	.rodata
	.align	3
.LC0:
	.string	"asm_return_a1()  = %llX\n"
	.align	3
.LC1:
	.string	"asm_return_a2()  = %llX\n"
	.align	3
.LC2:
	.string	"asm_return_a3()  = %llX\n"
	.align	3
.LC3:
	.string	"asm_return_a8()  = %llX\n"
	.align	3
.LC4:
	.string	"asm_return_a9()  = %llX\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	sub	sp, sp, #48
	stp	x29, x30, [sp,16]
	add	x29, sp, 16
	str	w0, [x29,28]
	str	x1, [x29,16]
	mov	x0, 9
	str	x0, [sp]
	mov	x0, 1
	mov	x1, 2
	mov	x2, 3
	mov	x3, 4
	mov	x4, 5
	mov	x5, 6
	mov	x6, 7
	mov	x7, 8
	bl	asm_return_a1
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	x0, 9
	str	x0, [sp]
	mov	x0, 1
	mov	x1, 2
	mov	x2, 3
	mov	x3, 4
	mov	x4, 5
	mov	x5, 6
	mov	x6, 7
	mov	x7, 8
	bl	asm_return_a2
	mov	x1, x0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	mov	x0, 9
	str	x0, [sp]
	mov	x0, 1
	mov	x1, 2
	mov	x2, 3
	mov	x3, 4
	mov	x4, 5
	mov	x5, 6
	mov	x6, 7
	mov	x7, 8
	bl	asm_return_a3
	mov	x1, x0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	mov	x0, 9
	str	x0, [sp]
	mov	x0, 1
	mov	x1, 2
	mov	x2, 3
	mov	x3, 4
	mov	x4, 5
	mov	x5, 6
	mov	x6, 7
	mov	x7, 8
	bl	asm_return_a8
	mov	x1, x0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	mov	x0, 9
	str	x0, [sp]
	mov	x0, 1
	mov	x1, 2
	mov	x2, 3
	mov	x3, 4
	mov	x4, 5
	mov	x5, 6
	mov	x6, 7
	mov	x7, 8
	bl	asm_return_a9
	mov	x1, x0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	sub	sp, x29, #16
	ldp	x29, x30, [sp,16]
	add	sp, sp, 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
