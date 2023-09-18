.model small
.stack 100h

.data
BUFF db 512 dup(0)
ERROR_MSG db 'Unknown error occured!'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov al,2
    lea bx,BUFF
    mov cx,1
    mov dx,5
    int 25h
    pop dx
    jnc Exit
          
    mov ah,9
    lea dx,ERROR_MSG
    int 21h
              
Exit:
   mov ah,4ch
   int 21h    
endp     