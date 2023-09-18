.model small
.stack 100h

.data
myArray db 11h, 22h, 33h, 44h, 55h ; Array of bytes
myValue db 0 ; Variable to store a byte value
myOffset db 2 ; Offset value for indexed addressing

.code
main proc
    ; Direct addressing
    MOV AL, myArray[1] ; Load AL register with the value at the memory address of myArray

    ; Immediate addressing
    MOV BL, 42 ; Load BL register with immediate value 42

    ; Register addressing
    MOV CL, AL ; Move the value in AL to CL register

    ; Indirect addressing
    MOV DX, OFFSET myValue ; Load DX register with the memory address of myValue
    MOV AX, DX ; Load AX register with the value at the memory address stored in DX

    
    MOV AH, 4Ch ; Exit program
    INT 21h
main endp

end main
