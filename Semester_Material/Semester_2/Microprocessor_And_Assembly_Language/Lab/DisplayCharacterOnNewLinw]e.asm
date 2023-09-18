
.model small
.stack 100h

.data

msg db 'ENTER THREE INITIALS:$'
c1 db ?
c2 db ?
c3 db ?

.code
main proc
     
     ;Load data in data segment via accumulator
     MOV AX,@data
     MOV DS,AX
     
     ;Display prompt message
     LEA DX,msg
     MOV AH,9
     INT 21H
     
     ;Get three characters
     MOV AH,1
     INT 21H
     MOV c1,AL
     
     MOV AH,1
     INT 21H
     MOV c2,AL
     
     MOV AH,1
     INT 21H
     MOV c3,AL
     
     ;Display newline character
     MOV DL,10
     MOV AH,2
     INT 21H   
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display c1  
     MOV DL,c1
     MOV AH,2
     INT 21H
     
     ;Display newline character
     MOV DL,10
     MOV AH,2
     INT 21H   
     
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display c2
     MOV DL,c2
     MOV AH,2
     INT 21H
     
     ;Display newline character
     MOV DL,10
     MOV AH,2
     INT 21H   
     
     MOV DL,13
     MOV AH,2
     INT 21H
     
     ;Display c3
     MOV DL,c3
     MOV AH,2
     INT 21H
     
     ;Dos exit
     MOV AH,4CH
     INT 21H  
     
     endp