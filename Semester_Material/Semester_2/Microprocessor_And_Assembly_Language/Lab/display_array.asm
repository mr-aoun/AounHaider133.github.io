display proc

mov cx,bx
lea dx,msg
mov ah,9
int 21h   

mov ah,2
xor dx,dx
mov si,0

D:
 
 mov dl,Arr[si]
 ;add dl,18
 int 21h   
 mov dl,' '
 int 21h
 inc si

Loop D 

 mov dl,0ah
 mov ah,2
 int 21h
 
 mov dl,0dh
 int 21h

ret
display endp  