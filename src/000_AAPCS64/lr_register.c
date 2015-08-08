#include <stdio.h>
#include "../include/support_asm_code.h"

void lr_location(void);
u64 asm_return_x30( void ){ asm( "\n\
    mov x0, x30                   \n\
    ret                           \n\
");}

int main( int argc, char **argv ){

    u64 lr_value;
	
	lr_value = asm_return_x30();
asm( "lr_location:" );

	printf("asm_return_x30() = %llX\n", lr_value    );	
	printf("main             = %llX\n", main        );	 
	printf("lr_locate        = %llX\n", lr_location );	 
}

