# 0 "sbi/sbi_payload.S"
# 1 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "sbi/sbi_payload.S"

 .section .payload, "ax", %progbits
 .globl payload_bin
payload_bin:
 .incbin "benos.bin"
