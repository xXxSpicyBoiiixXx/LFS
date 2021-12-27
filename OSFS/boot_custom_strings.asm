[org 0x7c00] 				;; This is the origin 
mov ah, 0x0e 				;; Moving things into the register a and have it h as in high, I'm not sure why
mov bx, variableName			;; move the instruction set variable name into the register b 

printString: 
	mov al, [bx]			;; mov to the lower end of register a 
	cmp al, 0 			;; compare the lower end of a to 0 
	je end				;; if compare is 0 jump to the end
	int 0x10			;; BIOS interrupt handler, to print on the screen 
	inc bx				;; This will increment things in the bx register by one.
	jmp printString			;; This will loop back around to the printString 
end: 					;; Ending the loop 

jmp $ 					;; Will jmp to the $ 

variableName: 
	db "Welp here we go again", 0	;; This is our string 

times 510-($-$$) db 0 			;; for the 510 bytes for the boot sector of the operating system
dw 0xaa55				;; the last two bytes have to be this to load in our operating system. 


