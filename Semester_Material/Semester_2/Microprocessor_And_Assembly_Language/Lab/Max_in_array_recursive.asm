; Program to computer factorial of number recursively and place result in AX. Input is also given in ax.
.model small
.stack 100h

.data
A dw 2h,10h,5h,20h,30h,9h
Max db 1
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov ax,6
    push ax
    call FIND_MAX    
    
    mov ah,4ch
    int 21h
    
endp     

FIND_MAX proc
     push bp
     mov bp,sp
     
     cmp word ptr [bp+4],1
     jg Next
     
     ;else
     mov ax,A
     jmp Return

Next:
     mov cx,word ptr[bp+4]     
     dec cx
     push cx
     call FIND_MAX
     
     mov bx,[bp+4] ;N
     shl bx,1   ;2N    
     sub bx,2   ;2N-1
     
     cmp A[bx],ax  
     jng Return
     ;if greater        
     
     mov ax,A[bx]

Return:
     pop bp
     ret 2    

FIND_MAX endp     