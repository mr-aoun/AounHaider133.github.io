; Problem Statement
; Divide Content of AX by BX and store result in CX. Do not use built-in mneumonic 'DIV'.
;Algorithm:
;

org 0x0100
.model small
.stack 100h

.code
main proc
   MOV AX,8
   MOV BX,4
   MOV CX,0
   
FOR_LOOP:
   SUB AX,BX
   INC CX
   
   CMP AX,0
   JNE FOR_LOOP
     
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret