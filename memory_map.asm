section .text
    global _start

section .data
    address dd 0xFFCCCDE0 
    data dd 0
    actual dd 0

_start:
  jmp check

check:
  mov eax, dword[actual]
  mov ebx, 100000

  cmp eax, ebx
  je end_loop
  jmp loop_action


loop_action:
  mov eax, address
  add eax, dword[actual]

  mov ebx, eax
  mov dword[data], ebx

  add dword[data], '0'

  mov edx, 4
  mov ecx, data
  mov ebx, 1
  mov eax, 4
  int 0x80

  add dword[actual], 1

  jmp check

end_loop:
  mov eax, 1
  xor ebx, ebx
  int 0x80
