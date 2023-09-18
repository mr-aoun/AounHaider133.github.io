;Chapter#07 question#11
; Write a program that prompts the user to type a binary number 
; of 16 digits or less, and outputs It In hex on the next line. If the 
; user enters an illegal character, he or she should be prompted to 
; begin again. Sample e.1tecutio11: 
; TYPE A BINARY NUMBER, UP TO 16 DIGITS: 11100001 
; IN HEX IT IS El 
; Your program may ignore any input beyond 16 characters. 

org 100h
.model small
.stack 100h

.data
msg1 db 0ah,0dh,'TYPE A BINARY NUMBER, UP TO 16 DIGITS:$'  
errorPrompt db 0ah,0dh,'INVALID INPUT, TRY AGAIN:$'
msg2 db 0ah,0dh,'IN HEX IT IS:'
result db ?
end db '$'
input dw 0
temp db ?     
counter db 0
a dw 0
loopCounter db 0

.code
main proc
 ;load variables in data segment to access directly
 mov ax,@data
 mov dx,ax
 
 ;display input message
 mov ah,9
 lea dx,msg1
 int 21h               
 
 ;display input blinking cursor
 mov cl,0
 mov a,0000b 
 shr a,4
 mov ah,1
 int 21h

L1: 
 
 cmp al,0dh ;if carriage return, then exit
 je Display
 
 cmp al,30h
 jl Error
 
 cmp al,31h
 jg Error
 
 cmp counter,4
 je Store
  
 cmp al,'1'
 je One
 
 shl a,1
 or a,0000b
 inc counter
 inc loopCounter
 
 cmp counter,4
 je Store
 
 ;else jump to next input
 jmp Next
 
One:   

 shl a,1
 or a,0001b
 inc counter
 inc loopCounter
 
 cmp counter,4
 je Store
 
 jmp Next

Error: 
 ;if not 0 or 1 then clear all
 mov cl,0
 mov a,0
 mov loopCounter,0
 mov counter,0
 mov input,0 
 xor dx,dx
 mov ah,9
 lea dx,errorPrompt 
 int 21h
 jmp Next

Store:
 shl a,cl  
 mov dx,a
 or input,dx
 add cl,4
 mov counter,0
 
 mov a,0
 jmp Next
 
Next:         
 
 cmp loopCounter,16
 je Display
 
 ;Again call input routine
 mov ah,1
 int 21h
 
 jmp L1 

;display the binary string in hex format
Display:  

 ;ror input,12
 
 ;display output string simulation
 mov ah,9
 lea dx,msg2
 int 21h
  
 mov cl,0
 mov ah,2

L2:
 mov dx,input
 shr dx,cl
 and dx,000Fh
 
 cmp dl,10
 jl Digit
 
 ;if > 9
 add dx,55
 int 21h 
 jmp Above

Digit:
 add dx,'0'
 int 21h 
 jmp Above
 
Above: 
 cmp cl,12
 je Exit
 
 add cl,4
 jmp L2
 
;DOS exit
Exit: 
 
 mov ah,4ch
 int 21h
 
ret      
endp   