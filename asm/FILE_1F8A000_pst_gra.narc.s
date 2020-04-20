	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x0001F0B0 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x00000454 ; chunk size
	.short 137 ; number of files
	.balign 4
	.word 0x00000000, 0x00003C40
	.word 0x00003C40, 0x00003E68
	.word 0x00003E68, 0x00008D68
	.word 0x00008D68, 0x0000958C
	.word 0x0000958C, 0x00009DB0
	.word 0x00009DB0, 0x0000A5D4
	.word 0x0000A5D4, 0x0000ADF8
	.word 0x0000ADF8, 0x0000B61C
	.word 0x0000B61C, 0x0000BE40
	.word 0x0000BE40, 0x0000C664
	.word 0x0000C664, 0x0000CE88
	.word 0x0000CE88, 0x0000EEAC
	.word 0x0000EEAC, 0x0000F6D0
	.word 0x0000F6D0, 0x0000FEF4
	.word 0x0000FEF4, 0x0001011C
	.word 0x0001011C, 0x00010940
	.word 0x00010940, 0x00012180
	.word 0x00012180, 0x000121EF
	.word 0x000121F0, 0x0001225B
	.word 0x0001225C, 0x0001230C
	.word 0x0001230C, 0x000123BC
	.word 0x000123BC, 0x0001246C
	.word 0x0001246C, 0x0001251C
	.word 0x0001251C, 0x000125CC
	.word 0x000125CC, 0x0001267C
	.word 0x0001267C, 0x0001272C
	.word 0x0001272C, 0x000127DC
	.word 0x000127DC, 0x0001288C
	.word 0x0001288C, 0x0001293C
	.word 0x0001293C, 0x000129EC
	.word 0x000129EC, 0x00012A9C
	.word 0x00012A9C, 0x00012B4C
	.word 0x00012B4C, 0x00012BFC
	.word 0x00012BFC, 0x00012CAC
	.word 0x00012CAC, 0x00012D5C
	.word 0x00012D5C, 0x00012E0C
	.word 0x00012E0C, 0x00012EBC
	.word 0x00012EBC, 0x000130E4
	.word 0x000130E4, 0x0001330C
	.word 0x0001330C, 0x00013534
	.word 0x00013534, 0x0001375C
	.word 0x0001375C, 0x0001387E
	.word 0x00013880, 0x0001390E
	.word 0x00013910, 0x00013A40
	.word 0x00013A40, 0x00013B5B
	.word 0x00013B5C, 0x00013C5B
	.word 0x00013C5C, 0x00013D2C
	.word 0x00013D2C, 0x00013DE3
	.word 0x00013DE4, 0x00013EBB
	.word 0x00013EBC, 0x000141EC
	.word 0x000141EC, 0x00014286
	.word 0x00014288, 0x00014316
	.word 0x00014318, 0x00014388
	.word 0x00014388, 0x000143F8
	.word 0x000143F8, 0x00014468
	.word 0x00014468, 0x000144D8
	.word 0x000144D8, 0x00014548
	.word 0x00014548, 0x000145B8
	.word 0x000145B8, 0x00014628
	.word 0x00014628, 0x0001474A
	.word 0x0001474C, 0x000147DA
	.word 0x000147DC, 0x0001484C
	.word 0x0001484C, 0x000149BD
	.word 0x000149C0, 0x00014B31
	.word 0x00014B34, 0x00014E04
	.word 0x00014E04, 0x0001502C
	.word 0x0001502C, 0x000150D3
	.word 0x000150D4, 0x000151AB
	.word 0x000151AC, 0x0001535C
	.word 0x0001535C, 0x00015584
	.word 0x00015584, 0x000155F3
	.word 0x000155F4, 0x0001565F
	.word 0x00015660, 0x00015890
	.word 0x00015890, 0x00015AC0
	.word 0x00015AC0, 0x00015CF0
	.word 0x00015CF0, 0x00015F20
	.word 0x00015F20, 0x00016150
	.word 0x00016150, 0x00016380
	.word 0x00016380, 0x000165B0
	.word 0x000165B0, 0x000167E0
	.word 0x000167E0, 0x00016A10
	.word 0x00016A10, 0x00016C40
	.word 0x00016C40, 0x00016E70
	.word 0x00016E70, 0x000170A0
	.word 0x000170A0, 0x000172D0
	.word 0x000172D0, 0x00017500
	.word 0x00017500, 0x00017730
	.word 0x00017730, 0x00017960
	.word 0x00017960, 0x00017B90
	.word 0x00017B90, 0x00017DC0
	.word 0x00017DC0, 0x00017FF0
	.word 0x00017FF0, 0x00018220
	.word 0x00018220, 0x00018450
	.word 0x00018450, 0x00018680
	.word 0x00018680, 0x000188B0
	.word 0x000188B0, 0x00018AE0
	.word 0x00018AE0, 0x00018D10
	.word 0x00018D10, 0x00018F40
	.word 0x00018F40, 0x00019170
	.word 0x00019170, 0x000193A0
	.word 0x000193A0, 0x000195D0
	.word 0x000195D0, 0x00019800
	.word 0x00019800, 0x00019A30
	.word 0x00019A30, 0x00019C60
	.word 0x00019C60, 0x00019E90
	.word 0x00019E90, 0x0001A0C0
	.word 0x0001A0C0, 0x0001A2F0
	.word 0x0001A2F0, 0x0001A520
	.word 0x0001A520, 0x0001A750
	.word 0x0001A750, 0x0001A980
	.word 0x0001A980, 0x0001ABB0
	.word 0x0001ABB0, 0x0001ADE0
	.word 0x0001ADE0, 0x0001B010
	.word 0x0001B010, 0x0001B240
	.word 0x0001B240, 0x0001B470
	.word 0x0001B470, 0x0001B6A0
	.word 0x0001B6A0, 0x0001B8D0
	.word 0x0001B8D0, 0x0001BB00
	.word 0x0001BB00, 0x0001BD30
	.word 0x0001BD30, 0x0001BF60
	.word 0x0001BF60, 0x0001C410
	.word 0x0001C410, 0x0001C640
	.word 0x0001C640, 0x0001C70F
	.word 0x0001C710, 0x0001C83F
	.word 0x0001C840, 0x0001CD70
	.word 0x0001CD70, 0x0001CDEB
	.word 0x0001CDEC, 0x0001CE5B
	.word 0x0001CE5C, 0x0001D156
	.word 0x0001D158, 0x0001D422
	.word 0x0001D424, 0x0001DE54
	.word 0x0001DE54, 0x0001DEEE
	.word 0x0001DEF0, 0x0001DF8A
	.word 0x0001DF8C, 0x0001E7BC
	.word 0x0001E7BC, 0x0001E82B
	.word 0x0001E82C, 0x0001E89B
	.word 0x0001E89C, 0x0001EA0C
	.word 0x0001EA0C, 0x0001EC34

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x0001EC3C ; chunk size
	.incbin "baserom.nds", 0x1F8A47C, 0x1EC34
	.balign 512, 255
