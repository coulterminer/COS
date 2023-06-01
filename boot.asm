org 0x7C00

mov ax, 9ch
mov ss, ax
mov sp, 4096d
mov ax, 7c0h

call kernel_main

jmp $

times 510-($-$$) db 0
dw 0xAA55
