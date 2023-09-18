.model small
.stack 100h

.data                
PROMPT DB 'ENTER FILENAME:$'
FILENAME DB 5 dup(0)
HANDLE DW ?
ERROR_PROMPT db 'Unknown error occurred!$' 
BUFFER DB 512 DUP(0)  ; Define a buffer with a size of 100 bytes
ERORCODE DB 30H,'$'


.code
main proc
    mov ax,@data
    mov ds,ax
    mov es,ax
    call GET_FILENAME 
    
    lea dx,FILENAME
    mov al,0
    call OPEN
    jc OPEN_ERROR
    mov HANDLE,ax

READ_LOOP:       
    lea dx,BUFFER
    mov bx,HANDLE
    call READ
    
    or ax,ax
    je Exit
    
    mov cx,ax
    call DISPLAY
    
    jmp READ_LOOP

    
OPEN_ERROR:
;no,error        
    mov ah,9
    lea dx,ERROR_PROMPT
    int 21h
    
                    
Exit:               
    ;close file
    mov ah,3eh
    mov bx,HANDLE
    int 21h
  
  mov ah,4ch
  int 21h
    
endp   

GET_FILENAME proc
  push ax
  push dx
  push di
  mov ah,9
  lea dx,PROMPT
  int 21h      
  
  cld
  
  lea di,FILENAME
  mov ah,1

READ_NAME:
  int 21h
  cmp al,0dh ;Carriage return??
  je DONE
  
  stosb
  jmp READ_NAME

DONE:
  mov al,0    
  stosb
  pop di
  pop dx
  pop ax
  
  ret
  
GET_FILENAME endp   

OPEN proc

  mov ah,3dh
  mov al,0
  int 21h

ret  
OPEN endp    

READ proc
  push cx
  mov ah,3fh
  mov cx,512
  int 21h
  pop cx
  
  ret     

READ endp     

DISPLAY proc
  push bx
  mov ah,40h
  mov bx,1
  int 21h
  
  pop bx
  
  ret     
DISPLAY endp     