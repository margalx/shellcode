section .text
global _start

_start:
    mov rax, 0x3c
    mov rbx, 0x0
    syscall
