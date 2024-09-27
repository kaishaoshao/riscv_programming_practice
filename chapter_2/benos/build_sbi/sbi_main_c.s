	.file	"sbi_main.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos" "sbi/sbi_main.c"
	.align	2
	.globl	sbi_set_pmp
	.type	sbi_set_pmp, @function
sbi_set_pmp:
.LFB0:
	.file 1 "sbi/sbi_main.c"
	.loc 1 8 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sd	ra,88(sp)
	.cfi_offset 1, -8
	mv	a5,a0
	sd	a1,16(sp)
	sd	a2,8(sp)
	sd	a3,0(sp)
	sw	a5,28(sp)
	.loc 1 14 5
	lw	a5,28(sp)
	sext.w	a4,a5
	li	a5,8
	ble	a4,a5,.L2
	.loc 1 15 10
	li	a5,-1
	j	.L3
.L2:
	.loc 1 17 10
	ld	a0,8(sp)
	call	log2roundup
	mv	a5,a0
	.loc 1 17 8 discriminator 1
	sw	a5,68(sp)
	.loc 1 18 5
	lw	a5,68(sp)
	sext.w	a4,a5
	li	a5,1
	bgt	a4,a5,.L4
	.loc 1 19 10
	li	a5,-1
	j	.L3
.L4:
	.loc 1 23 10
	ld	a5,16(sp)
	srli	a5,a5,2
	sd	a5,72(sp)
	.loc 1 26 33
	lw	a5,28(sp)
	sraiw	a5,a5,2
	sext.w	a5,a5
	.loc 1 26 22
	addiw	a5,a5,928
	sext.w	a5,a5
	.loc 1 26 13
	andi	a5,a5,-2
	sw	a5,64(sp)
	.loc 1 27 31
	lw	a5,28(sp)
	slliw	a5,a5,3
	sext.w	a5,a5
	.loc 1 27 15
	andi	a5,a5,56
	sw	a5,60(sp)
	.loc 1 29 14
	lw	a5,28(sp)
	addiw	a5,a5,944
	sw	a5,56(sp)
	.loc 1 32 7
	ld	a5,0(sp)
	andi	a5,a5,-25
	sd	a5,0(sp)
	.loc 1 33 32
	lw	a5,68(sp)
	sext.w	a4,a5
	li	a5,2
	bne	a4,a5,.L5
	.loc 1 33 32 is_stmt 0 discriminator 1
	li	a5,16
	j	.L6
.L5:
	.loc 1 33 32 discriminator 2
	li	a5,24
.L6:
	.loc 1 33 7 is_stmt 1 discriminator 4
	ld	a4,0(sp)
	or	a5,a4,a5
	sd	a5,0(sp)
	.loc 1 36 21
	lw	a5,60(sp)
	mv	a4,a5
	li	a5,255
	sll	a5,a5,a4
	.loc 1 36 10
	not	a5,a5
	sd	a5,48(sp)
	.loc 1 37 12
	lw	a5,64(sp)
	mv	a0,a5
	call	read_csr_num
	mv	a4,a0
	.loc 1 37 9 discriminator 1
	ld	a5,48(sp)
	and	a5,a5,a4
	sd	a5,40(sp)
	.loc 1 38 19
	lw	a5,60(sp)
	mv	a4,a5
	ld	a5,0(sp)
	sll	a4,a5,a4
	.loc 1 38 38
	ld	a5,48(sp)
	not	a5,a5
	.loc 1 38 36
	and	a5,a4,a5
	.loc 1 38 9
	ld	a4,40(sp)
	or	a5,a4,a5
	sd	a5,40(sp)
	.loc 1 45 5
	lw	a5,68(sp)
	sext.w	a4,a5
	li	a5,2
	ble	a4,a5,.L7
	.loc 1 47 6
	lw	a5,68(sp)
	sext.w	a4,a5
	li	a5,64
	bne	a4,a5,.L8
	.loc 1 48 12
	li	a5,-1
	sd	a5,72(sp)
	j	.L7
