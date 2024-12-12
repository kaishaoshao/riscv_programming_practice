/* 把sbi_boot.S文件编译链接到*/
.section ".text.boot"

.globl _start
_start:
	/* 关闭M模式的中断*/
	csrw mie, zero
	/* setup stack with 4KB size */
	la sp, stacks_start
	li t0, 4096
	add sp, sp, t0

	/* goto C */
	tail sbi_main

.section .data
.align  12
.global stacks_start
stacks_start:
	.skip 4096
