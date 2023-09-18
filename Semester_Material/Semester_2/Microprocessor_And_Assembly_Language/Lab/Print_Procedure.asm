; Write a procedure that will print a string from data segement and call it in driver/main procedure.

org 0x0100
.model small
.stack 200h
.data
msg db 0ah,0dh,'Function called!$'

.code
main proc

;Calling function    
call Print
call Print
call Print

MOV AH,4CH
INT 21H

endp

Print proc
mov ah,9
lea dx,msg
int 21h
ret
Print endp     