	.cpu generic
	.file	"dump_asm.c"
	.text
	.align	2
	.global	asm_return_value
	.type	asm_return_value, %function
asm_return_value:
#APP
// 2 "dump_asm.c" 1
	
    mov x0, #1004	

// 0 "" 2
#NO_APP
	ret
	.size	asm_return_value, .-asm_return_value
	.ident	"GCC: (Ubuntu/Linaro 4.8.2-13ubuntu1) 4.8.2 20140110 (prerelease) [ibm/gcc-4_8-branch merged from gcc-4_8-branch, revision 205847]"
