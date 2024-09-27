	.file	"sbi_lib.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_zicsr2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.file 0 "/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos" "sbi/sbi_lib.c"
	.align	2
	.globl	read_csr_num
	.type	read_csr_num, @function
read_csr_num:
.LFB0:
	.file 1 "sbi/sbi_lib.c"
	.loc 1 7 1
	.cfi_startproc
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sd	s0,40(sp)
	.cfi_offset 8, -8
	mv	a5,a0
	sw	a5,12(sp)
	.loc 1 8 16
	sd	zero,24(sp)
	.loc 1 10 2
	lw	a5,12(sp)
	addiw	a3,a5,-928
	sext.w	a4,a3
	li	a5,23
	bgtu	a4,a5,.L15
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L4
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L4
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L4:
	.word	.L12-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L15-.L4
	.word	.L11-.L4
	.word	.L10-.L4
	.word	.L9-.L4
	.word	.L8-.L4
	.word	.L7-.L4
	.word	.L6-.L4
	.word	.L5-.L4
	.word	.L3-.L4
	.text
.L12:
.LBB2:
	.loc 1 12 40
#APP
# 12 "sbi/sbi_lib.c" 1
	csrr a5, 0x3a0
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 12 110
	mv	a5,s0
.LBE2:
	.loc 1 12 7
	sd	a5,24(sp)
	.loc 1 13 3
	j	.L13
.L11:
.LBB3:
	.loc 1 15 40
#APP
# 15 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b0
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 15 110
	mv	a5,s0
.LBE3:
	.loc 1 15 7
	sd	a5,24(sp)
	.loc 1 16 3
	j	.L13
.L10:
.LBB4:
	.loc 1 18 40
#APP
# 18 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b1
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 18 110
	mv	a5,s0
.LBE4:
	.loc 1 18 7
	sd	a5,24(sp)
	.loc 1 19 3
	j	.L13
.L9:
.LBB5:
	.loc 1 21 40
#APP
# 21 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b2
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 21 110
	mv	a5,s0
.LBE5:
	.loc 1 21 7
	sd	a5,24(sp)
	.loc 1 22 3
	j	.L13
.L8:
.LBB6:
	.loc 1 24 40
#APP
# 24 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b3
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 24 110
	mv	a5,s0
.LBE6:
	.loc 1 24 7
	sd	a5,24(sp)
	.loc 1 25 3
	j	.L13
.L7:
.LBB7:
	.loc 1 27 40
#APP
# 27 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b4
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 27 110
	mv	a5,s0
.LBE7:
	.loc 1 27 7
	sd	a5,24(sp)
	.loc 1 28 3
	j	.L13
.L6:
.LBB8:
	.loc 1 30 40
#APP
# 30 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b5
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 30 110
	mv	a5,s0
.LBE8:
	.loc 1 30 7
	sd	a5,24(sp)
	.loc 1 31 3
	j	.L13
.L5:
.LBB9:
	.loc 1 33 40
#APP
# 33 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b6
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 33 110
	mv	a5,s0
.LBE9:
	.loc 1 33 7
	sd	a5,24(sp)
	.loc 1 34 3
	j	.L13
.L3:
.LBB10:
	.loc 1 36 40
#APP
# 36 "sbi/sbi_lib.c" 1
	csrr a5, 0x3b7
# 0 "" 2
#NO_APP
	mv	s0,a5
	.loc 1 36 110
	mv	a5,s0
.LBE10:
	.loc 1 36 7
	sd	a5,24(sp)
	.loc 1 37 3
	j	.L13
.L15:
	.loc 1 39 3
	nop
.L13:
	.loc 1 42 9
	ld	a5,24(sp)
	.loc 1 43 1
	mv	a0,a5
	ld	s0,40(sp)
	.cfi_restore 8
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE0:
	.size	read_csr_num, .-read_csr_num
	.align	2
	.globl	write_csr_num
	.type	write_csr_num, @function
write_csr_num:
.LFB1:
	.loc 1 46 1
	.cfi_startproc
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	mv	a5,a0
	sd	a1,0(sp)
	sw	a5,12(sp)
	.loc 1 47 2
	lw	a5,12(sp)
	addiw	a3,a5,-928
	sext.w	a4,a3
	li	a5,23
	bgtu	a4,a5,.L29
	slli	a5,a3,32
	srli	a5,a5,32
	slli	a4,a5,2
	lla	a5,.L19
	add	a5,a4,a5
	lw	a5,0(a5)
	sext.w	a4,a5
	lla	a5,.L19
	add	a5,a4,a5
	jr	a5
	.section	.rodata
	.align	2
	.align	2
.L19:
	.word	.L27-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L29-.L19
	.word	.L26-.L19
	.word	.L25-.L19
	.word	.L24-.L19
	.word	.L23-.L19
	.word	.L22-.L19
	.word	.L21-.L19
	.word	.L20-.L19
	.word	.L18-.L19
	.text
