[org 0x7c00] ; Tell the assembler where the code will be loaded. 

mov bx, HELLO_MSG ; use BX as a parameter to our function, so...
call print_string ; ...we can specify the address of a string.

mov bx, GOODBYE_MSG
call print_string 

jmp $ ; Hang 

%include "print_string.asm"

; Data
HELLO_MSG: 

db 'Matthew is a god-Emperor!', 0 ; <- This zero on the end tells our routine 
                                  ; <- when to stop printing characters.
GOODBYE_MSG:
db 'Farewell, lord Matthew!', 0

; Padding and magic number
times 510-($-$$) db 0
dw 0xaa55
