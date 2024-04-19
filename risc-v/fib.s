fib:

  addi t2, a1, 0
  add a1, s2, a1
  addi s2, t2, 0

  addi a2, a2, -1

  bne a2, zero, fib
  ret


main:
  li s2, 1
  li a1, 1
  li a2, 6
  
  addi a2, a2, -1


  addi sp, sp, -32
  sw ra, 0(sp)
  
  call fib
  
  lw ra, 0(sp)
  addi sp, sp, 32

