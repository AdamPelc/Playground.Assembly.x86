[bits 32]

int3 ;debugger breakponint

mov eax, 0x12345678
xor eax, 0x78563412
; printf("%.8x\n", eax)
push eax
call wypisz
db "%.8x", 0xa, 0
wypisz:
call [ebx+3*4]; printf
add esp, 8

push 0
call [ebx]