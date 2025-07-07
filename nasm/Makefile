$(INPUT) : $(INPUT).asm
	nasm -f elf64 $(INPUT).asm -o $(INPUT).o
	ld  -s -o $(INPUT) $(INPUT).o
	rm -rf $(INPUT).o

new-two:
	nasm -f elf32 two.asm -o two.o
	nasm -f elf32 main-two.asm -o main.o
	ld -m elf_i386 -s -o two main.o two.o
	rm -rf *.o
