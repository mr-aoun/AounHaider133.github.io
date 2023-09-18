
.model small
.stack 100h
.data
A dw 55
B dw 57
C dw 50

.code 

main proc
   ;MOV AX, @data
   ;MOV DX,AX
;A = B-A
  
  MOV AX,offset B
  MOV BX,offset A
  SUB BX,AX
  
     endp
