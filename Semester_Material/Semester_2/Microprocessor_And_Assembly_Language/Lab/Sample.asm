.model small
.stack 100h
.data
temp dw ?
counter db 1

.code
main proc
 mov ax,@data
 mov dx,ax
      
mov bx,023EDH
mov cl,12

L1:
 mov dx,bx
 shr dx,cl
 and dx,000Fh
 sub cl,4
   
 cmp dl,0Ah
 jge Greater
 
 ;if < 9
 
 add dl,'0'
 jmp Next 

Greater: 
 mov temp,dx
 
 mov dl,'1'
 mov ah,2
 int 21h    
 mov dx,temp
 sub dl,10   
 add dl,'0'

Next:
 
 mov ah,2
 int 21h 
 
 cmp cl,0fch
 je Exit  
 
 jmp L1

Exit:
 mov ah,4ch
 int 21h 

ret
endp 