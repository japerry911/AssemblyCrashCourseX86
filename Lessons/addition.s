.text
.globl       _addition

_addition:
        add     %rdi, %rsi
        add     %rsi, %rdx
        mov     %rdx, %rax
        
        ret
