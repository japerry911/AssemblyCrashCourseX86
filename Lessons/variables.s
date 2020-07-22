.data
x:  .int    345
y:  .int    564
z:  .int    606

.text
.globl      _main

_main:
    movabs  x, %eax
    mov     %eax, %ebx
    
    movabs  y, %eax
    mov     %eax, %ecx
    
    movabs  z, %eax
    mov     %eax, %edx

    ret
