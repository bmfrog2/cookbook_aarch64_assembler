#include <stdio.h>
#include "../include/support_asm_code.h"

u8 asm_return_u8( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

s8 asm_return_s8( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

u16 asm_return_u16( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

s16 asm_return_s16( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

u32 asm_return_u32( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

s32 asm_return_s32( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

u64 asm_return_u64( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

s64 asm_return_s64( void ){ asm(          "\n\
    ldr x0, =0x123456789ABCDEF0           \n\
");}

int main( int argc, char **argv ){
	printf("retrun asm_return_u8()  = %llX\n", asm_return_u8() );	
	printf("retrun asm_return_s8()  = %llX\n", asm_return_s8() );	
	printf("retrun asm_return_u16() = %llX\n", asm_return_u16() );	
	printf("retrun asm_return_s16() = %llX\n", asm_return_s16() );	
	printf("retrun asm_return_u32() = %llX\n", asm_return_u32() );	
	printf("retrun asm_return_s32() = %llX\n", asm_return_s32() );	
	printf("retrun asm_return_u64() = %llX\n", asm_return_u64() );	
	printf("retrun asm_return_s64() = %llX\n", asm_return_s64() );	
}
