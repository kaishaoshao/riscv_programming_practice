
./mysbi.elf:	file format elf64-littleriscv

Disassembly of section .text.boot:

0000000080000000 <_start>:
; 	la sp, stacks_start
80000000: 17 31 00 00  	auipc	sp, 3
80000004: 13 01 01 00  	mv	sp, sp
; 	li t0, 4096
80000008: b7 12 00 00  	lui	t0, 1
; 	add sp, sp, t0
8000000c: 33 01 51 00  	add	sp, sp, t0
; 	tail sbi_main
80000010: 6f 00 40 00  	j	0x80000014 <sbi_main>

Disassembly of section .text:

0000000080000014 <sbi_main>:
; {
80000014: 13 01 01 fc  	addi	sp, sp, -64
80000018: 23 3c 81 02  	sd	s0, 56(sp)
; 	val = read_csr(mstatus);
8000001c: f3 27 00 30  	csrr	a5, mstatus
80000020: 13 84 07 00  	mv	s0, a5
80000024: 93 07 04 00  	mv	a5, s0
80000028: 23 34 f1 02  	sd	a5, 40(sp)
; 	val = INSERT_FIELD(val, MSTATUS_MPP, PRV_S);
8000002c: 03 37 81 02  	ld	a4, 40(sp)
80000030: b7 e7 ff ff  	lui	a5, 1048574
80000034: 93 87 f7 7f  	addi	a5, a5, 2047
80000038: 33 77 f7 00  	and	a4, a4, a5
8000003c: b7 17 00 00  	lui	a5, 1
80000040: 93 87 07 80  	addi	a5, a5, -2048
80000044: b3 67 f7 00  	or	a5, a4, a5
80000048: 23 34 f1 02  	sd	a5, 40(sp)
; 	val = INSERT_FIELD(val, MSTATUS_MPIE, 0);
8000004c: 83 37 81 02  	ld	a5, 40(sp)
80000050: 93 f7 f7 f7  	andi	a5, a5, -129
80000054: 23 34 f1 02  	sd	a5, 40(sp)
; 	write_csr(mstatus, val);
80000058: 83 37 81 02  	ld	a5, 40(sp)
8000005c: 23 30 f1 02  	sd	a5, 32(sp)
80000060: 83 37 01 02  	ld	a5, 32(sp)
80000064: 73 90 07 30  	csrw	mstatus, a5
; 	write_csr(mepc, FW_JUMP_ADDR);
80000068: 93 07 10 40  	li	a5, 1025
8000006c: 93 97 57 01  	slli	a5, a5, 21
80000070: 23 3c f1 00  	sd	a5, 24(sp)
80000074: 83 37 81 01  	ld	a5, 24(sp)
80000078: 73 90 17 34  	csrw	mepc, a5
; 	write_csr(stvec, FW_JUMP_ADDR);
8000007c: 93 07 10 40  	li	a5, 1025
80000080: 93 97 57 01  	slli	a5, a5, 21
80000084: 23 38 f1 00  	sd	a5, 16(sp)
80000088: 83 37 01 01  	ld	a5, 16(sp)
8000008c: 73 90 57 10  	csrw	stvec, a5
; 	write_csr(sie, 0);
80000090: 23 34 01 00  	sd	zero, 8(sp)
80000094: 83 37 81 00  	ld	a5, 8(sp)
80000098: 73 90 47 10  	csrw	sie, a5
; 	write_csr(satp, 0);
8000009c: 23 30 01 00  	sd	zero, 0(sp)
800000a0: 83 37 01 00  	ld	a5, 0(sp)
800000a4: 73 90 07 18  	csrw	satp, a5
; 	asm volatile("mret");
800000a8: 73 00 20 30  	mret
; }
800000ac: 13 00 00 00  	nop
800000b0: 03 34 81 03  	ld	s0, 56(sp)
800000b4: 13 01 01 04  	addi	sp, sp, 64
800000b8: 67 80 00 00  	ret

Disassembly of section .payload:

