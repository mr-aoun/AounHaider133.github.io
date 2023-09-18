;Set Graphic mode on
mov ah, 0
mov al, 13h
int 10h

;Reading pixel
MOV AH,0DH   ; read pixel 
MOV CX,50    ;column 50 
MOV DX,199   ; row 199 
INT 10H      ;AL get pixel value 


;Writting pixel at specified position

MOV CX,20    ;column 20                        
MOV DX,4     ;row    4
mov al,04h   ;store cyan color value

X:

MOV AH, 0CH  ;write pixel, AL is already set 


inc cx
;inc dx
INT 10H             

cmp cx,30

jne X       

mov bx,ax
mov ah,0dh
mov cx,32
mov dx,4
int 10h