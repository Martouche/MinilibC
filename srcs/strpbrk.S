BITS 64
section .text
global strpbrk

strpbrk:
		push rbp
		mov rbp, rsp
		xor rax, rax

loop:
		cmp byte[rdi], 0
		je return
		mov r15b, [rsi]
		cmp [rdi], r15b
		je same
		cmp [rdi], r15b
		jne not_same

not_same:
	jmp return

same:
	mov rax, rdi
	jmp return

return:
    mov rsp, rbp
    pop rbp
    ret
