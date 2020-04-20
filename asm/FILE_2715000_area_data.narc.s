	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x000003E4 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x000001E4 ; chunk size
	.short 59 ; number of files
	.balign 4
	.word 0x00000000, 0x00000008
	.word 0x00000008, 0x00000010
	.word 0x00000010, 0x00000018
	.word 0x00000018, 0x00000020
	.word 0x00000020, 0x00000028
	.word 0x00000028, 0x00000030
	.word 0x00000030, 0x00000038
	.word 0x00000038, 0x00000040
	.word 0x00000040, 0x00000048
	.word 0x00000048, 0x00000050
	.word 0x00000050, 0x00000058
	.word 0x00000058, 0x00000060
	.word 0x00000060, 0x00000068
	.word 0x00000068, 0x00000070
	.word 0x00000070, 0x00000078
	.word 0x00000078, 0x00000080
	.word 0x00000080, 0x00000088
	.word 0x00000088, 0x00000090
	.word 0x00000090, 0x00000098
	.word 0x00000098, 0x000000A0
	.word 0x000000A0, 0x000000A8
	.word 0x000000A8, 0x000000B0
	.word 0x000000B0, 0x000000B8
	.word 0x000000B8, 0x000000C0
	.word 0x000000C0, 0x000000C8
	.word 0x000000C8, 0x000000D0
	.word 0x000000D0, 0x000000D8
	.word 0x000000D8, 0x000000E0
	.word 0x000000E0, 0x000000E8
	.word 0x000000E8, 0x000000F0
	.word 0x000000F0, 0x000000F8
	.word 0x000000F8, 0x00000100
	.word 0x00000100, 0x00000108
	.word 0x00000108, 0x00000110
	.word 0x00000110, 0x00000118
	.word 0x00000118, 0x00000120
	.word 0x00000120, 0x00000128
	.word 0x00000128, 0x00000130
	.word 0x00000130, 0x00000138
	.word 0x00000138, 0x00000140
	.word 0x00000140, 0x00000148
	.word 0x00000148, 0x00000150
	.word 0x00000150, 0x00000158
	.word 0x00000158, 0x00000160
	.word 0x00000160, 0x00000168
	.word 0x00000168, 0x00000170
	.word 0x00000170, 0x00000178
	.word 0x00000178, 0x00000180
	.word 0x00000180, 0x00000188
	.word 0x00000188, 0x00000190
	.word 0x00000190, 0x00000198
	.word 0x00000198, 0x000001A0
	.word 0x000001A0, 0x000001A8
	.word 0x000001A8, 0x000001B0
	.word 0x000001B0, 0x000001B8
	.word 0x000001B8, 0x000001C0
	.word 0x000001C0, 0x000001C8
	.word 0x000001C8, 0x000001D0
	.word 0x000001D0, 0x000001D8

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x000001E0 ; chunk size
	.incbin "baserom.nds", 0x271520C, 0x1D8
	.balign 512, 255
