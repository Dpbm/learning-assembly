section .bss
    num resb 4

section .text
    global _start

_start:
    mov ebx, num
    add ebx, 3
    mov [num], ebx

    inc byte [num]
    add byte [num], '0'

    mov eax, 4
    mov ebx, 1
    mov ecx, num
    mov edx, 4
    int 0x80

    mov eax, 1
    int 0x80
