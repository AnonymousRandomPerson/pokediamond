	.include "asm/macros.inc"
	.include "global.inc"

	.extern UNK_020EEC80
    .extern UNK_020EEC78
    .extern UNK_020EEC70
    .extern UNK_020EEC68
    .extern UNK_020EEC88
	.extern UNK_020F40A6
	.extern UNK_020F40B4
	.extern UNK_020F40AC
	.extern UNK_020F40BC
	.extern UNK_020F40C6
	.extern UNK_020F40F8
	.extern UNK_020F40DA
	.extern UNK_020F40E4
	.extern UNK_020F41E6
	.extern UNK_020F41FE
	.extern UNK_020F41D4
	.extern UNK_020F4126
	.extern UNK_020F4182
	.extern UNK_020F4134
	.extern UNK_020F40EE
	.extern UNK_020F40D0
	.extern UNK_020F4102
	.extern UNK_020F40A0
	.extern UNK_020F41C2
	.extern UNK_020ECCE2
    .extern UNK_020ECC78
    .extern UNK_020ECC10
    .extern UNK_020ECDCC
    .extern UNK_020F410C
    .extern UNK_020F4118
    .extern UNK_020F4192
    .extern UNK_020F4142
    .extern UNK_020F4162
    .extern UNK_020F4172
    .extern UNK_020F41A2
    .extern UNK_020F4152
    .extern UNK_020F41B2
    .extern UNK_020F6CA0
    .extern UNK_020F6CE0
    .extern UNK_020F6D20
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DAA
    .extern UNK_020F9DC4
    .extern UNK_020F9E6C
    .extern UNK_020F9E88
    .extern UNK_020F9EA4
    .extern UNK_020F9E18
    .extern UNK_020F9E50
    .extern UNK_020F9EDC
    .extern UNK_020F9EF8
    .extern UNK_020FA048
    .extern UNK_020F9F4C
    .extern UNK_020FA010
    .extern UNK_020F9F84
    .extern UNK_020F9FBC
    .extern UNK_020F9FD8
    .extern UNK_020F9FF4
    .extern UNK_020FA02C
    .extern UNK_020F9F68
    .extern UNK_020F9DDE
    .extern UNK_020F9F30
    .extern UNK_020F9F14
    .extern UNK_020F9E34
    .extern UNK_020FA0C0
    .extern UNK_020FA0E4
    .extern UNK_020FA108
    .extern UNK_020FA108
    .extern UNK_020FA108
    .extern UNK_020FF573
    .extern UNK_020FF572
    .extern UNK_020FF570
    .extern UNK_020FF56C
    .extern UNK_020FF564
    .extern UNK_020FF554
    .extern UNK_020FF534
    .extern FUN_0208ECA0
    .extern FUN_0208EBE4
    .extern FUN_0208EAF8
    .extern FUN_0208EB38
    .extern FUN_020AE8B4
    .extern FUN_020AE8AC
    .extern FUN_020AE8C4
    .extern FUN_020AE8BC
    .extern FUN_020B1088
    .extern FUN_020B1098
    .extern FUN_020BE5A0
    .extern FUN_020BDA70
    .extern FUN_020BDF38
    .extern FUN_020BE334
    .extern FUN_020BDB40
    .extern FUN_020B8640
    .extern FUN_020B86B0
    .extern FUN_020B8A08
    .extern FUN_020BDC0C
    .extern FUN_020BDF84
    .extern FUN_020BDAB4
    .extern FUN_020BE668
    .extern FUN_020BEE3C
    .extern FUN_020BF2FC
    .extern FUN_020BE62C
    .extern FUN_020BECEC
    .extern FUN_020BF0D4
    .extern FUN_020BE6E4
    .extern FUN_020BEF10
    .extern FUN_020BF42C
    .extern FUN_020BFA9C
    .extern FUN_020BA58C
    .extern FUN_020BA438
    .extern FUN_020BAC70
    .extern FUN_020BAC48
    .extern FUN_020BAAC0
    .extern FUN_020BA9EC
    .extern FUN_020BA50C
    .extern FUN_020BA3C4
    .extern FUN_020B9F84
    .extern FUN_020B9C54
    .extern FUN_020B98C4
    .extern FUN_020B9258
    .extern FUN_020B9178
    .extern FUN_020B9110
    .extern FUN_020B8DF0
    .extern FUN_020B8A60
    .extern FUN_020BEBD8
    .extern FUN_020BEB00
    .extern FUN_020BEA84
    .extern FUN_020BEA3C
    .extern FUN_020BE954
    .extern FUN_020BE894
    .extern FUN_020BE850
    .extern FUN_020BE82C
    .extern FUN_020BF988
    .extern FUN_020BF894
    .extern FUN_020BF810
    .extern FUN_020BF7C8
    .extern FUN_020BF6C8
    .extern FUN_020BF5E8
    .extern FUN_020BF598
    .extern FUN_020BF574
    .extern FUN_020BFFD4
    .extern FUN_020BFEEC
    .extern FUN_020BFE68
    .extern FUN_020BFE0C
    .extern FUN_020BFD38
    .extern FUN_020BFC8C
    .extern FUN_020BFC4C
    .extern FUN_020BFC28
    .extern FUN_020BE4F0
    .extern FUN_020BE5E0

	/* rom2.s TODO: Disassemble */

	.section .data

	.global UNK_021060D0
