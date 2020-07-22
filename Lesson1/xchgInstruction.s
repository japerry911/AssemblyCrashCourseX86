.text
.globl      _main

_main:
    movl        $89, %eax
    movl        $55, %ebx
    xchg        %eax, %ebx

    ret
