;Assembly langauge and organization of IBM PC by yathu yu & charles marut
;Chapter#07 excercise                                                                      

org 100h
.model small
.stack 100h
.data
WORD_I db 1010b

.code
main proc  
     
     ;Question#02:
     ;------------
     ;a) Clear the even-numbered bits of AX, leaving the other bits unchanged
     mov ax,1111b                                                            
     and ax,1b                                                            
     
     ;b) Set the most and least significant bits of BL, leaving the other bits unchanged
     mov bl,0110b
     or bl,1001b
     
     ;c) ;Complement the msb of DX, leaving the other bits unchanged
     mov dx,1001b
     xor dx,1000b 
     
     ;d) Replace the value of the word variable WORD_I by its one's complement
     mov ax,@data
     mov dx,ax
     neg WORD_I
     
     ;Question#03:
     ;------------
     ;a) Set ZF if the contents of AX is zero 
     test ax,0b
     jz True
     
     ;b) Clear ZF If BX contains an odd number 
     test bx,1b
     je True
     
     ;c) Set SF if DX contains a negative number
     test dx,10000000b
     jl True
      
     ;d) Set ZF if DX contain; a zero or positive number
     test dx,1b
     jz True
     test dx,10000000b
     jz True
     
     ;e) Set PF if BL contains an even number of 1 bits
     
     ;QUESTION#04:
     ;Suppose AL contains 1100101lb and CF= l. Give the new contents.of AL after each of the ·following
     ;instructions is exec .lied. Assume the preceding initial conditions for each part of this question.
     MOV AL, 11001011B   
     RCR AL,3
     MOV BL, AL
     ADD BL,11000000B  ;TO MAKE CARRY FLAG 1
     ;a) SHL AL,1             
      SHL AL,1
     
     ;b) SHR AL,1
      SHR AL,1
     ;c) ROL AL,CL if CL cotains 2 
      CMP CL,2
      JE TRUE
      JMP EXIT
      TRUE:
       ROL AL,CL
     
     ;d) ROR AL,CL if CL contains 3 
      CMP CL,3
      JE TRUE
      JMP EXIT
      ;TRUE:
       ROR AL,CL
     ;e) SAR AL,CL if CL cotains 2 
      CMP CL,2
      JE TRUE
      JMP EXIT
      ;TRUE:
       SAR AL,CL
     ;f) RCL AL, 1 
      RCL AL,1
     ;g) RCR AL,CL if CL contains 3   
      CMP CL,3
      JE TRUE
      JMP EXIT
      ;TRUE:
       RCR AL,CL
     
      EXIT:
       MOV AH,4CH
       INT 21H
     
endp


ret




       