UNK_021060D0: ; 0x021060D0
	.asciz "data/pst_h.cldat"

	.balign 4, 0
	.global UNK_021060E4
UNK_021060E4: ; 0x021060E4
	.asciz "data/pst_pal.resdat"

	.balign 4, 0
	.global UNK_021060F8
UNK_021060F8: ; 0x021060F8
	.asciz "data/pst_chr.resdat"

	.balign 4, 0
	.global UNK_0210610C
UNK_0210610C: ; 0x0210610C
	.asciz "data/pst_cell.resdat"

	.balign 4, 0
	.global UNK_02106124
UNK_02106124: ; 0x02106124
	.asciz "data/pst_canm.resdat"

	.balign 4, 0
	.global UNK_0210613C
UNK_0210613C: ; 0x0210613C
	.word UNK_020FB764
	.word UNK_020FB710
	.word UNK_020FB6F8

	.global UNK_02106148
UNK_02106148: ; 0x02106148
	.word UNK_020FB740
	.word UNK_020FB728
	.word UNK_020FB704

	.global UNK_02106154
UNK_02106154: ; 0x02106154
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106158
UNK_02106158: ; 0x02106158
	.word FUN_0208ECA0
	.word FUN_0208EBE4

	.global UNK_02106160
UNK_02106160: ; 0x02106160
	.word FUN_0208EAF8
	.word FUN_0208EB38

	.global UNK_02106168
UNK_02106168: ; 0x02106168
	.byte 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106170
UNK_02106170: ; 0x02106170
	.word UNK_020FF573
	.word UNK_020FF572
	.word UNK_020FF570
	.word UNK_020FF56C
	.word UNK_020FF564
	.word UNK_020FF554
	.word UNK_020FF534

	.global UNK_0210618C
UNK_0210618C: ; 0x0210618C
	.asciz "%s%c%c%c%c%s"

	.balign 4, 0
	.global UNK_0210619C
UNK_0210619C: ; 0x0210619C
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66
	.byte 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_021061C0
UNK_021061C0: ; 0x021061C0
	.byte 0xE6, 0xFF, 0xFF, 0xFF

	.global UNK_021061C4
UNK_021061C4: ; 0x021061C4
	.byte 0x01, 0x01, 0xC0, 0x05, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08
	.byte 0x00, 0x08, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00

	.global UNK_021061DC
UNK_021061DC: ; 0x021061DC
	.byte 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x66, 0x04, 0x00, 0x00, 0x00, 0x00, 0x61, 0x08, 0x00, 0x00
	.byte 0x00, 0x08, 0x0C, 0x20, 0x00, 0x08, 0x0D, 0x20

	.global UNK_021061F4
UNK_021061F4: ; 0x021061F4
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0x00, 0x00, 0xEB, 0x06, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0D, 0x20

	.global UNK_0210620C
UNK_0210620C: ; 0x0210620C
	.byte 0x25, 0x64, 0x2E, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x00

	.global UNK_02106218
UNK_02106218: ; 0x02106218
	.byte 0x10, 0x00, 0x00, 0x00

	.global UNK_0210621C
UNK_0210621C: ; 0x0210621C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00

	.global UNK_02106224
UNK_02106224: ; 0x02106224
	.asciz "NintendoDS"

	.balign 4, 0
	.global UNK_02106230
