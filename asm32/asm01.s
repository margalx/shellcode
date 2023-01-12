global _start
section .text
	
_start:
	mov eax, 1		;recoit numero d'appel system
	mov ebx, 0	; premier argument du syscall
	int 80h		; executer l'appel system


