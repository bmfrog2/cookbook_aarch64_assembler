	.cpu generic
	.file	"lr_register.c"
	.text
	.align	2
	.global	asm_return_x30
	.type	asm_return_x30, %function
asm_return_x30:
#APP
// 5 "lr_register.c" 1
	
    mov x0, x30                   
    ret                           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_x30, .-asm_return_x30
	.section	.rodata
	.align	3
.LC0:
	.string	"asm_return_x30() = %llX\n"
	.align	3
.LC1:
	.string	"main             = %llX\n"
	.align	3
.LC2:
	.string	"lr_locate        = %llX\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -48]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	x1, [x29,16]
	bl	asm_return_x30
	str	x0, [x29,40]
#APP
// 15 "lr_register.c" 1
	lr_location:
// 0 "" 2
#NO_APP
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	ldr	x1, [x29,40]
	bl	printf
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	adrp	x1, main
	add	x1, x1, :lo12:main
	bl	printf
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, lr_location
	add	x1, x1, :lo12:lr_location
	bl	printf
	ldp	x29, x30, [sp], 48
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
