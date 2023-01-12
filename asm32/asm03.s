global _start

segment .rodata 
msg: db "1337", 4
msglen: equ $ - msg
str: times 2 db 0, 0
strlen: equ $-str
nb: db "42", 2
nblen: equ $-nb

section .text
    
_start:
	mov eax, 3 ; lire l'entrée
	mov ebx, 0 ; 
	mov ecx, str ; destination
	mov edx, 2 ; longueur de la chaine 
	int 80h

	lea esi, [nb]
   	lea edi, [str]
    	mov ecx, nblen   ; selects the length of the first string as maximum for comparison
    	rep cmpsb         ; comparison of ECX number of bytes
    	mov eax, 4        ; does not modify flags
    	mov ebx, 1        ; does not modify flags
    	jne ifWrong       ; checks ZERO flag


ifRight:              ; the two strings do match
    	mov ebx, 1
	mov ecx, msg
	mov edx, msglen
	mov eax, 0x04
	int 80h
	
	mov eax, 1		
	mov ebx, 0
	int 80h	


ifWrong:              ; the two strings don't match
    	mov eax, 1		
	mov ebx, 1
	int 80h	
		

