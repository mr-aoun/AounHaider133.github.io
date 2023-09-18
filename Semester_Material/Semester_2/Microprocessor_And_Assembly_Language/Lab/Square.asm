
org 0x0100
.model small
.stack 100h

.code
main proc
     
     MOV AX, 0
     MOV CX, 0
     
Here:
    ADD AX,0AH
    INC CX
    CMP CX,0AH
    JNZ Here
    
    
    MOV DL,AL
    
    MOV AH,2
    INT 21H
    
    
     endp