.L27:
.LBB11:
	.loc 1 49 20
	ld	a5,0(sp)
	sd	a5,24(sp)
	.loc 1 49 48
	ld	a5,24(sp)
#APP
# 49 "sbi/sbi_lib.c" 1
	csrw 0x3a0, a5
# 0 "" 2
#NO_APP
.LBE11:
	.loc 1 50 3
	j	.L28
.L26:
.LBB12:
	.loc 1 52 20
	ld	a5,0(sp)
	sd	a5,32(sp)
	.loc 1 52 48
	ld	a5,32(sp)
#APP
# 52 "sbi/sbi_lib.c" 1
	csrw 0x3b0, a5
# 0 "" 2
#NO_APP
.LBE12:
	.loc 1 53 3
	j	.L28
.L25:
.LBB13:
	.loc 1 55 20
	ld	a5,0(sp)
	sd	a5,40(sp)
	.loc 1 55 48
	ld	a5,40(sp)
#APP
# 55 "sbi/sbi_lib.c" 1
	csrw 0x3b1, a5
# 0 "" 2
#NO_APP
.LBE13:
	.loc 1 56 3
	j	.L28
.L24:
.LBB14:
	.loc 1 58 20
	ld	a5,0(sp)
	sd	a5,48(sp)
	.loc 1 58 48
	ld	a5,48(sp)
#APP
# 58 "sbi/sbi_lib.c" 1
	csrw 0x3b2, a5
# 0 "" 2
#NO_APP
.LBE14:
	.loc 1 59 3
	j	.L28
.L23:
.LBB15:
	.loc 1 61 20
	ld	a5,0(sp)
	sd	a5,56(sp)
	.loc 1 61 48
	ld	a5,56(sp)
#APP
# 61 "sbi/sbi_lib.c" 1
	csrw 0x3b3, a5
# 0 "" 2
#NO_APP
.LBE15:
	.loc 1 62 3
	j	.L28
.L22:
.LBB16:
	.loc 1 64 20
	ld	a5,0(sp)
	sd	a5,64(sp)
	.loc 1 64 48
	ld	a5,64(sp)
#APP
# 64 "sbi/sbi_lib.c" 1
	csrw 0x3b4, a5
# 0 "" 2
#NO_APP
.LBE16:
	.loc 1 65 3
	j	.L28
.L21:
.LBB17:
	.loc 1 67 20
	ld	a5,0(sp)
	sd	a5,72(sp)
	.loc 1 67 48
	ld	a5,72(sp)
#APP
# 67 "sbi/sbi_lib.c" 1
	csrw 0x3b5, a5
# 0 "" 2
#NO_APP
.LBE17:
	.loc 1 68 3
	j	.L28
.L20:
.LBB18:
	.loc 1 70 20
	ld	a5,0(sp)
	sd	a5,80(sp)
	.loc 1 70 48
	ld	a5,80(sp)
#APP
# 70 "sbi/sbi_lib.c" 1
	csrw 0x3b6, a5
# 0 "" 2
#NO_APP
.LBE18:
	.loc 1 71 3
	j	.L28
.L18:
.LBB19:
	.loc 1 73 20
	ld	a5,0(sp)
	sd	a5,88(sp)
	.loc 1 73 48
	ld	a5,88(sp)
#APP
# 73 "sbi/sbi_lib.c" 1
	csrw 0x3b7, a5
# 0 "" 2
#NO_APP
.LBE19:
	.loc 1 74 3
	j	.L28
.L29:
	.loc 1 76 3
	nop
.L28:
	.loc 1 78 1
	nop
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	write_csr_num, .-write_csr_num
	.align	2
	.globl	log2roundup
	.type	log2roundup, @function
log2roundup:
.LFB2:
	.loc 1 81 1
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sd	a0,8(sp)
	.loc 1 82 16
	sd	zero,24(sp)
	.loc 1 84 8
	j	.L31
.L34:
	.loc 1 85 17
	ld	a5,24(sp)
	sext.w	a5,a5
	mv	a4,a5
	li	a5,1
	sll	a5,a5,a4
	.loc 1 85 6
	ld	a4,8(sp)
	bleu	a4,a5,.L36
	.loc 1 87 6
	ld	a5,24(sp)
	addi	a5,a5,1
	sd	a5,24(sp)
.L31:
	.loc 1 84 13
	ld	a4,24(sp)
	li	a5,63
	bleu	a4,a5,.L34
	j	.L33
.L36:
	.loc 1 86 4
	nop
