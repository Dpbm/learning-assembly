test2:
  jr ra

test1:
  addi sp, sp, -4
  sw ra, 0(sp)
  call test2
  lw ra, 0(sp)
  addi sp, sp, 4
  li s2, 15
  jr ra

main:
  addi sp, sp, -4
  sw ra, 0(sp)
  call test1
  lw ra, 0(sp)
  addi sp, sp, 4
