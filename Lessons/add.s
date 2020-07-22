.text
.globl _add

_add:
    add     %esi, %edi
    mov     %edi, %eax

    ret