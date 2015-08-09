#include <stdio.h>
#include "../include/support_asm_code.h"

u64 asm_branch_label( void ){ asm( " \
        b     end                  \n\
        mov   x0, #4321            \n\
end:                               \n\
        mov   x0, #1234            \n\
");}

u64 asm_brach_back( void ){ asm( " \
        b     jump1               \n\
1:      mov   x0, #0xb001         \n\
        b     2f                  \n\
jump1:  b     1b                  \n\
        b     2f                  \n\
1:      mov   x0, #0xf001         \n\
        b     2f                  \n\
2:		                          \n\
" );}

u64 asm_brach_forward( void ){ asm( " \
        b     jump2               \n\
1:      mov   x0, #0xb001         \n\
        b     2f                  \n\
jump2:  b     1f                  \n\
        b     2f                  \n\
1:      mov   x0, #0xf001         \n\
        b     2f                  \n\
2:		                          \n\
" );}

u64 asm_brach_infinite_loop( void ){ asm( " \
        mov   x0, #0xF234         \n\
        b     .                   \n\
" );}

int main( int argc, char **argv ){
	printf("X0 = %lld\n", asm_branch_label() );	
	printf("X0 = %llx\n", asm_brach_back() );	
	printf("X0 = %llx\n", asm_brach_forward() );	
	printf("X0 = %llx\n", asm_brach_infinite_loop() );	
}

