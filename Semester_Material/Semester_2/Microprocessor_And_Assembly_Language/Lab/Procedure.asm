.model small
.stack 100h

.code
main proc
  
  mov ax,111b
  mov bx,1101b
  call multiply 
  
  mov ah,4ch
  int 21h
       
endp

; procedure to multiply two numbers in AX and BX registers
multiply proc

push ax  
push bx   
xor dx,dx

Repeat:
 ;if BX is odd
 test bx,1
 jz end_if
 
 ;then
 add dx,ax

end_if:
 shl ax,1
 shr bx,1

;until
 jnz Repeat 
 pop bx
 pop ax

ret
multiply endp