#include <stdio.h>

long long asm_return_value( void ){
asm("\n\
    mov x0, #1004	\n\
");

}
int main( int argc, char **argv ){
	printf( "Hello aarch64 assembler!\n" );
	
	printf("asm_return_value() = %lld\n", asm_return_value() );	
}

