; DISPLAY A PROGRAM THAT PRINT RED 'A' WITH BLUE BACKGROUND


MOV AX, 0B800H   ; color active display
MOV DS,AX         
MOV CX, 200     ; 80x25 = 2000 words
MOV DI,0         ; initialize DI

FILL_BUF:
  MOV [DI], 1441H  ; red A on blue
  ADD DI, 2        ; go to next word
  LOOP FILL_BUF

MONO_CHROME:
  MOV AX,8
  XOR BH,BH
  INT 10H
  MOV AH,9
  MOV CX,1
  MOV BL,70H
  INT 10H
  
CLEAR_SCREEN:
  MOV AH,6
  XOR AL,AL
  XOR CX,CX
  MOV DX,184FH
  MOV BH,7
  INT 10H  
  
EXIT:
  MOV AH,4CH
  INT 21H  
  

