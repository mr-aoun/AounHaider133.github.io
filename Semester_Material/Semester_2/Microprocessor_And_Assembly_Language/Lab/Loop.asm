; Problem Statement
; Display 80 stars using Loop

org 0x0100
.model small
.stack 100h

.code
main proc
     
     MOV CX,80
     MOV DX,'*'
     MOV AH,2
      
Here:
    INT 21H
    DEC CX
Loop Here

    ;DOS Exit             
    MOV AH,4CH
    INT 21H
    
    endp
ret