.model small
.stack 100h

;to save register current state
Save_register macro reg1,reg2,reg3
     push reg1
     push reg2
     push reg3
endm

;To get register back
Restore_register macro reg1,reg2,reg3
     pop reg1
     pop reg2
     pop reg3
endm          

;display carriage return and new line characters
New_Line macro
     mov dl,0dh
     mov ah,2
     int 21h
     
     mov dl,0ah
     int 21h
endm

;copy one string to the other
strcpy macro source,destination,length
     
     Save_register cx,si,di   
     
     lea si,source
     lea di,destination
     mov cx,length
     rep movsb
     
     Restore_register di,si,cx
endm     

;display string macro
Display_String macro str
     Save_register ax,dx,ds

     mov ah,9
     lea dx,str
     int 21h
     
     Restore_register ds,dx,ax
endm

;Dos exit macro
End_task macro
     mov ah,4ch
     int 21h
endm

.data
str1 db 'Aoun-Haider$'    
len dw 11
str2 db 12 dup('$')

.code
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    New_Line ;invocation to 'New_Line' macro
    
    strcpy str1,str2,len
    
    Display_String str2

    End_task
end