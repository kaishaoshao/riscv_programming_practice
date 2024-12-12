	 /*
	  * 设置sbi的加载入口地址为0x80000000
	  */
	/*当前位置*/
	. = 0x80000000,
	/* '*' 表示所用.o文件 用于加载_start函数 见sbi_boot.S*/
	.text.boot : { *(.text.boot) }
	.text : { *(.text) }
	.rodata : { *(.rodata) }
	.data : { *(.data) }
	/* 填充到8字节对齐 */
	. = ALIGN(0x8);
	/*定义bss段，bss_begin和bss_end用于记录bss段的起始和结束位置 */
	bss_begin = .;
	.bss : { *(.bss*) } 
	bss_end = .;
