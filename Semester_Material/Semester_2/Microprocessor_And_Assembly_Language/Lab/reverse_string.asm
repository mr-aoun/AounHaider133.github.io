org 0x0100
.model small
.stack 100h

.data       
New_Line db 0ah,0dh,'$'
Arr db 'welcome to assembly langauge lab$' 
ArrLen dw ?
tempArr db 10 dup(?)
.code
main proc       
  mov ax,@data
  mov ds,ax 
  mov cx,32
  
  mov si,0         
  
  mov ArrLen,7
  
  call display_string
  call reverse_string
  call display_string
  
  Exit:
  mov ah,4ch
  int 21h 
  
endp                                  

;procedure to reverse string via stack
reverse_string proc
mov cx,ArrLen
L:  
  mov dl,Arr[si]
  and dx,00ffh
  push dx
  
  inc si
  
  Loop L  

mov si,0
mov cx,ArrLen
X:
  pop dx
  mov Arr[si],dl
  inc si
Loop X  

ret
reverse_string endp

;procedure to display string
display_string proc
  ;print new line
  lea dx,New_Line
  mov ah,9
  int 21h
  
  ;display string
  lea dx,Arr
  mov ah,9
  int 21h
  
ret
display_string endp     

str_len proc    
xor si,si
D:
 mov dl,Arr[si]
 cmp dl,'$'    
 je End
 inc si
 jmp D 

End:
mov ArrLen,si
mov bx,si   
dec ax
mov ArrLen,ax
ret
str_len endp     