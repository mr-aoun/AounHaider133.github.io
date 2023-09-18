;Write a program to produce a beep sound

 mov ah, 2  ; Function code for character output
 mov dl, 7    ; ASCII code for the bell character

 int 21h      ; Call the BIOS interrupt to produce the beep sound

 mov ah, 4Ch  ; Exit program
 int 21h
