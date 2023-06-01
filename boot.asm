mov ax, 9ch
mov ss, ax
mov sp, 4096d
mov ax, 7c0h

mov ah, 0x0e
mov al, 'C'
int 0x10
mov ah, 0x0e
mov al, 'O'
int 0x10
mov ah, 0x0e
mov al, 'S'
int 0x10
mov ah, 0x0e
mov al, ' '   ; displays text "COS 1.0"
int 0x10
mov ah, 0x0e
mov al, '1'
int 0x10
mov ah, 0x0e
mov al, '.'
int 0x10
mov ah, 0x0e
mov al, '0'
int 0x10
mov ah, 0x0e
mov al, ' '
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xAA55
