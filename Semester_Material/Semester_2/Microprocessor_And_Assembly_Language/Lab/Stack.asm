;Program to reverse string using stack data structure

org 0x0100
.model small
.stack 100h

.data
msg db 0dh,0ah,'ENTER THE STRING:$'
output db 0dh,0ah,0ah,'STRING IN REVERSE ORDER:$'

.code
main proc   
    ;load data in accumulator
    mov ax,@data
    mov dx,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    xor cx,cx  ;clear the cx register. (This instruction takes 2 bytes while other takes 3 bytes)
    
L:
    cmp al,0dh
    je End_loop
    
    push ax ;push ax on the stack while stack require 16 bit operand, AL contains actual value
    inc cx
    int 21h
    
    jmp L    

End_loop:  
    
    ;display a message 'STRING IN REVERSE ORDER:'
    lea dx,output
    mov ah,9
    int 21h
    
    ;display line feed and carriage return character
    mov ah,2
    mov dl,0dh
    int 21h
    
    mov dl,0ah
    int 21h
    jcxz Exit ;exit if cx register contains zero, means no character is entered    

Top:
    pop dx  ;get character from stack top
    int 21h ;call display function
    
    loop top
    
Exit:  
    mov ah,4ch
    int 21h
     
endp
ret