.L8:
	.loc 1 55 30
	lw	a5,68(sp)
	addiw	a5,a5,-2
	sext.w	a5,a5
	.loc 1 55 20
	mv	a4,a5
	li	a5,1
	sll	a5,a5,a4
	.loc 1 55 13
	addi	a5,a5,-1
	sd	a5,32(sp)
	.loc 1 56 15
	ld	a5,32(sp)
	not	a5,a5
	.loc 1 56 12
	ld	a4,72(sp)
	and	a5,a4,a5
	sd	a5,72(sp)
	.loc 1 57 25
	ld	a5,32(sp)
	srli	a5,a5,1
	.loc 1 57 12
	ld	a4,72(sp)
	or	a5,a4,a5
	sd	a5,72(sp)
.L7:
	.loc 1 65 2
	lw	a5,56(sp)
	ld	a1,72(sp)
	mv	a0,a5
	call	write_csr_num
	.loc 1 66 2
	lw	a5,64(sp)
	ld	a1,40(sp)
	mv	a0,a5
	call	write_csr_num
	.loc 1 68 9
	li	a5,0
.L3:
	.loc 1 69 1
	mv	a0,a5
	ld	ra,88(sp)
	.cfi_restore 1
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	sbi_set_pmp, .-sbi_set_pmp
	.align	2
	.globl	sbi_main
	.type	sbi_main, @function
sbi_main:
.LFB1:
	.loc 1 75 1
	.cfi_startproc
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sd	ra,56(sp)
	sd	s0,48(sp)
	.cfi_offset 1, -8
	.cfi_offset 8, -16
	.loc 1 81 9
	li	a3,7
	li	a2,-1
	li	a1,0
	li	a0,0
	call	sbi_set_pmp
	.loc 1 82 9
	li	a3,7
	li	a2,262144
	li	a5,1
	slli	a1,a5,31
	li	a0,1
	call	sbi_set_pmp
.LBB2:
	.loc 1 85 39
#APP
# 85 "sbi/sbi_main.c" 1
	csrr a5, mstatus
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 85 111
	mv	a5,s0
.LBE2:
	.loc 1 85 6
	sd	a5,40(sp)
	.loc 1 86 16
	ld	a4,40(sp)
	li	a5,-8192
	addi	a5,a5,2047
	and	a4,a4,a5
	.loc 1 86 6
	li	a5,4096
	addi	a5,a5,-2048
	or	a5,a4,a5
	sd	a5,40(sp)
	.loc 1 87 6
	ld	a5,40(sp)
	andi	a5,a5,-129
	sd	a5,40(sp)
.LBB3:
	.loc 1 88 19
	ld	a5,40(sp)
	sd	a5,32(sp)
	.loc 1 88 47
	ld	a5,32(sp)
#APP
# 88 "sbi/sbi_main.c" 1
	csrw mstatus, a5
# 0 "" 2
#NO_APP
.LBE3:
.LBB4:
	.loc 1 91 19
	li	a5,1025
	slli	a5,a5,21
	sd	a5,24(sp)
	.loc 1 91 54
	ld	a5,24(sp)
#APP
# 91 "sbi/sbi_main.c" 1
	csrw mepc, a5
# 0 "" 2
#NO_APP
.LBE4:
.LBB5:
	.loc 1 93 19
	li	a5,1025
	slli	a5,a5,21
	sd	a5,16(sp)
	.loc 1 93 54
	ld	a5,16(sp)
#APP
# 93 "sbi/sbi_main.c" 1
	csrw stvec, a5
# 0 "" 2
#NO_APP
.LBE5:
.LBB6:
	.loc 1 95 19
	sd	zero,8(sp)
	.loc 1 95 45
	ld	a5,8(sp)
