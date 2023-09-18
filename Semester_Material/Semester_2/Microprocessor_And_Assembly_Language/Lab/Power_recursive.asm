; Program to compute power of a number via recursion
.model small
.stack 100h

.data

.code
main proc 
    
    
    mov ax,2     ;X = 2
    
    mov cx,3     ;N = 3
    push cx
    
    call POWER  ;P(2,3)
    
    mov ah,4ch
    int 21h
    
endp     

POWER proc
     push bp
     mov bp,sp
     
     cmp [bp+4],1  ;N = 0 ??
     jg Else
     
     mov bx,ax     
     jmp Return

Else:
     mov cx,[bp+4]     
     dec cx
     push cx
     call POWER
     mul bx
     
Return:
     pop bp
     ret 2   

POWER endp     