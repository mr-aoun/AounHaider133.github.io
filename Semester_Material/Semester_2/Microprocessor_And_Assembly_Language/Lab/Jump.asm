; Problem Statement
; If AX contains negative number, put -1 in BX. If contains 0, put 0 in BX. If contains positive number, put 1
; in BX

org 0x0100
.model small
.stack 100h

.code
main proc
     
    MOV AX,2
    
    CMP AX,0     ; AX == 0 ?
    JE Zero      ; AX = 0
    JG Positive  ; AX > 0
    
    ; if negative
    MOV BX, -1
    JMP Exit
    
Zero:
    MOV BX,0
    JMP Exit

Positive:
    MOV BX,1
    JMP Exit

Exit:
    ;Dos exit
    MOV AH,4CH
    INT 21H
    
    endp
ret