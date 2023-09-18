.model small
.stack 100h

DRAW_ROW macro X
     Local L1
    mov ah,0ch
    mov al,1
    mov cx,10
    mov dx,X

L1:
    int 10h
    inc cx
    cmp cx,301
    jl L1
        
endm

DRAW_COL macro Y
    Local L2 
    
    mov ah,0ch
    mov al,1
    mov cx,Y
    mov dx,10

L2:
    int 10h
    inc dx
    cmp dx,190
    jl L2
    
endm     

.data

.code
main proc
  
    call SET_DISPLAY_MODE
    
    Exit:
    mov ah,4ch
    int 21h
     
main endp     

SET_DISPLAY_MODE proc
  mov ah, 0
  mov al, 13h
  int 10h
  
  mov ah,0
  mov ah,04h
  int 10h
  mov ah,0bh
  mov bh,1
  mov bl,1
  int 10h
  mov bh,0
  mov bl,2
  
  DRAW_ROW 10
  DRAW_ROW 189
  DRAW_COL 10
  DRAW_COL 300
  
ret
endp     