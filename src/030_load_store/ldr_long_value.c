#include <stdio.h>
#include "../include/support_asm_code.h"

u64 asm_ldr_long_value( void ){ asm( " \
    ldr   x0,=0x123456789ABCDEF0      \n\
");}

u64 asm_ldr_long_value2( void ){ asm( " \
    ldr   x0,1f                       \n\
");}

asm( " \
1:  .quad 0xFEDCBA9876543210 \n\
");

int main( int argc, char **argv ){
	printf("X0 = %llX\n", asm_ldr_long_value() );	
	printf("X0 = %llX\n", asm_ldr_long_value2() );	
}
