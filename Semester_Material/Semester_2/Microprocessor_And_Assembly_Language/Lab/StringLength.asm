; Problem Statement
; Display the length of input string
; Solution: Read character until carriage return

org 0x0100
.model small
.stack 100h

.data
prompt db 'Enter the string:$'
output db 'Length: $'

.code
main proc
    MOV AX, @data
    MOV DX, AX
    
    LEA DX, prompt
    MOV AH,9
    INT 21H
     
    MOV AH,1
    MOV CX,0
    
Here:
   INT 21H
   INC CX
   
   CMP AL, 0DH
   JNE Here    
            
   ;Display new line and carriage return
   
   MOV DL,0AH
   MOV AH,2
   INT 21H            
   
   MOV DL,0DH
   MOV AH,2
   INT 21H            
   
   ;Display output
    LEA DX, output
    MOV AH,9
    INT 21H       
    
    DEC CL
    MOV DL, CL
    ADD DL,'0'
    MOV AH,2
    INT 21H

   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret