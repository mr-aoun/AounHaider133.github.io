; Problem Statement
; Multiply Content of AX by BX and store result in CX. Do not use built-in mneumonic 'MUL'.
;Algorithm:
;Add Content of AX in itself till BX not become zero by continous decrement.

org 0x0100
.model small
.stack 100h

.code
main proc
   MOV AX,8
   MOV BX,4
   MOV CX,0
   
FOR_LOOP:
   ADD AX,8
   DEC BX
   
   CMP BX,1
   JNE FOR_LOOP
     
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret