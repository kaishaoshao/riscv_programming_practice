# 0 "src/kernel.c"
# 1 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/kernel.c"
# 1 "include/uart.h" 1



void uart_init ( void );
char uart_recv ( void );
void uart_send ( char c );
void uart_send_string(char* str);
# 2 "src/kernel.c" 2
# 1 "src/../sbi/sbi_lib.h" 1



unsigned long read_csr_num(int csr_num);
void write_csr_num(int csr_num, unsigned long val);
unsigned long log2roundup(unsigned long x);
# 3 "src/kernel.c" 2
void kernel_main(void)
{
 uart_init();
 uart_send_string("Welcome RISC-V!\r\n");

 while (1) {
  ;
 }
}
