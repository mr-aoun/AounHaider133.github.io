
; Program to display absolute value of AX

org 0x0100
.model small
.stack 100h

.code
main proc
     
    MOV AX,-2
         
    ;IF
    CMP AX,0    ;AX < 0 ?
    JNL Exit    ;AX > 0
      
    ;THEN
    NEG AX 
    MOV DL, AL
    ADD DL, '0'
    MOV AH,2
    INT 21H
    
Exit:
    ;Dos exit
    MOV AH,4CH
    INT 21H
    
    endp
ret