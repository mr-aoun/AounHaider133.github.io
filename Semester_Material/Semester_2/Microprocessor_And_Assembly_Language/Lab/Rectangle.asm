;set video mode


mov ah,0
mov al,3
int 10h

;clear window to red
mov ah,6       ;scroll up function
mov cx,081Ah   ;upper left corner
mov dx,1034h   ;lower right corner
mov bh,43h     ;cyan chars on red background
mov al,0       ;scroll all lines
int 10h

;move cursor
mov ah,2       ;move cursor function
mov dx,0c27h   ;center of screen
xor bh,bh      ;page 0
int 10h

;display character with attribute
mov ah,09
mov bh,0
mov bl,0c3h
mov cx,1
mov al,'A'
int 10h

;dos exit
mov ah,4ch
int 21h
