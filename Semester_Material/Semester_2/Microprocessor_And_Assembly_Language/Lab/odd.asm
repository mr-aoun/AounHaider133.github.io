; Problem Statement
; If AL contains 1 or 3, display "o". If AL contains 2 or 4, display "e"

org 0x0100
.model small
.stack 100h

.code
main proc
    MOV AX, 2
    
    CMP AX, 1
    JE odd
    CMP AX, 3
    JE odd
    
    MOV DL, 'e'
    MOV AH,2
    INT 21H 
    JMP Exit

odd:
    MOV DL, 'o'
    MOV AH,2
    INT 21H 
   
Exit:
    ;Dos exit
    MOV AH,4CH
    INT 21H
    
    endp
ret