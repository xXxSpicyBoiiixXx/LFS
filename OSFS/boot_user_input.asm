;; TODO Complete this exercise

mov ah, 0
int 0x16

char: 
	db 0
	mov ah, 0	; wait for key press 
	int 0x16	; this is a comment btw

	mov al, [char] 
	

buffer: 
	time 10 db 0 	; complete this 
	mov bx, buffer 	; program as 
	mov [bx], al 	; an exercise
	inc bx 
	
	


