
all: run 

boot.bin: bootloader.asm
	nasm -f bin -o boot.bin $<

floopy.img: boot.bin
	dd if=/dev/zero of=floopy.img count=2880 bs=512
	dd if=boot.bin of=floopy.img bs=512 count=1 conv=notrunc

run: floopy.img
	qemu-system-x86_64 -drive format=raw,file=floopy.img

.PHONY: clean
clean:
	rm -rf *.img *.bin
