	.file	"uart.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos" "src/uart.c"
	.align	2
	.globl	uart_send
	.type	uart_send, @function
uart_send:
.LFB1:
	.file 1 "src/uart.c"
	.loc 1 5 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	mv	a5,a0
	sb	a5,15(sp)
	.loc 1 6 7
	nop
.L2:
.LBB2:
	.loc 1 6 33 discriminator 1
	li	a5,268435456
	addi	a5,a5,5
	.loc 1 6 26 discriminator 1
	lbu	a5,0(a5)
	sb	a5,31(sp)
	.loc 1 6 83 discriminator 1
	.loc 1 6 125 discriminator 1
	lbu	a5,31(sp)
.LBE2:
	.loc 1 6 133 discriminator 1
	sext.w	a5,a5
	andi	a5,a5,64
	sext.w	a5,a5
	.loc 1 6 141 discriminator 1
	beq	a5,zero,.L2
.LBB3:
	.loc 1 9 19
	lbu	a5,15(sp)
	sb	a5,30(sp)
	.loc 1 9 28
	.loc 1 9 71
	li	a5,268435456
	.loc 1 9 119
	lbu	a4,30(sp)
	sb	a4,0(a5)
.LBE3:
	.loc 1 10 1
	nop
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	uart_send, .-uart_send
	.align	2
	.globl	uart_send_string
	.type	uart_send_string, @function
uart_send_string:
.LFB2:
	.loc 1 13 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	ra,40(sp)
	.cfi_offset 1, -8
	sd	a0,8(sp)
	.loc 1 16 9
	sw	zero,28(sp)
	.loc 1 16 2
	j	.L4
.L5:
	.loc 1 17 23
	lw	a5,28(sp)
	ld	a4,8(sp)
	add	a5,a4,a5
	.loc 1 17 3
	lbu	a5,0(a5)
	mv	a0,a5
	call	uart_send
	.loc 1 16 31 discriminator 3
	lw	a5,28(sp)
	addiw	a5,a5,1
	sw	a5,28(sp)
.L4:
	.loc 1 16 17 discriminator 1
	lw	a5,28(sp)
	ld	a4,8(sp)
	add	a5,a4,a5
	lbu	a5,0(a5)
	.loc 1 16 21 discriminator 1
	bne	a5,zero,.L5
	.loc 1 18 1
	nop
	nop
	ld	ra,40(sp)
	.cfi_restore 1
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	uart_send_string, .-uart_send_string
	.section	.sdata,"aw"
	.align	2
	.type	uart16550_clock, @object
	.size	uart16550_clock, 4
uart16550_clock:
	.word	1843200
	.text
	.align	2
	.globl	uart_init
	.type	uart_init, @function
uart_init:
.LFB3:
	.loc 1 24 1
	.cfi_startproc
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 25 41
	lla	a5,uart16550_clock
	lw	a5,0(a5)
	.loc 1 25 15
	mv	a4,a5
	li	a5,1843200
	divuw	a5,a4,a5
	sw	a5,12(sp)
.LBB4:
	.loc 1 28 19
	sb	zero,11(sp)
	.loc 1 28 28
	.loc 1 28 71
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 28 119
	lbu	a4,11(sp)
	sb	a4,0(a5)
.LBE4:
.LBB5:
	.loc 1 31 19
	li	a5,-128
	sb	a5,10(sp)
	.loc 1 31 31
	.loc 1 31 74
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 31 122
	lbu	a4,10(sp)
	sb	a4,0(a5)
.LBE5:
.LBB6:
	.loc 1 32 19
	lw	a5,12(sp)
	sb	a5,9(sp)
	.loc 1 32 49
	.loc 1 32 92
	li	a5,268435456
	.loc 1 32 140
	lbu	a4,9(sp)
	sb	a4,0(a5)
.LBE6:
.LBB7:
	.loc 1 33 49
	lw	a5,12(sp)
	srliw	a5,a5,8
	sext.w	a5,a5
	.loc 1 33 19
	sb	a5,8(sp)
	.loc 1 33 56
	.loc 1 33 99
	li	a5,268435456
	addi	a5,a5,1
	.loc 1 33 147
	lbu	a4,8(sp)
	sb	a4,0(a5)
.LBE7:
.LBB8:
	.loc 1 36 19
	li	a5,3
	sb	a5,7(sp)
	.loc 1 36 30
	.loc 1 36 73
	li	a5,268435456
	addi	a5,a5,3
	.loc 1 36 121
	lbu	a4,7(sp)
	sb	a4,0(a5)
.LBE8:
.LBB9:
	.loc 1 39 19
	li	a5,-57
	sb	a5,6(sp)
	.loc 1 39 31
	.loc 1 39 74
	li	a5,268435456
	addi	a5,a5,2
	.loc 1 39 122
	lbu	a4,6(sp)
	sb	a4,0(a5)
.LBE9:
	.loc 1 40 1
	nop
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	uart_init, .-uart_init
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x207
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x14
	.byte	0x15
	.4byte	0x43
	.uleb128 0x9
	.byte	0x3
	.8byte	uart16550_clock
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.8byte	.LFB3
	.8byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14b
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x19
	.byte	0xf
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x2
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x9a
	.uleb128 0x1
	.string	"__v"
	.byte	0x1c
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.byte	0
	.uleb128 0x2
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0xbe
	.uleb128 0x1
	.string	"__v"
	.byte	0x1f
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -6
	.byte	0
	.uleb128 0x2
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0xe2
	.uleb128 0x1
	.string	"__v"
	.byte	0x20
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -7
	.byte	0
	.uleb128 0x2
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x106
	.uleb128 0x1
	.string	"__v"
	.byte	0x21
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x2
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0x12a
	.uleb128 0x1
	.string	"__v"
	.byte	0x24
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x5
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.uleb128 0x1
	.string	"__v"
	.byte	0x27
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18b
	.uleb128 0x6
	.string	"str"
	.byte	0xc
	.byte	0x1d
	.4byte	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"i"
	.byte	0xe
	.byte	0x6
	.4byte	0x198
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xa
	.byte	0x8
	.4byte	0x191
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0xb
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.4byte	.LASF10
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"c"
	.byte	0x4
	.byte	0x15
	.4byte	0x191
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x1e9
	.uleb128 0x1
	.string	"__v"
	.byte	0x6
	.byte	0x1a
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x5
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.uleb128 0x1
	.string	"__v"
	.byte	0x9
	.byte	0x13
	.4byte	0x14b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x8
	.byte	0
	.2byte	0
	.2byte	0
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.8byte	0
	.8byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"unsigned int"
.LASF3:
	.string	"divisor"
.LASF6:
	.string	"uart_init"
.LASF2:
	.string	"uart16550_clock"
.LASF8:
	.string	"char"
.LASF5:
	.string	"unsigned char"
.LASF10:
	.string	"uart_send"
.LASF9:
	.string	"GNU C17 13.2.0 -mcmodel=medany -mabi=lp64 -mtune=rocket -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fomit-frame-pointer"
.LASF7:
	.string	"uart_send_string"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos"
.LASF0:
	.string	"src/uart.c"
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
