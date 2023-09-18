; Program to compute power of a number via recursion
.model small
.stack 100h

.data
A dw 10h,20h,0h,5h
len dw 4
.code
main proc 
    mov ax,@data
    mov ds,ax
    
    mov cx,len
    push cx     
    xor ax,ax
    call SUM_OF_ARR  ;P(2,3)
    
    mov ah,4ch
    int 21h
    
endp     

SUM_OF_ARR proc
     push bp
     mov bp,sp
     
     cmp [bp+4],1  ;N = 0 ??
     jg Else
     
     mov ax,A 
     jmp Return

Else:
     mov cx,[bp+4]     
     dec cx
     push cx
     call SUM_OF_ARR
     
     mov bx,[bp+4]
     shl bx,1
     sub bx,2
     add ax,A[bx]
     
Return:
     pop bp
     ret 2   

SUM_OF_ARR endp     