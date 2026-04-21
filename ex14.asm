; a b c
; daca a<b atunci min=a, altfel min=b
; daca c<min atunci min=c, altfel min ramane min

section .data
	msgin db "Introduceti 3 cifre (fara spatii):"
	lenin equ $ - msgin
	msgout db 10, "Cifra minima este:"
	lenout equ $ - msgout
	newline db 0xA

section .bss
	input resb 4
	min resd 1

section .text
	global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msgin
	mov edx, lenin
	int 0x80 ; printf la msgin

	mov eax, 3
	mov ebx, 0
	mov ecx, input
	mov edx, 4
	int 0x80 ; am citit cele 3 cifre (4 bytes pt ca am si \n)

	mov al, [input]
	mov bl, [input+1]
	cmp al, bl
	jl amaimicb
	mov al, bl ; il mut in a pe b ( cazul in care a >= b), tot timpul min pt  mine este al

amaimicb:
	mov bl, [input+2]
	cmp al, bl
	jl last ; aici sar daca al< bl, adica al e minimul
	mov al, bl ; altfel, daca bl e minimul de fapt, il mut in al

last:
	mov [min], al

	mov eax, 4
	mov ebx, 1
	mov ecx, msgout
	mov edx, lenout
	int 0x80 ; printf la msgout

	mov eax, 4
	mov ebx, 1
	mov ecx, min
	mov edx, 1
	int 0x80 ; printf la min

	mov eax, 4
	mov ebx, 1
	mov ecx, newline
	mov edx, 1
	int 0x80

_exit:
	mov eax, 1
	xor ebx, ebx
	int 0x80
