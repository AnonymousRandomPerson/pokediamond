	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	thumb_func_start MOD05_021F6360
MOD05_021F6360: ; 0x021F6360
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl FUN_02046528
	str r0, [sp]
	add r0, r7, #0
	bl FUN_0204652C
	add r6, r0, #0
	add r0, r7, #0
	bl FUN_02046530
	add r4, r0, #0
	ldr r0, [r4]
	ldr r5, [r6, #4]
	cmp r0, #5
	bhi _021F6424
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F638E: ; jump table
	.short _021F639A - _021F638E - 2 ; case 0
	.short _021F63AC - _021F638E - 2 ; case 1
	.short _021F63CC - _021F638E - 2 ; case 2
	.short _021F63EA - _021F638E - 2 ; case 3
	.short _021F6402 - _021F638E - 2 ; case 4
	.short _021F6414 - _021F638E - 2 ; case 5
_021F639A:
	mov r0, #0xb
	mov r1, #8
	bl AllocFromHeapAtEnd
	str r0, [r6, #4]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F6424
_021F63AC:
	bl MOD05_021F57EC
	add r6, r0, #0
	mov r0, #0xb
	add r1, r6, #0
	bl AllocFromHeapAtEnd
	str r0, [r5, #4]
	mov r1, #0
	add r2, r6, #0
	bl memset
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F6424
_021F63CC:
	ldr r0, [sp]
	ldr r0, [r0, #0x38]
	bl FUN_020553E8
	add r3, r0, #0
	ldr r0, [sp]
	ldr r2, [r6]
	mov r1, #0
	bl MOD06_0224666C
	str r0, [r5]
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F6424
_021F63EA:
	ldr r0, [r5]
	bl MOD06_022466A0
	cmp r0, #0
	beq _021F6424
	ldr r0, [r5]
	bl MOD06_022466AC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F6424
_021F6402:
	ldr r1, _021F6428 ; =MOD05_021F57F0
	ldr r2, [r5, #4]
	add r0, r7, #0
	bl FUN_0204640C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _021F6424
_021F6414:
	add r0, r5, #0
	bl FreeToHeap
	add r0, r6, #0
	bl FreeToHeap
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F6424:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021F6428: .word MOD05_021F57F0
