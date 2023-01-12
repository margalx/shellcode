section .text
global _start
_start:
    mov    rax,  0x3b
    mov    rdx,  0x0
    mov    r8,   0x0068732f6e69622f                 
    push   r8
    mov    rdi,  rsp  
    push   rdx
    push   rdi
    mov    rsi,  rsp  
    syscall
    mov    rax,  0x3c
    mov    rdi,  0x0
    syscall
