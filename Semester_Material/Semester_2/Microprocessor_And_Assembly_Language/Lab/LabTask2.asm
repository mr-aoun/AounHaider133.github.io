
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.code

main proc
	
;Task#01

;Moving different values to general purpose registers
	MOV AX ,'B'	;AX=0042
	MOV AX , 42h	;AX=0043
	MOV AX , 42	;AX=002A
	MOV AX ,42d	;AX=002A
	MOV AX ,01000010b	;AX=03EA
	MOV AX ,123Ah	;AX=123A
	MOV AX ,0FE44h	;AX=F344
	
;Task#02
	MOV AL, 128	;AX=0080
	MOV AH, 2h	
	MOV AX, -123	;AX=FF85
	MOV BX, 123	;BX=007B
	MOV AH, 010010001b	;AX=9100
	MOV 1234h, BX	;IP=0004
	MOV DX, 33h	;DX=0033
	MOV CX, 'AB'	;CX=4142        
	MOV CH, AL	;IP=0002
     MOV DL, BL	;IP=0002
     MOV AH, BL	;IP=0002
     ;MOV AX, CL   ;Error Ax is 16 bit while cl is 8 bit.
     
;Task#03     
     MOV AX, 011b
     MOV BH,10h
     MOV CX,10
     MOV DX,1234h
     ADD DH,DL
     ADD AX,BX
     INC AX
     INC BL
     DEC DX
     DEC CH
     NEG CX
     NEG BL


endp

ret