#APP
# 95 "sbi/sbi_main.c" 1
	csrw sie, a5
# 0 "" 2
#NO_APP
.LBE6:
.LBB7:
	.loc 1 97 19
	sd	zero,0(sp)
	.loc 1 97 45
	ld	a5,0(sp)
#APP
# 97 "sbi/sbi_main.c" 1
	csrw satp, a5
# 0 "" 2
#NO_APP
.LBE7:
	.loc 1 100 2
#APP
# 100 "sbi/sbi_main.c" 1
	mret
# 0 "" 2
	.loc 1 101 1
#NO_APP
	nop
	ld	ra,56(sp)
	.cfi_restore 1
	ld	s0,48(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	sbi_main, .-sbi_main
.Letext0:
	.file 2 "sbi/sbi_lib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x23f
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.4byte	.LASF20
	.byte	0x2
	.byte	0x5
	.byte	0x6
	.4byte	0x45
	.uleb128 0x4
	.4byte	0x45
	.uleb128 0x4
	.4byte	0x4c
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x4
	.4byte	0x4c
	.4byte	0x67
	.uleb128 0x4
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x6
	.4byte	0x4c
	.4byte	0x7b
	.uleb128 0x4
	.4byte	0x4c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17b
	.uleb128 0x2
	.string	"val"
	.byte	0x4c
	.byte	0x10
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0xca
	.uleb128 0x2
	.string	"__v"
	.byte	0x55
	.byte	0x22
	.4byte	0x4c
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0xee
	.uleb128 0x2
	.string	"__v"
	.byte	0x58
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x3
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x112
	.uleb128 0x2
	.string	"__v"
	.byte	0x5b
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x3
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x136
	.uleb128 0x2
	.string	"__v"
	.byte	0x5d
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x3
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x15a
	.uleb128 0x2
	.string	"__v"
	.byte	0x5f
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xc
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.uleb128 0x2
	.string	"__v"
	.byte	0x61
	.byte	0x13
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LASF6
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x45
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x15
	.4byte	0x45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x2c
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.4byte	.LASF9
	.byte	0x41
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x5
	.4byte	.LASF10
	.byte	0x55
	.4byte	0x4c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0x9
	.byte	0x6
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x1
	.4byte	.LASF12
	.byte	0xa
	.byte	0x6
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.4byte	.LASF13
	.byte	0xa
	.byte	0x12
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.4byte	.LASF14
	.byte	0xa
	.byte	0x20
	.4byte	0x45
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.4byte	.LASF15
	.byte	0xb
	.byte	0x10
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.4byte	.LASF16
	.byte	0xb
	.byte	0x19
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.4byte	.LASF17
	.byte	0xc
	.byte	0x10
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0xc
	.byte	0x1a
	.4byte	0x4c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 7
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
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
.LASF15:
	.string	"cfgmask"
.LASF13:
	.string	"pmpcfg_shift"
.LASF2:
	.string	"long unsigned int"
.LASF14:
	.string	"pmpaddr_csr"
.LASF20:
	.string	"write_csr_num"
.LASF5:
	.string	"sbi_main"
.LASF10:
	.string	"prot"
.LASF17:
	.string	"addrmask"
.LASF11:
	.string	"order"
.LASF18:
	.string	"pmpaddr"
.LASF3:
	.string	"read_csr_num"
.LASF7:
	.string	"reg_idx"
.LASF9:
	.string	"size"
.LASF4:
	.string	"log2roundup"
.LASF19:
	.string	"GNU C17 13.2.0 -mcmodel=medany -mabi=lp64 -mtune=rocket -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fomit-frame-pointer"
.LASF8:
	.string	"start"
.LASF6:
	.string	"sbi_set_pmp"
.LASF16:
	.string	"pmpcfg"
.LASF12:
	.string	"pmpcfg_csr"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos"
.LASF0:
	.string	"sbi/sbi_main.c"
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
