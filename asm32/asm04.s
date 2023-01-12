global _start

segment .data

segment .bss
    num: resb 5

segment .text

_start :

; Lecture num
    mov ebx, 0 ;stdin
    mov ecx, num
    mov edx, 5
    mov eax, 3 ;syscall read
    int 0x80

;paire ou impaire
    mov al, [num+eax-2]
    and al, 1
    jz isEven
isNotEven :
;Return 1
    mov eax, 1
    mov ebx, 1
    int 80h

;exit paire
isEven:
    mov eax, 1
    mov ebx, 0
    int 0x80
