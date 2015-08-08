#include <stdio.h>
#include "../include/support_asm_code.h"

int main( int argc, char **argv ){
	printf("int size = %d\n", sizeof( int ) );	
	printf("u32 size = %d\n", sizeof( u32 ) );	
	printf("u64 size = %d\n", sizeof( u64 ) );	
}

