; Program to take input from user in binary format
; Algorithm:
; Clear BX ( BX will hold binary value )
; Input a character ( '0' or '1' )
; WHILE character <> CR DO 
; Convert character to binary value 
; Left shift BX 
; Insert value into lsb of BX 
; Input a character 
; END_WHILE

.model small
.stack 100h

.code
main proc
     
     XOR BL,BL
     MOV AH,1 
     INT 21H

HERE:
    CMP AL,0DH
    JE PART2
    
    AND AL,00001111B
    SHL BL,1
    OR BL,AL
    INT 21H
    
    LOOP HERE 

;display binary number    
PART2: 
  MOV DL,0DH
  MOV AH,2
  INT 21H
  
  MOV DL,0FH
  MOV AH,2
  INT 21H
   
  MOV CX,15
DISPLAY:
  SAL BX,1
    
  TEST BX,1000000000000000B
  JNZ ONE
  
  ;display '0'
  MOV DL,48
  MOV AH,2
  INT 21H
  JMP NEXT

;display '1'
ONE:  
  MOV DL,49 
  MOV AH,2
  INT 21H 

NEXT:  
  LOOP DISPLAY

EXIT:  
  MOV AH,4CH
  INT 21H
                  
 endp
ret