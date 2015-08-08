	.cpu generic
	.file	"return_x0.c"
	.text
	.align	2
	.global	asm_return_u8
	.type	asm_return_u8, %function
asm_return_u8:
#APP
// 4 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_u8, .-asm_return_u8
	.align	2
	.global	asm_return_s8
	.type	asm_return_s8, %function
asm_return_s8:
#APP
// 8 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_s8, .-asm_return_s8
	.align	2
	.global	asm_return_u16
	.type	asm_return_u16, %function
asm_return_u16:
#APP
// 12 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_u16, .-asm_return_u16
	.align	2
	.global	asm_return_s16
	.type	asm_return_s16, %function
asm_return_s16:
#APP
// 16 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_s16, .-asm_return_s16
	.align	2
	.global	asm_return_u32
	.type	asm_return_u32, %function
asm_return_u32:
#APP
// 20 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_u32, .-asm_return_u32
	.align	2
	.global	asm_return_s32
	.type	asm_return_s32, %function
asm_return_s32:
#APP
// 24 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_s32, .-asm_return_s32
	.align	2
	.global	asm_return_u64
	.type	asm_return_u64, %function
asm_return_u64:
#APP
// 28 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_u64, .-asm_return_u64
	.align	2
	.global	asm_return_s64
	.type	asm_return_s64, %function
asm_return_s64:
#APP
// 32 "return_x0.c" 1
	
    ldr x0, =0x123456789ABCDEF0           

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_s64, .-asm_return_s64
	.section	.rodata
	.align	3
.LC0:
	.string	"retrun asm_return_u8()  = %llX\n"
	.align	3
.LC1:
	.string	"retrun asm_return_s8()  = %llX\n"
	.align	3
.LC2:
	.string	"retrun asm_return_u16() = %llX\n"
	.align	3
.LC3:
	.string	"retrun asm_return_s16() = %llX\n"
	.align	3
.LC4:
	.string	"retrun asm_return_u32() = %llX\n"
	.align	3
.LC5:
	.string	"retrun asm_return_s32() = %llX\n"
	.align	3
.LC6:
	.string	"retrun asm_return_u64() = %llX\n"
	.align	3
.LC7:
	.string	"retrun asm_return_s64() = %llX\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	w0, [x29,28]
	str	x1, [x29,16]
	bl	asm_return_u8
	uxtb	w0, w0
	mov	w1, w0
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	bl	asm_return_s8
	sxtb	w0, w0
	mov	w1, w0
	adrp	x0, .LC1
	add	x0, x0, :lo12:.LC1
	bl	printf
	bl	asm_return_u16
	uxth	w0, w0
	mov	w1, w0
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	bl	asm_return_s16
	sxth	w0, w0
	mov	w1, w0
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	bl	asm_return_u32
	mov	w1, w0
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	bl	printf
	bl	asm_return_s32
	mov	w1, w0
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	bl	printf
	bl	asm_return_u64
	mov	x1, x0
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	bl	printf
	bl	asm_return_s64
	mov	x1, x0
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	bl	printf
	ldp	x29, x30, [sp], 32
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
