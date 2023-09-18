;Program to count number of ones in the binary representation of a number
.model small
.stack 100h

.code
main proc
     XOR AX,AX
     MOV CX,6   
     MOV BL,3
               
TOP:
    ROL BL,1
    JNC NEXT
    
    ;ELSE
    INC AL

NEXT:
  LOOP TOP 
  
  MOV AH,4CH
  INT 21H
           
           
     endp