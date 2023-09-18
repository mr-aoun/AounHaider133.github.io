;Convert hexadecimal digit (A-F) to decimal

.model small
.stack 100h

.data

msg1 db 'ENTER A HEX DIGIT:$'
msg2 db 'IN DECIMAL IT IS $'
decimal db ?

.code
main proc
     
     ;Load data in data segment via accumulator
     MOV AX,@data
     MOV DS,AX
     
     ;Display prompt message
     LEA DX,msg1
     MOV AH,9
     INT 21H
     
     ;Get a character
     MOV AH,1
     INT 21H
     MOV decimal,AL
     
     ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display another message
     LEA DX,msg2
     MOV AH,9
     INT 21H    
     
     ;Display single '1' character
     MOV DL,49
     MOV AH,2
     INT 21H
     
     ;Display decimal digit
     MOV DL,decimal 
     SUB DL,11h
     MOV AH,2
     INT 21H
     
     ;Dos exit
     MOV AH,4CH
     INT 21H  
     
     endp