
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h   
.model small
.stack 100h 

.data
myVar db 11h;
msg db 'Aoun-Haider$',0;
.code
main proc
     mov ax, offset myVar;
     
     mov dx,offset msg;
     mov ah,9;
     int 21h;
             
     mov ax,07100h;
     mov ds, ax;
     mov si, ax;
     
     mov ah,4ch;
     int 21h;    
     
     
     endp

ret




