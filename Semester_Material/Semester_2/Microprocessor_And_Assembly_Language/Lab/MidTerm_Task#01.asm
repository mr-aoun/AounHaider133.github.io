;Name: Aoun-Haider
;ID:   FA21-BSE-133
; Statement:
; Write a program that prints hollow triangle pattern similar to one shown below for the number of row 
; represented by N, inputted by the user (N should be odd)
; For example for N=5, the pattern should be
; *
; **
; *_*
; *__*
; *___*

.model small
.stack 100h

.data
N dw ?
temp dw 1
d1 dw 0 
d2 dw 0
New_Line db 0ah,0dh,'$'

.code
.main proc
   mov ax,@data
   mov ds,ax
   
   xor cx,cx

Again:   
   call Decimal_input
   
   ;check input is odd or not
   and bx,0000000000000001b
   jz Again   
   
   ;else
   mov bx,ax ;bx will store N-1 
   
   mov N,ax
   mov cx,N
   mov bx,N
   
   ;display new line
   mov ah,9
   lea dx,New_Line
   int 21h
   mov ah,2
   
   xor dh,dh
   
L1:
   
   dec bx
   sub cx,bx
   mov d1,cx   
L2:
   inc d2   
   
   cmp d1,3
   jl Star
   
   mov dx,d1
   cmp dx,d2
   je Star
   
   cmp d2,1
   je Star
   
   jmp Bar
   
Star:   
   mov dl,'*'   
   int 21h 
   
   jmp Next
Bar:   
   mov dl,'_'   
   int 21h
Next:   
   Loop L2
   
   mov d2,0
   ;Check for loop invariant
   mov dx,temp
   cmp dx,N
   je Exit 
   
   mov cx,N  
   inc temp
   
   
   ;display new line
   mov ah,9
   lea dx,New_Line
   int 21h
   mov ah,2
   
   jmp L1 

Exit:
   mov ah,4ch
   int 21h   
  
   
endp 

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

ret
Decimal_Input endp 
