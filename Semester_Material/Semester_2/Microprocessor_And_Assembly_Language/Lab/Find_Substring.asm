.model small
.stack 100h

.data
MSG1 DB 'ENTER THE SUBSTRING:',0DH,0AH,'$'
MSG2 DB 0DH,0AH,'ENTER THE MAIN STRING:',0DH,0AH,'$'
MAINSTR DB 80 DUP('$')
SUBSTR DB 80 DUP('$')
START DW ?
STOP DW ?
SUB_LEN DW ?
YESMSG DB 0DH,0AH,'YES! IT IS SUBSTRING OF MAIN STRING.$'
NOMSG DB 0DH,0AH,'NO! IT IS NOT SUBSTRING OF MAIN STRING.$'

.CODE
MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     MOV ES,AX

;display prompt message#01     
     MOV AH,9
     LEA DX,MSG1
     INT 21H

;read string
     LEA DI,SUBSTR
     CALL READ_STR
     MOV SUB_LEN,BX
     
;display prompt message#02
     MOV AH,9
     LEA DX,MSG2
     INT 21H

;read string
     LEA DI,MAINSTR
     CALL READ_STR
     
;check if string length is zero or length of substring is greater then main string
     OR BX,BX
     JE NO
     CMP SUB_LEN,0
     JE NO
     CMP SUB_LEN,BX
     JG NO

;see if substring is subset of main string
    LEA SI,SUBSTR
    LEA DI,MAINSTR
    CLD

;compute stop. STOP will point to len(main_str)-len(sub_str)         
    MOV STOP,DI
    ADD STOP,BX
    MOV AX,SUB_LEN
    SUB STOP,AX

;initialize START with start of main string    
    MOV START,DI
        
REPEAT:
    MOV CX,SUB_LEN
    MOV DI,START
    LEA SI,SUBSTR
    REPE CMPSB
    JE YES
    
    INC START
    
;see if start>=stop
    MOV AX,START
    CMP AX,STOP
    JNLE NO        
    
    JMP REPEAT

;display results
YES:
    LEA DX,YESMSG
    JMP DISPLAY
NO:
    LEA DX,NOMSG

DISPLAY:
    MOV AH,9
    INT 21H

EXIT:
    MOV AH,4CH
    INT 21H
                    
ret
ENDP  

READ_STR proc

  cld
  xor bx,bx    ;to store total characters in string
  mov ah,1 
  INT 21H

L:
  cmp al,0dh
  je End
  
  cmp al,8h ;is backspace
  jne Read
  
  ;then
  dec di
  dec bx
  
  jmp Next

Read:
  stosb
  inc bx

Next:
  int 21h
  jmp L 
     
End:
 ret     
READ_STR endp   