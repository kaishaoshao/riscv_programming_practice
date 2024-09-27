# 0 "src/uart.c"
# 1 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "src/uart.c"
# 1 "include/asm/uart.h" 1
# 2 "src/uart.c" 2
# 1 "include/io.h" 1
# 33 "include/io.h"
static inline void delay(unsigned int n)
{
 while(n--)
  ;
}
# 3 "src/uart.c" 2

void uart_send(char c)
{
 while((({ unsigned char __v = (*(volatile unsigned char *)((0x10000000 +0x05))); __asm__ __volatile__ ("" : : : "memory"); __v; }) & 0x40) == 0)
  ;

 ({ unsigned char __v = c; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x00)) = (__v));});
}

void uart_send_string(char *str)
{
 int i;

 for (i = 0; str[i] != '\0'; i++)
  uart_send((char) str[i]);
}

static unsigned int uart16550_clock = 1843200;


void uart_init(void)
{
 unsigned int divisor = uart16550_clock / (16 * 115200);


 ({ unsigned char __v = 0; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x01)) = (__v));});


 ({ unsigned char __v = 0x80; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x03)) = (__v));});
 ({ unsigned char __v = (unsigned char)divisor; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x00)) = (__v));});
 ({ unsigned char __v = (unsigned char)(divisor >> 8); __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x01)) = (__v));});


 ({ unsigned char __v = 0x3; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x03)) = (__v));});


 ({ unsigned char __v = 0xc7; __asm__ __volatile__ ("" : : : "memory"); (*(volatile unsigned char *)((0x10000000 +0x02)) = (__v));});
}
