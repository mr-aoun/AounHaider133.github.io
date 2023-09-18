;Program to add two integers and display their sum

.model small
.stack 100h

.data      
Num1 db ?
Num2 db ?
msg db 0DH,0AH,'Sum is:$'

.code
main proc

MOV AX,@data
MOV DS,AX  

;Display '?'
MOV DX,'?'
MOV AH,2
INT 21H

;Take two numbers
MOV AH,1
INT 21H
MOV Num1,AL

MOV AH,1
INT 21H
MOV Num2,AL

;Display message
LEA DX,msg
MOV AH,9
INT 21H

;Add both fetched integers
MOV DL,Num1
ADD DL,Num2
SUB DL,48
MOV AH,2
INT 21H

;DOS Exit
MOV AH,4CH
INT 21H


endp