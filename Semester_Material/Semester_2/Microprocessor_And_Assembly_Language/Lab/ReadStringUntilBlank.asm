; Problem Statement
; Read a string until blank is read
; Solution: Read character until value is 32

org 0x0100
.model small
.stack 100h

.data
prompt db 'Enter the string:$'
output db 'Exit!!$'

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
   
   CMP AL, ' '
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
    
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret