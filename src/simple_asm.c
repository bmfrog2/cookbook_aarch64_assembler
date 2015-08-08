#include <stdio.h>
#include "support_asm_code.h"

u64 asm_return_value( void ){ asm( "\n\
                                    \n\
    mov x0, #1004	                \n\
	                                \n\
");}

int main( int argc, char **argv ){
	printf( "Simple aarch64 assembler!\n" );
	
	printf("asm_return_value() = %lld\n", asm_return_value() );	
}
