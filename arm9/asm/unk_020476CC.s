	.include "asm/macros.inc"
	.include "global.inc"

	.section .rodata

	.global UNK_020F45F8
UNK_020F45F8: ; 0x020F45F8
	.byte 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00

	.text

	thumb_func_start BattleSetup_New
BattleSetup_New: ; 0x020476CC
	push {r3-r7, lr}
	add r4, r1, #0x0
	mov r1, #0x67
	lsl r1, r1, #0x2
	add r5, r0, #0x0
	bl AllocFromHeap
	mov r2, #0x67
	mov r1, #0x0
	lsl r2, r2, #0x2
	add r7, r0, #0x0
	bl MI_CpuFill8
	mov r1, #0x63
	str r4, [r7, #0x0]
	mov r0, #0x0
	lsl r1, r1, #0x2
	str r0, [r7, r1]
	add r4, r7, #0x0
	str r0, [sp, #0x0]
	str r0, [r7, #0x14]
	add r6, r7, #0x0
	add r4, #0x28
_020476FA:
	mov r0, #0x0
	add r1, r4, #0x0
	mov r2, #0x34
	str r0, [r6, #0x18]
	bl MIi_CpuClear32
	ldr r0, [sp, #0x0]
	add r6, r6, #0x4
	add r0, r0, #0x1
	add r4, #0x34
	str r0, [sp, #0x0]
	cmp r0, #0x4
	blt _020476FA
	mov r0, #0x15
	lsl r0, r0, #0x4
	mov r6, #0x0
	str r6, [r7, r0]
	mov r2, #0xc
	add r1, r0, #0x4
	str r2, [r7, r1]
	add r1, r0, #0x0
	add r1, #0x8
	str r6, [r7, r1]
	add r1, r0, #0x0
	add r1, #0x10
	str r6, [r7, r1]
	add r1, r0, #0x0
	add r1, #0x14
	str r6, [r7, r1]
	add r1, r0, #0x0
	mov r2, #0x1
	add r1, #0x18
	str r2, [r7, r1]
	add r1, r0, #0x0
	add r1, #0x1c
	str r2, [r7, r1]
	add r0, #0x24
	str r6, [r7, r0]
	add r4, r7, #0x0
_02047748:
	add r0, r5, #0x0
	bl SaveArray_Party_Alloc
	str r0, [r4, #0x4]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, #0x4
	blt _02047748
	mov r6, #0x0
	add r4, r7, #0x0
_0204775C:
	add r0, r5, #0x0
	bl PlayerProfile_New
	add r1, r4, #0x0
	add r1, #0xf8
	add r6, r6, #0x1
	add r4, r4, #0x4
	str r0, [r1, #0x0]
	cmp r6, #0x4
	blt _0204775C
	mov r6, #0x0
	add r4, r7, #0x0
_02047774:
	add r0, r5, #0x0
	bl Chatot_New
	mov r1, #0x46
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r6, r6, #0x1
	add r4, r4, #0x4
	cmp r6, #0x4
	blt _02047774
	add r0, r5, #0x0
	bl Save_Bag_New
	mov r1, #0x42
	lsl r1, r1, #0x2
	str r0, [r7, r1]
	add r0, r5, #0x0
	bl Save_Pokedex_New
	mov r1, #0x11
	lsl r1, r1, #0x4
	str r0, [r7, r1]
	add r0, r5, #0x0
	bl Options_New
	mov r1, #0x13
	lsl r1, r1, #0x4
	str r0, [r7, r1]
	add r0, r5, #0x0
	bl sub_02061008
	mov r2, #0x4d
	lsl r2, r2, #0x2
	str r0, [r7, r2]
	add r0, r2, #0x0
	mov r1, #0x0
	sub r0, #0x28
	str r1, [r7, r0]
	add r0, r2, #0x0
	add r0, #0x5c
	str r1, [r7, r0]
	add r0, r2, #0x0
	sub r0, #0x8
	str r1, [r7, r0]
	add r0, r2, #0x0
	add r0, #0x10
	str r1, [r7, r0]
	add r0, r2, #0x0
	add r0, #0x14
	str r1, [r7, r0]
	add r0, r2, #0x0
	add r0, #0x60
	str r1, [r7, r0]
	add r0, r2, #0x4
	add r0, r7, r0
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r7, #0x0
	pop {r3-r7, pc}

	thumb_func_start sub_020477EC
sub_020477EC: ; 0x020477EC
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x20
	bl BattleSetup_New
	mov r1, #0x19
	lsl r1, r1, #0x4
	str r4, [r0, r1]
	pop {r4, pc}
	.balign 4

	thumb_func_start sub_02047800
sub_02047800: ; 0x02047800
	push {r4, lr}
	add r4, r1, #0x0
	mov r1, #0x2
	lsl r1, r1, #0x8
	bl BattleSetup_New
	mov r1, #0x19
	lsl r1, r1, #0x4
	str r4, [r0, r1]
	pop {r4, pc}

	thumb_func_start sub_02047814
sub_02047814: ; 0x02047814
	push {r4-r7, lr}
	sub sp, #0x1c
	add r5, r1, #0x0
	add r6, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	mov r1, #0x1
	str r0, [sp, #0x14]
	add r0, r6, #0x0
	lsl r1, r1, #0xa
	bl BattleSetup_New
	add r4, r0, #0x0
	ldr r2, _0204795C ; =0x000001F1
	mov r0, #0x1
	mov r1, #0x1a
	add r3, r6, #0x0
	bl NewMsgDataFromNarc
	str r0, [sp, #0x18]
	mov r0, #0x8
	add r1, r6, #0x0
	bl String_New
	add r7, r0, #0x0
	ldr r0, [sp, #0x10]
	bl PlayerProfile_GetTrainerGender
	add r2, r0, #0x0
	mov r1, #0x1
	eor r1, r2
	ldr r0, [sp, #0x18]
	add r2, r7, #0x0
	bl ReadMsgDataIntoString
	add r0, r7, #0x0
	bl String_c_str
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bl CopyPlayerName
	add r0, r7, #0x0
	bl String_Delete
	ldr r0, [sp, #0x18]
	bl DestroyMsgData
	ldr r0, [sp, #0x10]
	bl PlayerProfile_GetTrainerGender
	add r2, r0, #0x0
	add r0, r4, #0x0
	add r0, #0xf8
	mov r1, #0x1
	ldr r0, [r0, #0x0]
	eor r1, r2
	bl PlayerProfile_SetTrainerGender
	add r0, r4, #0x0
	add r1, r5, #0x0
	bl sub_0204806C
	mov r1, #0x13
	lsl r1, r1, #0x4
	ldr r0, [sp, #0x14]
	ldr r1, [r4, r1]
	bl Options_Copy
	add r0, r5, #0x0
	bl Script_GetTimeOfDay
	mov r1, #0x16
	lsl r1, r1, #0x4
	str r0, [r4, r1]
	sub r1, #0x58
	ldr r0, [r4, r1]
	mov r1, #0x4
	mov r2, #0x14
	add r3, r6, #0x0
	bl Bag_AddItem
	add r0, r6, #0x0
	bl AllocMonZeroed
	add r6, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_VarsFlags_Get
	bl sub_0205F3C0
	mov r2, #0x0
	str r2, [sp, #0x0]
	add r1, r0, #0x0
	str r2, [sp, #0x4]
	mov r0, #0x2
	str r0, [sp, #0x8]
	str r2, [sp, #0xc]
	add r0, r6, #0x0
	mov r2, #0x5
	mov r3, #0x20
	bl CreateMon
	ldr r0, [r4, #0x4]
	add r1, r6, #0x0
	bl Party_AddMon
	mov r0, #0x0
	str r0, [sp, #0x0]
	str r0, [sp, #0x4]
	mov r2, #0x2
	str r2, [sp, #0x8]
	str r0, [sp, #0xc]
	ldr r1, _02047960 ; =0x0000018F
	add r0, r6, #0x0
	mov r3, #0x20
	bl CreateMon
	ldr r0, [r4, #0x8]
	add r1, r6, #0x0
	bl Party_AddMon
	add r0, r6, #0x0
	bl FreeToHeap
	ldr r0, [r5, #0xc]
	bl SaveArray_PCStorage_Get
	mov r1, #0x45
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r5, #0x0
	add r0, #0x94
	ldr r0, [r0, #0x0]
	sub r1, #0x8
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl Save_GameStats_Get
	mov r1, #0x51
	lsl r1, r1, #0x2
	str r0, [r4, r1]
	add r0, r5, #0x0
	add r0, #0x98
	ldr r2, [r0, #0x0]
	add r0, r1, #0x4
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	add r1, #0x18
	ldr r0, [r0, #0x0]
	str r0, [r4, r1]
	add r0, r4, #0x0
	bl sub_020480E4
	add r0, r4, #0x0
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4
_0204795C: .word 0x000001F1
_02047960: .word 0x0000018F

	thumb_func_start BattleSetup_Delete
BattleSetup_Delete: ; 0x02047964
	push {r3-r7, lr}
	add r7, r0, #0x0
	mov r4, #0x0
	add r5, r7, #0x0
_0204796C:
	ldr r0, [r5, #0x4]
	cmp r0, #0x0
	bne _02047976
	bl GF_AssertFail
_02047976:
	ldr r0, [r5, #0x4]
	bl FreeToHeap
	add r4, r4, #0x1
	add r5, r5, #0x4
	cmp r4, #0x4
	blt _0204796C
	mov r5, #0x0
	add r4, r7, #0x0
_02047988:
	add r0, r4, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	cmp r0, #0x0
	bne _02047996
	bl GF_AssertFail
_02047996:
	add r0, r4, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bl FreeToHeap
	add r5, r5, #0x1
	add r4, r4, #0x4
	cmp r5, #0x4
	blt _02047988
	mov r6, #0x46
	mov r5, #0x0
	add r4, r7, #0x0
	lsl r6, r6, #0x2
_020479B0:
	ldr r0, [r4, r6]
	cmp r0, #0x0
	bne _020479BA
	bl GF_AssertFail
_020479BA:
	mov r0, #0x46
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	bl FreeToHeap
	add r5, r5, #0x1
	add r4, r4, #0x4
	cmp r5, #0x4
	blt _020479B0
	mov r0, #0x42
	lsl r0, r0, #0x2
	ldr r0, [r7, r0]
	bl FreeToHeap
	mov r0, #0x11
	lsl r0, r0, #0x4
	ldr r0, [r7, r0]
	bl FreeToHeap
	mov r0, #0x13
	lsl r0, r0, #0x4
	ldr r0, [r7, r0]
	bl FreeToHeap
	mov r0, #0x4d
	lsl r0, r0, #0x2
	ldr r0, [r7, r0]
	bl sub_02061020
	add r0, r7, #0x0
	bl FreeToHeap
	pop {r3-r7, pc}

	thumb_func_start sub_020479FC
sub_020479FC: ; 0x020479FC
	push {r4-r6, lr}
	add r4, r2, #0x0
	add r5, r0, #0x0
	add r6, r1, #0x0
	cmp r4, #0x4
	blt _02047A0C
	bl GF_AssertFail
_02047A0C:
	lsl r0, r4, #0x2
	add r0, r5, r0
	ldr r0, [r0, #0x4]
	add r1, r6, #0x0
	bl Party_AddMon
	cmp r0, #0x0
	bne _02047A20
	bl GF_AssertFail
_02047A20:
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start sub_02047A24
sub_02047A24: ; 0x02047A24
	push {r4-r6, lr}
	add r4, r2, #0x0
	add r5, r0, #0x0
	add r6, r1, #0x0
	cmp r4, #0x4
	blt _02047A34
	bl GF_AssertFail
_02047A34:
	lsl r1, r4, #0x2
	add r1, r5, r1
	ldr r1, [r1, #0x4]
	add r0, r6, #0x0
	bl CopyParty
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start sub_02047A44
sub_02047A44: ; 0x02047A44
	push {r4-r6, lr}
	add r4, r2, #0x0
	add r5, r0, #0x0
	add r6, r1, #0x0
	cmp r4, #0x4
	blt _02047A54
	bl GF_AssertFail
_02047A54:
	lsl r1, r4, #0x2
	add r1, r5, r1
	add r1, #0xf8
	ldr r1, [r1, #0x0]
	add r0, r6, #0x0
	bl PlayerProfile_Copy
	pop {r4-r6, pc}

	thumb_func_start sub_02047A64
sub_02047A64: ; 0x02047A64
	lsl r2, r2, #0x2
	add r2, r0, r2
	mov r0, #0x46
	lsl r0, r0, #0x2
	ldr r3, _02047A74 ; =Chatot_Copy
	ldr r0, [r2, r0]
	bx r3
	nop
_02047A74: .word Chatot_Copy

	thumb_func_start sub_02047A78
sub_02047A78: ; 0x02047A78
	push {r4-r7, lr}
	sub sp, #0x14
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r6, r0, #0x0
	ldr r0, [r4, #0xc]
	bl SaveArray_Party_Get
	add r7, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x0]
	ldr r0, [r4, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0x4]
	ldr r0, [r4, #0xc]
	bl Save_Chatot_Get
	str r0, [sp, #0x8]
	ldr r0, [r4, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	bl Save_LocalFieldData_Get
	str r0, [sp, #0x10]
	add r0, r5, #0x0
	add r1, r4, #0x0
	bl sub_0204806C
	add r0, r5, #0x0
	add r1, r6, #0x0
	mov r2, #0x0
	bl sub_02047A44
	add r0, r5, #0x0
	add r1, r7, #0x0
	mov r2, #0x0
	bl sub_02047A24
	mov r1, #0x42
	lsl r1, r1, #0x2
	ldr r0, [sp, #0x0]
	ldr r1, [r5, r1]
	bl Save_Bag_Copy
	mov r1, #0x11
	lsl r1, r1, #0x4
	ldr r0, [sp, #0x4]
	ldr r1, [r5, r1]
	bl Save_Pokedex_Copy
	mov r1, #0x13
	lsl r1, r1, #0x4
	ldr r0, [sp, #0xc]
	ldr r1, [r5, r1]
	bl Options_Copy
	ldr r1, [sp, #0x8]
	add r0, r5, #0x0
	mov r2, #0x0
	bl sub_02047A64
	ldr r0, [r4, #0xc]
	bl SaveArray_PCStorage_Get
	mov r1, #0x45
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0x0]
	bl MapHeader_GetMapSec
	mov r1, #0x56
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	add r0, r4, #0x0
	bl Script_GetTimeOfDay
	mov r1, #0x16
	lsl r1, r1, #0x4
	str r0, [r5, r1]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0x0]
	bl MapHeader_GetMapEvolutionMethod
	mov r1, #0x59
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl sub_02079C70
	mov r1, #0x5a
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl Save_VarsFlags_Get
	bl sub_0205F1B4
	mov r1, #0x5b
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [sp, #0x10]
	bl LocalFieldData_GetWeatherType
	mov r1, #0x5d
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	add r0, r4, #0x0
	add r0, #0x94
	ldr r0, [r0, #0x0]
	sub r1, #0x68
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl Save_Poketch_Get
	mov r1, #0x4a
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl sub_02029AFC
	mov r1, #0x4b
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl Save_GameStats_Get
	mov r1, #0x51
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	add r0, r4, #0x0
	add r0, #0x98
	ldr r2, [r0, #0x0]
	add r0, r1, #0x4
	str r2, [r5, r0]
	ldr r0, [r4, #0xc]
	bl sub_020254C0
	mov r1, #0x53
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [r4, #0x1c]
	add r1, #0x10
	ldr r0, [r0, #0x0]
	str r0, [r5, r1]
	add sp, #0x14
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start BattleSetup_InitFromFieldSystem
BattleSetup_InitFromFieldSystem: ; 0x02047BB0
	push {r4, lr}
	add r4, r0, #0x0
	bl sub_02047A78
	add r0, r4, #0x0
	bl sub_020480E4
	pop {r4, pc}

	thumb_func_start sub_02047BC0
sub_02047BC0: ; 0x02047BC0
	push {r4-r7, lr}
	sub sp, #0x1c
	add r6, r0, #0x0
	add r0, r1, #0x0
	ldr r0, [r0, #0xc]
	str r1, [sp, #0x0]
	add r7, r2, #0x0
	bl Save_PlayerData_GetProfileAddr
	add r4, r0, #0x0
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_Party_Get
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Chatot_Get
	str r0, [sp, #0x8]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp, #0x4]
	mov r0, #0x15
	mov r1, #0x6
	lsl r0, r0, #0x4
	str r1, [r6, r0]
	mov r1, #0x9
	add r0, r0, #0x4
	str r1, [r6, r0]
	add r0, r6, #0x0
	add r1, r4, #0x0
	mov r2, #0x0
	bl sub_02047A44
	mov r0, #0xb
	bl AllocMonZeroed
	add r5, r0, #0x0
	ldr r0, [sp, #0x14]
	bl Party_GetCount
	add r1, r0, #0x0
	ldr r0, [r6, #0x4]
	bl Party_InitWithMaxSize
	ldr r0, [sp, #0x14]
	mov r4, #0x0
	bl Party_GetCount
	cmp r0, #0x0
	ble _02047C98
_02047C40:
	ldr r0, [sp, #0x14]
	add r1, r4, #0x0
	bl Party_GetMonByIndex
	add r1, r5, #0x0
	bl CopyPokemonToPokemon
	add r0, r5, #0x0
	mov r1, #0xa0
	mov r2, #0x0
	bl GetMonData
	cmp r7, r0
	beq _02047C82
	cmp r7, #0x0
	beq _02047C82
	add r0, r5, #0x0
	mov r1, #0x5
	mov r2, #0x0
	bl GetMonData
	add r1, r7, #0x0
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp, #0x18]
	add r0, r5, #0x0
	mov r1, #0x8
	add r2, sp, #0x18
	bl SetMonData
	add r0, r5, #0x0
	bl CalcMonLevelAndStats
_02047C82:
	add r0, r6, #0x0
	add r1, r5, #0x0
	mov r2, #0x0
	bl sub_020479FC
	ldr r0, [sp, #0x14]
	add r4, r4, #0x1
	bl Party_GetCount
	cmp r4, r0
	blt _02047C40
_02047C98:
	add r0, r5, #0x0
	bl FreeToHeap
	mov r1, #0x42
	lsl r1, r1, #0x2
	ldr r0, [sp, #0x10]
	ldr r1, [r6, r1]
	bl Save_Bag_Copy
	mov r1, #0x11
	lsl r1, r1, #0x4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	bl Save_Pokedex_Copy
	mov r1, #0x13
	lsl r1, r1, #0x4
	ldr r0, [sp, #0x4]
	ldr r1, [r6, r1]
	bl Options_Copy
	ldr r1, [sp, #0x8]
	add r0, r6, #0x0
	mov r2, #0x0
	bl sub_02047A64
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PCStorage_Get
	mov r1, #0x45
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	bl Script_GetTimeOfDay
	mov r1, #0x16
	lsl r1, r1, #0x4
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	sub r1, #0x54
	add r0, #0x94
	ldr r0, [r0, #0x0]
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Poketch_Get
	mov r1, #0x4a
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl sub_02029AFC
	mov r1, #0x4b
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	mov r1, #0x51
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	add r0, #0x98
	ldr r2, [r0, #0x0]
	add r0, r1, #0x4
	str r2, [r6, r0]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl sub_020254C0
	mov r1, #0x53
	lsl r1, r1, #0x2
	str r0, [r6, r1]
	ldr r0, [sp, #0x0]
	add r1, #0x10
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x0]
	str r0, [r6, r1]
	add r0, r6, #0x0
	bl sub_020480E4
	add sp, #0x1c
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start sub_02047D48
sub_02047D48: ; 0x02047D48
	push {r4-r7, lr}
	sub sp, #0x24
	add r5, r0, #0x0
	add r0, r1, #0x0
	ldr r0, [r0, #0xc]
	str r1, [sp, #0x0]
	str r2, [sp, #0x4]
	add r7, r3, #0x0
	bl Save_PlayerData_GetProfileAddr
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_Chatot_Get
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x0]
	mov r1, #0x6
	add r0, #0xac
	ldr r0, [r0, #0x0]
	mov r2, #0x0
	str r0, [sp, #0xc]
	mov r0, #0x15
	lsl r0, r0, #0x4
	str r1, [r5, r0]
	mov r1, #0x9
	add r0, r0, #0x4
	str r1, [r5, r0]
	ldr r1, [sp, #0x20]
	add r0, r5, #0x0
	bl sub_02047A44
	cmp r7, #0x0
	bne _02047DB6
	ldr r1, [sp, #0x4]
	add r0, r5, #0x0
	mov r2, #0x0
	bl sub_02047A24
	b _02047E14
_02047DB6:
	mov r4, #0x0
	add r1, r4, #0x0
_02047DBA:
	ldrb r0, [r7, r1]
	cmp r0, #0x0
	beq _02047DC2
	add r4, r4, #0x1
_02047DC2:
	add r1, r1, #0x1
	cmp r1, #0x6
	blt _02047DBA
	cmp r4, #0x0
	bne _02047DD8
	ldr r1, [sp, #0x4]
	add r0, r5, #0x0
	mov r2, #0x0
	bl sub_02047A24
	b _02047E14
_02047DD8:
	mov r0, #0xb
	bl AllocMonZeroed
	str r0, [sp, #0x8]
	ldr r0, [r5, #0x4]
	add r1, r4, #0x0
	bl Party_InitWithMaxSize
	mov r6, #0x0
	cmp r4, #0x0
	ble _02047E0E
_02047DEE:
	ldrb r1, [r7, r6]
	ldr r0, [sp, #0x4]
	sub r1, r1, #0x1
	bl Party_GetMonByIndex
	ldr r1, [sp, #0x8]
	bl CopyPokemonToPokemon
	ldr r1, [sp, #0x8]
	add r0, r5, #0x0
	mov r2, #0x0
	bl sub_020479FC
	add r6, r6, #0x1
	cmp r6, r4
	blt _02047DEE
_02047E0E:
	ldr r0, [sp, #0x8]
	bl FreeToHeap
_02047E14:
	ldr r0, [sp, #0xc]
	cmp r0, #0x0
	beq _02047E2C
	mov r1, #0xc
	bl sub_02023B0C
	cmp r0, #0x0
	beq _02047E2C
	mov r0, #0x65
	mov r1, #0x1
	lsl r0, r0, #0x2
	str r1, [r5, r0]
_02047E2C:
	mov r1, #0x42
	lsl r1, r1, #0x2
	ldr r0, [sp, #0x1c]
	ldr r1, [r5, r1]
	bl Save_Bag_Copy
	mov r1, #0x11
	lsl r1, r1, #0x4
	ldr r0, [sp, #0x18]
	ldr r1, [r5, r1]
	bl Save_Pokedex_Copy
	mov r1, #0x13
	lsl r1, r1, #0x4
	ldr r0, [sp, #0x10]
	ldr r1, [r5, r1]
	bl Options_Copy
	ldr r1, [sp, #0x14]
	add r0, r5, #0x0
	mov r2, #0x0
	bl sub_02047A64
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl SaveArray_PCStorage_Get
	mov r1, #0x45
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	bl Script_GetTimeOfDay
	mov r1, #0x16
	lsl r1, r1, #0x4
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	sub r1, #0x54
	add r0, #0x94
	ldr r0, [r0, #0x0]
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl sub_02029AFC
	mov r1, #0x4b
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl Save_GameStats_Get
	mov r1, #0x51
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	add r0, #0x98
	ldr r2, [r0, #0x0]
	add r0, r1, #0x4
	str r2, [r5, r0]
	ldr r0, [sp, #0x0]
	add r1, #0x18
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x0]
	str r0, [r5, r1]
	ldr r0, [sp, #0x0]
	ldr r0, [r0, #0xc]
	bl sub_020254C0
	mov r1, #0x53
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	bl sub_02033534
	bl sub_0202D8B0
	cmp r0, #0x0
	beq _02047F10
	ldr r0, [sp, #0x20]
	bl PlayerProfile_GetAvatar
	add r4, r0, #0x0
	ldr r0, [sp, #0x20]
	bl PlayerProfile_GetTrainerGender
	add r1, r4, #0x0
	mov r2, #0x1
	bl sub_020536D0
	add r1, r5, #0x0
	add r1, #0x29
	strb r0, [r1, #0x0]
	add r0, r5, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0x0
	add r0, r5, #0x0
	add r0, #0x3c
	bl CopyU16StringArray
	add r3, r5, #0x0
	add r3, #0x28
	add r5, #0x90
	mov r2, #0x6
_02047F00:
	ldmia r3!, {r0-r1}
	stmia r5!, {r0-r1}
	sub r2, r2, #0x1
	bne _02047F00
	ldr r0, [r3, #0x0]
	add sp, #0x24
	str r0, [r5, #0x0]
	pop {r4-r7, pc}
_02047F10:
	add r0, r5, #0x0
	bl sub_020480E4
	add sp, #0x24
	pop {r4-r7, pc}
	.balign 4

	thumb_func_start sub_02047F1C
sub_02047F1C: ; 0x02047F1C
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	add r6, r2, #0x0
	bl SaveArray_Party_Get
	add r2, r0, #0x0
	add r0, r5, #0x0
	add r1, r4, #0x0
	add r3, r6, #0x0
	bl sub_02047D48
	pop {r4-r6, pc}

	thumb_func_start sub_02047F38
sub_02047F38: ; 0x02047F38
	push {r3-r7, lr}
	sub sp, #0x8
	add r5, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	add r6, r0, #0x0
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	add r7, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	str r0, [sp, #0x0]
	ldr r0, [r5, #0xc]
	bl Save_Pokedex_Get
	str r0, [sp, #0x4]
	ldr r0, [r5, #0xc]
	bl Save_LocalFieldData_Get
	bl LocalFieldData_GetSafariBallsCounter
	add r5, r0, #0x0
	add r0, r4, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	add r1, r6, #0x0
	bl PlayerProfile_Copy
	ldr r0, [r4, #0x4]
	add r1, r7, #0x0
	bl CopyParty
	mov r0, #0x42
	lsl r0, r0, #0x2
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x0]
	bl Save_Bag_Copy
	mov r0, #0x11
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x4]
	bl Save_Pokedex_Copy
	mov r0, #0x19
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	strh r0, [r5, #0x0]
	add sp, #0x8
	pop {r3-r7, pc}

	thumb_func_start sub_02047FA4
sub_02047FA4: ; 0x02047FA4
	push {r3-r5, lr}
	add r5, r1, #0x0
	add r4, r0, #0x0
	ldr r0, [r5, #0xc]
	bl Save_PlayerData_GetProfileAddr
	ldr r0, [r5, #0xc]
	bl SaveArray_Party_Get
	ldr r0, [r5, #0xc]
	bl Save_Bag_Get
	ldr r0, [r5, #0xc]
	bl Save_Pokedex_Get
	add r1, r0, #0x0
	mov r0, #0x11
	lsl r0, r0, #0x4
	ldr r0, [r4, r0]
	bl Save_Pokedex_Copy
	pop {r3-r5, pc}

	thumb_func_start sub_02047FD0
sub_02047FD0: ; 0x02047FD0
	push {r3-r5, lr}
	ldr r2, [r0, #0x1c]
	add r4, r1, #0x0
	ldr r1, [r2, #0x8]
	ldr r2, [r2, #0xc]
	bl sub_0204A6E0
	add r5, r0, #0x0
	bl sub_020548F0
	cmp r0, #0x0
	beq _02047FEC
	mov r0, #0x8
	pop {r3-r5, pc}
_02047FEC:
	add r0, r5, #0x0
	bl sub_0205478C
	cmp r0, #0x0
	bne _02048000
	add r0, r5, #0x0
	bl sub_02054798
	cmp r0, #0x0
	beq _02048004
_02048000:
	mov r0, #0x2
	pop {r3-r5, pc}
_02048004:
	add r0, r5, #0x0
	bl sub_02054830
	cmp r0, #0x0
	beq _02048012
	mov r0, #0x1
	pop {r3-r5, pc}
_02048012:
	add r0, r5, #0x0
	bl sub_020549AC
	cmp r0, #0x0
	beq _02048020
	mov r0, #0x6
	pop {r3-r5, pc}
_02048020:
	add r0, r5, #0x0
	bl sub_02054974
	cmp r0, #0x0
	bne _02048034
	add r0, r5, #0x0
	bl sub_02054990
	cmp r0, #0x0
	beq _02048038
_02048034:
	mov r0, #0xa
	pop {r3-r5, pc}
_02048038:
	add r0, r5, #0x0
	bl sub_02054A3C
	cmp r0, #0x0
	beq _02048046
	mov r0, #0x5
	pop {r3-r5, pc}
_02048046:
	add r0, r5, #0x0
	bl sub_0205481C
	cmp r0, #0x0
	beq _02048054
	mov r0, #0x7
	pop {r3-r5, pc}
_02048054:
	cmp r4, #0xc
	bhs _02048060
	ldr r0, _02048068 ; =UNK_020F45F8
	lsl r1, r4, #0x2
	ldr r0, [r0, r1]
	pop {r3-r5, pc}
_02048060:
	bl GF_AssertFail
	mov r0, #0xc
	pop {r3-r5, pc}
	.balign 4
_02048068: .word UNK_020F45F8

	thumb_func_start sub_0204806C
sub_0204806C: ; 0x0204806C
	push {r4-r6, lr}
	add r4, r1, #0x0
	add r5, r0, #0x0
	ldr r0, [r4, #0xc]
	bl Save_LocalFieldData_Get
	bl sub_02034E20
	add r6, r0, #0x0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0x0]
	bl MapHeader_GetBattleBg
	mov r1, #0x15
	lsl r1, r1, #0x4
	str r0, [r5, r1]
	ldr r0, [r6, #0x4]
	cmp r0, #0x2
	bne _02048096
	mov r0, #0x1
	str r0, [r5, r1]
_02048096:
	mov r1, #0x15
	lsl r1, r1, #0x4
	ldr r1, [r5, r1]
	add r0, r4, #0x0
	bl sub_02047FD0
	mov r1, #0x55
	lsl r1, r1, #0x2
	str r0, [r5, r1]
	pop {r4-r6, pc}
	.balign 4

	thumb_func_start sub_020480AC
sub_020480AC: ; 0x020480AC
	mov r1, #0x55
	mov r2, #0x7
	lsl r1, r1, #0x2
	str r2, [r0, r1]
	bx lr
	.balign 4

	thumb_func_start IsBattleResultWin
IsBattleResultWin: ; 0x020480B8
	cmp r0, #0x2
	beq _020480C0
	cmp r0, #0x3
	bne _020480C4
_020480C0:
	mov r0, #0x0
	bx lr
_020480C4:
	mov r0, #0x1
	bx lr

	thumb_func_start sub_020480C8
sub_020480C8: ; 0x020480C8
	cmp r0, #0x1
	beq _020480D0
	cmp r0, #0x4
	bne _020480D4
_020480D0:
	mov r0, #0x0
	bx lr
_020480D4:
	mov r0, #0x1
	bx lr

	thumb_func_start sub_020480D8
sub_020480D8: ; 0x020480D8
	cmp r0, #0x4
	bne _020480E0
	mov r0, #0x0
	bx lr
_020480E0:
	mov r0, #0x1
	bx lr

	thumb_func_start sub_020480E4
sub_020480E4: ; 0x020480E4
	push {r4, lr}
	add r4, r0, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bl PlayerProfile_GetTrainerGender
	add r1, r4, #0x0
	add r1, #0x29
	strb r0, [r1, #0x0]
	add r0, r4, #0x0
	add r0, #0xf8
	ldr r0, [r0, #0x0]
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0x0
	add r0, r4, #0x0
	add r0, #0x3c
	bl CopyU16StringArray
	add r3, r4, #0x0
	add r3, #0x28
	add r4, #0x90
	mov r2, #0x6
_02048112:
	ldmia r3!, {r0-r1}
	stmia r4!, {r0-r1}
	sub r2, r2, #0x1
	bne _02048112
	ldr r0, [r3, #0x0]
	str r0, [r4, #0x0]
	pop {r4, pc}
