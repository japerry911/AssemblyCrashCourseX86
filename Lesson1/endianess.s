.text
.globl  _main

_main:
        movl    $0x12345678, %ebx
        bswap   %ebx
        
        ret
