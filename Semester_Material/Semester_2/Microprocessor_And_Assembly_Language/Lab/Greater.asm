
; Program to display larger number

org 0x0100
.model small
.stack 100h

.code
main proc
     
    MOV AX,2
    MOV BX,3
    
    CMP AX,BX
    JL Second
    
    MOV DL, AL 
    ADD DL, '0'
    MOV AH,2
    INT 21H
    JMP Exit

Second:
    MOV DL, BL 
    ADD DL, '0'
    MOV AH,2
    INT 21H

Exit:
    ;Dos exit
    MOV AH,4CH
    INT 21H
    
    endp
ret