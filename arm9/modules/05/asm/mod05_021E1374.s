	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	thumb_func_start MOD05_021E1374
MOD05_021E1374: ; 0x021E1374
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	bl FUN_02046528
	mov r1, #0x47
	add r7, r0, #0
	mov r0, #4
	lsl r1, r1, #2
	bl AllocFromHeap
	add r4, r0, #0
	bne _021E1396
	bl GF_AssertFail
	pop {r3, r4, r5, r6, r7, pc}
_021E1396:
	mov r2, #0x47
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	str r7, [r4, #4]
	ldr r0, [r7, #0xc]
	bl SavArray_Flags_get
	str r0, [r4, #8]
	mov r0, #0x45
	lsl r0, r0, #2
	str r6, [r4, r0]
	add r0, r0, #4
	str r5, [r4, r0]
	ldr r0, [sp]
	ldr r1, _021E13C0 ; =MOD05_021E13C4
	add r2, r4, #0
	bl FUN_0204640C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E13C0: .word MOD05_021E13C4

	thumb_func_start MOD05_021E13C4
MOD05_021E13C4: ; 0x021E13C4
	push {r3, r4, r5, lr}
	sub sp, #8
	bl FUN_0204652C
	add r4, r0, #0
	ldr r1, [r4]
	cmp r1, #8
	bhi _021E13FC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E13E0: ; jump table
	.short _021E13F2 - _021E13E0 - 2 ; case 0
	.short _021E1408 - _021E13E0 - 2 ; case 1
	.short _021E1456 - _021E13E0 - 2 ; case 2
	.short _021E1470 - _021E13E0 - 2 ; case 3
	.short _021E1482 - _021E13E0 - 2 ; case 4
	.short _021E149E - _021E13E0 - 2 ; case 5
	.short _021E14B0 - _021E13E0 - 2 ; case 6
	.short _021E14FA - _021E13E0 - 2 ; case 7
	.short _021E1502 - _021E13E0 - 2 ; case 8
_021E13F2:
	ldr r0, [r4, #4]
	bl MOD05_021E19E0
	cmp r0, #1
	beq _021E13FE
_021E13FC:
	b _021E150C
_021E13FE:
	add r0, r4, #0
	mov r1, #1
	bl MOD05_021E1514
	b _021E150C
_021E1408:
	bl MOD05_021E153C
	add r0, r4, #0
	bl MOD05_021E1518
	cmp r0, #2
	bne _021E142A
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #2
	bl MOD05_021E1514
	b _021E150C
_021E142A:
	cmp r0, #0
	bne _021E1442
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #6
	bl MOD05_021E1514
	b _021E150C
_021E1442:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #7
	bl MOD05_021E1514
	b _021E150C
_021E1456:
	mov r0, #0x62
	lsl r0, r0, #4
	bl PlaySE
	ldr r0, [r4, #8]
	mov r1, #0
	bl FUN_0205F42C
	add r0, r4, #0
	mov r1, #3
	bl MOD05_021E1514
	b _021E150C
_021E1470:
	bl MOD05_021E1794
	cmp r0, #0
	bne _021E150C
	add r0, r4, #0
	mov r1, #4
	bl MOD05_021E1514
	b _021E150C
_021E1482:
	bl MOD05_021E17A0
	cmp r0, #0
	bne _021E1494
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #3
	strh r1, [r0]
_021E1494:
	add r0, r4, #0
	mov r1, #5
	bl MOD05_021E1514
	b _021E150C
_021E149E:
	bl MOD05_021E1794
	cmp r0, #0
	bne _021E150C
	add r0, r4, #0
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E14B0:
	ldr r0, [r4, #8]
	bl FUN_0205F41C
	mov r1, #0x64
	sub r5, r1, r0
	add r0, r5, #0
	mov r1, #0xa
	bl _s32_div_f
	cmp r0, #0
	bne _021E14CA
	mov r3, #1
	b _021E14DC
_021E14CA:
	add r0, r5, #0
	mov r1, #0x64
	bl _s32_div_f
	cmp r0, #0
	bne _021E14DA
	mov r3, #2
	b _021E14DC
_021E14DA:
	mov r3, #3
_021E14DC:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl BufferIntegerAsString
	add r0, r4, #0
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E14FA:
	mov r1, #8
	bl MOD05_021E1514
	b _021E150C
_021E1502:
	bl FreeToHeap
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021E150C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E1514
MOD05_021E1514: ; 0x021E1514
	str r1, [r0]
	bx lr

	thumb_func_start MOD05_021E1518
MOD05_021E1518: ; 0x021E1518
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_0205F41C
	cmp r0, #0x64
	bne _021E1538
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _021E1534
	mov r0, #1
	pop {r4, pc}
_021E1534:
	mov r0, #2
	pop {r4, pc}
_021E1538:
	mov r0, #0
	pop {r4, pc}

	thumb_func_start MOD05_021E153C
MOD05_021E153C: ; 0x021E153C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_02034B64
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x18]
	cmp r0, #0
	bls _021E1562
	ldr r3, [sp]
	add r1, r2, #0
_021E1556:
	ldr r0, [sp, #4]
	add r2, r2, #1
	str r1, [r3, #0x10]
	add r3, r3, #4
	cmp r2, r0
	blo _021E1556
_021E1562:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x38]
	bl GetPlayerXCoord
	add r4, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x38]
	bl FUN_0205532C
	sub r1, r4, #7
	str r1, [sp, #0x14]
	add r1, r4, #7
	str r1, [sp, #0x10]
	sub r1, r0, #7
	add r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r0, #0
	bge _021E1592
	mov r0, #0
	str r0, [sp, #0x14]
_021E1592:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _021E159C
	mov r0, #0
	str r0, [sp, #0xc]
_021E159C:
	ldr r0, [sp, #4]
	mov r6, #0
	cmp r0, #0
	bls _021E1622
	ldr r5, [sp]
_021E15A6:
	ldr r0, [sp]
	add r1, r6, #0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r4, r0, #0
	beq _021E161A
	bl FUN_02058488
	cmp r0, #8
	bhi _021E161A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E15CA: ; jump table
	.short _021E161A - _021E15CA - 2 ; case 0
	.short _021E15DC - _021E15CA - 2 ; case 1
	.short _021E15DC - _021E15CA - 2 ; case 2
	.short _021E161A - _021E15CA - 2 ; case 3
	.short _021E15DC - _021E15CA - 2 ; case 4
	.short _021E15DC - _021E15CA - 2 ; case 5
	.short _021E15DC - _021E15CA - 2 ; case 6
	.short _021E15DC - _021E15CA - 2 ; case 7
	.short _021E15DC - _021E15CA - 2 ; case 8
_021E15DC:
	add r0, r4, #0
	bl FUN_02058B2C
	add r7, r0, #0
	add r0, r4, #0
	bl FUN_02058B4C
	ldr r1, [sp, #0x14]
	cmp r7, r1
	blt _021E161A
	ldr r1, [sp, #0x10]
	cmp r7, r1
	bgt _021E161A
	ldr r1, [sp, #0xc]
	cmp r0, r1
	blt _021E161A
	ldr r1, [sp, #8]
	cmp r0, r1
	bgt _021E161A
	add r0, r4, #0
	bl FUN_02058480
	bl MOD05_021E1630
	cmp r0, #0
	bne _021E161A
	ldr r0, [sp, #0x18]
	str r4, [r5, #0x10]
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0x18]
_021E161A:
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r6, r0
	blo _021E15A6
_021E1622:
	mov r2, #0x11
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r2, r2, #4
	strh r1, [r0, r2]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}

	thumb_func_start MOD05_021E1630
MOD05_021E1630: ; 0x021E1630
	sub r0, #0x33
	cmp r0, #3
	bhi _021E164E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1642: ; jump table
	.short _021E164A - _021E1642 - 2 ; case 0
	.short _021E164A - _021E1642 - 2 ; case 1
	.short _021E164A - _021E1642 - 2 ; case 2
	.short _021E164A - _021E1642 - 2 ; case 3
_021E164A:
	mov r0, #1
	bx lr
_021E164E:
	mov r0, #0
	bx lr
	.balign 4, 0

	thumb_func_start MOD05_021E1654
MOD05_021E1654: ; 0x021E1654
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0xc]
	bl SavArray_Flags_get
	add r4, r0, #0
	bl FUN_0205F41C
	add r6, r0, #0
	add r0, r4, #0
	bl FUN_0205F43C
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	bl Sav2_Bag_get
	ldr r1, _021E16C4 ; =0x000001BB
	mov r2, #1
	mov r3, #4
	bl Bag_HasItem
	cmp r0, #1
	bne _021E1692
	cmp r6, #0x64
	bhs _021E1692
	add r1, r6, #1
	lsl r1, r1, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl FUN_0205F42C
_021E1692:
	add r0, r4, #0
	bl FUN_0205ED9C
	cmp r0, #1
	bne _021E16BE
	cmp r5, #0x64
	bhs _021E16AE
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl FUN_0205F44C
_021E16AE:
	cmp r5, #0x64
	bne _021E16BE
	add r0, r4, #0
	bl FUN_0205F408
	add r0, r7, #0
	bl MOD05_021E16C8
_021E16BE:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E16C4: .word 0x000001BB

	thumb_func_start MOD05_021E16C8
MOD05_021E16C8: ; 0x021E16C8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl FUN_02034B64
	add r7, r0, #0
	ldr r5, _021E16FC ; =0x00000000
	beq _021E16F8
_021E16D6:
	ldr r0, [r6, #0x34]
	add r1, r5, #0
	bl FUN_02058060
	add r4, r0, #0
	beq _021E16F2
	bl FUN_02058480
	cmp r0, #0x31
	bne _021E16F2
	add r0, r4, #0
	mov r1, #2
	bl MOD05_021E198C
_021E16F2:
	add r5, r5, #1
	cmp r5, r7
	blo _021E16D6
_021E16F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E16FC: .word 0x00000000

	thumb_func_start MOD05_021E1700
MOD05_021E1700: ; 0x021E1700
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl FUN_0205AEA4
	add r1, r0, #0
	ldr r0, _021E1720 ; =0x00000112
	ldrh r2, [r4, r0]
	add r2, r2, #1
	strh r2, [r4, r0]
	add r0, r4, #0
	bl MOD05_021E1724
	pop {r4, pc}
	nop
_021E1720: .word 0x00000112

	thumb_func_start MOD05_021E1724
MOD05_021E1724: ; 0x021E1724
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0xc
	bl AllocFromHeap
	add r4, r0, #0
	bne _021E173C
	bl GF_AssertFail
	pop {r4, r5, r6, pc}
_021E173C:
	ldr r0, _021E1750 ; =MOD05_021E1754
	str r5, [r4, #8]
	add r1, r4, #0
	mov r2, #0
	str r6, [r4, #4]
	bl FUN_0200CA44
	str r0, [r4]
	pop {r4, r5, r6, pc}
	nop
_021E1750: .word MOD05_021E1754

	thumb_func_start MOD05_021E1754
MOD05_021E1754: ; 0x021E1754
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl FUN_0205AEF0
	cmp r0, #1
	bne _021E178E
	ldr r1, [r4, #8]
	ldr r0, _021E1790 ; =0x00000112
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _021E1770
	bl GF_AssertFail
_021E1770:
	ldr r2, [r4, #8]
	ldr r0, _021E1790 ; =0x00000112
	ldrh r1, [r2, r0]
	sub r1, r1, #1
	strh r1, [r2, r0]
	ldr r0, [r4, #4]
	bl FUN_0205AEFC
	ldr r0, [r4]
	bl FUN_0200CAB4
	mov r0, #4
	add r1, r4, #0
	bl FreeToHeapExplicit
_021E178E:
	pop {r4, pc}
	.balign 4, 0
_021E1790: .word 0x00000112

	thumb_func_start MOD05_021E1794
MOD05_021E1794: ; 0x021E1794
	ldr r1, _021E179C ; =0x00000112
	ldrh r0, [r0, r1]
	bx lr
	nop
_021E179C: .word 0x00000112

	thumb_func_start MOD05_021E17A0
MOD05_021E17A0: ; 0x021E17A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0xc]
	bl SavArray_Flags_get
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #4
	mov r7, #0
	ldrh r0, [r5, r0]
	add r6, r7, #0
	cmp r0, #0
	ble _021E183C
	add r4, r5, #0
_021E17BE:
	ldr r0, [r4, #0x10]
	bl MOD05_021E1848
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl TrainerFlagCheck
	cmp r0, #0
	bne _021E17DE
	ldr r1, [r4, #0x10]
	ldr r2, _021E1840 ; =UNK05_021F6908
	add r0, r5, #0
	bl MOD05_021E1700
	mov r7, #1
	b _021E182E
_021E17DE:
	bl LCRandom
	mov r1, #0x64
	bl _s32_div_f
	cmp r1, #0x32
	bge _021E182E
	ldr r0, [r4, #0x10]
	bl MOD05_021E1978
	cmp r0, #0
	bne _021E182E
	ldr r0, [r4, #0x10]
	mov r1, #0x31
	bl MOD05_021E198C
	ldr r1, [r4, #0x10]
	ldr r2, _021E1844 ; =UNK05_021F6910
	add r0, r5, #0
	bl MOD05_021E1700
	ldr r0, [r5, #4]
	ldr r1, [r4, #0x10]
	mov r2, #0
	bl MOD05_021E1A30
	add r7, r0, #0
	beq _021E1826
	mov r1, #0x31
	bl MOD05_021E198C
	ldr r2, _021E1844 ; =UNK05_021F6910
	add r0, r5, #0
	add r1, r7, #0
	bl MOD05_021E1700
_021E1826:
	ldr r0, [sp]
	mov r7, #1
	bl FUN_0205ED7C
_021E182E:
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _021E17BE
_021E183C:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1840: .word UNK05_021F6908
_021E1844: .word UNK05_021F6910

	thumb_func_start MOD05_021E1848
MOD05_021E1848: ; 0x021E1848
	push {r3, lr}
	bl FUN_02058498
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl FUN_020395F4
	pop {r3, pc}

	thumb_func_start MOD05_021E1858
MOD05_021E1858: ; 0x021E1858
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r5, r2, #0
	bl MOD05_021E1978
	cmp r0, #0
	bne _021E186C
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E186C:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E189C
	add r5, r0, #0
	cmp r5, #0xff
	bne _021E187E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021E187E:
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E18BC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl MOD05_021E1908
	add r1, r0, #0
	add r0, r5, #0
	bl MOD05_021E1964
	pop {r3, r4, r5, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E189C
MOD05_021E189C: ; 0x021E189C
	ldr r3, _021E18B8 ; =UNK05_021F691C
	mov r2, #0
_021E18A0:
	ldrh r0, [r3]
	cmp r1, r0
	bne _021E18AC
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	bx lr
_021E18AC:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0xf0
	blo _021E18A0
	mov r0, #0xff
	bx lr
	.balign 4, 0
_021E18B8: .word UNK05_021F691C

	thumb_func_start MOD05_021E18BC
MOD05_021E18BC: ; 0x021E18BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0xc
	ldr r2, _021E1900 ; =UNK05_021F691C
	mul r0, r1
	add r0, r2, r0
	ldr r7, _021E1904 ; =0x0000FFFF
	mov r4, #1
	add r5, r0, #2
_021E18CE:
	ldrh r1, [r5]
	cmp r1, #0
	bne _021E18DC
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E18DC:
	cmp r1, r7
	beq _021E18F0
	add r0, r6, #0
	bl TrainerFlagCheck
	cmp r0, #0
	bne _021E18F0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021E18F0:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _021E18CE
	sub r0, r4, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E1900: .word UNK05_021F691C
_021E1904: .word 0x0000FFFF

	thumb_func_start MOD05_021E1908
MOD05_021E1908: ; 0x021E1908
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	add r4, r2, #0
	bl SavArray_Flags_get
	cmp r4, #0
	beq _021E192C
	add r1, r4, #0
	bl FUN_0205EEB8
	cmp r0, #0
	bne _021E192C
	add r0, r5, #0
	add r1, r4, #0
	bl MOD05_021E1930
	add r4, r0, #0
_021E192C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}

	thumb_func_start MOD05_021E1930
MOD05_021E1930: ; 0x021E1930
	sub r1, r1, #1
	lsl r1, r1, #0x10
	ldr r2, _021E195C ; =UNK05_021F691C
	lsr r3, r1, #0x10
	beq _021E1956
	mov r1, #0xc
	mul r1, r0
	add r2, r2, r1
	ldr r1, _021E1960 ; =0x0000FFFF
_021E1942:
	lsl r0, r3, #1
	ldrh r0, [r2, r0]
	cmp r0, r1
	beq _021E194E
	add r0, r3, #0
	bx lr
_021E194E:
	sub r0, r3, #1
	lsl r0, r0, #0x10
	lsr r3, r0, #0x10
	bne _021E1942
_021E1956:
	mov r0, #0
	bx lr
	nop
_021E195C: .word UNK05_021F691C
_021E1960: .word 0x0000FFFF

	thumb_func_start MOD05_021E1964
MOD05_021E1964: ; 0x021E1964
	mov r2, #0xc
	mul r2, r0
	ldr r0, _021E1974 ; =UNK05_021F691C
	lsl r1, r1, #1
	add r0, r0, r2
	ldrh r0, [r1, r0]
	bx lr
	nop
_021E1974: .word UNK05_021F691C

	thumb_func_start MOD05_021E1978
MOD05_021E1978: ; 0x021E1978
	push {r3, lr}
	bl FUN_02058480
	cmp r0, #0x31
	bne _021E1986
	mov r0, #1
	pop {r3, pc}
_021E1986:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E198C
MOD05_021E198C: ; 0x021E198C
	ldr r3, _021E1990 ; =FUN_02058E90
	bx r3
	.balign 4, 0
_021E1990: .word FUN_02058E90

	thumb_func_start MOD05_021E1994
MOD05_021E1994: ; 0x021E1994
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	beq _021E19DC
	add r0, r5, #0
	bl FUN_020584C4
	cmp r0, #0
	bne _021E19AA
	mov r4, #0xe
	b _021E19BC
_021E19AA:
	cmp r0, #1
	bne _021E19B2
	mov r4, #0xf
	b _021E19BC
_021E19B2:
	cmp r0, #2
	bne _021E19BA
	mov r4, #0x10
	b _021E19BC
_021E19BA:
	mov r4, #0x11
_021E19BC:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	bl MOD05_021E1A30
	cmp r0, #0
	beq _021E19D2
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	bl MOD05_021E198C
_021E19D2:
	lsl r1, r4, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl MOD05_021E198C
_021E19DC:
	pop {r4, r5, r6, pc}
	.balign 4, 0

	thumb_func_start MOD05_021E19E0
MOD05_021E19E0: ; 0x021E19E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl FUN_02034B64
	ldr r5, _021E1A2C ; =0x00000000
	add r7, r0, #0
	str r5, [sp]
	beq _021E1A1C
_021E19F0:
	ldr r0, [r6, #0x34]
	add r1, r5, #0
	bl FUN_02058060
	add r4, r0, #0
	beq _021E1A16
	bl FUN_02058854
	cmp r0, #1
	bne _021E1A10
	add r0, r4, #0
	bl FUN_02058914
	mov r0, #1
	str r0, [sp]
	b _021E1A16
_021E1A10:
	add r0, r4, #0
	bl FUN_02058908
_021E1A16:
	add r5, r5, #1
	cmp r5, r7
	blo _021E19F0
_021E1A1C:
	ldr r0, [sp]
	cmp r0, #0
	bne _021E1A26
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1A26:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E1A2C: .word 0x00000000

	thumb_func_start MOD05_021E1A30
MOD05_021E1A30: ; 0x021E1A30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	str r2, [sp, #4]
	bl FUN_02034B64
	add r7, r0, #0
	add r0, r4, #0
	bl FUN_02058498
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	bl FUN_020395F4
	str r0, [sp, #8]
	bl Field_TrainerIsDoubleBattle
	cmp r0, #0
	bne _021E1A60
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E1A60:
	mov r4, #0
	cmp r7, #0
	bls _021E1AD2
_021E1A66:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0x34]
	bl FUN_02058060
	add r5, r0, #0
	beq _021E1ACC
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _021E1A82
	bl FUN_02058480
	cmp r0, #0x31
	beq _021E1ACC
_021E1A82:
	add r0, r5, #0
	bl FUN_02058488
	cmp r0, #8
	bhi _021E1ACC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E1A98: ; jump table
	.short _021E1ACC - _021E1A98 - 2 ; case 0
	.short _021E1AAA - _021E1A98 - 2 ; case 1
	.short _021E1AAA - _021E1A98 - 2 ; case 2
	.short _021E1ACC - _021E1A98 - 2 ; case 3
	.short _021E1AAA - _021E1A98 - 2 ; case 4
	.short _021E1AAA - _021E1A98 - 2 ; case 5
	.short _021E1AAA - _021E1A98 - 2 ; case 6
	.short _021E1AAA - _021E1A98 - 2 ; case 7
	.short _021E1AAA - _021E1A98 - 2 ; case 8
_021E1AAA:
	add r0, r5, #0
	bl FUN_02058498
	add r6, r0, #0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl FUN_020395F4
	ldr r1, [sp, #0xc]
	cmp r1, r6
	beq _021E1ACC
	ldr r1, [sp, #8]
	cmp r1, r0
	bne _021E1ACC
	add sp, #0x10
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_021E1ACC:
	add r4, r4, #1
	cmp r4, r7
	blo _021E1A66
_021E1AD2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	.section .rodata

	.global UNK05_021F6908
UNK05_021F6908: ; 0x021F6908
	.word 0x0001004B, 0x000000FE

	.global UNK05_021F6910
UNK05_021F6910: ; 0x021F6910
	.word 0x00010001, 0x00010067, 0x000000FE

	.global UNK05_021F691C
UNK05_021F691C: ; 0x021F691C
	.byte 0x0E, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x00, 0x73, 0x02
	.byte 0x74, 0x02, 0xFF, 0xFF, 0x75, 0x02, 0x00, 0x00, 0x2C, 0x00, 0x2C, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2D, 0x00, 0xFF, 0xFF, 0x76, 0x02, 0x77, 0x02, 0xFF, 0xFF, 0x78, 0x02
	.byte 0x14, 0x00, 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x26, 0x00, 0xFF, 0xFF
	.byte 0x79, 0x02, 0x7A, 0x02, 0xFF, 0xFF, 0x7B, 0x02, 0x4A, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x7C, 0x02
	.byte 0xFF, 0xFF, 0x7D, 0x02, 0x4C, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x51, 0x00, 0x51, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x02, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x7E, 0x02, 0x2B, 0x02, 0x2B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2E, 0x00, 0xFF, 0xFF, 0x7F, 0x02, 0x80, 0x02, 0x81, 0x02, 0x00, 0x00
	.byte 0x38, 0x00, 0x38, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x00, 0xFF, 0xFF
	.byte 0x82, 0x02, 0x83, 0x02, 0x84, 0x02, 0x00, 0x00, 0x39, 0x00, 0x39, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x22, 0x00, 0x22, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x01, 0x85, 0x02
	.byte 0x86, 0x02, 0xFF, 0xFF, 0x87, 0x02, 0x00, 0x00, 0x84, 0x00, 0x84, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x85, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x8C, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x88, 0x02, 0x00, 0x00, 0x86, 0x00, 0x86, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x87, 0x00, 0x87, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x8D, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x89, 0x02, 0x00, 0x00
	.byte 0x57, 0x00, 0x57, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x01, 0x10, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x11, 0x01, 0x11, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x8A, 0x02, 0x00, 0x00
	.byte 0x7D, 0x01, 0x7D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7E, 0x01, 0x7E, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x00, 0x30, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x3A, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x8B, 0x02, 0xFF, 0xFF, 0x8C, 0x02
	.byte 0x19, 0x00, 0x19, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1A, 0x00, 0x1A, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1B, 0x00, 0xFF, 0xFF, 0x8D, 0x02, 0x8E, 0x02
	.byte 0xFF, 0xFF, 0x8F, 0x02, 0x1C, 0x00, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1D, 0x00, 0x1D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x1E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x1F, 0x00, 0xFF, 0xFF, 0x90, 0x02, 0x91, 0x02
	.byte 0xFF, 0xFF, 0x92, 0x02, 0x20, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x4B, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x49, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x93, 0x02, 0xFF, 0xFF, 0x94, 0x02, 0x15, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x95, 0x02, 0x2D, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x96, 0x02
	.byte 0x2E, 0x02, 0x2E, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x2F, 0x02, 0x2F, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x02, 0x30, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x42, 0x00, 0x42, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAA, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x97, 0x02, 0x00, 0x00, 0x16, 0x01, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x98, 0x02, 0xFF, 0xFF, 0x99, 0x02, 0x1A, 0x01, 0x1A, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x33, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9A, 0x02
	.byte 0x34, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9B, 0x02, 0x35, 0x02, 0x35, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x36, 0x02, 0x36, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x37, 0x02, 0x37, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x38, 0x02, 0x38, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x43, 0x00, 0x43, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAB, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x9C, 0x02, 0x00, 0x00, 0x1E, 0x01, 0x1E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x1F, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0x9D, 0x02, 0xFF, 0xFF, 0x9E, 0x02, 0x3D, 0x02, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x9F, 0x02, 0x3E, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xA0, 0x02, 0x3F, 0x02, 0x3F, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x02, 0x40, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x41, 0x02, 0x41, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x02, 0x42, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x77, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xA1, 0x02, 0xFF, 0xFF, 0xA2, 0x02
	.byte 0x20, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA3, 0x02, 0x47, 0x02, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA4, 0x02, 0x78, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xA5, 0x02
	.byte 0xFF, 0xFF, 0xA6, 0x02, 0x21, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA7, 0x02
	.byte 0x49, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xA8, 0x02, 0x22, 0x01, 0x22, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x23, 0x01, 0x23, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x24, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xA9, 0x02, 0xFF, 0xFF, 0xAA, 0x02
	.byte 0x16, 0x00, 0x16, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x17, 0x00, 0xFF, 0xFF
	.byte 0xAB, 0x02, 0xFF, 0xFF, 0xAC, 0x02, 0x00, 0x00, 0x18, 0x00, 0x18, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x2B, 0x00, 0x2B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5B, 0x00, 0x5B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x5C, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x5D, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6F, 0x00, 0x6F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x99, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xAD, 0x02, 0x00, 0x00, 0x9A, 0x00, 0x9A, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA8, 0x00, 0xA8, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xAC, 0x00, 0xAC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xAD, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xAE, 0x02, 0x00, 0x00, 0xAE, 0x00, 0xAE, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xAF, 0x00, 0xAF, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x41, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xAF, 0x02, 0xFF, 0xFF, 0xB0, 0x02, 0x26, 0x01, 0x26, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x79, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xB1, 0x02
	.byte 0xFF, 0xFF, 0xB2, 0x02, 0x54, 0x00, 0xFF, 0xFF, 0xB3, 0x02, 0xB4, 0x02, 0xFF, 0xFF, 0xB5, 0x02
	.byte 0x2C, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xB6, 0x02, 0x00, 0x00, 0x71, 0x00, 0x71, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x72, 0x00, 0x72, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x30, 0x01, 0x30, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x31, 0x01, 0x31, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB9, 0x01, 0xB9, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBA, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xB7, 0x02
	.byte 0xB8, 0x02, 0x00, 0x00, 0x31, 0x00, 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x82, 0x00, 0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x01, 0x32, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x33, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xB9, 0x02
	.byte 0xFF, 0xFF, 0xBA, 0x02, 0x34, 0x01, 0x34, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x2A, 0x00, 0x2A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x45, 0x00, 0x45, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x7E, 0x00, 0x7E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x7F, 0x00, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x80, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x81, 0x00, 0x81, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x94, 0x00, 0x94, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xBB, 0x02, 0x00, 0x00, 0x39, 0x01, 0x39, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4B, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xBC, 0x02, 0x4C, 0x02, 0x4C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x37, 0x00, 0x37, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x55, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xBD, 0x02, 0xFF, 0xFF, 0xBE, 0x02, 0x03, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0B, 0x00, 0xBF, 0x02, 0xC0, 0x02, 0xFF, 0xFF, 0xC1, 0x02, 0x00, 0x00
	.byte 0x0C, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x42, 0x01, 0xC2, 0x02
	.byte 0xC3, 0x02, 0xC4, 0x02, 0x00, 0x00, 0x00, 0x00, 0x43, 0x01, 0x43, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x12, 0x00, 0x12, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x13, 0x00, 0x13, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x24, 0x00, 0x24, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x25, 0x00, 0x25, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x27, 0x00, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x28, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x29, 0x00, 0x29, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x46, 0x01, 0x46, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xC3, 0x01, 0xFF, 0xFF, 0xC5, 0x02, 0xC6, 0x02, 0xFF, 0xFF, 0xC7, 0x02
	.byte 0x0D, 0x00, 0xC8, 0x02, 0xC9, 0x02, 0xFF, 0xFF, 0xCA, 0x02, 0x00, 0x00, 0x47, 0x01, 0xFF, 0xFF
	.byte 0xCB, 0x02, 0xCC, 0x02, 0xCD, 0x02, 0x00, 0x00, 0x48, 0x01, 0x48, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x11, 0x00, 0x11, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x23, 0x00, 0x23, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC8, 0x01, 0xCE, 0x02
	.byte 0xCF, 0x02, 0xFF, 0xFF, 0xD0, 0x02, 0x00, 0x00, 0x35, 0x00, 0xFF, 0xFF, 0xD1, 0x02, 0xD2, 0x02
	.byte 0xD3, 0x02, 0x00, 0x00, 0x58, 0x00, 0x58, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x59, 0x00, 0x59, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x5A, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x66, 0x00, 0x66, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x4C, 0x01, 0xFF, 0xFF, 0xD4, 0x02, 0xD5, 0x02, 0xD6, 0x02, 0x00, 0x00
	.byte 0x4D, 0x01, 0x4D, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x52, 0x00, 0x52, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4F, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xD7, 0x02, 0xD8, 0x02, 0x53, 0x00, 0xFF, 0xFF, 0xD9, 0x02, 0xDA, 0x02, 0xFF, 0xFF, 0xDB, 0x02
	.byte 0x5E, 0x00, 0xFF, 0xFF, 0xDC, 0x02, 0xDD, 0x02, 0xFF, 0xFF, 0xDE, 0x02, 0x5F, 0x00, 0x5F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4F, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xDF, 0x02, 0x50, 0x02, 0x50, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x51, 0x02, 0x51, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0xFF, 0xFF
	.byte 0xE0, 0x02, 0xE1, 0x02, 0xFF, 0xFF, 0xE2, 0x02, 0x61, 0x00, 0x61, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x52, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE3, 0x02
	.byte 0x53, 0x02, 0x53, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0x02, 0x54, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6E, 0x00, 0x6E, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB4, 0x00, 0xB4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x51, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xE4, 0x02, 0xE5, 0x02, 0x52, 0x01, 0x52, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE2, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xE6, 0x02, 0x62, 0x00, 0x62, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x63, 0x00, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE6, 0x01, 0xFF, 0xFF
	.byte 0xE7, 0x02, 0xE8, 0x02, 0xE9, 0x02, 0x00, 0x00, 0x46, 0x00, 0x46, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x47, 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x48, 0x00, 0x48, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x00, 0xFF, 0xFF
	.byte 0xEA, 0x02, 0xEB, 0x02, 0xEC, 0x02, 0x00, 0x00, 0x50, 0x00, 0x50, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x92, 0x00, 0x92, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x93, 0x00, 0x93, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x01, 0xE8, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE9, 0x01, 0xE9, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xEA, 0x01, 0xEA, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x5A, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xED, 0x02, 0xFF, 0xFF, 0xEE, 0x02, 0xEB, 0x01, 0xEB, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEC, 0x01, 0xEC, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x88, 0x00, 0x88, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x89, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xEF, 0x02, 0xF0, 0x02, 0x00, 0x00, 0x8E, 0x00, 0x8E, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x8F, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xF1, 0x02
	.byte 0xFF, 0xFF, 0xF2, 0x02, 0x8A, 0x00, 0x8A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x8B, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xF3, 0x02, 0xF4, 0x02, 0x00, 0x00, 0x90, 0x00, 0x90, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x91, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xF5, 0x02
	.byte 0xF6, 0x02, 0x00, 0x00, 0x67, 0x00, 0x67, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x68, 0x00, 0x68, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x9F, 0x00, 0x9F, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x00, 0xA0, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA1, 0x00, 0xA1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA6, 0x00, 0xA6, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xB7, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF7, 0x02, 0xB8, 0x00, 0xB8, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB9, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF8, 0x02
	.byte 0xBA, 0x00, 0xBA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB, 0x00, 0xBB, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBC, 0x00, 0xBC, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x55, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xF9, 0x02
	.byte 0x56, 0x02, 0x56, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x57, 0x02, 0x57, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x58, 0x02, 0x58, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x69, 0x00, 0x69, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x6A, 0x00, 0x6A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA2, 0x00, 0xA2, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA3, 0x00, 0xA3, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xA4, 0x00, 0xA4, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xA7, 0x00, 0xA7, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBD, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFA, 0x02, 0xBE, 0x00, 0xBE, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xBF, 0x00, 0xBF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0xC0, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFB, 0x02, 0xC1, 0x00, 0xC1, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x00, 0xC2, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xEE, 0x01, 0xEE, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x59, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFC, 0x02, 0x5A, 0x02, 0x5A, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x5B, 0x02, 0x5B, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x5C, 0x02, 0x5C, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0xFD, 0x02, 0xFE, 0x02, 0xFF, 0x02, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x02, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x21, 0x00, 0x21, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x63, 0x01, 0x00, 0x03
	.byte 0x01, 0x03, 0xFF, 0xFF, 0x02, 0x03, 0x00, 0x00, 0x64, 0x01, 0x64, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x6B, 0x00, 0xFF, 0xFF, 0x03, 0x03, 0xFF, 0xFF, 0x04, 0x03, 0x00, 0x00
	.byte 0x66, 0x01, 0x66, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x67, 0x01, 0x67, 0x01
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6C, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x05, 0x03
	.byte 0x07, 0x03, 0x00, 0x00, 0x68, 0x01, 0x68, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x69, 0x01, 0x69, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x44, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x06, 0x03, 0xFF, 0xFF, 0x08, 0x03, 0x6A, 0x01, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0x09, 0x03, 0x5D, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x0A, 0x03
