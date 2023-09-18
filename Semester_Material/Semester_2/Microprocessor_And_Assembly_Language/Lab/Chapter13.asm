;Program statement:
;Write the following macros. All registers used by the macros 
;should be stored, except those that return results. 
; a. MUL_N MACRO N, which puts the signed 32-bit product of 
; AX and the number N in DX and AX. 
; b. DIV_N MACRO, N which divides the number In AX by the 
; number N and puts the signed 16-btt quotient ln AX. You 
; may assume that N is not O. 
; c. MOD MACRO M,N, which returns In AX the remainder after 
; M 15 divided by N. Note that M and N may be 16-bit Words, 
; registers, or constants. You may assume that N Is not 0. 
; d. POWER MACRO N, which takes the number In AX and raises 
; it to the power of N, where N is a positive number. The result 1: 
; should be stored In AX. If the result Is too big to fit In 16 
; bits, the macro should set CF/OF. 

.model small
.stack 100h

;a)
MUL_N macro N
     push bx
     
     mov bx,N
     mul bx
     
     into  ;generate OF interrupt
     pop bx
endm

;b)
DIV_N macro N
     push bx
     
     mov bx,N
     div bx
     
     pop bx
endm       

;c)
MOD_N macro M,N
     push ax
     push bx
     
     mov ax,M
     mov bx,N
     div bx
     mov ax,dx

     pop bx
     pop ax
endm    

;d)
POWER macro N
    local X
    push bx
    push cx
 
    mov bx,ax
    mov cx,N 
    dec cx  
    
X:    
    mul bx
loop X
    
    into
    pop cx
    pop bx
endm

;e) Celcius to farenheit
C_F macro c
     push ax
     push bx
     
     ;F = (9/5 x C) + 32
     mov ax,9
     DIV_N 5
     
     MUL_N c
     add ax,32
     
     pop ax
     pop bx
endm     

;f)
GCD macro M,N
     local XX
XX:     
     mov ax,word ptr M
     MOD_N N
     mov bx,word ptr N
     xchg ax,bx
     cmp bx,0
     jne XX
     
     mov ax,M     

endm     

.data         


.code
main proc
  mov ax,@data
  mov ds,ax
  
     

  GCD 8,12
    
  mov ah,4ch
  int 21h
  
endp    