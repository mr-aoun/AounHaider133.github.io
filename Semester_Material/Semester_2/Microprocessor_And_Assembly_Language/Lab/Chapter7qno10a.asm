;Chapter#07 question#10                                       
; Problem Statement:
; Write a program that prompts the user to type a hex number of 
; four hex digits or less, and outputs it In binary on the next line. 
; If the user enters an illegal character, he or she should be 
; prompted to begin again. Accept only uppercase letters. 
; Sample execution: 
; TYPE A HEX NUMBER (0 TO FFFF): la 
; ILLEGAL HEX DIGIT, TRY AGAIN: lABC 
; IN BINAPY IT IS 0001101010111100 
org 0x0100
.model small
.stack 100h

.data
msg1 db 0dh,0ah,'TYPE A HEX NUMBER (0 TO FFFF):$'
msg2 db 0dh,0ah,'ILLEGAL HEX DIGIT, TRY AGAIN:$'
msg3 db 0dh,0ah,'IN BINARY IT IS:$'
temp dw 0
result dw ?
counter db 0

.code
main proc
  
  mov ax,@data
  mov dx,ax

  mov dx,offset msg1
  mov ah,9
  int 21h

;input from user 
  mov cl,1
  mov ah,1
  int 21h       
  xor cx,cx
  
Repeat:
  
  cmp al,5AH ;if alphabet
  jg Error    
  
  cmp al,0dh
  je Display  
  
  cmp counter,3
  je Display
  
  ; if legal hex digit 
  inc counter
  jmp Store
 
Error: ;if small letter is entered 
 mov result,0 ;clear the result
 mov counter,0 ;reset counter
 xor cx,cx
 lea dx,msg2
 mov ah,9
 int 21h 
 mov ah,1
 int 21h 
 jmp Repeat

Store:  
  
  cmp al,41H ;if alphabet
  jl Digit
  
  sub al,55
  
Digit:   ;if (0-9)
  mov temp,ax
  shl temp,12
  shr temp,cl
  
  mov dx,temp
  or result,dx
  add cl,4

Next:  
  int 21h
  jmp Repeat
 
;display 16-bit hexadecimal digit in binary format
Display:
  lea dx,msg3
  mov ah,9
  int 21h

  mov bx,result
  shr bx,12 
  mov ah,2
  mov cx,4
L:
  test bl,10000000b
  jz Zero
  
  ;if one
 mov dl,'1'
 int 21h  
 jmp N

Zero: ;if zero
 mov dl,'0'
 int 21h

N: 
 rol bl,1
 loop L
   
 
Exit:
  mov ah,4ch
  int 21h
       
endp