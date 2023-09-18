;Program to perform signed multiplication
.model small
.stack 100h

.code
main proc
 
 MOV AX,2
 
 MOV BX,7
 MUL BX
 
 mov ah,4ch
 int 21h
 
endp     