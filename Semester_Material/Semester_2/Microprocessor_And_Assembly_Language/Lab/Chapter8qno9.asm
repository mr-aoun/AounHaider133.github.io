; Chapter#8 Stack & procedures question#09
; Create a program that will take algebric expression from user and check whether expression is balanced or not

; Sample execution: 
; ENTER AN ALGEBRAIC EXPRESSION: 
; (a + bl] TCO MANY RIGHT BRACKETS. BEGIN AGAIN! 
; ENTER AN ALGEBRAIC EXPRESSION 
; (a + [ b - c ] * d) 
; EXPPESSION IS CORRECT 
; TYPF Y IF YOU WANT TO CONTINUE:Y 
; ENTER AN ALGEBRAIC EXPRESSION:
; {a + b x (c - d) - e) BRACKET MISMATCH. BEGIN AGAIN! 
; ENTER AN ALGEBRAIC EXPRESSION:
; ((a + [b - {c * (d - e) } ] + fl 
; TOO MANY LEFT BRACKETS. BEGIN AGAIN! 
; ENTER AN ALGEBRAIC EXPRESSION:
; I' VE HAD ENOUGH 
; EXPRESSION I~ C8RR£CT 
; TYPE Y IF YOU WANT TO CONTINUE:N

org 0x0100
.model small
.stack 100h

.data
msg1 db 0dh,0ah,'ENTER THE EXPRESSION:$'
msg2 db 0dh,0ah,'STATUS:$'
p1 db 'EXPRESSION IS BALANCED$'
P2 db 'TOO MANY RIGHT BRACES$'
P3 db 'TOO MANY LEFT BRACES$'
c1 db 'ROUND BRACE FOUND AT WRONG PLACE$'
c2 db 'SQUARE BRACE FOUND AT WRONG PLACE$'
c3 db 'CURLY BRACE FOUND AT WRONG PLACE$'
scount dw 0
string db 50,?,10 dup(?)
roundBrace db 0
curlyBrace db 0
squareBrace db 0

.code
main proc   
    ;load data in accumulator
    mov ax,@data
    mov dx,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov cl,0
    mov ah,1
    int 21h  
    
L1:
    cmp al,0dh
    je CheckStatus
    
    cmp al,'('    
    je PushRoundBrace
    
    cmp al,')'
    je PopRoundBrace 
    
    cmp al,'['    
    je PushSquareBrace
    
    cmp al,']'
    je PopSquareBrace    
    
    cmp al,'{'    
    je PushCurlyBrace
    
    cmp al,'}'
    je PopCurlyBrace
    
    jmp Next

PushRoundBrace:
  
  push ax   
  mov ah,1     
  int 21h
  jmp L1
  
PopRoundBrace:
  
  pop dx  
  cmp dl,0 ;if stack contains zero, it means nothing remain to pop
  je TooMuchLeftBraces
  
  cmp dl,'['
  je SquareBrace1
  
  cmp dl,'{'
  je CurlyBrace1
 
  jmp Next
;
PushCurlyBrace:
  
  push ax   
  mov ah,1     
  int 21h
  jmp L1
  
PopCurlyBrace:
  
  pop dx  
  cmp dl,0 ;if stack contains zero, it means nothing remain to pop
  je TooMuchLeftBraces
  jmp  Next
  cmp dl,'['
  je SquareBrace1
  
  cmp dl,'('
  je RoundBrace1
 
  jmp  Next

;        

;Square brace case
PushSquareBrace:
  
  push ax   
  mov ah,1     
  int 21h
  jmp L1
  
PopSquareBrace:
  
  pop dx  
  cmp dl,0 ;if stack contains zero, it means nothing remain to pop
  je TooMuchLeftBraces
  
  cmp dl,'('
  je RoundBrace1
  
  cmp dl,'{'
  je CurlyBrace1

  
  jmp Next
 
RoundBrace1:
 mov roundBrace,1  
 
 jmp Next
 
SquareBrace1:
 mov roundBrace,1  
 
 jmp Next
  
CurlyBrace1:
 mov curlyBrace,1   
  
Next:  
  mov ah,1      
  int 21h
  jmp L1


TooMuchLeftBraces:
mov bl,1  
mov ah,1      
  int 21h
  jmp L1          
  
CheckStatus:
 lea dx,msg2
 mov ah,9
 int 21h
 
 cmp squareBrace,1
 je squareBraceInvalid
 
 cmp curlyBrace,1
 je curlyBraceInvalid
 
 cmp roundBrace,1
 je roundBraceInvalid
 
 cmp bl,1
 je LeftUnbalanced
 
 pop dx
 
 cmp dl,')'
 je LeftUnbalanced
 
 cmp dl,'('
 je RightUnbalanced 
 
 cmp dl,']'
 je LeftUnbalanced
 
 cmp dl,'['
 je RightUnbalanced
 
 lea dx,p1
 int 21h
 jmp Exit
 
LeftUnbalanced:
 lea dx,p3
 int 21h 
 jmp Exit
 
RightUnbalanced:
 lea dx,p2
 int 21h 
 jmp Exit
 
roundBraceInvalid:
 lea dx,c1
 int 21h 
 jmp Exit

curlyBraceInvalid:
 lea dx,c3
 int 21h 
 jmp Exit

squareBraceInvalid:
 lea dx,c2
 int 21h 
 jmp Exit
    
Exit:
    mov ah,4ch
    int 21h
     
endp
ret