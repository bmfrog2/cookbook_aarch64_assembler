#include <stdio.h>
#include "../include/support_asm_code.h"

void dummy( u64 a1,... ) { }

u64 asm_return_x19( void ){ 

   register u64 v1,v2,v3,v4,v5,v6,v7,v8;

   v1 = 1001;  v2 = 1002;  v3 = 1003;  v4 = 1004;
   v5 = 1005;  v6 = 1006;  v7 = 1007;  v8 = 1008;
   
   dummy(  v1,v2,v3,v4,v5,v6,v7,v8 );
   
asm( "\n\
    mov x0, x19                   \n\
");

}

u64 asm_return_x26( void ){ 

   register u64 v1,v2,v3,v4,v5,v6,v7,v8;

   v1 = 1001;  v2 = 1002;  v3 = 1003;  v4 = 1004;
   v5 = 1005;  v6 = 1006;  v7 = 1007;  v8 = 1008;
   
   dummy(  v1,v2,v3,v4,v5,v6,v7,v8 );
   
asm( "\n\
    mov x0, x26                   \n\
");

}
int main( int argc, char **argv ){

	printf("asm_return_x19() = %lld\n", asm_return_x19() );	
	printf("asm_return_x26() = %lld\n", asm_return_x26() );	
	
}

