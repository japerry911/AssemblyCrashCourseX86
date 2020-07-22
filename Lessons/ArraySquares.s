.text
.globl      _CalcArraySquares

_CalcArraySquares:
    xor     %rax, %rax
    cmp     $0, %rcx
    jle     EmptyArray

    shl     $2, %rcx            // rcx = size of arry in bytes
    xor     %rbx, %rbx          // rbx = array element offset

_tpp:
    movq    (%rbx, %rsi), %rdx  // Load next x[i]
    imul    %rdx, %rdx          // x[i] * x[i]
    movq    %rdx, (%rdi, %rbx)  // Save result to y[i]
    add     %rdx, %rax          // Adding rdx to rax
    add     $4, %rbx            // Update array element offset
    cmp     %rcx, %rbx
    jl      _tpp                // Jump if not finished

movq    (%rbx, %rsi), %rdx  // Load next x[i]
imul    %rdx, %rdx          // x[i] * x[i]
movq    %rdx, (%rdi, %rbx)  // Save result to y[i]
add     %rdx, %rax          // Adding rdx to rax
add     $4, %rbx            // Update array element offset
cmp     %rcx, %rbx

EmptyArray:
    ret
