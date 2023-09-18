; Program to computer factorial of number recursively and place result in AX. Input is also given in ax.
.model small
.stack 100h

.code
main proc
    mov ax,3
    push ax
    call factorial    
    
    mov ah,4ch
    int 21h
    
endp     

factorial proc
     push bp
     mov bp,sp
     
     cmp word ptr [bp+4],1
     jg Next
     
     ;else
     mov ax,1
     jmp Return

Next:
     mov cx,word ptr[bp+4]     
     dec cx
     push cx
     call factorial
     mul word ptr[bp+4]

Return:
     pop bp
     ret 2    

factorial endp     