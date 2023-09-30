	.include "asm/macros.inc"
	.include "global.inc"

	.section .rodata

	.global UNK_020F43E4
UNK_020F43E4: ; 0x020F43E4
	.word sub_02042F10, sub_02042F6C, sub_02043274, sub_020432B4
	.word sub_02042F10, sub_020432C0, sub_020432C8, sub_020432B4
	.word sub_02043308, sub_02043330, sub_02043358, sub_02043394
	.word sub_020433C4, sub_020433C8, sub_020433DC, sub_02043430
	.word sub_0204343C, sub_02043454, sub_0204346C, sub_020434A4
	.word sub_020434B0, sub_020434E8, sub_02043538, sub_02043594
	.word sub_02042F10, sub_02042F28, sub_02042F48, sub_020432B4
	.word sub_020435A0, sub_020435C4, sub_020435F8, sub_02043634
	.word sub_02043660, sub_02043684, sub_020436B8, sub_020436F0
	.word sub_0204371C, sub_02043740, sub_02043774, sub_020437B0
	.word sub_020437DC, sub_020437F8, sub_02043818, sub_02043850

	.text

	thumb_func_start sub_02042CF0
sub_02042CF0: ; 0x02042CF0
	str r1, [r0, #0x0]
	str r2, [r0, #0x4]
	str r3, [r0, #0x8]
	bx lr

	thumb_func_start sub_02042CF8
sub_02042CF8: ; 0x02042CF8
	push {r3, lr}
	bl sub_0202AF9C
	bl sub_0202AFC0
	pop {r3, pc}

	thumb_func_start sub_02042D04
sub_02042D04: ; 0x02042D04
	push {r3, lr}
	bl sub_0202AF9C
	bl sub_0202AFFC
	pop {r3, pc}

	thumb_func_start sub_02042D10
sub_02042D10: ; 0x02042D10
	push {r3, lr}
	bl sub_0202AF9C
	bl sub_0202B020
	pop {r3, pc}

	thumb_func_start ScrCmd_Unk023E
ScrCmd_Unk023E: ; 0x02042D1C
	push {r3-r7, lr}
	sub sp, #0x20
	add r4, r0, #0x0
	bl ScriptReadHalfword
	cmp r0, #0x8
	bls _02042D2C
	b _02042F04
_02042D2C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #0x6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02042D38: ; jump table (using 16-bit offset)
	.short _02042D4A - _02042D38 - 2; case 0
	.short _02042D74 - _02042D38 - 2; case 1
	.short _02042DA0 - _02042D38 - 2; case 2
	.short _02042DC0 - _02042D38 - 2; case 3
	.short _02042DFC - _02042D38 - 2; case 4
	.short _02042E2E - _02042D38 - 2; case 5
	.short _02042E9A - _02042D38 - 2; case 6
	.short _02042D58 - _02042D38 - 2; case 7
	.short _02042D66 - _02042D38 - 2; case 8
_02042D4A:
	add r4, #0x80
	ldr r0, [r4, #0x0]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_0202AF70
	b _02042F04
_02042D58:
	add r4, #0x80
	ldr r0, [r4, #0x0]
	mov r1, #0x0
	ldr r0, [r0, #0xc]
	bl sub_0202AF88
	b _02042F04
_02042D66:
	add r4, #0x80
	ldr r0, [r4, #0x0]
	mov r1, #0x1
	ldr r0, [r0, #0xc]
	bl sub_0202AF88
	b _02042F04
_02042D74:
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl sub_02042CF8
	cmp r0, #0x0
	beq _02042D9A
	mov r0, #0x1
	strh r0, [r5, #0x0]
	b _02042F04
_02042D9A:
	mov r0, #0x0
	strh r0, [r5, #0x0]
	b _02042F04
_02042DA0:
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r4, #0x80
	add r5, r0, #0x0
	ldr r0, [r4, #0x0]
	bl sub_02042CF8
	strh r0, [r5, #0x0]
	b _02042F04
_02042DC0:
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r6, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042CF8
	sub r0, r0, #0x1
	lsl r5, r0, #0x4
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r7, _02042F0C ; =UNK_020F43E4
	bl sub_02042D04
	add r4, #0x80
	add r1, r0, #0x0
	ldr r0, [r4, #0x0]
	ldr r2, [r7, r5]
	blx r2
	strh r0, [r6, #0x0]
	b _02042F04
_02042DFC:
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042CF8
	sub r0, r0, #0x1
	ldr r1, _02042F0C ; =UNK_020F43E4
	lsl r0, r0, #0x4
	add r5, r1, r0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042D04
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	ldr r2, [r5, #0x4]
	blx r2
	add r4, #0x80
	ldr r0, [r4, #0x0]
	bl sub_02042D10
	b _02042F04
_02042E2E:
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042CF8
	sub r0, r0, #0x1
	ldr r1, _02042F0C ; =UNK_020F43E4
	lsl r0, r0, #0x4
	add r5, r1, r0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	str r0, [sp, #0x0]
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042D04
	add r4, #0x80
	add r3, r0, #0x0
	ldr r1, [r4, #0x0]
	ldr r2, [r6, #0x0]
	add r0, sp, #0x14
	bl sub_02042CF0
	ldr r2, [sp, #0x0]
	ldr r3, [r5, #0x8]
	add r0, sp, #0x14
	add r1, r7, #0x0
	blx r3
	b _02042F04
_02042E9A:
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042CF8
	sub r0, r0, #0x1
	ldr r1, _02042F0C ; =UNK_020F43E4
	lsl r0, r0, #0x4
	add r5, r1, r0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	mov r1, #0xf
	bl FieldSysGetAttrAddr
	add r6, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	add r7, r0, #0x0
	add r0, r4, #0x0
	bl ScriptReadHalfword
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl GetVarPointer
	str r0, [sp, #0x4]
	add r0, r4, #0x0
	add r0, #0x80
	ldr r0, [r0, #0x0]
	bl sub_02042D04
	add r4, #0x80
	add r3, r0, #0x0
	ldr r1, [r4, #0x0]
	ldr r2, [r6, #0x0]
	add r0, sp, #0x8
	bl sub_02042CF0
	ldr r2, [sp, #0x4]
	ldr r3, [r5, #0xc]
	add r0, sp, #0x8
	add r1, r7, #0x0
	blx r3
_02042F04:
	mov r0, #0x0
	add sp, #0x20
	pop {r3-r7, pc}
	nop
_02042F0C: .word UNK_020F43E4

	thumb_func_start sub_02042F10
sub_02042F10: ; 0x02042F10
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl SaveArray_Party_Get
	bl Party_GetCount
	cmp r0, #0x6
	bge _02042F24
	mov r0, #0x1
	pop {r3, pc}
_02042F24:
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start sub_02042F28
sub_02042F28: ; 0x02042F28
	push {r3, lr}
	sub sp, #0x8
	add r1, r0, #0x0
	mov r0, #0x2
	str r0, [sp, #0x0]
	mov r3, #0x1
	str r3, [sp, #0x4]
	ldr r1, [r1, #0xc]
	ldr r2, _02042F44 ; =0x000001EA
	mov r0, #0x20
	bl GiveEgg
	add sp, #0x8
	pop {r3, pc}
	.balign 4
_02042F44: .word 0x000001EA

	thumb_func_start sub_02042F48
sub_02042F48: ; 0x02042F48
	push {r4, lr}
	add r4, r0, #0x0
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r1, #0x0]
	mov r0, #0xd
	strh r0, [r2, #0x0]
	ldr r0, [r4, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r4, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	pop {r4, pc}
	.balign 4

	thumb_func_start sub_02042F6C
sub_02042F6C: ; 0x02042F6C
	push {r3-r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x4]
	bl sub_02042D04
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	mov r7, #0x0
	add r5, r0, #0x0
	add r4, r0, #0x4
	add r0, r4, #0x0
	mov r1, #0x97
	add r2, r7, #0x0
	add r5, #0xf0
	bl GetMonData
	add r1, r7, #0x0
	str r0, [sp, #0x8]
	add r0, r4, #0x0
	add r2, r1, #0x0
	bl GetMonData
	str r0, [sp, #0x14]
	add r0, r4, #0x0
	mov r1, #0x7
	add r2, r7, #0x0
	bl GetMonData
	add r6, r0, #0x0
	bl OS_GetTick
	bl PRandom
	add r1, r0, #0x0
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x34]
	cmp r0, #0x0
	beq _02042FE8
	cmp r0, #0x1
	bne _02042FE6
	add r0, r6, #0x0
	bl CalcShininessByOtIdAndPersonality
	cmp r0, #0x0
	beq _02042FE8
_02042FD0:
	ldr r0, [sp, #0x34]
	bl PRandom
	add r1, r0, #0x0
	add r0, r6, #0x0
	str r1, [sp, #0x34]
	bl CalcShininessByOtIdAndPersonality
	cmp r0, #0x0
	bne _02042FD0
	b _02042FE8
_02042FE6:
	str r0, [sp, #0x34]
_02042FE8:
	ldr r1, [sp, #0x34]
	add r0, r4, #0x0
	bl sub_0206A23C
	add r0, r4, #0x0
	bl GetMonGender
	str r0, [sp, #0x30]
	add r0, r4, #0x0
	mov r1, #0x6f
	add r2, sp, #0x30
	bl SetMonData
	add r0, r4, #0x0
	mov r1, #0x4b
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x18]
	add r0, r4, #0x0
	mov r1, #0x4a
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x1c]
	add r0, r4, #0x0
	mov r1, #0x49
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x20]
	add r0, r4, #0x0
	mov r1, #0x48
	mov r2, #0x0
	bl GetMonData
	str r0, [sp, #0x24]
	add r0, r4, #0x0
	mov r1, #0x46
	mov r2, #0x0
	bl GetMonData
	add r6, r0, #0x0
	add r0, r4, #0x0
	mov r1, #0x47
	mov r2, #0x0
	bl GetMonData
	add r1, r6, r0
	ldr r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #0x1c]
	add r1, r0, r1
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	str r0, [sp, #0x30]
	bne _020430DA
	bl LCRandom
	add r6, r0, #0x0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x46
	add r2, sp, #0x34
	bl SetMonData
	mov r0, #0x3e
	lsl r0, r0, #0x4
	and r0, r6
	lsr r0, r0, #0x5
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x47
	add r2, sp, #0x34
	bl SetMonData
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x48
	add r2, sp, #0x34
	bl SetMonData
	bl LCRandom
	add r6, r0, #0x0
	mov r0, #0x1f
	and r0, r6
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x49
	add r2, sp, #0x34
	bl SetMonData
	mov r0, #0x3e
	lsl r0, r0, #0x4
	and r0, r6
	lsr r0, r0, #0x5
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x4a
	add r2, sp, #0x34
	bl SetMonData
	mov r0, #0x1f
	lsl r0, r0, #0xa
	and r0, r6
	lsr r0, r0, #0xa
	str r0, [sp, #0x34]
	add r0, r4, #0x0
	mov r1, #0x4b
	add r2, sp, #0x34
	bl SetMonData
_020430DA:
	ldr r0, [sp, #0x4]
	ldr r0, [r0, #0xc]
	bl sub_0202A918
	add r6, r0, #0x0
	add r0, r4, #0x0
	mov r1, #0x2e
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _020430FC
	mov r0, #0x49
	bl sub_0207FCE0
	ldrb r1, [r5, #0x0]
	strb r1, [r6, r0]
_020430FC:
	add r0, r4, #0x0
	mov r1, #0x2f
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _02043114
	mov r0, #0x4a
	bl sub_0207FCE0
	ldrb r1, [r5, #0x1]
	strb r1, [r6, r0]
_02043114:
	add r0, r4, #0x0
	mov r1, #0x30
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _0204312C
	mov r0, #0x4b
	bl sub_0207FCE0
	ldrb r1, [r5, #0x2]
	strb r1, [r6, r0]
_0204312C:
	add r0, r4, #0x0
	mov r1, #0x31
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _02043144
	mov r0, #0x4c
	bl sub_0207FCE0
	ldrb r1, [r5, #0x3]
	strb r1, [r6, r0]
_02043144:
	add r0, r4, #0x0
	mov r1, #0x32
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _0204315C
	mov r0, #0x4d
	bl sub_0207FCE0
	ldrb r1, [r5, #0x4]
	strb r1, [r6, r0]
_0204315C:
	add r0, r4, #0x0
	mov r1, #0x33
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _02043174
	mov r0, #0x4e
	bl sub_0207FCE0
	ldrb r1, [r5, #0x5]
	strb r1, [r6, r0]
_02043174:
	add r0, r4, #0x0
	mov r1, #0x34
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _0204318C
	mov r0, #0x4f
	bl sub_0207FCE0
	ldrb r1, [r5, #0x6]
	strb r1, [r6, r0]
_0204318C:
	add r0, r4, #0x0
	mov r1, #0x67
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _020431A4
	mov r0, #0x19
	bl sub_0207FCE0
	ldrb r1, [r5, #0x7]
	strb r1, [r6, r0]
_020431A4:
	add r0, r4, #0x0
	mov r1, #0x68
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _020431BC
	mov r0, #0x1a
	bl sub_0207FCE0
	ldrb r1, [r5, #0x8]
	strb r1, [r6, r0]
_020431BC:
	add r0, r4, #0x0
	mov r1, #0x69
	mov r2, #0x0
	bl GetMonData
	cmp r0, #0x0
	beq _020431D4
	mov r0, #0x1b
	bl sub_0207FCE0
	ldrb r1, [r5, #0x9]
	strb r1, [r6, r0]
_020431D4:
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _0204322C
	ldr r0, [sp, #0xc]
	mov r1, #0x20
	bl PlayerProfile_GetPlayerName_NewString
	add r5, r0, #0x0
	ldr r0, [sp, #0xc]
	bl PlayerProfile_GetTrainerID
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xc]
	bl PlayerProfile_GetTrainerGender
	str r0, [sp, #0x28]
	mov r0, #0x20
	bl AllocMonZeroed
	add r7, r0, #0x0
	add r0, r4, #0x0
	add r1, r7, #0x0
	bl CopyPokemonToPokemon
	add r0, r7, #0x0
	mov r1, #0x90
	add r2, r5, #0x0
	bl SetMonData
	add r0, r7, #0x0
	mov r1, #0x7
	add r2, sp, #0x2c
	bl SetMonData
	add r0, r7, #0x0
	mov r1, #0x9c
	add r2, sp, #0x28
	bl SetMonData
	add r0, r5, #0x0
	add r4, r7, #0x0
	bl String_Delete
_0204322C:
	ldr r1, [sp, #0x8]
	mov r0, #0x2
	bl sub_02015CF8
	add r3, r0, #0x0
	mov r0, #0x20
	str r0, [sp, #0x0]
	ldr r1, [sp, #0xc]
	add r0, r4, #0x0
	mov r2, #0x4
	bl sub_0208089C
	add r0, r4, #0x0
	bl CalcMonLevelAndStats
	ldr r0, [sp, #0x4]
	ldr r0, [r0, #0xc]
	bl SaveArray_Party_Get
	add r1, r4, #0x0
	bl Party_AddMon
	cmp r0, #0x0
	beq _02043266
	ldr r0, [sp, #0x4]
	add r1, r4, #0x0
	ldr r0, [r0, #0xc]
	bl sub_0202C144
_02043266:
	cmp r7, #0x0
	beq _02043270
	add r0, r7, #0x0
	bl FreeToHeap
_02043270:
	add sp, #0x38
	pop {r3-r7, pc}

	thumb_func_start sub_02043274
sub_02043274: ; 0x02043274
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	add r7, r0, #0x0
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x7
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	add r0, r7, #0x4
	bl sub_020690E4
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	bl BufferBoxMonSpeciesNameWithArticle
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start sub_020432B4
sub_020432B4: ; 0x020432B4
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r1, #0x0]
	mov r0, #0x4
	strh r0, [r2, #0x0]
	bx lr

	thumb_func_start sub_020432C0
sub_020432C0: ; 0x020432C0
	ldr r3, _020432C4 ; =sub_02042F6C
	bx r3
	.balign 4
_020432C4: .word sub_02042F6C

	thumb_func_start sub_020432C8
sub_020432C8: ; 0x020432C8
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	add r7, r0, #0x0
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x8
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	add r0, r7, #0x4
	bl sub_020690E4
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	bl BufferBoxMonSpeciesName
	pop {r3-r7, pc}
	.balign 4

	thumb_func_start sub_02043308
sub_02043308: ; 0x02043308
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	add r1, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r4, #0x0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_HasSpaceForItem
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_02043330
sub_02043330: ; 0x02043330
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	add r1, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r4, #0x0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_AddItem
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_02043358
sub_02043358: ; 0x02043358
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	ldr r0, [r0, #0x0]
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x9
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	add r2, r7, #0x0
	bl BufferItemName
	pop {r3-r7, pc}

	thumb_func_start sub_02043394
sub_02043394: ; 0x02043394
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	ldr r0, [r0, #0xc]
	add r6, r2, #0x0
	bl Save_Bag_Get
	ldr r0, [r5, #0x0]
	bl sub_02042D04
	ldr r0, [r0, #0x0]
	mov r1, #0x0
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x5
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x4]
	bl BufferItemName
	pop {r4-r6, pc}

	thumb_func_start sub_020433C4
sub_020433C4: ; 0x020433C4
	mov r0, #0x1
	bx lr

	thumb_func_start sub_020433C8
sub_020433C8: ; 0x020433C8
	push {r4, lr}
	add r4, r0, #0x0
	bl sub_02042D04
	add r1, r0, #0x0
	ldr r0, [r4, #0xc]
	bl sub_02023BD4
	pop {r4, pc}
	.balign 4

	thumb_func_start sub_020433DC
sub_020433DC: ; 0x020433DC
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	add r7, r0, #0x0
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0xa
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	add r0, r7, #0x0
	mov r1, #0x20
	bl sub_02023AF4
	add r4, r0, #0x0
	mov r1, #0x1
	str r1, [sp, #0x0]
	mov r0, #0x2
	str r0, [sp, #0x4]
	ldr r0, [r5, #0x4]
	add r2, r4, #0x0
	mov r3, #0x0
	bl BufferString
	add r0, r4, #0x0
	bl String_Delete
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start sub_02043430
sub_02043430: ; 0x02043430
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r1, #0x0]
	mov r0, #0x6
	strh r0, [r2, #0x0]
	bx lr

	thumb_func_start sub_0204343C
sub_0204343C: ; 0x0204343C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02026CC4
	bl sub_02025DB0
	cmp r0, #0xc8
	bge _02043450
	mov r0, #0x1
	pop {r3, pc}
_02043450:
	mov r0, #0x0
	pop {r3, pc}

	thumb_func_start sub_02043454
sub_02043454: ; 0x02043454
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl sub_02042D04
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl sub_02026CC4
	ldr r1, [r4, #0x0]
	bl sub_02025D6C
	pop {r3-r5, pc}

	thumb_func_start sub_0204346C
sub_0204346C: ; 0x0204346C
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	ldr r7, [r0, #0x0]
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0xb
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	add r2, r7, #0x0
	bl BufferDecorationName
	pop {r3-r7, pc}

	thumb_func_start sub_020434A4
sub_020434A4: ; 0x020434A4
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r1, #0x0]
	mov r0, #0x6
	strh r0, [r2, #0x0]
	bx lr

	thumb_func_start sub_020434B0
sub_020434B0: ; 0x020434B0
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl sub_02042D04
	ldr r4, [r0, #0x4]
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _020434CA
	cmp r0, #0x2
	beq _020434DA
	cmp r0, #0x3
	beq _020434DE
	b _020434E2
_020434CA:
	ldr r0, [r5, #0xc]
	bl Save_SealCase_Get
	add r1, r4, #0x0
	mov r2, #0x1
	bl sub_02029DD4
	pop {r3-r5, pc}
_020434DA:
	mov r0, #0x1
	pop {r3-r5, pc}
_020434DE:
	mov r0, #0x1
	pop {r3-r5, pc}
_020434E2:
	mov r0, #0x0
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_020434E8
sub_020434E8: ; 0x020434E8
	push {r3-r5, lr}
	add r5, r0, #0x0
	bl sub_02042D04
	ldr r4, [r0, #0x4]
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _02043502
	cmp r0, #0x2
	beq _02043512
	cmp r0, #0x3
	beq _02043526
	pop {r3-r5, pc}
_02043502:
	ldr r0, [r5, #0xc]
	bl Save_SealCase_Get
	add r1, r4, #0x0
	mov r2, #0x1
	bl sub_02029D44
	pop {r3-r5, pc}
_02043512:
	ldr r0, [r5, #0xc]
	bl Save_FashionData_Get
	bl Save_FashionData_GetFashionCase
	add r1, r4, #0x0
	mov r2, #0x1
	bl sub_020271A4
	pop {r3-r5, pc}
_02043526:
	ldr r0, [r5, #0xc]
	bl Save_FashionData_Get
	bl Save_FashionData_GetFashionCase
	add r1, r4, #0x0
	bl sub_02027264
	pop {r3-r5, pc}

	thumb_func_start sub_02043538
sub_02043538: ; 0x02043538
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	ldr r2, [r0, #0x4]
	ldr r0, [r0, #0x0]
	cmp r0, #0x1
	beq _02043558
	cmp r0, #0x2
	beq _02043562
	cmp r0, #0x3
	beq _0204356C
	b _02043574
_02043558:
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	bl BufferSealName
	b _02043574
_02043562:
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	bl BufferFashionName
	b _02043574
_0204356C:
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	bl BufferContestBackgroundName
_02043574:
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0xc
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start sub_02043594
sub_02043594: ; 0x02043594
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r1, #0x0]
	mov r0, #0x6
	strh r0, [r2, #0x0]
	bx lr

	thumb_func_start sub_020435A0
sub_020435A0: ; 0x020435A0
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	ldr r1, _020435C0 ; =0x000001C6
	add r0, r4, #0x0
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_HasSpaceForItem
	pop {r3-r5, pc}
	.balign 4
_020435C0: .word 0x000001C6

	thumb_func_start sub_020435C4
sub_020435C4: ; 0x020435C4
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl sub_02042D04
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	add r4, r0, #0x0
	ldr r1, _020435F4 ; =0x000001C6
	add r0, r5, #0x0
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_AddItem
	add r0, r4, #0x0
	mov r1, #0x0
	bl sub_0205F478
	pop {r3-r5, pc}
	.balign 4
_020435F4: .word 0x000001C6

	thumb_func_start sub_020435F8
sub_020435F8: ; 0x020435F8
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0xe
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	ldr r0, [r5, #0x4]
	ldr r2, _02043630 ; =0x000001C6
	mov r1, #0x1
	bl BufferItemName
	pop {r4-r6, pc}
	nop
_02043630: .word 0x000001C6

	thumb_func_start sub_02043634
sub_02043634: ; 0x02043634
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	ldr r0, [r0, #0xc]
	add r6, r2, #0x0
	bl Save_Bag_Get
	ldr r0, [r5, #0x0]
	bl sub_02042D04
	mov r2, #0x53
	lsl r2, r2, #0x2
	strh r2, [r4, #0x0]
	mov r0, #0x5
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	add r2, #0x7a
	bl BufferItemName
	pop {r4-r6, pc}

	thumb_func_start sub_02043660
sub_02043660: ; 0x02043660
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	mov r1, #0x71
	add r0, r4, #0x0
	lsl r1, r1, #0x2
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_HasSpaceForItem
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_02043684
sub_02043684: ; 0x02043684
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl sub_02042D04
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	mov r1, #0x71
	add r4, r0, #0x0
	add r0, r5, #0x0
	lsl r1, r1, #0x2
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_AddItem
	add r0, r4, #0x0
	mov r1, #0x1
	bl sub_0205F478
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_020436B8
sub_020436B8: ; 0x020436B8
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0xf
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	mov r2, #0x71
	ldr r0, [r5, #0x4]
	mov r1, #0x1
	lsl r2, r2, #0x2
	bl BufferItemName
	pop {r4-r6, pc}

	thumb_func_start sub_020436F0
sub_020436F0: ; 0x020436F0
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	ldr r0, [r0, #0xc]
	add r6, r2, #0x0
	bl Save_Bag_Get
	ldr r0, [r5, #0x0]
	bl sub_02042D04
	mov r2, #0x53
	lsl r2, r2, #0x2
	strh r2, [r4, #0x0]
	mov r0, #0x5
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	add r2, #0x78
	bl BufferItemName
	pop {r4-r6, pc}

	thumb_func_start sub_0204371C
sub_0204371C: ; 0x0204371C
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	ldr r1, _0204373C ; =0x000001C7
	add r0, r4, #0x0
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_HasSpaceForItem
	pop {r3-r5, pc}
	.balign 4
_0204373C: .word 0x000001C7

	thumb_func_start sub_02043740
sub_02043740: ; 0x02043740
	push {r3-r5, lr}
	add r4, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	add r5, r0, #0x0
	add r0, r4, #0x0
	bl sub_02042D04
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	add r4, r0, #0x0
	ldr r1, _02043770 ; =0x000001C7
	add r0, r5, #0x0
	mov r2, #0x1
	mov r3, #0x20
	bl Bag_AddItem
	add r0, r4, #0x0
	mov r1, #0x2
	bl sub_0205F478
	pop {r3-r5, pc}
	.balign 4
_02043770: .word 0x000001C7

	thumb_func_start sub_02043774
sub_02043774: ; 0x02043774
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x10
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	ldr r0, [r5, #0x4]
	ldr r2, _020437AC ; =0x000001C7
	mov r1, #0x1
	bl BufferItemName
	pop {r4-r6, pc}
	nop
_020437AC: .word 0x000001C7

	thumb_func_start sub_020437B0
sub_020437B0: ; 0x020437B0
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	ldr r0, [r0, #0xc]
	add r6, r2, #0x0
	bl Save_Bag_Get
	ldr r0, [r5, #0x0]
	bl sub_02042D04
	mov r2, #0x53
	lsl r2, r2, #0x2
	strh r2, [r4, #0x0]
	mov r0, #0x5
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	add r2, #0x7b
	bl BufferItemName
	pop {r4-r6, pc}

	thumb_func_start sub_020437DC
sub_020437DC: ; 0x020437DC
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Poketch_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	add r0, r4, #0x0
	bl Save_Poketch_IsGiven
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_020437F8
sub_020437F8: ; 0x020437F8
	push {r3-r5, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Poketch_Get
	add r4, r0, #0x0
	add r0, r5, #0x0
	bl sub_02042D04
	add r1, r0, #0x0
	ldr r1, [r1, #0x0]
	add r0, r4, #0x0
	bl Save_Poketch_UnlockApp
	pop {r3-r5, pc}
	.balign 4

	thumb_func_start sub_02043818
sub_02043818: ; 0x02043818
	push {r3-r7, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	add r7, r0, #0x0
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x12
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	ldr r0, [r5, #0x4]
	ldr r2, [r7, #0x0]
	mov r1, #0x1
	bl BufferPoketchAppName
	pop {r3-r7, pc}

	thumb_func_start sub_02043850
sub_02043850: ; 0x02043850
	push {r4-r6, lr}
	add r5, r0, #0x0
	ldr r0, [r5, #0x0]
	add r4, r1, #0x0
	add r6, r2, #0x0
	bl sub_02042D04
	mov r0, #0x53
	lsl r0, r0, #0x2
	strh r0, [r4, #0x0]
	mov r0, #0x13
	strh r0, [r6, #0x0]
	ldr r0, [r5, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r2, r0, #0x0
	ldr r0, [r5, #0x4]
	mov r1, #0x0
	bl BufferPlayersName
	pop {r4-r6, pc}
