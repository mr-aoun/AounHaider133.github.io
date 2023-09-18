; Write a program to sort array elements via selection sort.

.model small                    
.stack 100h

.data
msg db 'Elements of array are:$'
Arr db 5,2,1,3,4

.code
main proc
                  
 mov ax,@data
 mov ds,ax

mov bx,5
call display
call selection_sort
call display 
        
 
Exit:
 mov ah,4ch
 int 21h   
 
endp   

;procedure to perform selection sort
selection_sort proc

lea si,Arr ;offset address of array
 mov bx,5  ;num of elements in array
 
 push bx
 push cx
 push dx
 push si
 dec bx
 je End_Sort  ;if array contains only one element
 mov dx,si    ;save array offset
  
Sort_Loop:
 mov si,dx
 mov cx,bx
 mov di,si
 mov al,[di]  

Find_Max:
 inc si        ;next element
 cmp [si],al   ;next_element > previous_element
 jng Next
 mov di,si
 mov al,[di]

Next:
 loop Find_Max
 
 call swap
 dec bx
 jne Sort_Loop

End_Sort:
 pop si
 pop dx
 pop cx
 pop bx  

ret 
selection_sort endp     
;customized procedure to swap si & di
swap proc
     push ax      ;store ax old value
     mov al,[si]  ;AL = SI
     xchg al,[di] ;AL <=> DI                   
     mov [si],al  ;SI = AL
     pop ax       ;restore ax

ret     
swap endp 

display proc

mov cx,bx
lea dx,msg
mov ah,9
int 21h   

mov ah,2
xor dx,dx
mov si,0

D:
 
 mov dl,Arr[si]
 add dl,30h
 int 21h   
 mov dl,' '
 int 21h
 inc si

Loop D 

 mov dl,0ah
 mov ah,2
 int 21h
 
 mov dl,0dh
 int 21h

ret
display endp     