[bits 32]

call nast
nast:
pop eax
mov ebp, eax
add ebp, dane-nast

push ebp
call [ebx+3*4] ; printf
add esp, 4
call [ebx] ; exit

dane:
db "hello world", 0xa, 0