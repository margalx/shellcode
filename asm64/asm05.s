section .text
global _start
_start:
    mov    rax,  0x3b
    mov    rdx,  0x0
    mov    r8,   0x0031306d7361                
    push   r8
    mov    rdi,  rsp  
    push   rdx
    push   rdi
    mov    rsi,  rsp  
    syscall
    mov    rax,  0x3c
    mov    rdi,  1
    syscall
