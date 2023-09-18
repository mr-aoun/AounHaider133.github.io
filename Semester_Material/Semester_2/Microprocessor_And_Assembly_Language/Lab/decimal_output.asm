Decimal_Output proc
 
 ;store current state of registers
 push ax
 push bx
 push cx
 push dx
 
 ;if AX<0
 or ax,ax
 jge Positive
 
 ;if negative
 push ax
 mov dl,'-'
 mov ah,2
 int 21h
 pop ax
 neg ax

Positive:
 xor cx,cx   ;count digits
 mov bx,10d  ;divisor     

@Again: 
 xor dx,dx
 div bx
 
 push dx     ;push remainder
 inc cx      ;count = count+1
 
 ;until ax=0
 or ax,ax
 jne @Again
 
 mov ah,2

;display digits pushed on stack 
@Print_Loop:
 pop dx
 or dl,30h
 int 21h
 loop @Print_Loop
 
;end for
;restore previous results
 pop dx
 pop cx
 pop bx
 pop ax   

ret
Decimal_Output endp     