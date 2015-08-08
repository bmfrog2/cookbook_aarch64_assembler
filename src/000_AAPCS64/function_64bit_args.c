#include <stdio.h>
#include "../include/support_asm_code.h"

u64 asm_return_a1( u64 a1, u64 a2, u64 a3, u64 a4,
                   u64 a5, u64 a6, u64 a7, u64 a8, u64 a9 ){ asm(          "\n\
");}

u64 asm_return_a2( u64 a1, u64 a2, u64 a3, u64 a4,
                   u64 a5, u64 a6, u64 a7, u64 a8, u64 a9 ){ asm(          "\n\
    mov x0, x1           \n\
");}

u64 asm_return_a3( u64 a1, u64 a2, u64 a3, u64 a4,
                   u64 a5, u64 a6, u64 a7, u64 a8, u64 a9 ){ asm(          "\n\
    mov x0, x2           \n\
");}

u64 asm_return_a8( u64 a1, u64 a2, u64 a3, u64 a4,
                   u64 a5, u64 a6, u64 a7, u64 a8, u64 a9 ){ asm(          "\n\
    mov x0, x7           \n\
");}

u64 asm_return_a9( u64 a1, u64 a2, u64 a3, u64 a4,
                   u64 a5, u64 a6, u64 a7, u64 a8, u64 a9 ){ asm(          "\n\
    mov x0, x8           \n\
");}

int main( int argc, char **argv ){
	printf("asm_return_a1()  = %llX\n", asm_return_a1(1,2,3,4,5,6,7,8,9) );	
	printf("asm_return_a2()  = %llX\n", asm_return_a2(1,2,3,4,5,6,7,8,9) );	
	printf("asm_return_a3()  = %llX\n", asm_return_a3(1,2,3,4,5,6,7,8,9) );	
	printf("asm_return_a8()  = %llX\n", asm_return_a8(1,2,3,4,5,6,7,8,9) );	
	printf("asm_return_a9()  = %llX\n", asm_return_a9(1,2,3,4,5,6,7,8,9) );	
}

