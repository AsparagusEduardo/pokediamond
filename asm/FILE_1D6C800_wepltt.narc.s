	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x00001180 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x00000144 ; chunk size
	.short 39 ; number of files
	.balign 4
	.word 0x00000000, 0x0000005A
	.word 0x0000005C, 0x000000B6
	.word 0x000000B8, 0x00000112
	.word 0x00000114, 0x0000016E
	.word 0x00000170, 0x000001CA
	.word 0x000001CC, 0x00000226
	.word 0x00000228, 0x00000282
	.word 0x00000284, 0x000002DE
	.word 0x000002E0, 0x0000033A
	.word 0x0000033C, 0x00000396
	.word 0x00000398, 0x000003F2
	.word 0x000003F4, 0x0000044E
	.word 0x00000450, 0x000004AA
	.word 0x000004AC, 0x00000506
	.word 0x00000508, 0x00000562
	.word 0x00000564, 0x000005BE
	.word 0x000005C0, 0x0000061A
	.word 0x0000061C, 0x00000676
	.word 0x00000678, 0x000006D2
	.word 0x000006D4, 0x0000072E
	.word 0x00000730, 0x0000078A
	.word 0x0000078C, 0x000007E6
	.word 0x000007E8, 0x00000842
	.word 0x00000844, 0x0000089E
	.word 0x000008A0, 0x000008FA
	.word 0x000008FC, 0x00000956
	.word 0x00000958, 0x000009B2
	.word 0x000009B4, 0x00000A0E
	.word 0x00000A10, 0x00000A6A
	.word 0x00000A6C, 0x00000AC6
	.word 0x00000AC8, 0x00000B22
	.word 0x00000B24, 0x00000B7E
	.word 0x00000B80, 0x00000BDA
	.word 0x00000BDC, 0x00000C36
	.word 0x00000C38, 0x00000CD6
	.word 0x00000CD8, 0x00000D32
	.word 0x00000D34, 0x00000D8E
	.word 0x00000D90, 0x00000FB8
	.word 0x00000FB8, 0x00001012

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x0000101C ; chunk size
	.incbin "baserom.nds", 0x1D6C96C, 0x1014
	.balign 512, 255
