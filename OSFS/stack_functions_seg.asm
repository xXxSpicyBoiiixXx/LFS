;; The stack, functions, and segmentations...

;; The stack, has two parts the top and the base. 
;; 
;; There are only two operations we can perform on the stack which are push or pop 
;;
;; push moves something on top of the stack while pop removes from the top of the stack. 
;;
;; When we pop a value from the top of the stack, we remove it from the top and assign it to a register 
;; 
;; To make a stack we need to different pointers which are: 
;; bp: base pointer, which points to the base of the stack 
;; sp: stack pointer, which points to the top of the stack

mov bp, 0x8000  ; Postion of the base (just an example) 
mov sp, bp      ; Pointing the same position as the base as the stack is empty

mov bh, 'A'     ; moving a character 
push bx         ; pushing this on to the stack 

  