UNK_02106230: ; 0x02106230
	.byte 0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210623C
UNK_0210623C: ; 0x0210623C
	.byte 0x04, 0x00, 0x05, 0x00

	.global UNK_02106240
UNK_02106240: ; 0x02106240
	.byte 0xFF, 0xFF, 0xFF, 0x00

	.global UNK_02106244
UNK_02106244: ; 0x02106244
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106248
UNK_02106248: ; 0x02106248
	.byte 0x55, 0x04, 0x03, 0x00

	.global UNK_0210624C
UNK_0210624C: ; 0x0210624C
	.byte 0x55, 0x08, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106254
UNK_02106254: ; 0x02106254
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00

	.global UNK_02106260
UNK_02106260: ; 0x02106260
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x04, 0x00, 0x00, 0x00

	.global UNK_0210626C
UNK_0210626C: ; 0x0210626C
	.byte 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00

	.global UNK_02106278
UNK_02106278: ; 0x02106278
	.word UNK_02106240
	.word UNK_02106254
	.word UNK_0210624C
	.word UNK_02106260
	.word UNK_0210626C
	.word UNK_02106248

	.global UNK_02106290
UNK_02106290: ; 0x02106290
	.byte 0x53, 0x52, 0x56, 0x52, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106298
UNK_02106298: ; 0x02106298
	.byte 0x43, 0x4C, 0x4E, 0x54, 0x00, 0x00, 0x00, 0x00

	.global UNK_021062A0
UNK_021062A0: ; 0x021062A0
	.byte 0x41, 0x00, 0x00, 0x00

	.global UNK_021062A4
UNK_021062A4: ; 0x021062A4
	.byte 0x42, 0x42, 0x00, 0x00

	.global UNK_021062A8
UNK_021062A8: ; 0x021062A8
	.byte 0x43, 0x43, 0x43, 0x00

	.global UNK_021062AC
UNK_021062AC: ; 0x021062AC
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F
	.byte 0x01, 0x06, 0x0B, 0x00, 0x05, 0x0A, 0x0F, 0x04, 0x09, 0x0E, 0x03, 0x08, 0x0D, 0x02, 0x07, 0x0C
	.byte 0x05, 0x08, 0x0B, 0x0E, 0x01, 0x04, 0x07, 0x0A, 0x0D, 0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x02
	.byte 0x00, 0x07, 0x0E, 0x05, 0x0C, 0x03, 0x0A, 0x01, 0x08, 0x0F, 0x06, 0x0D, 0x04, 0x0B, 0x02, 0x09

	.global UNK_021062EC
UNK_021062EC: ; 0x021062EC
	.byte 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210632C
UNK_0210632C: ; 0x0210632C
	.byte 0x78, 0xA4, 0x6A, 0xD7, 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24, 0xEE, 0xCE, 0xBD, 0xC1
	.byte 0xAF, 0x0F, 0x7C, 0xF5, 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8, 0x01, 0x95, 0x46, 0xFD
	.byte 0xD8, 0x98, 0x80, 0x69, 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF, 0xBE, 0xD7, 0x5C, 0x89
	.byte 0x22, 0x11, 0x90, 0x6B, 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6, 0x21, 0x08, 0xB4, 0x49
	.byte 0x62, 0x25, 0x1E, 0xF6, 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26, 0xAA, 0xC7, 0xB6, 0xE9
	.byte 0x5D, 0x10, 0x2F, 0xD6, 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8, 0xC8, 0xFB, 0xD3, 0xE7
	.byte 0xE6, 0xCD, 0xE1, 0x21, 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4, 0xED, 0x14, 0x5A, 0x45
	.byte 0x05, 0xE9, 0xE3, 0xA9, 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67, 0x8A, 0x4C, 0x2A, 0x8D
	.byte 0x42, 0x39, 0xFA, 0xFF, 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D, 0x0C, 0x38, 0xE5, 0xFD
	.byte 0x44, 0xEA, 0xBE, 0xA4, 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6, 0x70, 0xBC, 0xBF, 0xBE
	.byte 0xC6, 0x7E, 0x9B, 0x28, 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4, 0x05, 0x1D, 0x88, 0x04
	.byte 0x39, 0xD0, 0xD4, 0xD9, 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F, 0x65, 0x56, 0xAC, 0xC4
	.byte 0x44, 0x22, 0x29, 0xF4, 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB, 0x39, 0xA0, 0x93, 0xFC
	.byte 0xC3, 0x59, 0x5B, 0x65, 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF, 0xD1, 0x5D, 0x84, 0x85
	.byte 0x4F, 0x7E, 0xA8, 0x6F, 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3, 0xA1, 0x11, 0x08, 0x4E
	.byte 0x82, 0x7E, 0x53, 0xF7, 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A, 0x91, 0xD3, 0x86, 0xEB

	.global UNK_0210642C
