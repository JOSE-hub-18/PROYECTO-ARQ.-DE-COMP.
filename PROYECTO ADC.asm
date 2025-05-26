
section .data
    a db 0Ah       ; A = 1010
    b db 05h       ; B = 0101

section .text
    global _start

_start:
    ; Cargar los valores
    mov al, [a]
    mov bl, [b]

    ; --- Suma ---
    mov cl, al
    add cl, bl     ; cl = A + B

    ; --- Resta ---
    mov dl, al
    sub dl, bl     ; dl = A - B

    ; --- AND ---
    mov si, ax
    and si, bx     ; si = A AND B

    ; --- OR ---
    mov di, ax
    or di, bx      ; di = A OR B

    ; --- NOT A ---
    mov ah, al
    not ah         ; ah = NOT A

    ; --- XOR ---
    mov bh, al
    xor bh, bl     ; bh = A XOR B

    ; Salida (fin del programa)
    mov eax, 1      ; syscall: exit
    int 0x80
