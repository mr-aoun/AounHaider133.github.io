org 0x0100
.model small
.stack 100h

.data
msg1 db 0dh,0ah,'TYPE A CHARACTER:$'
msg21 db 0dh,0ah,'THE ASCII CODE OF '
var db ?
msg22 db ' IN HEX IS:$'
temp db ?  
exitMessage db 0ah,0dh,'PROGRAM TERMINATED!$'
.code
main proc   
    ;load data in accumulator
    mov ax,@data
    mov dx,ax
M:    
    ;display input prompt 1
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h 
    
    cmp al,0dh
    je EXIT
    mov var,al
    
    ;display input prompt 2
    lea dx,msg21
    mov ah,9
    int 21h
    
    ;Ascii to hexa convertion
    mov cx,2
    mov ah,2
    
Here:    
    mov dl,var
    shr dl,4
    
    cmp dl,0Ah
    jl Digit
    
    ;if alphabet
    add dl,55
    int 21h  
    jmp next 

Digit:
    add dl,'0'
    int 21h  
    jmp next 

next:             
rol var,4
loop Here 


jmp M    
    
    EXIT:  
    lea dx,exitMessage
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
     
endp
ret