UNK_0210642C: ; 0x0210642C
	.byte 0x80

	.global UNK_0210642D
UNK_0210642D: ; 0x0210642D
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_0210646C
UNK_0210646C: ; 0x0210646C
	.byte 0x01, 0x00, 0x00, 0x00

	.global UNK_02106470
UNK_02106470: ; 0x02106470
	.byte 0x3F, 0x00, 0x00, 0x00, 0x7F, 0x00, 0x00, 0x00, 0xFF, 0x00, 0x00, 0x00, 0xFF, 0x01, 0x00, 0x00
	.byte 0xFF, 0x03, 0x00, 0x00, 0xFF, 0x07, 0x00, 0x00, 0xFF, 0x0F, 0x00, 0x00, 0xFF, 0x1F, 0x00, 0x00

	.global UNK_02106490
UNK_02106490: ; 0x02106490
	.byte 0xF7, 0xB5, 0xEF, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106498
UNK_02106498: ; 0x02106498
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0xFC, 0x03, 0x00, 0x00

	.global UNK_021064A8
UNK_021064A8: ; 0x021064A8
	.byte 0xFB, 0xE9, 0x3D, 0x40, 0xBC, 0xC7, 0xD1, 0x2C, 0x2A, 0xD0, 0x7C, 0x03, 0xF0, 0x08, 0x93, 0xF5

	.global UNK_021064B8
UNK_021064B8: ; 0x021064B8
	.word FUN_020AE8B4

	.global UNK_021064BC
UNK_021064BC: ; 0x021064BC
	.word FUN_020AE8AC

	.global UNK_021064C0
UNK_021064C0: ; 0x021064C0
	.word FUN_020AE8C4

	.global UNK_021064C4
UNK_021064C4: ; 0x021064C4
	.word FUN_020AE8BC

	.global UNK_021064C8
UNK_021064C8: ; 0x021064C8
	.word UNK_021064E4
	.word UNK_0210652C

	.global UNK_021064D0
UNK_021064D0: ; 0x021064D0
	.word UNK_02106544
	.word UNK_0210652C
	.word UNK_021064E4
	.word UNK_02106514
	.word UNK_021064FC

	.global UNK_021064E4
UNK_021064E4: ; 0x021064E4
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00

	.global UNK_021064FC
UNK_021064FC: ; 0x021064FC
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x02, 0x00

	.global UNK_02106514
UNK_02106514: ; 0x02106514
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x03, 0x00

	.global UNK_0210652C
UNK_0210652C: ; 0x0210652C
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x04, 0x00

	.global UNK_02106544
UNK_02106544: ; 0x02106544
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x06, 0x00

	.global UNK_0210655C
UNK_0210655C: ; 0x0210655C
	.word FUN_020B1088
	.word FUN_020B1098
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106570
UNK_02106570: ; 0x02106570
	.byte 0xFE, 0xFF, 0x00, 0x00

	.global UNK_02106574
UNK_02106574: ; 0x02106574
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.global UNK_02106578
UNK_02106578: ; 0x02106578
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106590
UNK_02106590: ; 0x02106590
	.byte 0x00, 0xF0, 0xFF, 0xFF

	.global UNK_02106594
UNK_02106594: ; 0x02106594
	.byte 0x05, 0x00, 0x00, 0x00

	.global UNK_02106598
UNK_02106598: ; 0x02106598
	.word FUN_020BE5A0

	.global UNK_0210659C
UNK_0210659C: ; 0x0210659C
	.word FUN_020BDA70

	.global UNK_021065A0
UNK_021065A0: ; 0x021065A0
	.word FUN_020BDF38

	.global UNK_021065A4
UNK_021065A4: ; 0x021065A4
	.word FUN_020BE334

	.global UNK_021065A8
UNK_021065A8: ; 0x021065A8
	.word FUN_020BDB40

	.global UNK_021065AC
