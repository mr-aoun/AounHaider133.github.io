
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt
title 'Program'
org 100h

.model small
.stack 100h
.data
msg1 db 'Enter the string:$'
msg2 db 0DH,0AH,'You entered:'
num db ?,'$'

.code
main proc
    
     ;Load the variable into data segment
     mov ax,@data
     mov ds,ax
     
     ;Display input message
     lea dx,msg1
     mov ah,9      
     int 21h
     
     ;Input a number
     mov ah,1
     int 21h  
     sub al,20h
     mov num,al
    
     
     ;Display 2nd message
     lea dx,msg2
     mov ah,9
     int 21h
     
     
     ;Exit Dos
     mov ah,4ch
     int 21h
     
     endp

ret




