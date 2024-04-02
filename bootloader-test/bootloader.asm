org 7C00h

jmp short start

message db "Alexandre Silva"
len equ $ - message

start:
  mov bx, 000Fh   ;Page 0, colour attribute 15 (white) for the (int 10h) calls
  mov cx, 1       ;We will want to write 1 character
  xor dx, dx      ;Start at top left corner
  mov ds, dx      ;Ensure ds = 0 (to let us load the message)
  cld 

  mov si, message ; load the message pointer to the si register

clear:
  mov ah, 2
  int 10h

  mov al, 0
  mov ah, 9
  int 10h

  inc dl ; dl is for the column and dh for the row

  cmp dl, 80
  jle clear

  inc dh
  mov dl, 0

  cmp dh, 7
  jle clear

  mov dh, 0
  mov dl, 0


show_char:
  mov ah, 2 ; set cursor pointer
  int 10h   ; function call (for text)

  lodsb     ; load the value of the pointer from si, and inc the pointer
  mov ah, 9 ; to write on screen  
  int 10h   ; call
  
  inc dl    ; move cursor 
  mov ah, 2 ; set cursor pointer
  int 10h   ; function call (for text)

check:
  cmp si, message+len ; check the message has ended
  jne show_char ; jump back to show the value


times 0200h - 2 - ($ - $$)  db 0    ;Zerofill up to 510 bytes
dw 0AA55h       ;Boot Sector signature
 