00000000800000bc <payload_bin>:
800000bc: 73 10 40 10  	csrw	sie, zero
800000c0: 17 11 00 00  	auipc	sp, 1
800000c4: 13 01 c1 ff  	addi	sp, sp, -4
800000c8: b7 12 00 00  	lui	t0, 1
800000cc: 33 01 51 00  	add	sp, sp, t0
800000d0: 6f 00 40 00  	j	0x800000d4 <payload_bin+0x18>
800000d4: 13 01 01 ff  	addi	sp, sp, -16
800000d8: 23 34 11 00  	sd	ra, 8(sp)
800000dc: ef 00 80 0c  	jal	0x800001a4 <payload_bin+0xe8>
800000e0: 17 05 00 00  	auipc	a0, 0
800000e4: 13 05 45 18  	addi	a0, a0, 388
800000e8: ef 00 c0 05  	jal	0x80000144 <payload_bin+0x88>
800000ec: 6f 00 00 00  	j	0x800000ec <payload_bin+0x30>
800000f0: 13 01 01 fe  	addi	sp, sp, -32
800000f4: 93 07 05 00  	mv	a5, a0
800000f8: a3 07 f1 00  	sb	a5, 15(sp)
800000fc: 13 00 00 00  	nop
80000100: b7 07 00 10  	lui	a5, 65536
80000104: 93 87 57 00  	addi	a5, a5, 5
80000108: 83 c7 07 00  	lbu	a5, 0(a5)
8000010c: a3 0f f1 00  	sb	a5, 31(sp)
80000110: 83 47 f1 01  	lbu	a5, 31(sp)
80000114: 9b 87 07 00  	sext.w	a5, a5
80000118: 93 f7 07 04  	andi	a5, a5, 64
8000011c: 9b 87 07 00  	sext.w	a5, a5
80000120: e3 80 07 fe  	beqz	a5, 0x80000100 <payload_bin+0x44>
80000124: 83 47 f1 00  	lbu	a5, 15(sp)
80000128: 23 0f f1 00  	sb	a5, 30(sp)
8000012c: b7 07 00 10  	lui	a5, 65536
80000130: 03 47 e1 01  	lbu	a4, 30(sp)
80000134: 23 80 e7 00  	sb	a4, 0(a5)
80000138: 13 00 00 00  	nop
8000013c: 13 01 01 02  	addi	sp, sp, 32
80000140: 67 80 00 00  	ret
80000144: 13 01 01 fd  	addi	sp, sp, -48
80000148: 23 34 11 02  	sd	ra, 40(sp)
8000014c: 23 34 a1 00  	sd	a0, 8(sp)
80000150: 23 2e 01 00  	sw	zero, 28(sp)
80000154: 6f 00 80 02  	j	0x8000017c <payload_bin+0xc0>
80000158: 83 27 c1 01  	lw	a5, 28(sp)
8000015c: 03 37 81 00  	ld	a4, 8(sp)
80000160: b3 07 f7 00  	add	a5, a4, a5
80000164: 83 c7 07 00  	lbu	a5, 0(a5)
80000168: 13 85 07 00  	mv	a0, a5
8000016c: ef f0 5f f8  	jal	0x800000f0 <payload_bin+0x34>
80000170: 83 27 c1 01  	lw	a5, 28(sp)
80000174: 9b 87 17 00  	addiw	a5, a5, 1
80000178: 23 2e f1 00  	sw	a5, 28(sp)
8000017c: 83 27 c1 01  	lw	a5, 28(sp)
80000180: 03 37 81 00  	ld	a4, 8(sp)
80000184: b3 07 f7 00  	add	a5, a4, a5
80000188: 83 c7 07 00  	lbu	a5, 0(a5)
8000018c: e3 96 07 fc  	bnez	a5, 0x80000158 <payload_bin+0x9c>
80000190: 13 00 00 00  	nop
80000194: 13 00 00 00  	nop
80000198: 83 30 81 02  	ld	ra, 40(sp)
8000019c: 13 01 01 03  	addi	sp, sp, 48
800001a0: 67 80 00 00  	ret
800001a4: 13 01 01 ff  	addi	sp, sp, -16
800001a8: 97 27 00 00  	auipc	a5, 2
800001ac: 93 87 47 f1  	addi	a5, a5, -236
800001b0: 83 a7 07 00  	lw	a5, 0(a5)
800001b4: 13 87 07 00  	mv	a4, a5
800001b8: b7 27 1c 00  	lui	a5, 450
800001bc: bb 57 f7 02  	divuw	a5, a4, a5
800001c0: 23 26 f1 00  	sw	a5, 12(sp)
800001c4: a3 05 01 00  	sb	zero, 11(sp)
800001c8: b7 07 00 10  	lui	a5, 65536
800001cc: 93 87 17 00  	addi	a5, a5, 1
800001d0: 03 47 b1 00  	lbu	a4, 11(sp)
800001d4: 23 80 e7 00  	sb	a4, 0(a5)
800001d8: 93 07 00 f8  	li	a5, -128
800001dc: 23 05 f1 00  	sb	a5, 10(sp)
800001e0: b7 07 00 10  	lui	a5, 65536
800001e4: 93 87 37 00  	addi	a5, a5, 3
800001e8: 03 47 a1 00  	lbu	a4, 10(sp)
800001ec: 23 80 e7 00  	sb	a4, 0(a5)
800001f0: 83 27 c1 00  	lw	a5, 12(sp)
800001f4: a3 04 f1 00  	sb	a5, 9(sp)
800001f8: b7 07 00 10  	lui	a5, 65536
800001fc: 03 47 91 00  	lbu	a4, 9(sp)
80000200: 23 80 e7 00  	sb	a4, 0(a5)
80000204: 83 27 c1 00  	lw	a5, 12(sp)
80000208: 9b d7 87 00  	srliw	a5, a5, 8
8000020c: 9b 87 07 00  	sext.w	a5, a5
80000210: 23 04 f1 00  	sb	a5, 8(sp)
80000214: b7 07 00 10  	lui	a5, 65536
80000218: 93 87 17 00  	addi	a5, a5, 1
8000021c: 03 47 81 00  	lbu	a4, 8(sp)
80000220: 23 80 e7 00  	sb	a4, 0(a5)
80000224: 93 07 30 00  	li	a5, 3
80000228: a3 03 f1 00  	sb	a5, 7(sp)
8000022c: b7 07 00 10  	lui	a5, 65536
80000230: 93 87 37 00  	addi	a5, a5, 3
80000234: 03 47 71 00  	lbu	a4, 7(sp)
80000238: 23 80 e7 00  	sb	a4, 0(a5)
8000023c: 93 07 70 fc  	li	a5, -57
80000240: 23 03 f1 00  	sb	a5, 6(sp)
80000244: b7 07 00 10  	lui	a5, 65536
80000248: 93 87 27 00  	addi	a5, a5, 2
8000024c: 03 47 61 00  	lbu	a4, 6(sp)
80000250: 23 80 e7 00  	sb	a4, 0(a5)
80000254: 13 00 00 00  	nop
80000258: 13 01 01 01  	addi	sp, sp, 16
8000025c: 67 80 00 00  	ret
80000260: 00 00        	<unknown>
80000262: 00 00        	<unknown>
80000264: 57 65 6c 63  	<unknown>
80000268: 6f 6d 65 20  	jal	s10, 0x8005646e <bss_end+0x5246e>
8000026c: 52 49        	<unknown>
8000026e: 53 43 2d 56  	<unknown>
80000272: 21 0d        	<unknown>
80000274: 0a 00        	<unknown>
		...
800020ba: 00 00        	<unknown>
800020bc: 00 20        	<unknown>
800020be: 1c 00        	<unknown>

Disassembly of section .data:

