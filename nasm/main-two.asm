section .data
  new_line db 0xA
  mark db 0x23

section .bss
  inp resb 1
  tmp resb 1
  esp_start resd 1

section .text

global _start
extern two


_start:
  mov eax, 0x03
  mov ebx, 0
  mov ecx, inp
  mov edx, 1
  int 0x80

  movzx eax, byte [inp]
  sub eax, 48
  call two

  movzx edx, byte [mark]
  push edx; sets the beggining of our stack

  
compute:
  ; eax will have the num

  xor edx, edx
  mov ecx, 10
  div ecx ; store into eax the division result (the left most int value and edx the remainder)
  
  push edx ; saves the remainder
  
  cmp eax, 0
  je print_number

  jmp compute

print_number:
   pop edx

   cmp dl, [mark]
   je exit

   add dl, 48
   mov byte [tmp], dl

   mov eax, 0x04
   mov ebx, 1
   mov ecx, tmp
   mov edx, 1
   int 0x80

   jmp print_number

exit:
   mov eax, 0x04
   mov ebx, 1
   mov ecx, new_line
   mov edx, 1
   int 0x80

  xor ebx, ebx
  mov eax, 0x01
  int 0x80
