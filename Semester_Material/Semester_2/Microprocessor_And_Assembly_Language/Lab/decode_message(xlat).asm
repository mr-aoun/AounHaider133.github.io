;Write a program to encode and decode a message using a predefined mapping schema.
;HINT: use xlat psuedo-op to perform encoding.

.model small
.stack 100h

.data
;alphabet                   ABCDEFGHIJKLMNOPORSTUVWXY. 
 CODE_KEY DB 65 DUP (' '), 'XQPOGHZBCADEIJUVFMNKLRSTWY'                           
 DB 3 7 DUP (' ' ) 
DECODE_KEY DB 65 DUP (' '),'JHIKLQEFMNTURSDCBVWXOPYAZG' 
 DB 37 DUP (' ')
 CODED DB 80 DUP('$') 
Prompt DB 'ENTER A MESSAGE:',0DH,0AH,'$' 
CRLF DB 0dh,0ah,'$'

.code
main proc
 
 mov ax,@data
 mov ds,ax
 
 ;display a message
 lea dx,Prompt
 mov ah,9
 int 21h           
 
 ;get input string
 mov ah,1
 lea bx,CODE_KEY
 lea di,CODED

L:
 int 21h
 cmp al,0dh
 je End_Loop     
 
 xlat
 
 mov [di],al
 inc di
 
 jmp L

End_Loop: 

;display carriage return & line feed
 mov ah,9
 lea dx,CRLF
 int 21h

;display encoded message 
 mov ah,9
 lea dx,CODED
 int 21h
                        
;display carriage return & line feed
 mov ah,9
 lea dx,CRLF
 int 21h

;decode the message
 mov ah,2
 lea bx,DECODE_KEY
 lea si,CODED
 
WHILE:
 mov al,[si] 
 cmp al,'$'
 je Exit
 
 xlat
 mov dl,al
 int 21h
 inc si
 jmp WHILE
 
                         
Exit:
 mov ah,4ch
 int 21h 
endp    