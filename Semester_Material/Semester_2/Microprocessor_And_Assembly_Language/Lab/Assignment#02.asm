; Problem Statement
; Prompt the user to enter the a line of text. On the next line, display the capital letter entered that comes
; alphabetically 1st and the one that comes alphabetically last. If no capital letters are entered, display 
; "No capital letters entered"
; Solution: Read character until carriage return, process the string, display output messages

org 0x0100
.model small
.stack 100h

.data
prompt db 'Enter the string:$'
not_found db 0AH,0DH,'No capital letters entered!$'
msg db  0AH,0DH,'First letter = '
first_char db ']'
           db ' Last letter = '
last_char db '@ $'

.code
main proc
    MOV AX, @data
    MOV DX, AX
    
    LEA DX, prompt
    MOV AH,9
    INT 21H
    
    ;Read character     
    MOV AH,1
    INT 21H

While_:
    
    ;Is character carriage return
    CMP AL,0DH
    JE END_WHILE
    
    ;if character is uppercase
    CMP AL, 'A'
    JNGE END_IF
    CMP AL,'Z'
    JNLE END_IF
    
    ;If first letter precedes first capital letter
    CMP AL,first_char
    JNL CHECK_LAST
    MOV first_char,AL
    
CHECK_LAST:
    CMP AL,last_char
    JNG END_IF
    
    MOV last_char,AL

END_IF:
    INT 21H
    JMP WHILE_

END_WHILE:
    MOV AH,9
    
    CMP first_char, ']'
    JNE CAPS
    
    LEA DX, not_found
    JMP DISPLAY

CAPS:
    LEA DX,msg
DISPLAY:
    INT 21H                  
    
   ;DOS Exit             
   MOV AH,4CH
   INT 21H
    
   endp
ret