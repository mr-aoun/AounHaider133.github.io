.model small
.stack 100h

.data
ST_ARR dw 5 dup(?) 
msg db 'Array:$'

.code
.main proc
   mov ax,@data
   mov ds,ax
   
   mov ax,0009h
   push ax
   mov ax,0002h
   push ax
   mov ax,0003h
   push ax
   mov ax,0005h
   push ax
   
   mov ax,0008h
   push ax
   
   mov cx,5
   mov bp,sp
   lea bx,ST_ARR
L:   
   mov ax,[bp]
   mov [ST_ARR+bx],ax
   add bp,2
   add bx,2
   
   Loop L  
   
   lea si,ST_ARR
   call display  
   
   mov ah,4ch
   int 21h
   
endp   

;display array content
display proc

mov cx,5
lea dx,msg
mov ah,9
int 21h   

mov ah,2
xor dx,dx
;lea si,ST_ARR

D:
 
 mov dx,[ST_ARR+si]
 shl dx,8
 ;add dl,18
 int 21h   
 mov dl,' '
 int 21h
 add si,2

Loop D 

 mov dl,0ah
 mov ah,2
 int 21h
 
 mov dl,0dh
 int 21h

ret
display endp  