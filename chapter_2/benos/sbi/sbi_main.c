#include "asm/csr.h"

#define FW_JUMP_ADDR 0x80200000

// sbi_main()函数主要亩点是把处理器模式从
// M模式运行，然后切换到S模式运行,并跳转到
// S模式的入口地址处，对于QEMU Virt平台，S
// 模式的入口地址是0x80200000

/*
 * 运行在M模式，并且切换到S模式
 */
void sbi_main(void)
{
	unsigned long val;

	/* 设置跳转模式为S模式 */
	/* MPP为S模式,并且把中断使能置0 */
	val = read_csr(mstatus);
	val = INSERT_FIELD(val, MSTATUS_MPP, PRV_S);
	val = INSERT_FIELD(val, MSTATUS_MPIE, 0);
	write_csr(mstatus, val);

	/* 设置M模式的Exception Program Counter，用于mret跳转 */
	write_csr(mepc, FW_JUMP_ADDR);
	/* 设置S模式异常向量表入口*/
	write_csr(stvec, FW_JUMP_ADDR);
	/* 关闭S模式的中断*/
	write_csr(sie, 0);
	/* 关闭S模式的页表转换 */
	write_csr(satp, 0);

	/* 切换到S模式 */
	asm volatile("mret");
}
