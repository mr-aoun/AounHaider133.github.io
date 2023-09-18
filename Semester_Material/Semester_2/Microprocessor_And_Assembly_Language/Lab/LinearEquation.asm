; Solve the below equation by assuming random values for unkowns
; A = 5A - 12B                                                  

.model small
.stack 100h
.data
A dw 2
B dw 0

.code
main proc
 
 mov ax,@data
 mov dx,ax
 
 mov ax,5   ;AX = 5
 imul A     ;AX = 5A
 
 mov A,ax   ;A = 5A
 mov ax,12  ;AX = 12
 imul B     ;AX = 12B
 
 sub A,ax   ;A = A - AX => 5A - 12B
 
 mov ah,4ch
 int 21h
 
endp     