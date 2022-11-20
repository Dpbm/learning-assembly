section .bss
    num resb 4

section .data
    msg db 'recieved number was: '
    msglen equ $ - msg

section .text
    global _start

_start:
    mov eax, 3 ;sys_read
    mov ebx, 2 ;stdin
    mov ecx, num ;variable to store read data
    mov edx, 4 ; size
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msglen
    int 0x80

    mov eax, 4 ;sys_write
    mov ebx, 1 ;stdout
    mov ecx, num ;data from variable
    mov edx, 4 ;size of data
    int 0x80

    mov eax, 1 ;sys exit
    int 0x80 ;execute
