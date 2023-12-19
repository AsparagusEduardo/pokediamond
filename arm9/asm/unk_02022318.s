	.include "asm/macros.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_02022318
sub_02022318: ; 0x02022318
	push {r3-r7, lr}
	sub sp, #0x8
	add r7, r1, #0x0
	mov r1, #0xc
	add r6, r0, #0x0
	add r5, r2, #0x0
	str r3, [sp, #0x4]
	bl AllocFromHeap
	add r4, r0, #0x0
	str r6, [r4, #0x0]
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r1, #0x2
	ldr r0, _020223B8 ; =0x04000540
	cmp r7, #0x0
	str r1, [r0, #0x0]
	bne _02022364
	lsl r0, r5, #0x7
	bl NNS_GfdGetLnkTexVramManagerWorkSize
	add r6, r0, #0x0
	ldr r0, [r4, #0x0]
	add r1, r6, #0x0
	bl AllocFromHeap
	str r0, [r4, #0x8]
	mov r0, #0x1
	str r0, [sp, #0x0]
	ldr r2, [r4, #0x8]
	lsl r0, r5, #0x11
	mov r1, #0x0
	add r3, r6, #0x0
	bl NNS_GfdInitLnkTexVramManager
	b _0202236E
_02022364:
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1
	bl NNS_GfdInitFrmTexVramManager
_0202236E:
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bne _02022398
	ldr r0, [sp, #0x20]
	lsl r0, r0, #0x8
	bl NNS_GfdGetLnkPlttVramManagerWorkSize
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	add r1, r5, #0x0
	bl AllocFromHeap
	str r0, [r4, #0x4]
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x4]
	lsl r0, r0, #0xd
	add r2, r5, #0x0
	mov r3, #0x1
	bl NNS_GfdInitLnkPlttVramManager
	b _020223A4
_02022398:
	ldr r0, [sp, #0x20]
	mov r1, #0x1
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x10
	bl NNS_GfdInitFrmTexVramManager
_020223A4:
	ldr r0, [sp, #0x24]
	cmp r0, #0x0
	beq _020223AE
	blx r0
	b _020223B2
_020223AE:
	bl sub_020223D4
_020223B2:
	add r0, r4, #0x0
	add sp, #0x8
	pop {r3-r7, pc}
	.balign 4
_020223B8: .word 0x04000540

	thumb_func_start sub_020223BC
sub_020223BC: ; 0x020223BC
	push {r4, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0x4]
	bl FreeToHeap
	ldr r0, [r4, #0x8]
	bl FreeToHeap
	add r0, r4, #0x0
	bl FreeToHeap
	pop {r4, pc}

	thumb_func_start sub_020223D4
sub_020223D4: ; 0x020223D4
	push {r3, lr}
	mov r0, #0x1
	add r1, r0, #0x0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02022438 ; =0x04000008
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	strh r2, [r0, #0x0]
	add r0, #0x58
	ldrh r2, [r0, #0x0]
	ldr r1, _0202243C ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0, #0x0]
	ldrh r1, [r0, #0x0]
	ldr r2, _02022440 ; =0x0000CFEF
	and r1, r2
	strh r1, [r0, #0x0]
	add r1, r2, #0x0
	ldrh r3, [r0, #0x0]
	add r1, #0xc
	and r1, r3
	strh r1, [r0, #0x0]
	add r1, r2, #0x0
	ldrh r3, [r0, #0x0]
	add r1, #0x8
	sub r2, #0x10
	and r1, r3
	strh r1, [r0, #0x0]
	ldrh r1, [r0, #0x0]
	and r1, r2
	strh r1, [r0, #0x0]
	mov r0, #0x0
	add r1, r0, #0x0
	add r2, r0, #0x0
	add r3, r0, #0x0
	bl G3X_SetFog
	mov r0, #0x0
	ldr r2, _02022444 ; =0x00007FFF
	add r1, r0, #0x0
	mov r3, #0x3f
	str r0, [sp, #0x0]
	bl G3X_SetClearColor
	ldr r1, _02022448 ; =0xBFFF0000
	ldr r0, _0202244C ; =0x04000580
	str r1, [r0, #0x0]
	pop {r3, pc}
	.balign 4
_02022438: .word 0x04000008
_0202243C: .word 0xFFFFCFFD
_02022440: .word 0x0000CFEF
_02022444: .word 0x00007FFF
_02022448: .word 0xBFFF0000
_0202244C: .word 0x04000580