.L33:
	.loc 1 90 9
	ld	a5,24(sp)
	.loc 1 91 1
	mv	a0,a5
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	log2roundup, .-log2roundup
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x366
	.2byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.Ldebug_abbrev0
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x1d
	.4byte	.LASF0
	.4byte	.LASF1
	.8byte	.Ltext0
	.8byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x50
	.byte	0xf
	.4byte	0x6b
	.8byte	.LFB2
	.8byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b
	.uleb128 0x3
	.string	"x"
	.byte	0x50
	.byte	0x29
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"ret"
	.byte	0x52
	.byte	0x10
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x9
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.8byte	.LFB1
	.8byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x2d
	.byte	0x18
	.4byte	0x1f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"val"
	.byte	0x2d
	.byte	0x2f
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2
	.8byte	.LBB11
	.8byte	.LBE11-.LBB11
	.4byte	0xd3
	.uleb128 0x1
	.string	"__v"
	.byte	0x31
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x2
	.8byte	.LBB12
	.8byte	.LBE12-.LBB12
	.4byte	0xf7
	.uleb128 0x1
	.string	"__v"
	.byte	0x34
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x2
	.8byte	.LBB13
	.8byte	.LBE13-.LBB13
	.4byte	0x11b
	.uleb128 0x1
	.string	"__v"
	.byte	0x37
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x2
	.8byte	.LBB14
	.8byte	.LBE14-.LBB14
	.4byte	0x13f
	.uleb128 0x1
	.string	"__v"
	.byte	0x3a
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x2
	.8byte	.LBB15
	.8byte	.LBE15-.LBB15
	.4byte	0x163
	.uleb128 0x1
	.string	"__v"
	.byte	0x3d
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2
	.8byte	.LBB16
	.8byte	.LBE16-.LBB16
	.4byte	0x187
	.uleb128 0x1
	.string	"__v"
	.byte	0x40
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x2
	.8byte	.LBB17
	.8byte	.LBE17-.LBB17
	.4byte	0x1ab
	.uleb128 0x1
	.string	"__v"
	.byte	0x43
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x2
	.8byte	.LBB18
	.8byte	.LBE18-.LBB18
	.4byte	0x1cf
	.uleb128 0x1
	.string	"__v"
	.byte	0x46
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x5
	.8byte	.LBB19
	.8byte	.LBE19-.LBB19
	.uleb128 0x1
	.string	"__v"
	.byte	0x49
	.byte	0x14
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x1
	.byte	0x6
	.byte	0xf
	.4byte	0x6b
	.8byte	.LFB0
	.8byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x6
	.byte	0x20
	.4byte	0x1f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"ret"
	.byte	0x8
	.byte	0x10
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2
	.8byte	.LBB2
	.8byte	.LBE2-.LBB2
	.4byte	0x254
	.uleb128 0x1
	.string	"__v"
	.byte	0xc
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB3
	.8byte	.LBE3-.LBB3
	.4byte	0x277
	.uleb128 0x1
	.string	"__v"
	.byte	0xf
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB4
	.8byte	.LBE4-.LBB4
	.4byte	0x29a
	.uleb128 0x1
	.string	"__v"
	.byte	0x12
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB5
	.8byte	.LBE5-.LBB5
	.4byte	0x2bd
	.uleb128 0x1
	.string	"__v"
	.byte	0x15
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB6
	.8byte	.LBE6-.LBB6
	.4byte	0x2e0
	.uleb128 0x1
	.string	"__v"
	.byte	0x18
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB7
	.8byte	.LBE7-.LBB7
	.4byte	0x303
	.uleb128 0x1
	.string	"__v"
	.byte	0x1b
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB8
	.8byte	.LBE8-.LBB8
	.4byte	0x326
	.uleb128 0x1
	.string	"__v"
	.byte	0x1e
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x2
	.8byte	.LBB9
	.8byte	.LBE9-.LBB9
	.4byte	0x349
	.uleb128 0x1
	.string	"__v"
	.byte	0x21
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
	.byte	0
	.uleb128 0x5
	.8byte	.LBB10
	.8byte	.LBE10-.LBB10
	.uleb128 0x1
	.string	"__v"
	.byte	0x24
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x1
	.byte	0x58
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
	.uleb128 0x4
	.uleb128 0x5
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
	.uleb128 0x7
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x8
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
	.uleb128 0x49
	.uleb128 0x13
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
.LASF3:
	.string	"long unsigned int"
.LASF7:
	.string	"log2roundup"
.LASF5:
	.string	"read_csr_num"
.LASF6:
	.string	"GNU C17 13.2.0 -mcmodel=medany -mabi=lp64 -mtune=rocket -misa-spec=20191213 -march=rv64imafd_zicsr -g -O0 -fno-PIE -fomit-frame-pointer"
.LASF4:
	.string	"write_csr_num"
.LASF2:
	.string	"csr_num"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"sbi/sbi_lib.c"
.LASF1:
	.string	"/home/shaokai/Desktop/work/vscode/RISC-Vapap/src/riscv_programming_practice/chapter_2/benos"
	.ident	"GCC: (gc891d8dc23e) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