0000000080003000 <stacks_start>:
		...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0: 32 01        	<unknown>
       2: 00 00        	<unknown>
       4: 05 00        	<unknown>
       6: 01 08        	<unknown>
       8: 00 00        	<unknown>
       a: 00 00        	<unknown>
       c: 03 00 00 00  	lb	zero, 0(zero)
      10: 00 1d        	<unknown>
      12: 5d 00        	<unknown>
      14: 00 00        	<unknown>
      16: 00 00        	<unknown>
      18: 00 00        	<unknown>
      1a: 14 00        	<unknown>
      1c: 00 80        	<unknown>
      1e: 00 00        	<unknown>
      20: 00 00        	<unknown>
      22: a8 00        	<unknown>
		...
      2c: 00 00        	<unknown>
      2e: 04 81        	<unknown>
      30: 00 00        	<unknown>
      32: 00 01        	<unknown>
      34: 08 06        	<unknown>
      36: 14 00        	<unknown>
      38: 00 80        	<unknown>
      3a: 00 00        	<unknown>
      3c: 00 00        	<unknown>
      3e: a8 00        	<unknown>
      40: 00 00        	<unknown>
      42: 00 00        	<unknown>
      44: 00 00        	<unknown>
      46: 01 9c        	<unknown>
      48: 2e 01        	<unknown>
      4a: 00 00        	<unknown>
      4c: 01 76        	<unknown>
      4e: 61 6c        	<unknown>
      50: 00 0a        	<unknown>
      52: 10 2e        	<unknown>
      54: 01 00        	<unknown>
      56: 00 02        	<unknown>
      58: 91 68        	<unknown>
      5a: 02 1c        	<unknown>
      5c: 00 00        	<unknown>
      5e: 80 00        	<unknown>
      60: 00 00        	<unknown>
      62: 00 0c        	<unknown>
      64: 00 00        	<unknown>
      66: 00 00        	<unknown>
      68: 00 00        	<unknown>
      6a: 00 7d        	<unknown>
      6c: 00 00        	<unknown>
      6e: 00 01        	<unknown>
      70: 5f 5f 76 00  	<unknown>
      74: 0d 22        	<unknown>
      76: 2e 01        	<unknown>
      78: 00 00        	<unknown>
      7a: 01 58        	<unknown>
      7c: 00 02        	<unknown>
      7e: 58 00        	<unknown>
      80: 00 80        	<unknown>
      82: 00 00        	<unknown>
      84: 00 00        	<unknown>
      86: 10 00        	<unknown>
      88: 00 00        	<unknown>
      8a: 00 00        	<unknown>
      8c: 00 00        	<unknown>
      8e: a1 00        	<unknown>
      90: 00 00        	<unknown>
      92: 01 5f        	<unknown>
      94: 5f 76 00 10  	<unknown>
      98: 13 2e 01 00  	slti	t3, sp, 0
      9c: 00 02        	<unknown>
      9e: 91 60        	<unknown>
      a0: 00 02        	<unknown>
      a2: 68 00        	<unknown>
      a4: 00 80        	<unknown>
      a6: 00 00        	<unknown>
      a8: 00 00        	<unknown>
      aa: 14 00        	<unknown>
      ac: 00 00        	<unknown>
      ae: 00 00        	<unknown>
      b0: 00 00        	<unknown>
      b2: c5 00        	<unknown>
      b4: 00 00        	<unknown>
      b6: 01 5f        	<unknown>
      b8: 5f 76 00 13  	<unknown>
      bc: 13 2e 01 00  	slti	t3, sp, 0
      c0: 00 02        	<unknown>
      c2: 91 58        	<unknown>
      c4: 00 02        	<unknown>
      c6: 7c 00        	<unknown>
      c8: 00 80        	<unknown>
      ca: 00 00        	<unknown>
      cc: 00 00        	<unknown>
      ce: 14 00        	<unknown>
      d0: 00 00        	<unknown>
      d2: 00 00        	<unknown>
      d4: 00 00        	<unknown>
      d6: e9 00        	<unknown>
      d8: 00 00        	<unknown>
      da: 01 5f        	<unknown>
      dc: 5f 76 00 15  	<unknown>
      e0: 13 2e 01 00  	slti	t3, sp, 0
      e4: 00 02        	<unknown>
      e6: 91 50        	<unknown>
      e8: 00 02        	<unknown>
      ea: 90 00        	<unknown>
      ec: 00 80        	<unknown>
      ee: 00 00        	<unknown>
      f0: 00 00        	<unknown>
      f2: 0c 00        	<unknown>
      f4: 00 00        	<unknown>
      f6: 00 00        	<unknown>
      f8: 00 00        	<unknown>
      fa: 0d 01        	<unknown>
      fc: 00 00        	<unknown>
      fe: 01 5f        	<unknown>
     100: 5f 76 00 17  	<unknown>
     104: 13 2e 01 00  	slti	t3, sp, 0
     108: 00 02        	<unknown>
     10a: 91 48        	<unknown>
     10c: 00 05        	<unknown>
     10e: 9c 00        	<unknown>
     110: 00 80        	<unknown>
     112: 00 00        	<unknown>
     114: 00 00        	<unknown>
     116: 0c 00        	<unknown>
     118: 00 00        	<unknown>
     11a: 00 00        	<unknown>
     11c: 00 00        	<unknown>
     11e: 01 5f        	<unknown>
     120: 5f 76 00 19  	<unknown>
     124: 13 2e 01 00  	slti	t3, sp, 0
     128: 00 02        	<unknown>
     12a: 91 40        	<unknown>
     12c: 00 00        	<unknown>
     12e: 06 08        	<unknown>
     130: 07 6f 00 00  	<unknown>
     134: 00 00        	<unknown>
     136: 24 00        	<unknown>
     138: 00 00        	<unknown>
     13a: 05 00        	<unknown>
     13c: 01 08        	<unknown>
     13e: 60 00        	<unknown>
     140: 00 00        	<unknown>
     142: 01 dc        	<unknown>
     144: 00 00        	<unknown>
     146: 00 00        	<unknown>
     148: 00 00        	<unknown>
     14a: 80 00        	<unknown>
     14c: 00 00        	<unknown>
     14e: 00 18        	<unknown>
     150: 8a 00        	<unknown>
     152: 00 00        	<unknown>
     154: 99 00        	<unknown>
     156: 00 00        	<unknown>
     158: f6 00        	<unknown>
     15a: 00 00        	<unknown>
     15c: 01 80        	<unknown>

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
       0: 01 34        	<unknown>
       2: 00 03        	<unknown>
       4: 08 3a        	<unknown>
       6: 21 01        	<unknown>
       8: 3b 0b 39 0b  	<unknown>
       c: 49 13        	<unknown>
       e: 02 18        	<unknown>
      10: 00 00        	<unknown>
      12: 02 0b        	<unknown>
      14: 01 11        	<unknown>
      16: 01 12        	<unknown>
      18: 07 01 13 00  	<unknown>
      1c: 00 03        	<unknown>
      1e: 11 01        	<unknown>
      20: 25 0e        	<unknown>
      22: 13 0b 03 1f  	addi	s6, t1, 496
      26: 1b 1f 11 01  	slliw	t5, sp, 17
      2a: 12 07        	<unknown>
      2c: 10 17        	<unknown>
      2e: 00 00        	<unknown>
      30: 04 2e        	<unknown>
      32: 01 3f        	<unknown>
      34: 19 03        	<unknown>
      36: 0e 3a        	<unknown>
      38: 0b 3b 0b 39  	<unknown>
      3c: 0b 27 19 11  	<unknown>
      40: 01 12        	<unknown>
      42: 07 40 18 7a  	<unknown>
      46: 19 01        	<unknown>
      48: 13 00 00 05  	li	zero, 80
      4c: 0b 01 11 01  	<unknown>
      50: 12 07        	<unknown>
      52: 00 00        	<unknown>
      54: 06 24        	<unknown>
      56: 00 0b        	<unknown>
      58: 0b 3e 0b 03  	<unknown>
      5c: 0e 00        	<unknown>
      5e: 00 00        	<unknown>
      60: 01 11        	<unknown>
      62: 00 10        	<unknown>
      64: 17 11 01 12  	auipc	sp, 73745
      68: 0f 03 0e 1b  	<unknown>
      6c: 0e 25        	<unknown>
      6e: 0e 13        	<unknown>
      70: 05 00        	<unknown>
      72: 00 00        	<unknown>

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
       0: 2c 00        	<unknown>
       2: 00 00        	<unknown>
       4: 02 00        	<unknown>
       6: 00 00        	<unknown>
       8: 00 00        	<unknown>
       a: 08 00        	<unknown>
       c: 00 00        	<unknown>
       e: 00 00        	<unknown>
      10: 14 00        	<unknown>
      12: 00 80        	<unknown>
      14: 00 00        	<unknown>
      16: 00 00        	<unknown>
      18: a8 00        	<unknown>
		...
      2e: 00 00        	<unknown>
      30: 2c 00        	<unknown>
      32: 00 00        	<unknown>
      34: 02 00        	<unknown>
      36: 36 01        	<unknown>
      38: 00 00        	<unknown>
      3a: 08 00        	<unknown>
      3c: 00 00        	<unknown>
      3e: 00 00        	<unknown>
      40: 00 00        	<unknown>
      42: 00 80        	<unknown>
      44: 00 00        	<unknown>
      46: 00 00        	<unknown>
      48: 14 00        	<unknown>
		...
      5e: 00 00        	<unknown>

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
       0: d8 00        	<unknown>
       2: 00 00        	<unknown>
       4: 05 00        	<unknown>
       6: 08 00        	<unknown>
       8: 2e 00        	<unknown>
       a: 00 00        	<unknown>
       c: 01 01        	<unknown>
       e: 01 fb        	<unknown>
      10: 0e 0d        	<unknown>
      12: 00 01        	<unknown>
      14: 01 01        	<unknown>
      16: 01 00        	<unknown>
      18: 00 00        	<unknown>
      1a: 01 00        	<unknown>
      1c: 00 01        	<unknown>
      1e: 01 01        	<unknown>
      20: 1f 02 00 00  	<unknown>
      24: 00 00        	<unknown>
      26: 6c 00        	<unknown>
      28: 00 00        	<unknown>
      2a: 02 01        	<unknown>
      2c: 1f 02 0f 02  	<unknown>
      30: 61 00        	<unknown>
      32: 00 00        	<unknown>
      34: 01 61        	<unknown>
      36: 00 00        	<unknown>
      38: 00 01        	<unknown>
      3a: 05 01        	<unknown>
      3c: 00 09        	<unknown>
      3e: 02 14        	<unknown>
      40: 00 00        	<unknown>
      42: 80 00        	<unknown>
      44: 00 00        	<unknown>
      46: 00 1a        	<unknown>
      48: 05 27        	<unknown>
      4a: 03 04 09 08  	lb	s0, 128(s2)
      4e: 00 01        	<unknown>
      50: 05 6f        	<unknown>
      52: 03 00 09 08  	lb	zero, 128(s2)
      56: 00 01        	<unknown>
      58: 05 06        	<unknown>
      5a: 03 00 09 04  	lb	zero, 64(s2)
      5e: 00 01        	<unknown>
      60: 05 10        	<unknown>
      62: 03 01 09 04  	lb	sp, 64(s2)
      66: 00 01        	<unknown>
      68: 05 06        	<unknown>
      6a: 03 00 09 10  	lb	zero, 256(s2)
      6e: 00 01        	<unknown>
      70: 03 01 09 10  	lb	sp, 256(s2)
      74: 00 01        	<unknown>
      76: 05 13        	<unknown>
      78: 03 01 09 0c  	lb	sp, 192(s2)
      7c: 00 01        	<unknown>
      7e: 05 2f        	<unknown>
      80: 03 00 09 08  	lb	zero, 128(s2)
      84: 00 01        	<unknown>
      86: 05 13        	<unknown>
      88: 03 03 09 08  	lb	t1, 128(s2)
      8c: 00 01        	<unknown>
      8e: 05 36        	<unknown>
      90: 03 00 09 0c  	lb	zero, 192(s2)
      94: 00 01        	<unknown>
      96: 05 13        	<unknown>
      98: 03 02 09 08  	lb	tp, 128(s2)
      9c: 00 01        	<unknown>
      9e: 05 36        	<unknown>
      a0: 03 00 09 0c  	lb	zero, 192(s2)
      a4: 00 01        	<unknown>
      a6: 05 13        	<unknown>
      a8: 03 02 09 08  	lb	tp, 128(s2)
      ac: 00 01        	<unknown>
      ae: 05 2d        	<unknown>
      b0: 03 00 09 04  	lb	zero, 64(s2)
      b4: 00 01        	<unknown>
      b6: 05 13        	<unknown>
      b8: 03 02 09 08  	lb	tp, 128(s2)
      bc: 00 01        	<unknown>
      be: 05 2d        	<unknown>
      c0: 03 00 09 04  	lb	zero, 64(s2)
      c4: 00 01        	<unknown>
      c6: 05 02        	<unknown>
      c8: 03 03 09 08  	lb	t1, 128(s2)
      cc: 00 01        	<unknown>
      ce: 05 01        	<unknown>
      d0: 03 01 09 04  	lb	sp, 64(s2)
      d4: 00 01        	<unknown>
      d6: 09 10        	<unknown>
      d8: 00 00        	<unknown>
      da: 01 01        	<unknown>
      dc: 5a 00        	<unknown>
      de: 00 00        	<unknown>
      e0: 05 00        	<unknown>
      e2: 08 00        	<unknown>
      e4: 2e 00        	<unknown>
      e6: 00 00        	<unknown>
      e8: 01 01        	<unknown>
      ea: 01 fb        	<unknown>
      ec: 0e 0d        	<unknown>
      ee: 00 01        	<unknown>
      f0: 01 01        	<unknown>
      f2: 01 00        	<unknown>
      f4: 00 00        	<unknown>
      f6: 01 00        	<unknown>
      f8: 00 01        	<unknown>
      fa: 01 01        	<unknown>
      fc: 1f 02 00 00  	<unknown>
     100: 00 00        	<unknown>
     102: 6c 00        	<unknown>
     104: 00 00        	<unknown>
     106: 02 01        	<unknown>
     108: 1f 02 0f 02  	<unknown>
     10c: 70 00        	<unknown>
     10e: 00 00        	<unknown>
     110: 01 70        	<unknown>
     112: 00 00        	<unknown>
     114: 00 01        	<unknown>
     116: 00 09        	<unknown>
     118: 02 00        	<unknown>
     11a: 00 00        	<unknown>
     11c: 80 00        	<unknown>
     11e: 00 00        	<unknown>
     120: 00 18        	<unknown>
     122: 03 01 09 08  	lb	sp, 128(s2)
     126: 00 01        	<unknown>
     128: 03 01 09 04  	lb	sp, 64(s2)
     12c: 00 01        	<unknown>
     12e: 03 03 09 04  	lb	t1, 64(s2)
     132: 00 01        	<unknown>
     134: 09 04        	<unknown>
     136: 00 00        	<unknown>
     138: 01 01        	<unknown>

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
       0: 47 4e 55 20  	fmsub.s	ft8, fa0, ft5, ft4, rmm
       4: 43 31 37 20  	fmadd.s	ft2, fa4, ft3, ft4, rup
       8: 31 31        	<unknown>
       a: 2e 34        	<unknown>
       c: 2e 30        	<unknown>
       e: 20 2d        	<unknown>
      10: 6d 63        	<unknown>
      12: 6d 6f        	<unknown>
      14: 64 65        	<unknown>
      16: 6c 3d        	<unknown>
      18: 6d 65        	<unknown>
      1a: 64 61        	<unknown>
      1c: 6e 79        	<unknown>
      1e: 20 2d        	<unknown>
      20: 6d 61        	<unknown>
      22: 62 69        	<unknown>
      24: 3d 6c        	<unknown>
      26: 70 36        	<unknown>
      28: 34 20        	<unknown>
      2a: 2d 6d        	<unknown>
      2c: 69 73        	<unknown>
      2e: 61 2d        	<unknown>
      30: 73 70 65 63  	csrci	1590, 10
      34: 3d 32        	<unknown>
      36: 2e 32        	<unknown>
      38: 20 2d        	<unknown>
      3a: 6d 61        	<unknown>
      3c: 72 63        	<unknown>
      3e: 68 3d        	<unknown>
      40: 72 76        	<unknown>
      42: 36 34        	<unknown>
      44: 69 6d        	<unknown>
      46: 61 66        	<unknown>
      48: 64 20        	<unknown>
      4a: 2d 67        	<unknown>
      4c: 20 2d        	<unknown>
      4e: 4f 30 20 2d  	<unknown>
      52: 66 6e        	<unknown>
      54: 6f 2d 50 49  	jal	s10, 0x2ce8 <.debug_info+0x2ce8>
      58: 45 20        	<unknown>
      5a: 2d 66        	<unknown>
      5c: 6f 6d 69 74  	jal	s10, 0x967a2 <.debug_info+0x967a2>
      60: 2d 66        	<unknown>
      62: 72 61        	<unknown>
      64: 6d 65        	<unknown>
      66: 2d 70        	<unknown>
      68: 6f 69 6e 74  	jal	s2, 0xe67ae <.debug_info+0xe67ae>
      6c: 65 72        	<unknown>
      6e: 00 6c        	<unknown>
      70: 6f 6e 67 20  	jal	t3, 0x76276 <.debug_info+0x76276>
      74: 75 6e        	<unknown>
      76: 73 69 67 6e  	csrrsi	s2, 1766, 14
      7a: 65 64        	<unknown>
      7c: 20 69        	<unknown>
      7e: 6e 74        	<unknown>
      80: 00 73        	<unknown>
      82: 62 69        	<unknown>
      84: 5f 6d 61 69  	<unknown>
      88: 6e 00        	<unknown>
      8a: 73 62 69 2f  	csrrsi	tp, 758, 18
      8e: 73 62 69 5f  	csrrsi	tp, sattri3_base, 18
      92: 62 6f        	<unknown>
      94: 6f 74 2e 53  	jal	s0, 0xe75c6 <.debug_info+0xe75c6>
      98: 00 2f        	<unknown>
      9a: 68 6f        	<unknown>
      9c: 6d 65        	<unknown>
      9e: 2f 73 68 61  	<unknown>
      a2: 6f 6b 61 69  	jal	s6, 0x16738 <.debug_info+0x16738>
      a6: 2f 44 65 73  	<unknown>
      aa: 6b 74 6f 70  	<unknown>
      ae: 2f 77 6f 72  	<unknown>
      b2: 6b 2f 70 72  	<unknown>
      b6: 69 76        	<unknown>
      b8: 61 74        	<unknown>
      ba: 65 2f        	<unknown>
      bc: 52 49        	<unknown>
      be: 53 43 2d 56  	<unknown>
      c2: 61 70        	<unknown>
      c4: 61 70        	<unknown>
      c6: 2f 73 72 63  	<unknown>
      ca: 2f 72 69 73  	<unknown>
      ce: 63 76 5f 70  	bgeu	t5, t0, 0x7da <.debug_info+0x7da>
      d2: 72 6f        	<unknown>
      d4: 67 72 61 6d  	<unknown>
      d8: 6d 69        	<unknown>
      da: 6e 67        	<unknown>
      dc: 5f 70 72 61  	<unknown>
      e0: 63 74 69 63  	bgeu	s2, s6, 0x708 <.debug_info+0x708>
      e4: 65 2f        	<unknown>
      e6: 63 68 61 70  	bltu	sp, t1, 0x7f6 <.debug_info+0x7f6>
      ea: 74 65        	<unknown>
      ec: 72 5f        	<unknown>
      ee: 32 2f        	<unknown>
      f0: 62 65        	<unknown>
      f2: 6e 6f        	<unknown>
      f4: 73 00 47 4e  	<unknown>
      f8: 55 20        	<unknown>
      fa: 41 53        	<unknown>
      fc: 20 32        	<unknown>
      fe: 2e 33        	<unknown>
     100: 38 00        	<unknown>

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
       0: 2f 68 6f 6d  	<unknown>
       4: 65 2f        	<unknown>
       6: 73 68 61 6f  	csrrsi	a6, 1782, 2
       a: 6b 61 69 2f  	<unknown>
       e: 44 65        	<unknown>
      10: 73 6b 74 6f  	csrrsi	s6, 1783, 8
      14: 70 2f        	<unknown>
      16: 77 6f 72 6b  	<unknown>
      1a: 2f 70 72 69  	<unknown>
      1e: 76 61        	<unknown>
      20: 74 65        	<unknown>
      22: 2f 52 49 53  	<unknown>
      26: 43 2d 56 61  	fmadd.s	fs10, fa2, fs5, fa2, rdn
      2a: 70 61        	<unknown>
      2c: 70 2f        	<unknown>
      2e: 73 72 63 2f  	csrrci	tp, 758, 6
      32: 72 69        	<unknown>
      34: 73 63 76 5f  	csrrsi	t1, sattri3_mask, 12
      38: 70 72        	<unknown>
      3a: 6f 67 72 61  	jal	a4, 0x26e50 <.debug_info+0x26e50>
      3e: 6d 6d        	<unknown>
      40: 69 6e        	<unknown>
      42: 67 5f 70 72  	<unknown>
      46: 61 63        	<unknown>
      48: 74 69        	<unknown>
      4a: 63 65 2f 63  	bltu	t5, s2, 0x674 <.debug_info+0x674>
      4e: 68 61        	<unknown>
      50: 70 74        	<unknown>
      52: 65 72        	<unknown>
      54: 5f 32 2f 62  	<unknown>
      58: 65 6e        	<unknown>
      5a: 6f 73 00 73  	jal	t1, 0x778a <.debug_info+0x778a>
      5e: 62 69        	<unknown>
      60: 2f 73 62 69  	<unknown>
      64: 5f 6d 61 69  	<unknown>
      68: 6e 2e        	<unknown>
      6a: 63 00 73 62  	beq	t1, t2, 0x68a <.debug_info+0x68a>
      6e: 69 00        	<unknown>
      70: 73 62 69 5f  	csrrsi	tp, sattri3_base, 18
      74: 62 6f        	<unknown>
      76: 6f 74 2e 53  	jal	s0, 0xe75a8 <.debug_info+0xe75a8>
      7a: 00           	<unknown>

