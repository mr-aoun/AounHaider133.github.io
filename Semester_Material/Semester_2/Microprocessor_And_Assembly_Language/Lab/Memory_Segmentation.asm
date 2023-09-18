; Program to implement memory segmentation 

S_SEG SEGMENT STACK
     DB 100H DUP(?) 
S_SEG ENDS

D_SEG SEGMENT
 DB 100H DUP(?) 
D_SEG ENDS

C_SEG SEGMENT
    ASSUME CS:C_SEG, SS:S_SEG, DS:D_SEG
    
MAIN PROC
     MOV AX,D_SEG
     MOV DS,AX
     
     ;dos exit
     MOV AX,4CH
     INT 21H

MAIN ENDP          
C_SEG ENDS         
END MAIN