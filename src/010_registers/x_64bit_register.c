#include <stdio.h>
#include "../include/support_asm_code.h"

u64 asm_return_x0_register( void ){ asm( "\n\
                                          \n\
    ldr x0, =0x123456789ABCDEF0           \n\
	                                      \n\
");}

u64 asm_return_X0_register( void ){ asm(  "\n\
                                           \n\
    ldr X0, =0xFEDCBA9876543210            \n\
	                                       \n\
");}

int main( int argc, char **argv ){
	
	u64 ret;
	
	printf( "General purpose (integer) registers\n" );
	
	ret = asm_return_x0_register();
	printf("x0 = %llX\n", ret );	
	
	ret = asm_return_X0_register();
	printf("X0 = %llX\n", ret );	
}


