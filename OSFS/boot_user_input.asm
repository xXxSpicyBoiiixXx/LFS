;;;;;;;;;;;;;;;;;;;;;;;;;
;; Notes on user inputs;;
;;;;;;;;;;;;;;;;;;;;;;;;;
;; mov ah,0		;; This is where we start 
;; int 0x16		;; This is BIOS interrup 0x16 that will accept a key press. So the system will wait for key press

			;; al = ASCII Character 
			;; ah = Scancode 

;; Saving one character to memory
;; char:
;;	db 0
;;	mov ah, 0	;; wait for key press 
;;	int 0x16	;; this is a comment btw

;;	mov al, [char]  ;; this is to dereference the pointer
	
			;; Saving input string to memory will need a buffer 

;; buffer: 
;;	time 10 db 0 	;; complete this 
;;	mov bx, buffer 	;; program as 
;;	mov [bx], al 	;; an exercise
;;	inc bx 
	
[org 0x7c00]		;; This is the origin  
mov ah, 0x0e 		;; moving into the a regiser 
mov bx, buffer		;; move the instruction set varible name into the register b

;; Okay how do I loop this? 


