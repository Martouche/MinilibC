BITS 64
section .text
global strchr

strchr:
    push    rbp
    mov     rbp, rsp
    xor     rax, rax

loop:
    cmp     BYTE [rdi], 0
    je      success
    inc     rax
    inc     rdi
    jmp     loop

success:
    mov     rax, rdi
    mov     rsp, rbp
    pop     rbp
    ret
