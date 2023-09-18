; MidTerm Examination
; Name: Aoun-Haider
; ID:   FA21-BSE-133
; Problem@02:
; Write a program which contains procedure named USER_INPUT to take input in array till user press enter. Copy
; Unique elements of array in a separate array named UNIQUE_ARR. Compute Frequency and store in an array
; named Frequencies. Also write a procedure PRINT_MODE that will print the content of array passed in SI.

.model small
.stack 100h

.data
ARR db 20 dup('$') 
Frequencies db 20 dup('$')
UNIQUE_ARR db 20 dup('$')
New_Line db 0ah,0dh,'$'
msg1 db 'Enter the array content:$'
msg2 db 'Elements of array are:$$'
uniqueSize db 0
counter db 0 
total dw ? 
temp db 0
k db 0

.code
.main proc
   mov ax,@data
   mov ds,ax
   
   call USER_INPUT
   mov total,cx
   
   
   call FREQUENCY
   
   call REMOVE_DUPLICATE
   
   lea si,ARR
   call PRINT_MODE  
   
   lea si,UNIQUE_ARR
   call PRINT_MODE   
      
    
   
   call FREQUENCY   
   
   lea si,Frequencies
   call PRINT_MODE 
   

Exit:
   mov ah,4ch
   int 21h   
   
endp 

USER_INPUT proc
mov ah,9
   lea dx,msg1
   int 21h
   
   mov ah,1
   int 21h
   
   xor cx,cx
   lea si,ARR
L:
   cmp al,0dh
   je End
   
   sub al,30h
   mov [ARR+si],al
   inc si   
   inc cx
   int 21h
   jmp L

End:   
ret     
USER_INPUT endp

PRINT_MODE proc

   mov cx,total
;Go to new line
   mov ah,9
   lea dx,New_Line
   int 21h        
   lea dx,msg2
   int 21h    
   mov ah,2

LoopOut:
   
   mov dl,[si+ARR] 
   
   cmp dl,'$'
   je Return
   
   add dl,'0'
   int 21h
   inc si
   
   ;show space character
   mov dl,' '
   int 21h
   
   
   Loop LoopOut

Return:
ret
PRINT_MODE endp 

FREQUENCY proc

;compute frequency
   xor si,si
L1:
   mov al,[UNIQUE_ARR+si]
   mov temp,al
   mov cx,total
   mov counter,0 
   mov di,0
   
L2: 
   mov al,[ARR+di]
   cmp temp,al
   je Found
   
   jmp Next
   
Found:
   inc counter      

Next:     
   inc di
   Loop L2
   
   mov al,counter
   mov [Frequencies+si],al
   inc si
   
   
   cmp si,total
   jne L1  

ret        
FREQUENCY endp    

REMOVE_DUPLICATE proc

xor si,si
   xor di,di
   mov bl,0  ;To hold boolean value, element already exist in unique array or not
   mov counter,0
   mov cx,total
   
   ;copy 1st element as it is
   mov al,[ARR+si]
   mov [UNIQUE_ARR+0],al
   inc si 
   inc k
   
A1:
   mov al,[ARR+si]
   mov temp,al   
   mov counter,0 
   mov bl,0 
   xor di,di

A2: 
   ;mov al,counter
   mov ax,di
   and ax,000fh
   cmp al,k  ;j<k
   je New
   
   mov al,temp
   cmp [UNIQUE_ARR+di],al
   je True
   
   jmp Next1

True:
   mov bl,1

Next1: 
   inc di
   jmp A2
   
New:
   cmp bl,1 ;is already exist
   je Next2 ;yes, move to next
   
   ;if element not exist already
   mov al,k        
   and ax,000fh      
   mov di,ax          
   mov al,temp
   mov [UNIQUE_ARR+di],al
   inc k

Next2:
   inc si
   Loop A1

ret        
REMOVE_DUPLICATE endp     