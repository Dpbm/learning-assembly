$(INPUT) : $(INPUT).asm
	nasm -f elf64 $(INPUT).asm -o $(INPUT).o
	ld  -s -o $(INPUT) $(INPUT).o
	rm -rf $(INPUT).o
