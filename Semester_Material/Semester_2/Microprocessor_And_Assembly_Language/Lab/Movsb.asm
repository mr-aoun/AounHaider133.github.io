;Reverse string using movsb

.model small
.stack 100h

.data
msg1 db 'Aoun-Haider'
msg2 db 12 dup('$')   

.code
main proc
  mov ax,@data
  mov ds,ax
  
  mov es,ax
  lea si,msg1
  lea di,msg2
  add si,10
  
  std        ;set direction flag
  mov cx,11
L:  
  ;mov cx,11
  movsb
  add di,2
  
  Loop L     
  
  ;store a byte word from AL to msg2 3 times
  mov al,'X'
  lea di,msg2
  inc di
  cld
  mov cx,3
  rep stosb
  
  ;display string
  mov ah,9
  lea dx,msg2
  int 21h
  
  ;Dos Exit
  mov ah,4ch
  int 21h
  
main endp     