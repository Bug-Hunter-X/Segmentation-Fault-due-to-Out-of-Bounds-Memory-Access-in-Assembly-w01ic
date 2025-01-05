section .data
    array dw 10, 20, 30, 40, 50 ;Example array
    arraySize equ ($-array)/2 ; Calculate array size

section .text
    global _start

_start:
    mov esi, 0 ;Index
    mov ebx, array ;Array base address
    ;Check for valid index before accessing memory
    cmp esi, arraySize ;Check if index is within array bounds
    jge outOfBounds ; Jump if index is out of bounds

    mov ax, [ebx+esi*2] ; Access array element safely
    ; ... rest of your code ...
    jmp exit

outOfBounds:
    ;Handle out of bounds error (e.g., exit or error message)
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

exit:
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80