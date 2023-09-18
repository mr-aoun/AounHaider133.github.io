;Write a program to reverse array elements without using stack

org 0x0100
.model small
.stack 100h

.data  
msg db 'Orignal Array:$'
Arr db 1,8,2,3,5 

.code
main proc
 ;Access the data segment
 mov ax,@data            
 mov ds,ax               
 
 ;get the array offset address
 lea si,Arr
 mov bx,5
 
 call display
 mov si,0   ;SI points to 1st element
 
 mov cx,bx
 dec bx
 mov di,bx  ;DI points to nth element
 shr cx,1
 
XCHG_LOOP:
 mov al,Arr[si]
 xchg al,Arr[di] 
 mov Arr[si],al
 
 inc si
 dec di
 
 loop XCHG_LOOP
                  
 mov bx,5                  
 
 call display                     
;Dos Exit                    
Exit:
 mov ah,4ch
 int 21h

ret 
endp     

;display procedure
display proc

mov dl,0ah
mov ah,2
int 21h

mov dl,0dh
int 21h

;display array elements 
mov ah,2

xor si,si
mov cx,bx 
D: 
 mov dl,Arr[si]
 add dl,'0'
 int 21h 
 
 mov dl,' '  
 int 21h
 inc si
 Loop D

ret
display endp     