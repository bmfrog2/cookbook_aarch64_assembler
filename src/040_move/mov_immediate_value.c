#include <stdio.h>
#include "../include/support_asm_code.h"

u64 asm_get_w_char( void ){ asm( " \
    mov   w0,#'A'                \n\
");}

u64 asm_get_w_decimal( void ){ asm( " \
     mov   w0,#123                  \n\
");}

u64 asm_get_w_decimal_minus( void ){ asm( " \
     mov   w0,#-3804                      \n\
");}

u64 asm_mov_w_hex_16bit( void ){ asm( " \
     mov   w0,#0xF123                 \n\
");}

u64 asm_get_x_char( void ){ asm( " \
    mov   x0,#'A'                \n\
");}

u64 asm_get_x_decimal( void ){ asm( " \
     mov   x0,#123                  \n\
");}

u64 asm_get_x_decimal_minus( void ){ asm( " \
     mov   x0,#-3804                \n\
");}
            
u64 asm_mov_x_hex_16bit( void ){ asm( " \
     mov   x0,#0xF123                 \n\
");}

u64 asm_mov_x_hex_16bit_shift( void ){ asm( " \
     mov   x0,#0xF123000000000000           \n\
");}

int main( int argc, char **argv ){
	printf("w_char            X0 = %llX\n", asm_get_w_char             () );
	printf("w_decimal         X0 = %llX\n", asm_get_w_decimal          () );
	printf("w_decimal_minus   X0 = %llX\n", asm_get_w_decimal_minus    () );
	printf("w_hex_16bit       X0 = %llX\n", asm_mov_w_hex_16bit        () );
	printf("x_char            X0 = %llX\n", asm_get_x_char             () );
	printf("x_decimal         X0 = %llX\n", asm_get_x_decimal          () );
	printf("x_decimal_minus   X0 = %llX\n", asm_get_x_decimal_minus    () );
	printf("x_hex_16bit       X0 = %llX\n", asm_mov_x_hex_16bit        () );
	printf("x_hex_16bit_shift X0 = %llX\n", asm_mov_x_hex_16bit_shift  () );
}

