;Reverse string using movsb

.model small
.stack 100h

.data
input db 30 dup ('$')
output db 12 dup('$')   
New_Line db 0ah,0dh,'$'
len db ?
.code
main proc
  mov ax,@data
  mov ds,ax
  mov es,ax
  
  lea di,input
  call READ_STR
  mov len,bl
  
  mov bx,2
  lea si,New_Line
  call SHOW_STR
  
  lea si,input  
  mov bl,len
  and bx,00ffh
  call SHOW_STR
  
  ;Display new line
  mov ah,9 
  lea dx,New_Line
  int 21h
  
  
Exit:    
  ;Dos Exit
  mov ah,4ch
  int 21h
  
main endp     

READ_STR proc

  cld
  xor bx,bx    ;to store total characters in string
  mov ah,1

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

SHOW_STR proc
  mov cx,bx
  cld
  mov ah,2
L1:
  
  lodsb
  mov dl,al
  int 21h
  
  Loop L1   

ret  
SHOW_STR endp         