all: 
	nasm boot_alphabet.asm -f bin -o boot_alphabet.bin
	nasm boot_strings.asm -f bin -o boot_strings.bin  

alphabet: 
	nasm boot_alphabet.asm -f bin -o boot_alphabet.bin
	qemu-system-x86_64 boot_alphabet.bin 

strings: 
	nasm boot_strings.asm -f bin -o boot_strings.bin 
	qemu-system-x86_64 boot_strings.bin

run: 
	qemu-system-x86_64 boot_alphabet.bin
	qemu-system-x86_64 boot_strings.bin 

clean: 
	rm -rf *.bin

