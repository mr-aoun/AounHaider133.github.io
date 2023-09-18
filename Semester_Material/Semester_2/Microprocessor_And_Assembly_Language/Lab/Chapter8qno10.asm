; The following method can be used to generate random numbers 
; in the range 1 to 32767. 
; 1) Start with any number in this range. 
; 2) Shift left once. 
; 3) Replace bit 0 by the XOR of bits 14 and 15. 
; 4) Clear bit 15. 
     
; Write the following procedures: 
; a. A procedure READ that lets the user enter a binary number 
; and stores it in AX. You may use the code for binary input 
; given in section 7.4. 
; b. A procedure RANDOM that receives a number in BX and returns a random number in BX. 
; c. A procedure WRITE that displays BX in binary. You may use 
; the algorithm given in section 7.4. 
; Write a program that displays a '?', calls READ to read a binary 
; number, and calls RANDOM and WRITE to compute and display 
; 100 random numbers. The numbers should be displayed four per 
; line, with four blanks separating the numbers. 
org 0x100
.model small
.stack 100h

.data      
num dw ?
bit14 dw ?
bit15 dw ?
temp dw ?
counter db 3
string db 'Random numbers in a specific range are:$'
.code
main proc
 mov ax,@data
 mov dx,ax
 
 mov cl,12
 mov ah,2
 
 call READ
 call RANDOM
 call PRINT_NEW_LINE 
 call PRINT_NEW_LINE
 
 lea dx,string
 mov ah,9
 int 21h
 call PRINT_NEW_LINE

L:
 call PRINT_VALUES  
 call PRINT_SPACE 
 
 dec num
 
 call PRINT_VALUES  
 call PRINT_SPACE
 
 dec num
 
 call PRINT_VALUES  
 call PRINT_SPACE
 
 dec num
 
 call PRINT_VALUES  
 call PRINT_SPACE
 
 dec num
 call PRINT_NEW_LINE 
 
 dec counter
 cmp counter,0
 je Exit 
 
 jmp L
    
Exit:
 MOV AH,4CH
 INT 21H
 
RET
endp     

;Procoedure to take binary input from user
READ proc

;display character '?'
 MOV DL,'?'
 MOV AH,2
 INT 21H
 
;take binary input
 XOR BX, BX 
 MOV AH, 1 
 INT 21H 
 
WHILE_: 
 CMP AL,0DH 
 JE End 
  
 AND AL,0FH 
  
 SHL BX,1
 OR BL,AL 
 
INT 21H 
JMP WHILE_ 

End:
 RET
READ endp     

;create random number
RANDOM proc

mov num,bx
 ;displaying random numbers  
     shl num,1 
     mov dx,num
     mov bit14,dx
     mov bit15,dx
     and bit14,0100000000000000b   ;get bit#14
     and bit15,1000000000000000b   ;get bit#15
     mov dx,bit15
     xor bit14,dx
     cmp bit14,0
     je One
     ;else
     or num,0000000000000000b
     One: ;if one            
     or num,0000000000000001b
     
     and num,0111111111111111b

ret          
RANDOM endp  

PRINT_NEW_LINE proc
  mov dx,0ah
  mov ah,2
  int 21h     
  
  mov dx,0dh
  mov ah,2
  int 21h

ret  
PRINT_NEW_LINE endp     


PRINT_VALUES proc

mov cl,12

L1:
 mov dx,num
 shr dx,cl
 and dx,000Fh
 sub cl,4
   
 cmp dl,0Ah
 jge Greater
 
 ;if < 9
 
 add dl,'0'
 jmp Next 

Greater: 
 mov temp,dx
 
 mov dl,'1'
 mov ah,2
 int 21h    
 mov dx,temp
 sub dl,10   
 add dl,'0'

Next:
 
 mov ah,2
 int 21h 
 
 cmp cl,0fch
 je Quit
 
 jmp L1

Quit:
 ret

PRINT_VALUES endp

;procedure to print 4 adjacent spaces
PRINT_SPACE proc
 mov dl,' '
 mov ah,2
 int 21h      
 
 mov dl,' '
 mov ah,2
 int 21h      
 
 mov dl,' '
 mov ah,2
 int 21h      
 
 mov dl,' '
 mov ah,2
 int 21h      

ret
PRINT_SPACE endp