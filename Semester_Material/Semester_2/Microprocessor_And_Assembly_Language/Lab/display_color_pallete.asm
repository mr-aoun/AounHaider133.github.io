
;display 256 colors
mov ah,0ch     ;write pixel function
mov al,0       ;start with pixel 0
mov bl,0       ;page 0
mov cx,0       ;column 0
mov dx,100     ;row 100

L1:
  int 10h
  inc cx
  inc al
  
  cmp cx,256
  jl L1
  
  Eixt:
  mov ah,4ch
  int 21h