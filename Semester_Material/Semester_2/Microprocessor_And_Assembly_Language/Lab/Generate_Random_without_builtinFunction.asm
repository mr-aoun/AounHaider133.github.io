;Generate a random number without any built-in function. 
;Hint: Take system time using 2ch function of int 21 interrupt.

.model small
.stack 100h

.code
main proc
     ;Get system current time as DX:AX
     mov ah,2ch
     int 21h                          
     
     xor ax,dx
     mov cx,ax ;CX = AX
     shl ax,1  ;2 x AX
     adc ax,cx ;CX + 2AX + CF
     
     mov ah,4ch
     int 21h
ret     
endp    