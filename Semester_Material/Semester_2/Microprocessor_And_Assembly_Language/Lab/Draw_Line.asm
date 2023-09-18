;Program to draw a line starting from specific row and col

;select high resolution mode
mov ah,6
int 10h                     

mov ah, 0
mov al, 13h
int 10h

;Write pixel
mov ah,0ch
mov al,8    ;white
mov cx,301  ;col
mov dx,100  ;row

L1:
  int 10h
  inc dx
  cmp dx,600
  jne L1
  
;read keyboard
  mov ah,0
  int 16h
  
;set to text mode
  mov ax,3
  int 10h

;dos exit
   mov ah,4ch
   int 21h      