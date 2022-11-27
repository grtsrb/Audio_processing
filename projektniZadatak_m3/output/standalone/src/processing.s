	.public _OUTPUT_GAIN2
	.public _OUTPUT_GAIN6
	.public _headroom_gain
	.public _input_gain
	.public _mode
	.public _tremolo
	.public _tremolo_ptr
	.public _gainProcessing
	.extern _init
	.public _initialize
	.extern _processBlock
	.xdata_ovly
_OUTPUT_GAIN2
	.dw  (0x65ac8a37)
	.xdata_ovly
_OUTPUT_GAIN6
	.dw  (0x4026aa8f)
	.xdata_ovly
_headroom_gain
	.dw  (0x0)
	.xdata_ovly
_input_gain
	.dw  (0x0)
	.xdata_ovly
_mode
	.bss (0x1)
	.xdata_ovly
_tremolo
	.bss (0x6)
	.xdata_ovly
_tremoloBuffer
	.bss (0x20)
	.xdata_ovly
_tremolo_ptr
	.dw _tremolo
	.code_ovly



_gainProcessing:			/* LN: 20 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 20 | 
	i7 += 1			# LN: 20 | 
	i7 = i7 + (0xd)			# LN: 20 | 
	i4 = i7 - (0x1)			# LN: 20 | 
	xmem[i4] = i0			# LN: 20 | 
	i0 = i7 - (0x2)			# LN: 20 | 
	xmem[i0] = i1			# LN: 20 | 
cline_20_0:			/* LN: 22 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 22 | 
	i0 = xmem[i0]			# LN: 22 | 
	i1 = i7 - (0x3)			# LN: 22 | 
	xmem[i1] = i0			# LN: 22 | 
cline_22_0:			/* LN: 23 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 23 | 
	i0 = xmem[i0]			# LN: 23 | 
	i1 = i7 - (0x4)			# LN: 23 | 
	i0 = i0 + (0x10)			# LN: 23 | 
	xmem[i1] = i0			# LN: 23 | 
cline_23_0:			/* LN: 25 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 25 | 
	uhalfword(a0) = (_tremoloBuffer + 0)			# LN: 25 | 
	xmem[i0] = a0			# LN: 25 | 
cline_25_0:			/* LN: 26 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 26 | 
	uhalfword(a0) = (_tremoloBuffer + 16)			# LN: 26 | 
	xmem[i0] = a0			# LN: 26 | 
cline_26_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 28 | 
	i0 = xmem[i0]			# LN: 28 | 
	i1 = i7 - (0x7)			# LN: 28 | 
	xmem[i1] = i0			# LN: 28 | 
cline_28_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 29 | 
	i0 = xmem[i0]			# LN: 29 | 
	i1 = i7 - (0x8)			# LN: 29 | 
	i0 = i0 + (0x10)			# LN: 29 | 
	xmem[i1] = i0			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 30 | 
	i0 = xmem[i0]			# LN: 30 | 
	i1 = i7 - (0x9)			# LN: 30 | 
	i0 = i0 + (0x20)			# LN: 30 | 
	xmem[i1] = i0			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 31 | 
	i0 = xmem[i0]			# LN: 31 | 
	i1 = i7 - (0xa)			# LN: 31 | 
	i0 = i0 + (0x30)			# LN: 31 | 
	xmem[i1] = i0			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	i1 = i7 - (0xb)			# LN: 32 | 
	i0 = i0 + (0x40)			# LN: 32 | 
	xmem[i1] = i0			# LN: 32 | 
cline_32_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_tremolo_ptr + 0]			# LN: 36 | 
	call (_init)			# LN: 36 | 
cline_36_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 40 | 
	a0 = 0			# LN: 40 | 
	xmem[i0] = a0h			# LN: 40 | 
	do (0x10), label_end_92			# LN: 40 | 
cline_40_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	x0 = xmem[_input_gain + 0]			# LN: 44 | 
	x1 = xmem[i0]			# LN: 44 | 
	i0 = i7 - (0x3)			# LN: 44 | 
	i0 = xmem[i0]			# LN: 44 | 
	a0 = x1 * x0			# LN: 44 | 
	xmem[i0] = a0			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	x0 = xmem[_input_gain + 0]			# LN: 45 | 
	x1 = xmem[i0]			# LN: 45 | 
	i0 = i7 - (0x4)			# LN: 45 | 
	i0 = xmem[i0]			# LN: 45 | 
	a0 = x1 * x0			# LN: 45 | 
	xmem[i0] = a0			# LN: 45 | 
cline_45_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	i1 = i7 - (0x5)			# LN: 47 | 
	i1 = xmem[i1]			# LN: 47 | 
	a0 = xmem[i0]			# LN: 47 | 
	xmem[i1] = a0h			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 48 | 
	i0 = xmem[i0]			# LN: 48 | 
	i1 = i7 - (0x6)			# LN: 48 | 
	i1 = xmem[i1]			# LN: 48 | 
	a0 = xmem[i0]			# LN: 48 | 
	xmem[i1] = a0h			# LN: 48 | 
cline_48_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 50 | 
	uhalfword(a1) = (0x1)			# LN: 50 | 
	a0 - a1			# LN: 50 | 
	if (a == 0) jmp (else_0)			# LN: 50 | 
cline_50_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	i1 = i7 - (0x4)			# LN: 53 | 
	i1 = xmem[i1]			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	a1 = xmem[i1]			# LN: 53 | 
	a0 = a0 + a1			# LN: 53 | 
	x0 = a0h			# LN: 53 | 
	x1 = xmem[_headroom_gain + 0]			# LN: 53 | 
	a0 = x0 * x1			# LN: 53 | 
	i0 = i7 - (0xd)			# LN: 53 | 
	xmem[i0] = a0			# LN: 53 | 
cline_53_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 57 | 
	x0 = xmem[i0]			# LN: 57 | 
	x1 = xmem[_OUTPUT_GAIN6 + 0]			# LN: 57 | 
	i0 = i7 - (0x7)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	a0 = x0 * x1			# LN: 57 | 
	xmem[i0] = a0			# LN: 57 | 
cline_57_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 58 | 
	x0 = xmem[i0]			# LN: 58 | 
	x1 = xmem[_OUTPUT_GAIN6 + 0]			# LN: 58 | 
	i0 = i7 - (0x8)			# LN: 58 | 
	i0 = xmem[i0]			# LN: 58 | 
	a0 = x0 * x1			# LN: 58 | 
	xmem[i0] = a0			# LN: 58 | 
	jmp (endif_0)			# LN: 58 | 
cline_58_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 61 | 
	uhalfword(a1) = (0x2)			# LN: 61 | 
	a0 - a1			# LN: 61 | 
	if (a != 0) jmp (else_1)			# LN: 61 | 
cline_61_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xd)			# LN: 63 | 
	i1 = i7 - (0x9)			# LN: 63 | 
	i1 = xmem[i1]			# LN: 63 | 
	a0 = xmem[i0]			# LN: 63 | 
	xmem[i1] = a0h			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x9)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x9)			# LN: 64 | 
	i0 += 1			# LN: 64 | 
	xmem[i1] = i0			# LN: 64 | 
	jmp (endif_1)			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 66 | 
	i0 = xmem[i0]			# LN: 66 | 
	i1 = i7 - (0x3)			# LN: 66 | 
	i0 += 1			# LN: 66 | 
	xmem[i1] = i0			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 67 | 
	i0 = xmem[i0]			# LN: 67 | 
	i1 = i7 - (0x4)			# LN: 67 | 
	i0 += 1			# LN: 67 | 
	xmem[i1] = i0			# LN: 67 | 
cline_67_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 68 | 
	i0 = xmem[i0]			# LN: 68 | 
	i1 = i7 - (0x5)			# LN: 68 | 
	i0 += 1			# LN: 68 | 
	xmem[i1] = i0			# LN: 68 | 
cline_68_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 69 | 
	i0 = xmem[i0]			# LN: 69 | 
	i1 = i7 - (0x6)			# LN: 69 | 
	i0 += 1			# LN: 69 | 
	xmem[i1] = i0			# LN: 69 | 
cline_69_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 70 | 
	i0 = xmem[i0]			# LN: 70 | 
	i1 = i7 - (0x7)			# LN: 70 | 
	i0 += 1			# LN: 70 | 
	xmem[i1] = i0			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 71 | 
	i0 = xmem[i0]			# LN: 71 | 
	i1 = i7 - (0x8)			# LN: 71 | 
	i0 += 1			# LN: 71 | 
	xmem[i1] = i0			# LN: 71 | 
cline_71_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 40 | 
	a0 = xmem[i0]			# LN: 40 | 
	uhalfword(a1) = (0x1)			# LN: 40 | 
	a0 = a0 + a1			# LN: 40 | 
	i0 = i7 - (0xc)			# LN: 40 | 
label_end_92:			# LN: 40 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 40 | 
cline_40_1:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[_mode + 0]			# LN: 77 | 
	a0 & a0			# LN: 77 | 
	if (a == 0) jmp (else_2)			# LN: 77 | 
cline_77_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 79 | 
	uhalfword(a0) = (_tremoloBuffer + 0)			# LN: 79 | 
	xmem[i0] = a0			# LN: 79 | 
cline_79_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 80 | 
	uhalfword(a0) = (_tremoloBuffer + 16)			# LN: 80 | 
	xmem[i0] = a0			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 82 | 
	i0 = xmem[i0]			# LN: 82 | 
	i1 = i7 - (0x5)			# LN: 82 | 
	i1 = xmem[i1]			# LN: 82 | 
	i4 = xmem[_tremolo_ptr + 0]			# LN: 82 | 
	call (_processBlock)			# LN: 82 | 
cline_82_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = xmem[_tremolo_ptr + 0]			# LN: 83 | 
	call (_init)			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	i1 = i7 - (0x6)			# LN: 84 | 
	i1 = xmem[i1]			# LN: 84 | 
	i4 = xmem[_tremolo_ptr + 0]			# LN: 84 | 
	call (_processBlock)			# LN: 84 | 
cline_84_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 87 | 
	a0 = 0			# LN: 87 | 
	xmem[i0] = a0h			# LN: 87 | 
	do (0x10), label_end_93			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	x0 = xmem[_OUTPUT_GAIN2 + 0]			# LN: 89 | 
	x1 = xmem[i0]			# LN: 89 | 
	i0 = i7 - (0xa)			# LN: 89 | 
	i0 = xmem[i0]			# LN: 89 | 
	a0 = x1 * x0			# LN: 89 | 
	xmem[i0] = a0			# LN: 89 | 
cline_89_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	x0 = xmem[_OUTPUT_GAIN2 + 0]			# LN: 90 | 
	x1 = xmem[i0]			# LN: 90 | 
	i0 = i7 - (0xb)			# LN: 90 | 
	i0 = xmem[i0]			# LN: 90 | 
	a0 = x1 * x0			# LN: 90 | 
	xmem[i0] = a0			# LN: 90 | 
cline_90_0:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 93 | 
	i0 = xmem[i0]			# LN: 93 | 
	i1 = i7 - (0x5)			# LN: 93 | 
	i0 += 1			# LN: 93 | 
	xmem[i1] = i0			# LN: 93 | 
cline_93_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 94 | 
	i0 = xmem[i0]			# LN: 94 | 
	i1 = i7 - (0x6)			# LN: 94 | 
	i0 += 1			# LN: 94 | 
	xmem[i1] = i0			# LN: 94 | 
cline_94_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xa)			# LN: 95 | 
	i0 = xmem[i0]			# LN: 95 | 
	i1 = i7 - (0xa)			# LN: 95 | 
	i0 += 1			# LN: 95 | 
	xmem[i1] = i0			# LN: 95 | 
cline_95_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xb)			# LN: 96 | 
	i0 = xmem[i0]			# LN: 96 | 
	i1 = i7 - (0xb)			# LN: 96 | 
	i0 += 1			# LN: 96 | 
	xmem[i1] = i0			# LN: 96 | 
cline_96_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0xc)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	uhalfword(a1) = (0x1)			# LN: 87 | 
	a0 = a0 + a1			# LN: 87 | 
	i0 = i7 - (0xc)			# LN: 87 | 
label_end_93:			# LN: 87 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 87 | 
for_end_1:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	jmp (endif_2)			# LN: 87 | 
cline_87_1:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_152)			# LN: 99 | 
__epilogue_152:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0xd)			# LN: 99 | 
	i7 -= 1			# LN: 99 | 
	ret			# LN: 99 | 



_initialize:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x3)			# LN: 12 | 
	i0 = i7 - (0x1)			# LN: 12 | 
	xmem[i0] = a0h			# LN: 12 | 
	i0 = i7 - (0x2)			# LN: 12 | 
	xmem[i0] = a1h			# LN: 12 | 
	i0 = i7 - (0x3)			# LN: 12 | 
	xmem[i0] = b0h			# LN: 12 | 
cline_12_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 14 | 
	a0 = xmem[i0]			# LN: 14 | 
	xmem[_input_gain + 0] = a0h			# LN: 14 | 
cline_14_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 15 | 
	a0 = xmem[i0]			# LN: 15 | 
	xmem[_headroom_gain + 0] = a0h			# LN: 15 | 
cline_15_0:			/* LN: 16 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 16 | 
	a0 = xmem[i0]			# LN: 16 | 
	xmem[_mode + 0] = a0h			# LN: 16 | 
cline_16_0:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_150)			# LN: 17 | 
__epilogue_150:			/* LN: 17 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x3)			# LN: 17 | 
	i7 -= 1			# LN: 17 | 
	ret			# LN: 17 | 
