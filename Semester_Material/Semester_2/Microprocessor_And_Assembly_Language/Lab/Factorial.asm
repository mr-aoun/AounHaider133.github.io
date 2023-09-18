; Write program to compute factorial                                             

.model small
.stack 100h

.code
main proc
 
 mov ax,1 ;AX will hold the factorial
 mov cx,4
 
L:
 mul cx 
 
 Loop L
 
 mov ah,4ch
 int 21h
 
endp     