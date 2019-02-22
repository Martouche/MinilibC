BITS 64
section .text
global strchr
;int    asm_strchr(char *str)

asm_strlen:
    push    rbp
    mov     rbp, rsp

    xor     rax, rax ;set all bytes to 0

loop:
    cmp     BYTE [rdi], 0 ;cmp *rdi == '\0'
    je      success ;break
    inc     rax ;res++
    inc     rdi ;rdi++
    jmp     loop ;while


failure:
    mov     rsp, rbp
    pop     rbp
    ret

success:
    mov     rax, rdi

    mov     rsp, rbp
    pop     rbp
    ret
