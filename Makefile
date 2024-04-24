compile: $(filename).out

$(filename).out:  $(filename).o
	ld -m elf_i386 -s -o $(filename).out $(filename).o

$(filename).o: $(filename).asm
	nasm -f elf $(filename).asm


.PHONY: clean
clean:
	rm -rf *.o *.out
