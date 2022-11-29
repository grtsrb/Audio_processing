	.extern _cl_sin
	.public _init
	.public _lfo
	.public _processBlock
	.extern __mul_sat_laccum
	.extern __laccum_sat_accum
	.xdata_ovly
__extractedConst_0_7
	.dw  (0x7fffffff)
	.code_ovly



_init:			/* LN: 3 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 3 | 
	i7 += 1			# LN: 3 | 
	i7 = i7 + (0x1)			# LN: 3 | 
	i1 = i7 - (0x1)			# LN: 3 | 
	xmem[i1] = i0			# LN: 3 | 
cline_3_0:			/* LN: 7 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 7 | 
	i0 = xmem[i0]			# LN: 7 | 
	a0 = xmem[__extractedConst_0_7 + 0]			# LN: 7 | 
	i0 += 1			# LN: 7 | 
	ymem[i0] = a0h			# LN: 7 | 
cline_7_0:			/* LN: 8 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 8 | 
	i0 = xmem[i0]			# LN: 8 | 
	a0 = xmem[__extractedConst_0_7 + 0]			# LN: 8 | 
	i0 += 2			# LN: 8 | 
	ymem[i0] = a0h			# LN: 8 | 
cline_8_0:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	uhalfword(a0) = (0x1)			# LN: 9 | 
	i0 = i0 + (0x3)			# LN: 9 | 
	ymem[i0] = a0h			# LN: 9 | 
cline_9_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	a0 = 0			# LN: 10 | 
	i0 = i0 + (0x4)			# LN: 10 | 
	ymem[i0] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 11 | 
	i0 = xmem[i0]			# LN: 11 | 
	uhalfword(a0) = (0xaec3)			# LN: 11 | 
	i0 = i0 + (0x5)			# LN: 11 | 
	ymem[i0] = a0h			# LN: 11 | 
cline_11_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_144)			# LN: 12 | 
__epilogue_144:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 12 | 
	i7 -= 1			# LN: 12 | 
	ret			# LN: 12 | 



_lfo:			/* LN: 72 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 72 | 
	i7 += 1			# LN: 72 | 
	i7 = i7 + (0x2)			# LN: 72 | 
	i0 = i7 - (0x1)			# LN: 72 | 
	xmem[i0] = a0h			# LN: 72 | 
	i0 = i7 - (0x2)			# LN: 72 | 
	xmem[i0] = a1h			# LN: 72 | 
cline_72_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 76 | 
	a0 = xmem[i0]			# LN: 76 | 
	uhalfword(a1) = (0x2)			# LN: 76 | 
	a0 - a1			# LN: 76 | 
	if (a == 0) jmp (case_0)			# LN: 76 | 
	jmp (default_0)			# LN: 76 | 
cline_76_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	a1 = (0x2000)			# LN: 82 | 
	a0 - a1			# LN: 82 | 
	if (a >= 0) jmp (else_1)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	uhalfword(x0) = (0x2)			# LN: 84 | 
	i0 = i7 - (0x1)			# LN: 84 | 
	x1 = xmem[i0]			# LN: 84 | 
	a0 = x0 * x1			# LN: 84 | 
	a0 = a0 >> 1			# LN: 84 | 
	AnyReg(a0h, a0l)			# LN: 84 | 
	a0l = (0x0)			# LN: 84 | 
	a1 = (0x4000)			# LN: 84 | 
	a0 = a1 + a0			# LN: 84 | 
	jmp (__epilogue_148)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	a1 = (0x6000)			# LN: 86 | 
	a0 - a1			# LN: 86 | 
	if (a >= 0) jmp (else_2)			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 88 | 
	a0 = xmem[i0]			# LN: 88 | 
	a1 = (0x2000)			# LN: 88 | 
	a0 = a0 - a1			# LN: 88 | 
	x0 = a0h			# LN: 88 | 
	uhalfword(x1) = (0x2)			# LN: 88 | 
	a0 = x1 * x0			# LN: 88 | 
	a0 = a0 >> 1			# LN: 88 | 
	AnyReg(a0h, a0l)			# LN: 88 | 
	a0l = (0x0)			# LN: 88 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 88 | 
	a0 = a1 - a0			# LN: 88 | 
	jmp (__epilogue_148)			# LN: 88 | 
cline_88_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	a1 = (0x6000)			# LN: 92 | 
	a0 = a0 - a1			# LN: 92 | 
	x0 = a0h			# LN: 92 | 
	x1 = xmem[__extractedConst_0_7 + 0]			# LN: 92 | 
	a0 = x1 * x0			# LN: 92 | 
	a0 = a0			# LN: 92 | 
	jmp (__epilogue_148)			# LN: 92 | 
cline_76_1:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 98 | 
	a0 = xmem[i0]			# LN: 98 | 
	a0 = a0 << 1			# LN: 98 | 
	call (_cl_sin)			# LN: 98 | 
	a1 =+ a0			# LN: 98 | 
	b0 = (0x4000)			# LN: 98 | 
	a0 =+ b0			# LN: 98 | 
	call (__mul_sat_laccum)			# LN: 98 | 
	call (__laccum_sat_accum)			# LN: 98 | 
	a0 = a0 + b0			# LN: 98 | 
	a0 = a0			# LN: 98 | 
	jmp (__epilogue_148)			# LN: 98 | 
cline_76_2:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
__epilogue_148:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 102 | 
	i7 -= 1			# LN: 102 | 
	ret			# LN: 102 | 



_processBlock:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 15 | 
	i7 += 1			# LN: 15 | 
	i7 = i7 + (0x7)			# LN: 15 | 
	i5 = i7 - (0x1)			# LN: 15 | 
	xmem[i5] = i0			# LN: 15 | 
	i0 = i7 - (0x2)			# LN: 15 | 
	xmem[i0] = i1			# LN: 15 | 
	i0 = i7 - (0x3)			# LN: 15 | 
	xmem[i0] = i4			# LN: 15 | 
cline_15_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 32 | 
	i0 = xmem[i0]			# LN: 32 | 
	i1 = i7 - (0x4)			# LN: 32 | 
	i0 = i0 + (0x4)			# LN: 32 | 
	a0 = ymem[i0]			# LN: 32 | 
	xmem[i1] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x10), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 39 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 39 | 
	i0 = xmem[i0]			# LN: 39 | 
	i1 = i7 - (0x6)			# LN: 39 | 
	a0 = ymem[i0]			# LN: 39 | 
	xmem[i1] = a0h			# LN: 39 | 
cline_39_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 43 | 
	i0 = xmem[i0]			# LN: 43 | 
	i1 = i7 - (0x3)			# LN: 43 | 
	i1 = xmem[i1]			# LN: 43 | 
	i0 += 2			# LN: 43 | 
	i1 = i1 + (0x3)			# LN: 43 | 
	a1 = ymem[i1]			# LN: 43 | 
	i1 = i7 - (0x4)			# LN: 43 | 
	a0 = xmem[i1]			# LN: 43 | 
	y0 = ymem[i0]			# LN: 43 | 
	call (_lfo)			# LN: 43 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 43 | 
	x0 = a0h			# LN: 43 | 
	i0 = i7 - (0x6)			# LN: 43 | 
	a0 = xmem[i0]; a1 -= y0 * x0			# LN: 43, 43 | 
	call (__mul_sat_laccum)			# LN: 43 | 
	i0 = i7 - (0x2)			# LN: 43 | 
	i0 = xmem[i0]			# LN: 43 | 
	nop #empty cycle
	ymem[i0] = a0			# LN: 43 | 
cline_43_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 47 | 
	i0 = xmem[i0]			# LN: 47 | 
	i1 = i7 - (0x3)			# LN: 47 | 
	i0 += 1			# LN: 47 | 
	i1 = xmem[i1]			# LN: 47 | 
	x0 = ymem[i0]			# LN: 47 | 
	i0 = i1 + (0x5)			# LN: 47 | 
	x1 = ymem[i0]			# LN: 47 | 
	a0 = x0 * x1			# LN: 47 | 
	i0 = i7 - (0x7)			# LN: 47 | 
	xmem[i0] = a0			# LN: 47 | 
cline_47_0:			/* LN: 48 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 48 | 
	a0 = xmem[i0]			# LN: 48 | 
	a0 = a0 << 1			# LN: 48 | 
	i0 = i7 - (0x7)			# LN: 48 | 
	xmem[i0] = a0h			# LN: 48 | 
cline_48_0:			/* LN: 49 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 49 | 
	a0 = xmem[i0]			# LN: 49 | 
	i0 = i7 - (0x7)			# LN: 49 | 
	a1 = xmem[i0]			# LN: 49 | 
	a0 = a0 + a1			# LN: 49 | 
	i0 = i7 - (0x4)			# LN: 49 | 
	xmem[i0] = a0h			# LN: 49 | 
cline_49_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 50 | 
	a0 = xmem[i0]			# LN: 50 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 50 | 
	a0 - a1			# LN: 50 | 
	if (a < 0) jmp (else_0)			# LN: 50 | 
cline_50_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 52 | 
	a0 = xmem[i0]			# LN: 52 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 52 | 
	a0 = a0 - a1			# LN: 52 | 
	i0 = i7 - (0x4)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
	jmp (endif_0)			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	i1 = i7 - (0x1)			# LN: 53 | 
	i0 += 1			# LN: 53 | 
	xmem[i1] = i0			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	i1 = i7 - (0x2)			# LN: 54 | 
	i0 += 1			# LN: 54 | 
	xmem[i1] = i0			# LN: 54 | 
cline_54_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x5)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 64 | 
	i0 = xmem[i0]			# LN: 64 | 
	i1 = i7 - (0x4)			# LN: 64 | 
	i0 = i0 + (0x4)			# LN: 64 | 
	a0 = xmem[i1]			# LN: 64 | 
	ymem[i0] = a0h			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_146)			# LN: 66 | 
__epilogue_146:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 66 | 
	i7 -= 1			# LN: 66 | 
	ret			# LN: 66 | 
