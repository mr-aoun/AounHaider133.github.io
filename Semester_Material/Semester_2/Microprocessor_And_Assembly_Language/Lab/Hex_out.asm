
.model small
.stack 100h

.data

.code
main proc
    mov bx,123
    call Hex_OUT

  mov ah,4ch
  int 21h    
endp

HEX_OUT proc
   pusha
   mov cx,4

Repeat:     
   mov dl,bh
   shr dl,4 
   cmp dl,9
   jg Letter
   or dl,30h
   jmp Print

Letter:
   add dl,37h

Print:
   mov ah,2
   int 21h
   shl bx,4
   
   Loop Repeat
   
   popa      
   
ret      
HEX_OUT endp     