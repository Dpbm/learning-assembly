EXIT equ 1
STDIN equ 0
STDOUT equ 1
READ equ 3
WRITE equ 4

section .data
    enterNumberText db 'coloque um número: '
    enterNumberTextSize equ $ - enterNumberText

    totalText db 'Numero + 2: '
    totalTextSize equ $ - totalText

section .bss
    num resb 2
    result resb 2

section .text
    global _start

_start:
    mov eax, WRITE
    mov ebx, STDOUT
    mov ecx, enterNumberText
    mov edx, enterNumberTextSize
    int 0x80

    mov eax, READ 
    mov ebx, STDIN
    mov ecx, num
    mov edx, 2
    int 0x80

    mov ebx, [num]
    add ebx, 2
    add byte [result], '0'

    mov [result], ebx


    mov eax, WRITE
    mov ebx, STDOUT
    mov ecx, totalText
    mov edx, totalTextSize
    int 0x80

    mov eax, WRITE
    mov ebx, STDOUT
    mov ecx, result
    mov edx, 2
    int 0x80

    mov eax, EXIT
    int 0x80
