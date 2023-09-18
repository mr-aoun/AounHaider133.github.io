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

.model small
.stack 100h

.code
main proc
  
  mov ax,111b
  mov bx,1101b
  call display "Aoun"
  
  mov ah,4ch
  int 21h
       
endp

display macro str

mov dx,str
mov ah,9
int 21h

ret     
endm