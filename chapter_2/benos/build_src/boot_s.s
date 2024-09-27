# 0 "src/boot.S"
# 1 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/boot.S"
.section ".text.boot"

.globl _start
_start:

 csrw sie, zero


 la sp, stacks_start
 li t0, 4096
 add sp, sp, t0


 tail kernel_main

.section .data
.align 12
.global stacks_start
stacks_start:
 .skip 4096