Disassembly of section .comment:

0000000000000000 <.comment>:
       0: 47 43 43 3a  	fmsub.d	ft6, ft6, ft4, ft7, rmm
       4: 20 28        	<unknown>
       6: 55 62        	<unknown>
       8: 75 6e        	<unknown>
       a: 74 75        	<unknown>
       c: 20 31        	<unknown>
       e: 31 2e        	<unknown>
      10: 34 2e        	<unknown>
      12: 30 2d        	<unknown>
      14: 31 75        	<unknown>
      16: 62 75        	<unknown>
      18: 6e 74        	<unknown>
      1a: 75 31        	<unknown>
      1c: 7e 32        	<unknown>
      1e: 32 2e        	<unknown>
      20: 30 34        	<unknown>
      22: 29 20        	<unknown>
      24: 31 31        	<unknown>
      26: 2e 34        	<unknown>
      28: 2e 30        	<unknown>
      2a: 00           	<unknown>

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
       0: 41 31        	<unknown>
       2: 00 00        	<unknown>
       4: 00 72        	<unknown>
       6: 69 73        	<unknown>
       8: 63 76 00 01  	bgeu	zero, a6, 0x14 <.debug_info+0x14>
       c: 27 00 00 00  	<unknown>
      10: 05 72        	<unknown>
      12: 76 36        	<unknown>
      14: 34 69        	<unknown>
      16: 32 70        	<unknown>
      18: 30 5f        	<unknown>
      1a: 6d 32        	<unknown>
      1c: 70 30        	<unknown>
      1e: 5f 61 32 70  	<unknown>
      22: 30 5f        	<unknown>
      24: 66 32        	<unknown>
      26: 70 30        	<unknown>
      28: 5f 64 32 70  	<unknown>
      2c: 30 00        	<unknown>
      2e: 08 01        	<unknown>
      30: 0a 0b        	<unknown>

