org 0x0100
.model small
.stack 100h

.data       
New_Line db 0ah,0dh,'$'
Arr db 'welcome to assembly langauge lab$'

.code
main proc       
  mov ax,@data
  mov ds,ax 
  mov cx,32
  
  mov si,0         
  
  ;print new line
  lea dx,New_Line
  mov ah,9
  int 21h
  
  ;print lower case(orignal) message
  lea dx,Arr
  mov ah,9
  int 21h
  
L:  
  sub Arr[si],32    
  inc si
  
  Loop L  
  
  
  ;print new line
  lea dx,New_Line
  mov ah,9
  int 21h
  
  ;print Upper_case string
  lea dx,Arr
  mov ah,9
  int 21h
  
  mov ah,4ch
  int 21h 
endp   