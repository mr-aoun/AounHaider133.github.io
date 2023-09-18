;Program to perform signed division of -1250x7
.model small
.stack 100h

.code
main proc
 
 MOV AX,-1250
 CWD
 MOV BX,7
 IDIV BX
 
 mov ah,4ch
 int 21h
 
endp     