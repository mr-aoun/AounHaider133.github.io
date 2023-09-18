.model small
.stack 100h

.data
str1 db 'ABDX$'
str2 db 'ABDY$'
result db 0
msg1 db 'String#01 comes first alphabetically$'
msg2 db 'String#02 comes first alphabetically$'
msg3 db 'Both strings are equal!$'

.code
main proc
  mov ax,@data
  mov ds,ax
  mov es,ax
  lea si,str1
  lea di,str2
   
  cld
  
  mov cx,4
  repe cmpsb
  JL str1_First   ;check SF = 1, if true then small
  JG str2_Second  ;check CF = 0, if true then greater
  
  ;else equal
  mov result,0    ;check ZF = 1, if true then equal
  jmp Next

str1_First:
  mov result,1
  jmp Next
str2_Second:
  mov result,2
  jmp Next

Next:      
mov ah,9

cmp result,0
je Equal

cmp result,1
je Str1_Greater

;else
lea dx,msg2
int 21h       
 jmp Exit
 
Equal:   
 lea dx,msg3
 int 21h       
 jmp Exit   

Str1_Greater:
 lea dx,msg1
 int 21h       
 jmp Exit   
 
Exit:
 mov ah,4ch
 int 21h 
 
endp     