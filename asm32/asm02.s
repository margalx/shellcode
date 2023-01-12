global _start

segment .rodata 
msg: db "1337", 4
msglen: equ $ - msg

section .text
    
_start:
	mov ebx, 1
	mov ecx, msg
	mov edx, msglen
	mov eax, 0x04
	int 80h
	
	mov eax, 1		
	mov ebx, 0
	int 80h		

