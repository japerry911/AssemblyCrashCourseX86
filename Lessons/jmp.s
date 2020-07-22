.text
.globl      _main

_main:
        movl       $45,%eax
        movl       $78,%ebx
        jmp        bottom
        movl       $98,%ecx

bottom:
        movl        $55,%esi

        ret