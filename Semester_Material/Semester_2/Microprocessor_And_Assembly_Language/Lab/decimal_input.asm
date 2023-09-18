Decimal_Input Proc
     
@Begin:
  mov ah,2
  mov dl,'?'    
  int 21h
  
  xor bx,bx   ;to store overall result
  xor cx,cx   ;to store sign (1-negative, 0-positive)
  
  mov ah,1
  int 21h
  
  cmp al,'-'
  je @Negative
  
  cmp al,'+'
  je @Positive   ;cx initially contains zero, so its +ive by default. just take next character
  
  jmp @Repeat

@Negative:                                                                                  
 mov cx,1

@Positive:
 int 21h 

@Repeat:
 cmp al,'0'
 jnge @Not_Digit
 
 cmp al,'9'
 jnle @Not_Digit
 
;if valid digit, convert character to digit
; total = total*10 + character

 and ax,000fh
 push ax
 
 mov ax,10
 mul bx  
 
 ;Handle Overflow
 ;cmp ax,9999d
 ;jnl @Begin
 
 cmp al,0dh
 je X
 
 pop bx   ;get latest number, bx = old ax (line-44)
 
 add bx,ax ; total = total*10 + character
 
 ;Handle Overflow
 ;cmp bx,32769D
 ;jnl @Begin
 
 ;get next character
 mov ah,1
 int 21h
 
 cmp al,0dh
 jne @Repeat

X: 
 mov ax,bx ;store final result in ax
 
 or cx,cx
 je @Exit ;if positive
 
 ;else
 neg ax

@Exit:
 ret

@Not_Digit:
 mov ah,2
 mov dl,0dh
 int 21h
 
 mov ah,0ah
 int 21h
 
 jmp @Begin

Decimal_Input endp 
