section .text
global _start

_start:
    mov rdi, 0x1
    mov rsi, nb
    mov rdx, nbLen
    mov rax, 0x1
    syscall

    xor rdi, rdi
    mov rax, 0x3c
    syscall

section .data
    nb db "1337", 0xa
    nbLen equ $-nb
