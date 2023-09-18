; Program to computer factorial of number recursively and place result in AX. Input is also given in ax.
.model small
.stack 100h

.data

.code
main proc 
    ;mov ax,@data
    ;mov ds,ax
    
    mov ax,2     ;K = 2
    push ax 
    mov ax,3     ;N = 3
    push ax
    
    call Binomial  ;Binomial(3,2)
    
    mov ah,4ch
    int 21h
    
endp     

Binomial proc
     push bp
     mov bp,sp
     
     mov ax,[bp+6]
     
     cmp ax,[bp+4]  ;K = N ??
     je Then
     
     cmp ax,0
     jne Else

Then:
     mov ax,1     
     jmp Return

Else:
;compute Binomial(n-1,k)               
     push [bp+6]  ;save K
     mov cx,[bp+4]     
     dec cx
     push cx
     call Binomial
     push ax  ;push Result1
     
;compute Binomial(n-1,k-1)     
     mov cx,[bp+6]
     dec cx
     push cx
     mov cx,[bp+4]
     dec cx
     push cx
     
     call Binomial

;compute Binomial(N,K)     
     pop bx
     add ax,bx

Return:
     pop bp
     ret 4   

Binomial endp     