	.cpu generic
	.file	"ldr_long_value.c"
	.text
	.align	2
	.global	asm_ldr_long_value
	.type	asm_ldr_long_value, %function
asm_ldr_long_value:
#APP
// 4 "ldr_long_value.c" 1
	     ldr   x0,=0x123456789ABCDEF0      

// 0 "" 2
#NO_APP
	ret
	.size	asm_ldr_long_value, .-asm_ldr_long_value
	.align	2
	.global	asm_ldr_long_value2
	.type	asm_ldr_long_value2, %function
asm_ldr_long_value2:
#APP
// 8 "ldr_long_value.c" 1
	     ldr   x0,1f                       
1:  .quad 

// 0 "" 2
#NO_APP
	ret
	.size	asm_ldr_long_value2, .-asm_ldr_long_value2
	.section	.rodata
	.align	3
.LC0:
	.string	"X0 = %llX\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	x1, [x29,16]
	bl	asm_ldr_long_value
	mov	x1, x0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
