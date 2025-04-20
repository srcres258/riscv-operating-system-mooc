    .data
    .align 1

array:
    .ascii "hello,world!\0"

    .text
    .global _start

_start:
    # int len = 0;
    # while (array[len] != '\0') len++;

    li x5, 0
    la x6, array
    li x7, 0
loop:
    addi x5, x5, 1
    addi x6, x6, 1
    lbu x7, 0(x6)
    li x8, 0
    bne x7, x8, loop

stop:
    j stop

    .end