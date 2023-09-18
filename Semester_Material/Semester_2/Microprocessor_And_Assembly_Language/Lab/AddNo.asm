;public addnos   

.model small
;.code
addnos proc near
     ;SI = address of digit1
     ;DI = address of digit2
     
     push ax
     mov al,[si]
     add al,[di]
     add [bx],al
     pop ax
     
ret
addnos endp