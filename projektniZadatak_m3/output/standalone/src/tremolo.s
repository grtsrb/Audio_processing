	.extern _cl_sin
	.public _init
	.public _lfo
	.extern __mul_sat_laccum
	.extern __laccum_sat_accum
	.xdata_ovly
__extractedConst_0_4
	.dw  (0x7fffffff)
	.code_ovly



_init:			/* LN: 4 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 4 | 
	i7 += 1			# LN: 4 | 
	i7 = i7 + (0x1)			# LN: 4 | 
	i1 = i7 - (0x1)			# LN: 4 | 
	xmem[i1] = i0			# LN: 4 | 
cline_4_0:			/* LN: 8 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 8 | 
	i0 = xmem[i0]			# LN: 8 | 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 8 | 
	i0 += 1			# LN: 8 | 
	ymem[i0] = a0h			# LN: 8 | 
cline_8_0:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 9 | 
	i0 = xmem[i0]			# LN: 9 | 
	a0 = xmem[__extractedConst_0_4 + 0]			# LN: 9 | 
	i0 += 2			# LN: 9 | 
	ymem[i0] = a0h			# LN: 9 | 
cline_9_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	uhalfword(a0) = (0x1)			# LN: 10 | 
	i0 = i0 + (0x3)			# LN: 10 | 
	ymem[i0] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 11 | 
	i0 = xmem[i0]			# LN: 11 | 
	a0 = 0			# LN: 11 | 
	i0 = i0 + (0x4)			# LN: 11 | 
	ymem[i0] = a0h			# LN: 11 | 
cline_11_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 12 | 
	i0 = xmem[i0]			# LN: 12 | 
	uhalfword(a0) = (0xaec3)			# LN: 12 | 
	i0 = i0 + (0x5)			# LN: 12 | 
	ymem[i0] = a0h			# LN: 12 | 
cline_12_0:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_146)			# LN: 13 | 
__epilogue_146:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 13 | 
	i7 -= 1			# LN: 13 | 
	ret			# LN: 13 | 



_lfo:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 76 | 
	i7 += 1			# LN: 76 | 
	i7 = i7 + (0x2)			# LN: 76 | 
	i0 = i7 - (0x1)			# LN: 76 | 
	xmem[i0] = a0h			# LN: 76 | 
	i0 = i7 - (0x2)			# LN: 76 | 
	xmem[i0] = a1h			# LN: 76 | 
cline_76_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x2)			# LN: 80 | 
	a0 - a1			# LN: 80 | 
	if (a == 0) jmp (case_0)			# LN: 80 | 
	jmp (default_0)			# LN: 80 | 
cline_80_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 86 | 
	a0 = xmem[i0]			# LN: 86 | 
	a1 = (0x2000)			# LN: 86 | 
	a0 - a1			# LN: 86 | 
	if (a >= 0) jmp (else_0)			# LN: 86 | 
cline_86_0:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	uhalfword(x0) = (0x2)			# LN: 88 | 
	i0 = i7 - (0x1)			# LN: 88 | 
	x1 = xmem[i0]			# LN: 88 | 
	a0 = x0 * x1			# LN: 88 | 
	a0 = a0 >> 1			# LN: 88 | 
	AnyReg(a0h, a0l)			# LN: 88 | 
	a0l = (0x0)			# LN: 88 | 
	a1 = (0x4000)			# LN: 88 | 
	a0 = a1 + a0			# LN: 88 | 
	jmp (__epilogue_148)			# LN: 88 | 
cline_88_0:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 90 | 
	a0 = xmem[i0]			# LN: 90 | 
	a1 = (0x6000)			# LN: 90 | 
	a0 - a1			# LN: 90 | 
	if (a >= 0) jmp (else_1)			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	a1 = (0x2000)			# LN: 92 | 
	a0 = a0 - a1			# LN: 92 | 
	x0 = a0h			# LN: 92 | 
	uhalfword(x1) = (0x2)			# LN: 92 | 
	a0 = x1 * x0			# LN: 92 | 
	a0 = a0 >> 1			# LN: 92 | 
	AnyReg(a0h, a0l)			# LN: 92 | 
	a0l = (0x0)			# LN: 92 | 
	a1 = xmem[__extractedConst_0_4 + 0]			# LN: 92 | 
	a0 = a1 - a0			# LN: 92 | 
	jmp (__epilogue_148)			# LN: 92 | 
cline_92_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	a1 = (0x6000)			# LN: 96 | 
	a0 = a0 - a1			# LN: 96 | 
	x0 = a0h			# LN: 96 | 
	x1 = xmem[__extractedConst_0_4 + 0]			# LN: 96 | 
	a0 = x1 * x0			# LN: 96 | 
	a0 = a0			# LN: 96 | 
	jmp (__epilogue_148)			# LN: 96 | 
cline_80_1:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	a0 = a0 << 1			# LN: 102 | 
	call (_cl_sin)			# LN: 102 | 
	a1 =+ a0			# LN: 102 | 
	b0 = (0x4000)			# LN: 102 | 
	a0 =+ b0			# LN: 102 | 
	call (__mul_sat_laccum)			# LN: 102 | 
	call (__laccum_sat_accum)			# LN: 102 | 
	a0 = a0 + b0			# LN: 102 | 
	a0 = a0			# LN: 102 | 
	jmp (__epilogue_148)			# LN: 102 | 
cline_80_2:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
__epilogue_148:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 106 | 
	i7 -= 1			# LN: 106 | 
	ret			# LN: 106 | 
