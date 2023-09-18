;Program to reverse string using stack data structure

org 0x0100
.model small
.stack 100h

.data
msg1 db 0dh,0ah,'ENTER THE STRING:$'
msg2 db 0dh,0ah,'STRING IN REVERSED WRT WORDS:$'
scount dw 0
string db 50,?,10 dup(?)

.code
main proc   
    ;load data in accumulator
    mov ax,@data
    mov dx,ax
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    mov cl,0
    mov bl,0   
    lea bx,string
    mov ah,1
    int 21h  

L1:
   cmp al,0dh ;if carriage return
   je Exit
   
   cmp al,' '     
   je SpaceFound
   
   ;if space not entered
   push ax
   inc cl
   int 21h
   jmp L1

SpaceFound: 
L2:
  pop dx
  mov string[bx+2],dl
  inc scount
  inc scount
  
  Loop L2   
  
  int 21h ;call input character function
  jmp L1
  
  
Exit:     
    lea dx,msg2
    mov ah,9
    int 21h 
    
    xor bx, bx
    mov bl, string[1]
    mov string[bx+2], '$'
  
    mov dx,offset string
    mov ah,9
    int 21h
    
    
 
    mov ah,4ch
    int 21h
     
endp
ret