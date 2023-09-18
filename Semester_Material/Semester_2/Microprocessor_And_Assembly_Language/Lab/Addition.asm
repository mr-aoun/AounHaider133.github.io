

MOV AX, 1234H;

MOV AX,35F3H ;load 35F3H into AX
MOV [1500],AX ; copy contents of AX to offset 1500H

MOV AL,00H ;initialize AL
ADD AL,25H
ADD AL,12H
ADD AL,15H ;code and data are mixed
ADD AL,1FH ;(bad programming practice)
ADD AL,2BH 

MOV AL,0 ;clear AL
ADD AL,[0200H];add the contents of DS:200 to AL
ADD AL,[0201];add the contents of DS:201 to AL
ADD AL,[0202];add the contents of DS:202 to AL
ADD AL,[0203];add the contents of DS:203 to AL
ADD AL,[0204];add the contents of DS:204 to AL
