
; Program to display 256 ASCII characters

org 0x0100
.model small
.stack 100h

.code
main proc
     
     MOV AH, 2    ; display character function
     MOV CX, 256  ;counter to execute the loop
     MOV DL,0     ;Store recent ascii values in decimal format

Print_Loop:     
     INT 21H
     INC DL
     DEC CX
     JNZ Print_Loop
    
    ;Dos exit
    MOV AH,2
    INT 21H
    
    endp
ret