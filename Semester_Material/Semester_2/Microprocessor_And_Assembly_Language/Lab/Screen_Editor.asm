; Write a screen editor program that will allow the user to work on few function keys esc, up, down, left and 
; right key. If user press 'esc' key, the program will terminate. If user press any of arrow key, it will decrease
; the or increase the cursor postion. For example, if user pressed left key, cursor position from x-axis will be
; decreased. Also handle the exception if cursor is at the end or top of the screen.

.model small
.stack 100h

.code
main proc
   
     mov ah,0   ;set mode function
     mov ah,3   ;80x25 color text
     int 10h
     
;move cursor at top left corner
     mov ah,2   ;move cursor function
     xor dx,dx  ;postion (0,0)
     mov bh,0   ;page 0
     int 10h           

;get keystroke
     mov ah,0   ;keyboard input function
     int 16h                           

WHILE:
     cmp al,1bh  ;ESC (exit character)??
     je END_WHILE
     
;if function key
     cmp al,0    ;AL = 0 ??
     jne ELSE_   ;no, character        

;then
     call DO_FUNCTION
     jmp NEXT_KEY

ELSE_:
     mov ah,2   ;display character
     mov dl,al
     int 21h                      

NEXT_KEY:
     mov ah,0
     int 16h
     jmp WHILE

END_WHILE:
     mov ah,4ch
     int 21h          
main endp     

DO_FUNCTION proc
;AH = Scan code     
     ;store registers
     push bx
     push cx
     push dx
     push ax

;locate cursor
     mov ah,3   ;get cursor info
     mov bh,0   ;page 0
     int 10h     
         
     pop ax

;check for scan code
     cmp ah,72  ;up arrow?
     je CURSOR_UP
     
     cmp ah,75  ;left arrow??
     je CURSOR_LEFT
     
     cmp ah,77  ;right arrow??
     je CURSOR_RIGHT
     
     cmp ah,80  ;down arrow??
     je CURSOR_DOWN
     
     jmp EXIT

CURSOR_UP:
     cmp dh,0      ;row 0 ??
     je SCROLL_DOWN         
     
     dec dh     
     jmp EXECUTE

CURSOR_DOWN:
     cmp dh,24   ;last row ??
     je SCROLL_UP 
     
     inc dh
     jmp EXECUTE

     
CURSOR_LEFT:     
     cmp dl,0   ;column 0 ??
     jne GO_LEFT
     cmp dh,0    ;row 0
     je SCROLL_DOWN    
     
     dec dh
     
     mov dl,79 
     jmp execute

CURSOR_RIGHT:
     cmp dl,79
     jne GO_RIGHT
     cmp dh,24
     je SCROLL_UP
     
     inc dh
     mov dl,0
     jmp EXECUTE

GO_LEFT:
     dec dl
     jmp EXECUTE

GO_RIGHT:
     inc dl
     jmp EXECUTE

SCROLL_DOWN:
     mov al,1
     xor cx,cx
     mov dh,24
     mov dl,79
     mov bh,07
     mov ah,07
     int 10h
     jmp EXIT

SCROLL_UP:
     mov al,1
     xor cx,cx
     
     mov dx,184fh
     mov bh,07
     mov ah,6
     int 10h
     jmp EXIT

EXECUTE:
     mov ah,2
     int 10h

EXIT:
    POP dx
    pop cx
    pop bx

ret                                            
               
DO_FUNCTION endp