section .data
str1 db '42', 0x0a, 0
str1len equ $-str1


output db '1337',0x0a,0
outputlen equ $-output

segment .bss ; initialiser les variables qui ne le sont pas 
input resd 1

section .text
global _start

_start: 
    mov rax, 0 ; read(
    mov rdi, 0 ; STDIN
    mov rsi, input ; rbp- => stack dans la mémoire, ici prendre premiere place dispo dans la stack
    mov rdx, str1len ; taille
    syscall


    lea rsi, [str1]
    lea rdi, [input]
    mov rcx, str1len  ; selects the length of the first string as maximum for comparison
    rep cmpsb         ; comparison of ECX number of bytes
    jne ifWrong       ; checks ZERO flag

ifRight:              ; the two strings do match
    mov rax, 1
    mov rdi, 1
    mov rsi, output
    syscall
    jmp exit
ifWrong:              ; the two strings don't match
    mov rax, 1
    syscall
exit:                 ; sane shutdown
    mov rax, 60
    mov rbx, 0
    syscall
