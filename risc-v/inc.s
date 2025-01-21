_inc:
	addi sp, sp, -1
	li t1, 1
	sb t1, 0(sp)
	jr ra

loop:
	addi sp, sp, -4
	

	xor t4, t3, s2
	bne t4, zero, _inc

main:
	li s2, 10

	addi sp, sp, -4
	sw ra, 0(sp)

	call loop
	
	lw ra, 0(sp)
	addi sp, sp, 4
