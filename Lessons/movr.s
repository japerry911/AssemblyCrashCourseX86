.text
.global _main

_main:
    movl    $20028, %eax
    movw    $1600, %bx
    movb    $188, %cl
    mov     $10000002999, %rsi

    ret