Disassembly of section .debug_frame:

0000000000000000 <.debug_frame>:
       0: 0c 00        	<unknown>
       2: 00 00        	<unknown>
       4: ff ff ff ff  	<unknown>
       8: 03 00 01 7c  	lb	zero, 1984(sp)
       c: 01 0d        	<unknown>
       e: 02 00        	<unknown>
      10: 24 00        	<unknown>
      12: 00 00        	<unknown>
      14: 00 00        	<unknown>
      16: 00 00        	<unknown>
      18: 14 00        	<unknown>
      1a: 00 80        	<unknown>
      1c: 00 00        	<unknown>
      1e: 00 00        	<unknown>
      20: a8 00        	<unknown>
      22: 00 00        	<unknown>
      24: 00 00        	<unknown>
      26: 00 00        	<unknown>
      28: 44 0e        	<unknown>
      2a: 40 44        	<unknown>
      2c: 88 02        	<unknown>
      2e: 02 98        	<unknown>
      30: c8 44        	<unknown>
      32: 0e 00        	<unknown>
      34: 00 00        	<unknown>
      36: 00 00        	<unknown>

Disassembly of section .symtab:

0000000000000000 <.symtab>:
		...
      1c: 03 00 01 00  	lb	zero, 0(sp)
      20: 00 00        	<unknown>
      22: 00 80        	<unknown>
		...
      34: 03 00 02 00  	lb	zero, 0(tp)
      38: 14 00        	<unknown>
      3a: 00 80        	<unknown>
		...
      4c: 03 00 03 00  	lb	zero, 0(t1)
      50: bc 00        	<unknown>
      52: 00 80        	<unknown>
		...
      64: 03 00 04 00  	lb	zero, 0(s0)
      68: 00 30        	<unknown>
      6a: 00 80        	<unknown>
		...
      7c: 03 00 05 00  	lb	zero, 0(a0)
		...
      94: 03 00 06 00  	lb	zero, 0(a2)
		...
      ac: 03 00 07 00  	lb	zero, 0(a4)
		...
      c4: 03 00 08 00  	lb	zero, 0(a6)
		...
      dc: 03 00 09 00  	lb	zero, 0(s2)
		...
      f4: 03 00 0a 00  	lb	zero, 0(s4)
		...
     10c: 03 00 0b 00  	lb	zero, 0(s6)
		...
     124: 03 00 0c 00  	lb	zero, 0(s8)
		...
     13c: 03 00 0d 00  	lb	zero, 0(s10)
		...
     150: 01 00        	<unknown>
     152: 00 00        	<unknown>
     154: 04 00        	<unknown>
     156: f1 ff        	<unknown>
		...
     168: 0e 00        	<unknown>
     16a: 00 00        	<unknown>
     16c: 00 00        	<unknown>
     16e: 01 00        	<unknown>
     170: 00 00        	<unknown>
     172: 00 80        	<unknown>
		...
     180: 11 00        	<unknown>
     182: 00 00        	<unknown>
     184: 04 00        	<unknown>
     186: f1 ff        	<unknown>
		...
     198: 0e 00        	<unknown>
     19a: 00 00        	<unknown>
     19c: 00 00        	<unknown>
     19e: 02 00        	<unknown>
     1a0: 14 00        	<unknown>
     1a2: 00 80        	<unknown>
		...
     1b0: 1c 00        	<unknown>
     1b2: 00 00        	<unknown>
     1b4: 04 00        	<unknown>
     1b6: f1 ff        	<unknown>
		...
     1c8: 2c 00        	<unknown>
     1ca: 00 00        	<unknown>
     1cc: 00 00        	<unknown>
     1ce: 03 00 bc 00  	lb	zero, 11(s8)
     1d2: 00 80        	<unknown>
		...
     1e0: 2f 00 00 00  	<unknown>
     1e4: 12 00        	<unknown>
     1e6: 02 00        	<unknown>
     1e8: 14 00        	<unknown>
     1ea: 00 80        	<unknown>
     1ec: 00 00        	<unknown>
     1ee: 00 00        	<unknown>
     1f0: a8 00        	<unknown>
     1f2: 00 00        	<unknown>
     1f4: 00 00        	<unknown>
     1f6: 00 00        	<unknown>
     1f8: 46 00        	<unknown>
     1fa: 00 00        	<unknown>
     1fc: 10 00        	<unknown>
     1fe: 01 00        	<unknown>
     200: 00 00        	<unknown>
     202: 00 80        	<unknown>
		...
     210: 38 00        	<unknown>
     212: 00 00        	<unknown>
     214: 10 00        	<unknown>
     216: 04 00        	<unknown>
     218: 00 40        	<unknown>
     21a: 00 80        	<unknown>
		...
     228: 40 00        	<unknown>
     22a: 00 00        	<unknown>
     22c: 10 00        	<unknown>
     22e: 04 00        	<unknown>
     230: 00 30        	<unknown>
     232: 00 80        	<unknown>
		...
     240: 4d 00        	<unknown>
     242: 00 00        	<unknown>
     244: 10 00        	<unknown>
     246: 03 00 bc 00  	lb	zero, 11(s8)
     24a: 00 80        	<unknown>
		...
     258: 59 00        	<unknown>
     25a: 00 00        	<unknown>
     25c: 10 00        	<unknown>
     25e: 04 00        	<unknown>
     260: 00 40        	<unknown>
     262: 00 80        	<unknown>
		...

