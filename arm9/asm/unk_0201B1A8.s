	.include "asm/macros.inc"
	.include "global.inc"

	.extern NNS_G3dGlb
	.extern NNS_G3dGlb
	.extern NNS_GfdDefaultFuncAllocPlttVram
	.extern NNS_GfdDefaultFuncAllocTexVram
	.extern NNS_GfdDefaultFuncFreePlttVram
	.extern NNS_GfdDefaultFuncFreeTexVram

	.section .bss

	.global UNK_021C4D44
UNK_021C4D44: ; 0x021C4D44
	.space 0x4

	.text

	thumb_func_start sub_0201B1A8
sub_0201B1A8: ; 0x0201B1A8
	push {r3-r5, lr}
	add r5, r3, #0x0
	add r4, r2, #0x0
	bl AllocAndReadFile
	str r0, [r5, #0x0]
	bl NNS_G3dGetTex
	cmp r0, #0x0
	beq _0201B1D2
	bl sub_0201B254
	cmp r0, #0x0
	bne _0201B1D2
	ldr r0, [r5, #0x0]
	ldr r1, [r0, #0x8]
	bl DC_FlushRange
	ldr r0, [r5, #0x0]
	bl NNS_G3dResDefaultSetup
_0201B1D2:
	ldr r0, [r5, #0x0]
	bl NNS_G3dGetMdlSet
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start sub_0201B1E4
sub_0201B1E4: ; 0x0201B1E4
	push {r3-r5, lr}
	add r5, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r5, #0x0]
	bl NNS_G3dGetTex
	cmp r0, #0x0
	beq _0201B20A
	bl sub_0201B254
	cmp r0, #0x0
	bne _0201B20A
	ldr r0, [r5, #0x0]
	ldr r1, [r0, #0x8]
	bl DC_FlushRange
	ldr r0, [r5, #0x0]
	bl NNS_G3dResDefaultSetup
_0201B20A:
	ldr r0, [r5, #0x0]
	bl NNS_G3dGetMdlSet
	ldrh r1, [r0, #0xe]
	add r1, r0, r1
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x0]
	pop {r3-r5, pc}

	thumb_func_start sub_0201B21C
sub_0201B21C: ; 0x0201B21C
	push {r3-r5, lr}
	add r4, r3, #0x0
	add r5, r2, #0x0
	ldr r3, [sp, #0x10]
	add r2, r4, #0x0
	bl sub_0201B1A8
	ldr r1, [r4, #0x0]
	add r0, r5, #0x0
	bl NNS_G3dRenderObjInit
	pop {r3-r5, pc}

	thumb_func_start sub_0201B234
sub_0201B234: ; 0x0201B234
	push {r3-r5, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r1, r2, #0x0
	bl sub_0201B1E4
	cmp r4, #0x0
	bne _0201B24A
	bl GF_AssertFail
_0201B24A:
	ldr r1, [r4, #0x0]
	add r0, r5, #0x0
	bl NNS_G3dRenderObjInit
	pop {r3-r5, pc}

	thumb_func_start sub_0201B254
sub_0201B254: ; 0x0201B254
	ldrh r2, [r0, #0x10]
	mov r1, #0x1
	tst r2, r1
	bne _0201B262
	ldrh r0, [r0, #0x20]
	tst r0, r1
	beq _0201B266
_0201B262:
	mov r0, #0x1
	bx lr
_0201B266:
	mov r0, #0x0
	bx lr
	.balign 4

	thumb_func_start sub_0201B26C
sub_0201B26C: ; 0x0201B26C
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _0201B2A0 ; =NNS_G3dGlb + 0xBC
	add r0, r4, #0x0
	bl MI_Copy36B
	ldr r1, _0201B2A4 ; =NNS_G3dGlb + 0x80
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, r6, #0x0
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	add r0, r5, #0x0
	bl NNS_G3dDraw
	pop {r4-r6, pc}
	nop
_0201B2A0: .word NNS_G3dGlb + 0xBC
_0201B2A4: .word NNS_G3dGlb + 0x80

	thumb_func_start sub_0201B2A8
sub_0201B2A8: ; 0x0201B2A8
	push {r4-r6, lr}
	add r5, r0, #0x0
	add r0, r1, #0x0
	add r4, r2, #0x0
	add r6, r3, #0x0
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _0201B2E4 ; =NNS_G3dGlb + 0xBC
	add r0, r4, #0x0
	bl MI_Copy36B
	ldr r1, _0201B2E8 ; =NNS_G3dGlb + 0x80
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
	add r0, r6, #0x0
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	mov r1, #0x0
	ldr r0, [r5, #0x4]
	add r2, r1, #0x0
	mov r3, #0x1
	bl NNS_G3dDraw1Mat1Shp
	bl NNS_G3dGeFlushBuffer
	pop {r4-r6, pc}
	.balign 4
_0201B2E4: .word NNS_G3dGlb + 0xBC
_0201B2E8: .word NNS_G3dGlb + 0x80

	thumb_func_start sub_0201B2EC
sub_0201B2EC: ; 0x0201B2EC
	push {r3, lr}
	sub sp, #0x8
	mov r1, #0x4
	str r1, [sp, #0x0]
	ldr r1, _0201B30C ; =sub_0201B314
	mov r2, #0x2
	str r1, [sp, #0x4]
	mov r1, #0x0
	add r3, r1, #0x0
	bl sub_02022318
	ldr r1, _0201B310 ; =UNK_021C4D44
	str r0, [r1, #0x0]
	add sp, #0x8
	pop {r3, pc}
	nop
_0201B30C: .word sub_0201B314
_0201B310: .word UNK_021C4D44

	thumb_func_start sub_0201B314
sub_0201B314: ; 0x0201B314
	push {r3, lr}
	mov r0, #0x1
	add r1, r0, #0x0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0201B380 ; =0x04000008
	mov r1, #0x3
	ldrh r2, [r0, #0x0]
	bic r2, r1
	mov r1, #0x1
	orr r1, r2
	strh r1, [r0, #0x0]
	add r0, #0x58
	ldrh r2, [r0, #0x0]
	ldr r1, _0201B384 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0, #0x0]
	add r2, r1, #0x2
	ldrh r3, [r0, #0x0]
	add r1, r1, #0x2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0, #0x0]
	ldrh r3, [r0, #0x0]
	ldr r2, _0201B388 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0, #0x0]
	ldrh r3, [r0, #0x0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #0x8
	orr r1, r3
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
	ldr r2, _0201B38C ; =0x00007FFF
	add r1, r0, #0x0
	mov r3, #0x3f
	str r0, [sp, #0x0]
	bl G3X_SetClearColor
	ldr r1, _0201B390 ; =0xBFFF0000
	ldr r0, _0201B394 ; =0x04000580
	str r1, [r0, #0x0]
	pop {r3, pc}
	.balign 4
_0201B380: .word 0x04000008
_0201B384: .word 0xFFFFCFFD
_0201B388: .word 0x0000CFFB
_0201B38C: .word 0x00007FFF
_0201B390: .word 0xBFFF0000
_0201B394: .word 0x04000580

	thumb_func_start sub_0201B398
sub_0201B398: ; 0x0201B398
	ldr r0, _0201B3A0 ; =UNK_021C4D44
	ldr r3, _0201B3A4 ; =sub_020223BC
	ldr r0, [r0, #0x0]
	bx r3
	.balign 4
_0201B3A0: .word UNK_021C4D44
_0201B3A4: .word sub_020223BC

	thumb_func_start sub_0201B3A8
sub_0201B3A8: ; 0x0201B3A8
	push {r4, lr}
	add r4, r1, #0x0
	bl NNS_G3dGetMdlSet
	cmp r4, #0x0
	beq _0201B3BE
	add r1, r4, #0x0
	bl NNS_G3dBindMdlSet
	mov r0, #0x1
	pop {r4, pc}
_0201B3BE:
	mov r0, #0x0
	pop {r4, pc}
	.balign 4

	thumb_func_start sub_0201B3C4
sub_0201B3C4: ; 0x0201B3C4
	push {r3-r7, lr}
	sub sp, #0x10
	add r5, r0, #0x0
	bne _0201B3D2
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B3D2:
	mov r1, #0x0
	str r1, [r5, #0x8]
	mov r1, #0x1
	str r1, [sp, #0x8]
	str r1, [sp, #0x4]
	str r1, [sp, #0x0]
	cmp r5, #0x0
	beq _0201B4D0
	bl NNS_G3dTexGetRequiredSize
	add r6, r0, #0x0
	add r0, r5, #0x0
	bl NNS_G3dTex4x4GetRequiredSize
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl NNS_G3dPlttGetRequiredSize
	str r0, [sp, #0xc]
	cmp r6, #0x0
	beq _0201B412
	ldr r3, _0201B4D8 ; =NNS_GfdDefaultFuncAllocTexVram
	mov r1, #0x0
	ldr r3, [r3, #0x0]
	add r0, r6, #0x0
	add r2, r1, #0x0
	blx r3
	add r7, r0, #0x0
	bne _0201B414
	mov r0, #0x0
	str r0, [sp, #0x8]
	b _0201B414
_0201B412:
	mov r7, #0x0
_0201B414:
	cmp r4, #0x0
	beq _0201B42E
	ldr r3, _0201B4D8 ; =NNS_GfdDefaultFuncAllocTexVram
	add r0, r4, #0x0
	ldr r3, [r3, #0x0]
	mov r1, #0x1
	mov r2, #0x0
	blx r3
	add r6, r0, #0x0
	bne _0201B430
	mov r0, #0x0
	str r0, [sp, #0x4]
	b _0201B430
_0201B42E:
	mov r6, #0x0
_0201B430:
	ldr r0, [sp, #0xc]
	cmp r0, #0x0
	beq _0201B450
	ldr r3, _0201B4DC ; =NNS_GfdDefaultFuncAllocPlttVram
	mov r1, #0x2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0x0]
	and r1, r2
	mov r2, #0x0
	blx r3
	add r4, r0, #0x0
	bne _0201B452
	mov r0, #0x0
	str r0, [sp, #0x0]
	b _0201B452
_0201B450:
	mov r4, #0x0
_0201B452:
	ldr r0, [sp, #0x8]
	cmp r0, #0x0
	bne _0201B46E
	ldr r1, _0201B4E0 ; =NNS_GfdDefaultFuncFreeTexVram
	add r0, r7, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B468
	bl GF_AssertFail
_0201B468:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B46E:
	ldr r0, [sp, #0x4]
	cmp r0, #0x0
	bne _0201B48A
	ldr r1, _0201B4E0 ; =NNS_GfdDefaultFuncFreeTexVram
	add r0, r6, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B484
	bl GF_AssertFail
_0201B484:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B48A:
	ldr r0, [sp, #0x0]
	cmp r0, #0x0
	bne _0201B4A6
	ldr r1, _0201B4E4 ; =NNS_GfdDefaultFuncFreePlttVram
	add r0, r4, #0x0
	ldr r1, [r1, #0x0]
	blx r1
	cmp r0, #0x0
	beq _0201B4A0
	bl GF_AssertFail
_0201B4A0:
	add sp, #0x10
	mov r0, #0x0
	pop {r3-r7, pc}
_0201B4A6:
	add r0, r5, #0x0
	add r1, r7, #0x0
	add r2, r6, #0x0
	bl NNS_G3dTexSetTexKey
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl NNS_G3dPlttSetPlttKey
	ldr r1, [r5, #0x4]
	add r0, r5, #0x0
	bl DC_FlushRange
	add r0, r5, #0x0
	mov r1, #0x1
	bl NNS_G3dTexLoad
	add r0, r5, #0x0
	mov r1, #0x1
	bl NNS_G3dPlttLoad
_0201B4D0:
	mov r0, #0x1
	add sp, #0x10
	pop {r3-r7, pc}
	nop
_0201B4D8: .word NNS_GfdDefaultFuncAllocTexVram
_0201B4DC: .word NNS_GfdDefaultFuncAllocPlttVram
_0201B4E0: .word NNS_GfdDefaultFuncFreeTexVram
_0201B4E4: .word NNS_GfdDefaultFuncFreePlttVram
