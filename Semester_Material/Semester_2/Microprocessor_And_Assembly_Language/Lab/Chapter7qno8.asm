org 0x0100
.model small
.stack 100h

.data
msg1 db 0dh,0ah,'TYPE A CHARACTER:$'
msg21 db 0dh,0ah,'THE ASCII VALUE OF '
var db ?
msg22 db ' IN BINARY IS:$'
msg3 db 0dh,0ah,'THE NUMBER OF BITS IS:'  
bits db 0                               
end db '$'

.code
main proc   
    ;load data in accumulator
    mov ax,@data
    mov dx,ax
    
    ;display input prompt 1
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h 
    
    mov var,al
    
    ;display input prompt 2
    lea dx,msg21
    mov ah,9
    int 21h
    
    ;Ascii convertion
    mov cl,8   
    mov bl,var 
    mov ah,2
Here:
   test bx,10000000b
   jnz One
    
    mov dl,'0'    
    int 21h       
    jmp Next

One:     
   mov dl,'1'
   int 21h
Next:
   rol bl,1
   loop Here      
      
   ;display input prompt 3
    lea dx,msg3
    mov ah,9
    int 21h               
    
    ;counting number of bits
    mov cx,8

L1:
   test var,10000000b
   jz New
    
   inc bits

New:
   rol var,1
   loop L1
   
   ;display the number of bits
   mov dl,bits
   add dl,'0'
   mov ah,2
   int 21h
   
            
    EXIT:
    mov ah,4ch
    int 21h
     
endp
ret