Disassembly of section .strtab:

0000000000000000 <.strtab>:
       0: 00 73        	<unknown>
       2: 62 69        	<unknown>
       4: 5f 62 6f 6f  	<unknown>
       8: 74 5f        	<unknown>
       a: 73 2e 6f 00  	csrrs	t3, 6, t5
       e: 24 78        	<unknown>
      10: 00 73        	<unknown>
      12: 62 69        	<unknown>
      14: 5f 6d 61 69  	<unknown>
      18: 6e 2e        	<unknown>
      1a: 63 00 73 62  	beq	t1, t2, 0x63a <.symtab+0x63a>
      1e: 69 5f        	<unknown>
      20: 70 61        	<unknown>
      22: 79 6c        	<unknown>
      24: 6f 61 64 5f  	jal	sp, 0x4661a <.symtab+0x4661a>
      28: 73 2e 6f 00  	csrrs	t3, 6, t5
      2c: 24 64        	<unknown>
      2e: 00 73        	<unknown>
      30: 62 69        	<unknown>
      32: 5f 6d 61 69  	<unknown>
      36: 6e 00        	<unknown>
      38: 62 73        	<unknown>
      3a: 73 5f 65 6e  	csrrwi	t5, 1766, 10
      3e: 64 00        	<unknown>
      40: 73 74 61 63  	csrrci	s0, 1590, 2
      44: 6b 73 5f 73  	<unknown>
      48: 74 61        	<unknown>
      4a: 72 74        	<unknown>
      4c: 00 70        	<unknown>
      4e: 61 79        	<unknown>
      50: 6c 6f        	<unknown>
      52: 61 64        	<unknown>
      54: 5f 62 69 6e  	<unknown>
      58: 00 62        	<unknown>
      5a: 73 73 5f 62  	csrrci	t1, 1573, 30
      5e: 65 67        	<unknown>
      60: 69 6e        	<unknown>
      62: 00           	<unknown>

