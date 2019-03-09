BITS 64
section .text
global strchr

strchr:
        mov eax, [esp+4]  ; chaîne s
        test eax, eax
        jz .pointeurInvalide

        mov ecx, [esp+8]  ; char à chercher

.iteration:
        movzx edx, byte[eax]
        cmp edx, ecx
        je .trouve

        add eax, 1

        test edx, edx
        jne .iteration

        xor eax, eax

.trouve:
.pointeurInvalide:
        ret
