/*说明处理器体系*/
OUTPUT_ARCH(riscv)
/*程序入口*/
ENTRY(_start)
/*定义段 内存布局*/
SECTIONS
{
	INCLUDE "sbi/sbi_base.ld"
}