Disassembly of section .shstrtab:

0000000000000000 <.shstrtab>:
       0: 00 2e        	<unknown>
       2: 73 79 6d 74  	csrrci	s2, 1862, 26
       6: 61 62        	<unknown>
       8: 00 2e        	<unknown>
       a: 73 74 72 74  	csrrci	s0, mseccfg, 4
       e: 61 62        	<unknown>
      10: 00 2e        	<unknown>
      12: 73 68 73 74  	csrrsi	a6, mseccfg, 6
      16: 72 74        	<unknown>
      18: 61 62        	<unknown>
      1a: 00 2e        	<unknown>
      1c: 74 65        	<unknown>
      1e: 78 74        	<unknown>
      20: 2e 62        	<unknown>
      22: 6f 6f 74 00  	jal	t5, 0x46828 <.symtab+0x46828>
      26: 2e 74        	<unknown>
      28: 65 78        	<unknown>
      2a: 74 00        	<unknown>
      2c: 2e 70        	<unknown>
      2e: 61 79        	<unknown>
      30: 6c 6f        	<unknown>
      32: 61 64        	<unknown>
      34: 00 2e        	<unknown>
      36: 64 61        	<unknown>
      38: 74 61        	<unknown>
      3a: 00 2e        	<unknown>
      3c: 64 65        	<unknown>
      3e: 62 75        	<unknown>
      40: 67 5f 69 6e  	<unknown>
      44: 66 6f        	<unknown>
      46: 00 2e        	<unknown>
      48: 64 65        	<unknown>
      4a: 62 75        	<unknown>
      4c: 67 5f 61 62  	<unknown>
      50: 62 72        	<unknown>
      52: 65 76        	<unknown>
      54: 00 2e        	<unknown>
      56: 64 65        	<unknown>
      58: 62 75        	<unknown>
      5a: 67 5f 61 72  	<unknown>
      5e: 61 6e        	<unknown>
      60: 67 65 73 00  	<unknown>
      64: 2e 64        	<unknown>
      66: 65 62        	<unknown>
      68: 75 67        	<unknown>
      6a: 5f 6c 69 6e  	<unknown>
      6e: 65 00        	<unknown>
      70: 2e 64        	<unknown>
      72: 65 62        	<unknown>
      74: 75 67        	<unknown>
      76: 5f 73 74 72  	<unknown>
      7a: 00 2e        	<unknown>
      7c: 64 65        	<unknown>
      7e: 62 75        	<unknown>
      80: 67 5f 6c 69  	<unknown>
      84: 6e 65        	<unknown>
      86: 5f 73 74 72  	<unknown>
      8a: 00 2e        	<unknown>
      8c: 63 6f 6d 6d  	bltu	s10, s6, 0x76a <.symtab+0x76a>
      90: 65 6e        	<unknown>
      92: 74 00        	<unknown>
      94: 2e 72        	<unknown>
      96: 69 73        	<unknown>
      98: 63 76 2e 61  	bgeu	t3, s2, 0x6a4 <.symtab+0x6a4>
      9c: 74 74        	<unknown>
      9e: 72 69        	<unknown>
      a0: 62 75        	<unknown>
      a2: 74 65        	<unknown>
      a4: 73 00 2e 64  	<unknown>
      a8: 65 62        	<unknown>
      aa: 75 67        	<unknown>
      ac: 5f 66 72 61  	<unknown>
      b0: 6d 65        	<unknown>
      b2: 00           	<unknown>
