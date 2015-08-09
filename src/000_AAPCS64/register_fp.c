#include <stdio.h>
#include "../include/support_asm_code.h"

void dummy( u64 a1, ... ) {}

u64 callee2( u64 a1[100] ){
	u64 v1 ;
	v1 = a1[0];
	return v1;
}

// void callee (int *);
// 
// int
// caller ()
// {
//   int i;
//   callee (&i);
//   return i;
// }

static u64 asm_return_x29( void  ){ 
   u64 v1[100],v2;
   
   v1[0] = 1001;
   v1[99] = 1099;
   
   
   v2 = callee2( v1 );
   printf( "v1 address = %llX\n", &v1 );    

   
//   dummy(v1,v2);
   
asm( "\n\
    mov x0, x29                   \n\
");

}

int main( int argc, char **argv ){
	printf("asm_return_x29() = %lld\n", asm_return_x29()  );	
}

