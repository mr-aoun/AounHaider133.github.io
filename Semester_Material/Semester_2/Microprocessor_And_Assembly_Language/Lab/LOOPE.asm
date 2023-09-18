; Problem Statement
; Use LOOPE to get characters until blank is read and length not exceed from 5

org 0x0100
.model small
.stack 100h

.code
main proc
   
   MOV AH,1
   MOV CX,5

L1:
  INT 21H 
  
  CMP CX,0
  JE EXIT
  
  CMP AL, ' '
  LOOPNE L1
  
  EXIT:
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret