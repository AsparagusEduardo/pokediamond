	.include "asm/macros.inc"
	.include "global.inc"
	.section .text
	.balign 4, 0

	thumb_func_start ov86_021D74E0
ov86_021D74E0: ; 0x021D74E0
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x54
	lsl r2, r2, #0x10
	bl CreateHeap
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0x54
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x44
	add r4, r0, #0
	bl memset
	mov r0, #0x54
	str r0, [r4]
	add r0, r5, #0
	bl OverlayManager_GetField18
	ldr r1, [r0]
	str r1, [r4, #8]
	ldr r0, [r0, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl Save_PlayerData_GetProfileAddr
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200E3A0
	mov r0, #1
	mov r1, #0
	bl sub_0200E3A0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	mov r0, #0
	add r1, r0, #0
	bl Main_SetHBlankIntrCB
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D7580 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2]
	ldr r2, _021D7584 ; =0x04001000
	ldr r1, [r2]
	and r0, r1
	str r0, [r2]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	add r0, r4, #0
	bl ov86_021D76EC
	add r0, r4, #0
	bl ov86_021D78D4
	ldr r0, _021D7588 ; =ov86_021D76E0
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	bl GfGfx_BothDispOn
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D7580: .word 0xFFFFE0FF
_021D7584: .word 0x04001000
_021D7588: .word ov86_021D76E0
	thumb_func_end ov86_021D74E0

	thumb_func_start ov86_021D758C
ov86_021D758C: ; 0x021D758C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r5]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bhi _021D76A0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D75AC: ; jump table
	.short _021D75B8 - _021D75AC - 2 ; case 0
	.short _021D7614 - _021D75AC - 2 ; case 1
	.short _021D7626 - _021D75AC - 2 ; case 2
	.short _021D7638 - _021D75AC - 2 ; case 3
	.short _021D765C - _021D75AC - 2 ; case 4
	.short _021D7696 - _021D75AC - 2 ; case 5
_021D75B8:
	bl ov86_021D7984
	add r0, r4, #0
	bl ov86_021D79D4
	add r0, r4, #0
	bl ov86_021D7B80
	add r0, r6, #0
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #7
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #1
	str r0, [r5]
	b _021D76A0
_021D7614:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021D76A0
	add r0, r6, #0
	str r0, [r4, #0x40]
	mov r0, #2
	str r0, [r5]
	b _021D76A0
_021D7626:
	ldr r0, [r4, #0x40]
	cmp r0, #0x3c
	bge _021D7632
	add r0, r0, #1
	str r0, [r4, #0x40]
	b _021D76A0
_021D7632:
	mov r0, #3
	str r0, [r5]
	b _021D76A0
_021D7638:
	mov r2, #0x3c
	ldrsh r3, [r4, r2]
	add r1, r2, #0
	sub r1, #0xfc
	cmp r3, r1
	ble _021D764E
	sub r1, r3, #4
	strh r1, [r4, #0x3c]
	bl ov86_021D7990
	b _021D76A0
_021D764E:
	sub r2, #0xfc
	strh r2, [r4, #0x3c]
	bl ov86_021D7990
	mov r0, #4
	str r0, [r5]
	b _021D76A0
_021D765C:
	ldr r0, _021D76A8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D7678
	mov r0, #2
	and r0, r1
	cmp r0, #2
	beq _021D7678
	ldr r0, _021D76AC ; =gSystem + 0x40
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _021D76A0
_021D7678:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	mov r0, #5
	str r0, [r5]
	b _021D76A0
_021D7696:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _021D76A0
	mov r6, #1
_021D76A0:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D76A8: .word gSystem
_021D76AC: .word gSystem + 0x40
	thumb_func_end ov86_021D758C

	thumb_func_start ov86_021D76B0
ov86_021D76B0: ; 0x021D76B0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r6, r0, #0
	ldr r4, [r6]
	bl ov86_021D7964
	add r0, r6, #0
	bl ov86_021D7858
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	add r0, r5, #0
	bl OverlayManager_FreeData
	add r0, r4, #0
	bl DestroyHeap
	mov r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov86_021D76B0

	thumb_func_start ov86_021D76E0
ov86_021D76E0: ; 0x021D76E0
	ldr r3, _021D76E8 ; =sub_0201AB60
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021D76E8: .word DoScheduledBgGpuUpdates
	thumb_func_end ov86_021D76E0

	thumb_func_start ov86_021D76EC
ov86_021D76EC: ; 0x021D76EC
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r5, _021D784C ; =0x021D7CBC
	add r4, r0, #0
	add r3, sp, #0x2c
	mov r2, #5
_021D76F8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D76F8
	add r0, sp, #0x2c
	bl GfGfx_SetBanks
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0x1c
	ldr r5, _021D7850 ; =0x021D7C90
	str r0, [r4, #0x10]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021D7854 ; =0x021D7CA0
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r3, #4
	strb r3, [r0, #0x13]
	lsl r3, r3, #0xa
	str r3, [sp, #8]
	mov r3, #2
	strb r3, [r0, #0x10]
	ldr r0, [r4, #0x10]
	add r3, r1, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	mov r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r2, #1
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r1, #4
	mov r3, #0
	add r0, sp, #0
	strb r3, [r0, #0x12]
	strb r1, [r0, #0x13]
	lsl r2, r1, #0xa
	str r2, [sp, #8]
	mov r2, #2
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	add r2, sp, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	mov r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r2, #1
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #0
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	add sp, #0x54
	pop {r4, r5, pc}
	.align 2, 0
_021D784C: .word ov86_021D7CBC
_021D7850: .word ov86_021D7C90
_021D7854: .word ov86_021D7CA0
	thumb_func_end ov86_021D76EC

	thumb_func_start ov86_021D7858
ov86_021D7858: ; 0x021D7858
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #1
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #4
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #0
	bl ToggleBgLayer
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x10]
	bl FreeToHeap
	pop {r4, pc}
	thumb_func_end ov86_021D7858

	thumb_func_start ov86_021D78D4
ov86_021D78D4: ; 0x021D78D4
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _021D7960 ; =0x021D7C88
	add r4, r0, #0
	ldrh r2, [r1]
	add r0, sp, #8
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	bl ResetAllTextPrinters
	mov r0, #1
	ldr r3, [r4]
	mov r1, #0x1a
	add r2, r0, #0
	bl NewMsgDataFromNarc
	str r0, [r4, #0x34]
	ldr r0, [r4]
	bl MessageFormat_New
	str r0, [r4, #0x38]
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x14
	add r2, sp, #8
	bl AddWindow
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	add r3, r1, #0
	bl FillWindowPixelRect
	mov r1, #4
	add r0, sp, #8
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x24
	add r2, sp, #8
	bl AddWindow
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	add r4, #0x24
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl FillWindowPixelRect
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D7960: .word ov86_021D7C88
	thumb_func_end ov86_021D78D4

	thumb_func_start ov86_021D7964
ov86_021D7964: ; 0x021D7964
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x24
	bl RemoveWindow
	add r0, r4, #0
	add r0, #0x14
	bl RemoveWindow
	ldr r0, [r4, #0x38]
	bl MessageFormat_Delete
	ldr r0, [r4, #0x34]
	bl DestroyMsgData
	pop {r4, pc}
	thumb_func_end ov86_021D7964

	thumb_func_start ov86_021D7984
ov86_021D7984: ; 0x021D7984
	ldr r3, _021D798C ; =ov86_021D7990
	mov r1, #0
	strh r1, [r0, #0x3c]
	bx r3
	.align 2, 0
_021D798C: .word ov86_021D7990
	thumb_func_end ov86_021D7984

	thumb_func_start ov86_021D7990
ov86_021D7990: ; 0x021D7990
	push {r4, lr}
	add r4, r0, #0
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	bl BgSetPosTextAndCommit
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	add r3, #0xc0
	bl BgSetPosTextAndCommit
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #3
	bl BgSetPosTextAndCommit
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #4
	mov r2, #3
	add r3, #0xc0
	bl BgSetPosTextAndCommit
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov86_021D7990

	thumb_func_start ov86_021D79D4
ov86_021D79D4: ; 0x021D79D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D79F4
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x14]
	mov r0, #8
	mov r7, #0xa
	str r0, [sp, #0x10]
	mov r6, #0
	mov r4, #4
	b _021D7A06
_021D79F4:
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #9
	mov r7, #0xb
	str r0, [sp, #0x10]
	mov r6, #1
	mov r4, #5
_021D7A06:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #3
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #3
	bl GfGfxLoader_LoadCharData
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	mov r2, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	mov r0, #0x84
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #7
	bl GfGfxLoader_LoadScrnData
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #7
	bl GfGfxLoader_LoadCharData
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #4
	mov r3, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #1
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl BgCommitTilemapBufferToVram
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #1
	bl GfGfxLoader_LoadCharData
	mov r3, #0x20
	str r3, [sp]
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #5
	bl GfGfxLoader_LoadScrnData
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl BgTilemapRectChangePalette
	ldr r0, [r5, #0x10]
	mov r1, #5
	bl BgCommitTilemapBufferToVram
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #5
	bl GfGfxLoader_LoadCharData
	mov r3, #0x20
	str r3, [sp]
	ldr r0, [r5]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #4
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	ldr r3, [r5]
	mov r1, #0x20
	add r2, r0, #0
	bl BG_ClearCharDataRange
	ldr r3, [r5]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r2, [r5]
	mov r0, #0
	mov r1, #0x40
	bl LoadFontPal0
	ldr r2, [r5]
	mov r0, #4
	mov r1, #0x40
	bl LoadFontPal0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov86_021D79D4

	thumb_func_start ov86_021D7B80
ov86_021D7B80: ; 0x021D7B80
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r5]
	lsl r0, r0, #8
	bl String_New
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	add r2, r6, #0
	bl ReadMsgDataIntoString
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0xc]
	mov r1, #0
	bl BufferPlayersName
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	add r2, r6, #0
	bl StringExpandPlaceholders
	mov r0, #0x20
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterized2
	mov r0, #0x20
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x24
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterized2
	add r0, r6, #0
	bl String_Delete
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D7C00
	mov r1, #1
	b _021D7C02
_021D7C00:
	mov r1, #2
_021D7C02:
	ldr r0, [r5, #0x34]
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r3, #0x40
	str r3, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterized2
	mov r3, #0x40
	str r3, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x24
	add r2, r4, #0
	bl AddTextPrinterParameterized2
	ldr r0, [r5, #0x34]
	mov r1, #3
	add r2, r4, #0
	bl ReadMsgDataIntoString
	mov r0, #0x90
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	mov r3, #0x8a
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterized2
	mov r0, #0x90
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D7C84 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r5, #0x24
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x8a
	str r1, [sp, #0xc]
	bl AddTextPrinterParameterized2
	add r0, r4, #0
	bl String_Delete
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D7C84: .word 0x00010200
	thumb_func_end ov86_021D7B80

	.rodata
	.global ov86_021D7C88
ov86_021D7C88: ; 0x021D7C88
	.byte 0x00, 0x00, 0x00, 0x20, 0x18, 0x02, 0x01, 0x00

	.global ov86_021D7C90
ov86_021D7C90: ; 0x021D7C90
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ov86_021D7CA0
ov86_021D7CA0: ; 0x021D7CA0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global ov86_021D7CBC
ov86_021D7CBC: ; 0x021D7CBC
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
	.bss
