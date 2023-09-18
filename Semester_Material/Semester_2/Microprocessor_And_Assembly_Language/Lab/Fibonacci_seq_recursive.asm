; Program to computer factorial of number recursively and place result in AX. Input is also given in ax.
.model small
.stack 100h

.data

.code
main proc 
    
    mov ax,5     ;N = 4
    push ax 
    
    call Fib  ;Fib(4)
    
    mov ah,4ch
    int 21h
    
endp     

Fib proc
     push bp
     mov bp,sp
     
     cmp [bp+4],1
     jnle Else

Then:
     mov ax,1     
     jmp Return

Else:
;compute Fib(n-1)               
     mov cx,[bp+4]     
     dec cx
     push cx
     call Fib
     push ax  ;push Result1
     
;compute Fib(n-2)     
     mov cx,[bp+4]
     sub cx,2
     push cx
     
     call Fib

;compute Fib(N)     
     pop bx
     add ax,bx

Return:
     pop bp
     ret 2   

Fib endp     