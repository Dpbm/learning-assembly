section .data

  new_line db '',10,0
  new_line_len equ $-new_line
  
  msg db 'Writing file: ',10,0
  msg_len equ $-msg

  dir db 'test',0

  file db 'test.txt',0
  file_msg_len equ $-file
  
  user_read dw 0x100
  user_write dw 0x80
  user_execute dw 0x40

section .bss
  permission: resw 1 


section .text
  global _start

_start:
  
  ; all permissions to user
  mov ax, [user_read]
  or ax, [user_write]
  or ax, [user_execute]

  mov word [permission], ax
  
  xor ecx, ecx
  mov eax, 0x27 ; mkdir
  mov ebx, dir ; name the folder
  mov cx, [permission] ; set permissions
  int 0x80 ; execute

  mov eax, 0x0c ;chdir
  mov ebx, dir ; directory
  int 0x80 ; execute

  mov eax, 0x04 ; write on
  mov ebx, 1 ; stdout
  mov ecx, msg
  mov edx, msg_len
  int 0x80
  
  mov eax, 0x04 ; write on
  mov ebx, 1 ; stdout
  mov ecx, file
  mov edx, file_msg_len
  int 0x80

  mov eax, 0x04
  mov ebx, 1
  mov ecx, new_line
  mov edx, new_line_len
  int 0x80
  
  xor rsi, rsi
  mov eax, 0x127
  mov ebx, -100
  mov ecx, file
  mov edx, 0x40
  mov si, [permission]
  int 0x80

  xor ebx, ebx 
  mov eax, 0x01
  int 0x80
