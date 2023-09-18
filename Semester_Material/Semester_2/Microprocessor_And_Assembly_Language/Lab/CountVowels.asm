.model small
.stack 100h

.data
str db 80 dup('$')
New_Line db 0ah,0dh,'$' 
msg1 db 0dh,0ah,'Vowels = $'
msg2 db 'Consonants = $'
Vowels db 'AEIOU'
Consonants db 'BCDFGHJKLMNPQRSTVWXYZ' 
prompt db 'You entered:$'
len db 0  
vowelCount db 0
consonantCount db 0

.code
main proc
 mov ax,@data
 mov ds,ax
 mov es,ax
 
 lea di,str
 call READ_STR
 mov len,bl 
 
 lea si,str
 cld      ;left to right direction
 
Repeat:
 lodsb    ;load character from si to AL
 
 lea di,Vowels
 mov cx,5
 repne scasb   ;compare AL with str[si] 5 times, if ZF=1 -> found
 jne Constant
 
 ;else vowel found
 inc vowelCount
 jmp Until
 
;else it's a constant
Constant:
 lea di,Consonants
 mov cx,21
 repne scasb
 jne Until
 inc consonantCount

;move to next iteration
Until:
 dec bl    ;bx has string length
 jne Repeat                     
 
 ;show string
 mov bx,2
 lea si,New_Line
 call SHOW_STR     
 
 ;show string
 mov bx,2
 lea si,prompt
 call SHOW_STR
  
  
  lea si,str
  mov bl,len
  and bx,00ffh
  call SHOW_STR
  
  ;Display new line
  mov ah,9 
  lea dx,New_Line
  int 21h  
  
  ;Display actual result
  lea dx,msg1
  int 21h
  
  ;display value of vowelCount
  mov ah,2
  mov dx, word ptr vowelCount ;overload type from byte to word
  add dx,'0'
  int 21h
  
  ;Display new line
  mov ah,9 
  lea dx,New_Line
  int 21h
  
  ;Display another message
  lea dx,msg2
  mov ah,9
  int 21h
  
  ;Display value of consonant
  mov ah,2
  mov dx,word ptr consonantCount
  add dx,'0'
  int 21h
  
  ;Display new line
  mov ah,9 
  lea dx,New_Line
  int 21h
  
  ;Dos Exit
  mov ah,4ch
  int 21h
 
endp

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