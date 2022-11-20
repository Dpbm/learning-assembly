section .text
    global _start

_start:
    mov edx, len
    mov ecx, msg
    mov ebx, 1
    mov eax, 4
    int 0x80

    mov eax, 1 ;sys exit
    int 0x80 ;execute

section .data
msg db 'Hello, World!', 0xa ;string
len equ $ - msg ;string len
