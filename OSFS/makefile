all: 
	nasm boot_alphabet.asm -f bin -o boot_alphabet.bin
	nasm boot_strings.asm -f bin -o boot_strings.bin  
	nasm boot_custom_strings.asm -f bin -o boot_custom_strings.bin 
	nasm boot_user_input.asm -f bin -o boot_user_input.bin
	nasm stack_functions_seg.asm -f bin -o stack_functions_seg.bin	
alphabet: 
	qemu-system-x86_64 boot_alphabet.bin 

strings: 
	qemu-system-x86_64 boot_strings.bin

custom_strings: 
	qemu-system-x86_64 boot_custom_strings.bin 

boot_user_input: 
	qemu-system-x86_64 boot_user_input.bin

stack_functions_seg: 
	qemu-system-x86_64 stack_functions_seq.bin 

run: 
	qemu-system-x86_64 *.bin 

clean: 
	rm -rf *.bin