UNK_021065AC: ; 0x021065AC
	.word FUN_020B8640

	.global UNK_021065B0
UNK_021065B0: ; 0x021065B0
	.word FUN_020B86B0

	.global UNK_021065B4
UNK_021065B4: ; 0x021065B4
	.word FUN_020B8A08

	.global UNK_021065B8
UNK_021065B8: ; 0x021065B8
	.byte 0x4D, 0x00, 0x41, 0x4D

	.global UNK_021065BC
UNK_021065BC: ; 0x021065BC
	.word FUN_020BDC0C
	.byte 0x4D, 0x00, 0x50, 0x54
	.word FUN_020BE4F0
	.byte 0x4D, 0x00, 0x41, 0x54
	.word FUN_020BDF84
	.byte 0x56, 0x00, 0x41, 0x56
	.word FUN_020BE5E0
	.byte 0x4A, 0x00, 0x41, 0x43
	.word FUN_020BDAB4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106608
UNK_02106608: ; 0x02106608
	.word FUN_020BE668
	.word FUN_020BEE3C
	.word FUN_020BF2FC

	.global UNK_02106614
UNK_02106614: ; 0x02106614
	.word FUN_020BE62C
	.word FUN_020BECEC
	.word FUN_020BF0D4

	.global UNK_02106620
UNK_02106620: ; 0x02106620
	.word FUN_020BE6E4
	.word FUN_020BEF10
	.word FUN_020BF42C
	.word FUN_020BFA9C

	.global UNK_02106630
UNK_02106630: ; 0x02106630
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_02106634
UNK_02106634: ; 0x02106634
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106638
UNK_02106638: ; 0x02106638
	.byte 0x2A, 0x00, 0x00, 0x00

	.global UNK_0210663C
UNK_0210663C: ; 0x0210663C
	.byte 0x00, 0x00, 0x00, 0x00

	.global UNK_02106640
UNK_02106640: ; 0x02106640
	.word FUN_020BA58C
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106650
UNK_02106650: ; 0x02106650
	.word FUN_020BA438
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106660
UNK_02106660: ; 0x02106660
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00

	.global UNK_021066A0
UNK_021066A0: ; 0x021066A0
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066A4
UNK_021066A4: ; 0x021066A4
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066AC
UNK_021066AC: ; 0x021066AC
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_021066D0
UNK_021066D0: ; 0x021066D0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066DC
UNK_021066DC: ; 0x021066DC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021066E8
UNK_021066E8: ; 0x021066E8
	.byte 0x12, 0x10, 0x17, 0x1B

	.global UNK_021066EC
UNK_021066EC: ; 0x021066EC
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00

	.global UNK_021066F4
UNK_021066F4: ; 0x021066F4
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00

	.global UNK_02106718
UNK_02106718: ; 0x02106718
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106724
UNK_02106724: ; 0x02106724
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_02106730
UNK_02106730: ; 0x02106730
	.word FUN_020BAC70
	.word FUN_020BAC48
	.word FUN_020BAAC0
	.word FUN_020BA9EC
	.word FUN_020BA50C
	.word FUN_020BA3C4
	.word FUN_020B9F84
	.word FUN_020B9C54
	.word FUN_020B98C4
	.word FUN_020B9258
	.word FUN_020B9178
	.word FUN_020B9110
	.word FUN_020B8DF0
	.word FUN_020B8A60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.global UNK_021067B0
UNK_021067B0: ; 0x021067B0
	.word FUN_020BEBD8
	.word FUN_020BEB00
	.word FUN_020BEA84
	.word FUN_020BEA3C
	.word FUN_020BE954
	.word FUN_020BE894
	.word FUN_020BE850
	.word FUN_020BE82C

	.global UNK_021067D0
UNK_021067D0: ; 0x021067D0
	.word FUN_020BF988
	.word FUN_020BF894
	.word FUN_020BF810
	.word FUN_020BF7C8
	.word FUN_020BF6C8
	.word FUN_020BF5E8
	.word FUN_020BF598
	.word FUN_020BF574

	.global UNK_021067F0
UNK_021067F0: ; 0x021067F0
	.word FUN_020BFFD4
	.word FUN_020BFEEC
	.word FUN_020BFE68
	.word FUN_020BFE0C
	.word FUN_020BFD38
	.word FUN_020BFC8C
	.word FUN_020BFC4C
	.word FUN_020BFC28
