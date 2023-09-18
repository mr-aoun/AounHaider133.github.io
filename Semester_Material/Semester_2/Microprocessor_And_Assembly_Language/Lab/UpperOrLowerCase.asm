; Problem Statement
; Read a character and display if it is uppercase

; Psuedo code:
; If (AX>= 'A' AND AX<= 'Z') display character
; Else exit

org 0x0100
.model small
.stack 100h

.data
prompt db 'ENTER THE CHARACTER:$'
output1 db 'Upper Case!$'
output2 db 'Lower Case!$'

.code
main proc
     
     MOV AX, @data
     MOV DX, AX
     
     LEA DX,prompt
     MOV AH,9
     INT 21H  
     
     MOV AH,1
     INT 21H
     
     CMP AL, 'A' ; AL> = 'A'
     JNGE Lower_case
     CMP AL, 'Z'
     JNLE Lower_case
     
     ;If upper case letter
     ;New Line
     MOV DL, 0AH
     MOV AH,2
     INT 21H    
     
     ;carriage return
     MOV DL, 0DH
     MOV AH,2
     INT 21H
     
     ;Display message
     LEA DX,output1
     MOV AH,9
     INT 21H              

Lower_case:     
     ;New Line
     MOV DL, 0AH
     MOV AH,2
     INT 21H    
     
     ;carriage return
     MOV DL, 0DH
     MOV AH,2
     INT 21H
     
     ;Display message
     LEA DX,output2
     MOV AH,9
     INT 21H              

     
Exit:
    MOV AH,4CH
    INT 21H
    
    endp
ret