
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data

;a.	A word variable A initialized to 52.
A dw 52

;b.	A word variable WORD1, uninitialized.
WORD1 dw ?

;c.	A byte variable B, initialized to 25h
B db 25h

;d.	A byte variable C1, uninitialized.
C1 db ?

;e.	A word variable WORD2, initialized to 65536.
WORD2 dw 6553

;f.	A word array ARRAY1 initialized to the first five positive integers (i.e. 1-5)
ARRAY db 1,2,3,4,5

;g.	A constant BELL equal to 07h.
BELL EQU 07h

;h.	A constant MSG equal to "THIS IS A MESSAGE"
MSG EQU "THIS IS A MESSAGE$"

.code
main proc    
;Copy value 0000100b into lower byte of AX register and value -5 in higher byte of BX register

     MOV AL, 0000100b
     MOV BH, -5        

;Replace contents of DX register by its 2's complement.
    MOV DX, 2h
    NEG DX; 

;Increment the contents of CX by 1.
   INC CX                          

;Replace contents of BL register by its 1's complement.
  
  NOT BL

;Exchange lower byte of AX and higher byte of DX.
 XCHG AL,DH


  
  


     
     endp

ret




