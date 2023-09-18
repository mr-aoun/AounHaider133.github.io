org 0x0100
.model SMALL
.stack 100H

.code 
MAIN PROC

call Decimal_Input 
call Print_New_Line
call Decimal_Output
 
;Dos exit
mov ah,4ch
int 21h   
 
ENDP     

include "E:\Microprocessor & Assembly Language\Lab\decimal_input.asm" 
include "E:\Microprocessor & Assembly Language\Lab\decimal_output.asm"

Print_New_Line proc
push ax
mov ah,2
mov dl,0ah
int 21h   
pop ax
ret
Print_New_Line endp     