include "E:\Microprocessor & Assembly Language\Lab\AddNo.asm"
;extrn addnos: near
.model small
.stack 100h
.data
msg db 'Enter two digits:$'
msg1 db 0dh,0ah,'The sum of '
digit1 db ?
       db ' and '
digit2 db ?
       db ' is '
sum db -30h,'$'       
.code
main proc
     mov ax,@data
     mov ds,ax
     
     mov ah,9
     lea dx,msg
     int 21h
     
     mov ah,1
     int 21h
     mov digit1,al
     int 21h
     mov digit2,al
     
     lea si,digit1
     lea di,digit2
     
     lea bx,sum
     call addnos
     
     mov ah,9
     lea dx,msg1
     int 21h
     
     mov ah,4ch
     int 21h

main endp   
