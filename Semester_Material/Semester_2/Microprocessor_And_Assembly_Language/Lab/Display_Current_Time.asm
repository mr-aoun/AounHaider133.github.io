.model small
.stack 100h
.data
Time_Buf db '00:00:00$'  
Cursor_Pos dw ?
New_Vec dw ?,?
Old_Vec dw ?,?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,3
    mov bh,0
    int 10h
    
    mov Cursor_Pos,dx
    mov New_Vec,offset SetUp_Int
    mov New_Vec+2, seg SetUp_Int
    
    lea di,Old_Vec
    lea si,New_Vec
    mov al,1ch
    call SetUp_Int
    
    mov ah,0
    int 16h
    
    lea di,New_Vec
    lea si,Old_Vec
    
    mov al,1ch
    call SetUp_Int
    
    mov ah,4ch
    int 21h
    
    
    
    
    
    lea bx,Time_Buf
    call get_time
    
    lea dx,Time_Buf
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
endp  

SetUp_Int proc
     push ds
     mov ax,@data
     mov ds,ax      
     
     lea bx,Time_Buf
     call get_time
     
     lea dx,Time_Buf
     mov ah,09h
     int 21h
     
     mov ah,2
     mov bh,0
     mov dx,Cursor_Pos
     int 10h
     pop ds           
     
     iret
     
SetUp_Int endp   

Convert proc
     mov ah,0
     mov dl,10
     div dl
     or ax,3030H

ret     
Convert endp  

get_time proc
     mov ah,2ch
     int 21h
     
     mov al,ch
     call Convert
     mov [bx],ax
     mov al,cl
     call Convert
     mov [bx+3],ax
     
     mov al,dh
     call Convert
     mov [bx+6],ax
     
ret
get_time endp
