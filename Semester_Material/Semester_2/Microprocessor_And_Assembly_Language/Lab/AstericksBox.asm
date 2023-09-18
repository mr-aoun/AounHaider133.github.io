;Write a program to display a t 0 x 10 solid box of asterisks. 
;Hint: declare a string in the data segment that specifies the box, 
;and display it with INT 2lh, function 9h. 

.model small
.stack 100h

.data
boundry db '**********$'
sides db '*        *$'

.code
main proc
     ;Load the data in data segment from accumulator
     MOV AX,@data
     MOV DS,AX
     
     LEA DX,boundry
     MOV AH,9
     INT 21H
     
     ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
     ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display left & right
     LEA DX,sides
     MOV AH,9
     INT 21H
     
      ;Display new line and carriage return
     MOV DL,10
     MOV AH,2
     INT 21H
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display bottom border
     LEA DX,boundry
     MOV AH,9
     INT 21H
     
     endp
