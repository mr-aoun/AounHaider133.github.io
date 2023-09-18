; Problem Statement
; Prompt the user to enter his password and display X's on that position where he entered password. Do not store
; the password.

org 0x0100
.model small
.stack 100h

.data
prompt db 'Enter your password:$'
.code
main proc
    MOV AX, @data
    MOV DX, AX
    
    LEA DX, prompt
    MOV AH,9
    INT 21H
    
    MOV CX,5
    
Here:
   
   MOV AH,0  ;read the character and not display it
   INT 16H 
 
   MOV DL, 'X'
   MOV AH,2
   INT 21H
 
   DEC CX 
 
   CMP CX, 0
   JNE Here
   
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret