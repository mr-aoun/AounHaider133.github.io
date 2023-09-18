; Program to take input from user in hexadecimal format & display it
; Algorithm:
; Clear BX ( BX will hold hexa value )
; Input a hexa character
; WHILE character <> CR DO 
; Convert character to binary value 
; Left shift BX 4 times
; Insert value into lower 4 bits of BX 
; Input a character 
; END_WHILE

.model small
.stack 100h

.code
main proc
 
      XOR BX,BX
     MOV AH,1 
     INT 21H

HERE:
    CMP AL,0DH
    JE PART2
    
    CMP AL,39H
    JG LETTER
    
    ;character is digit
    AND AL,00001111B   
    JMP SHIFT

LETTER:
    SUB AL,37H        

SHIFT:    
    SHL BX,4
    OR BL,AL   
    
    
    INT 21H
    
    JMP HERE 

;display hexa number      
PART2: 
  MOV DL,10
  MOV AH,2
  INT 21H
  
  MOV DL,13
  MOV AH,2
  INT 21H
   
  MOV CX,4 
  XOR AL,AL
  MOV AH,2
  
DISPLAY:
  MOV DL,BH
  AND DL,11110000B
  ROL DL,4
    
  CMP DL,0AH
  JGE ALPHA
  
  ADD DL,'0'
  INT 21H   
  JMP NEXT
  
ALPHA:
  ADD DL,55
  INT 21H  

NEXT:  
  ROL BX,4
  LOOP DISPLAY

EXIT:  
  MOV AH,4CH
  INT 21H
                  
 endp
ret