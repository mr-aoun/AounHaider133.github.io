;Write a program to find average of 5 subjects of 5 students

;-------------------------------------------------- 
;Students        Test 1   Test 2  Test 3  Test 4   |
;--------------------------------------------------
; MARY ALLEN     67       45      98      33 
; SCON BAYLIS    70       56      87      44 
; GEORGE FRANK   82       72      89      40 
; BETH HARRIS    80       67      95      50 
; SAM WONG       78       76      92      60

org 0x0100
.model small
.stack 100h

.data
Five dw 5  
MARKS dw 67,45,98,33   ;Mary Allen 
      dw 70,56,87,44   ;Scott Baylis 
      dw 82,72,89,40   ;Georqe Frank
      dw 80,67,95,50   ;Beth Harris 
      dw 78,76,92,60   ;Sam Wong 

AVG dw 5 dup(0)

.code
main proc
 ;Access the data segment
 mov ax,@data            
 mov ds,ax               
 
 mov si,6
       
Repeat: 
 mov cx,5   ;no. of rows
 xor bx,bx
 xor ax,ax  ;AX to store sum

;sum the marks
FOR:
 add ax, MARKS[BX+SI] ;A(i,6)
 add bx,8             ; difference is 2 due to dw WORD array, access next row
 
 loop FOR

 xor dx,dx
 
 div Five ;AX/5 (Average)
 mov AVG[SI],ax
 sub si,2
 
 ;until j!=0
 jnl Repeat
 
 mov bx,5
 call display  
 
Exit:
 mov ah,4ch
 int 21h

ret 
endp     

;display procedure
display proc

mov dl,0ah
mov ah,2
int 21h

mov dl,0dh
int 21h

;display array elements 
mov ah,2

xor si,si
mov cx,bx 
D: 
 mov dx,AVG[si]
 ;add dx,'0'
 int 21h 
 
 mov dl,' '  
 int 21h
 inc si
 Loop D

ret
display endp     