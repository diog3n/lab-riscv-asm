.data

N:              # matrix width
    .word 4
M:              # matrix height
    .word 4

matrix:
    .word 2, 3, 4, 5
    .word 3, 4, 5, 6
    .word 4, 5, 6, 7
    .word 5, 6, 7, 8

result:
    .word 0

.text
main:
    la      a2, N
    la      a3, M
    la      a4, matrix
    la      a5, result
    call    process

    la      a2, result
    call    print
    call    exit

print:
    li      a0, 1            # print one integer - sum
    lw      a1, 0(a2)
    ecall

    li      a0, 11           # print newline character
    li      a1, 10
    ecall
    ret

exit:
    li      a0, 10
    ecall

process:
    lw      t1, 0(a2)        # load N
    lw      t2, 0(a3)        # load M

    li      t3, 0            # temporary result register
    li      t4, 0            # M counter register

loop_init:
    li      t5, 0            # N counter register

loop_N:
    lw      t6, 0(a4)
    addi    a4, a4, 4
    add     t3, t3, t6
    addi    t5, t5, 1
    blt     t5, t1, loop_N

    addi    t4, t4, 1
    blt     t4, t2, loop_init
    sw      t3, 0(a5)
    ret