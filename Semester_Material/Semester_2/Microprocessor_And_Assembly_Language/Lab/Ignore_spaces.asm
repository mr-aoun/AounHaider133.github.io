
org 0100h
.model small
.stack 100h
.data
str1 db 'A S S E M B L Y LAN GU AGE$'
strLen dw 23
str2 db 'ABCDE$'
temp db 16 dup(?) 
     db '$'
.code
main proc
  mov ax,@data
  mov dx,ax
  mov es,ax
  
  lea si,str1
  lea di,temp   
  mov cx,26   
  
L:
  cmp [si],' '
  je Ignore
  
  ;else
  movsb
  jmp Next

Ignore:
  inc si

Next:   
  loop L  
  
  mov dx,offset temp
  mov ah,9
  int 21h    
  
  mov ah,4ch
  int 21h
  
endp          