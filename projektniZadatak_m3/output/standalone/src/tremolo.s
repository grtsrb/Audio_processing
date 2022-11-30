	.extern _cl_sin
	.public _lfo
	.extern __mul_sat_laccum
	.extern __laccum_sat_accum
	.xdata_ovly
__extractedConst_0_2
	.dw  (0x7fffffff)
	.code_ovly



_lfo:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	uhalfword(b0) = (0x2)			# LN: 83 | 
	a1 - b0			# LN: 83 | 
	if (a == 0) jmp (case_0)			# LN: 83 | 
	a0 = a0 << 1			# LN: 105 | 
	call (_cl_sin)			# LN: 105 | 
	a1 =+ a0			# LN: 105 | 
	b0 = (0x4000)			# LN: 105 | 
	a0 =+ b0			# LN: 105 | 
	call (__mul_sat_laccum)			# LN: 105 | 
	call (__laccum_sat_accum)			# LN: 105 | 
	a0 = a0 + b0			# LN: 105 | 
	a0 = a0			# LN: 105 | 
	jmp (__epilogue_148)			# LN: 105 | 
case_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	a1 = (0x2000)			# LN: 89 | 
	a0 - a1			# LN: 89 | 
	if (a >= 0) jmp (else_0)			# LN: 89 | 
	uhalfword(x0) = (0x2)			# LN: 91 | 
	x1 = a0h			# LN: 91 | 
	a0 = x0 * x1			# LN: 91 | 
	a0 = a0 >> 1			# LN: 91 | 
	AnyReg(a0h, a0l)			# LN: 91 | 
	a0l = (0x0)			# LN: 91 | 
	a1 = (0x4000)			# LN: 91 | 
	a0 = a1 + a0			# LN: 91 | 
	jmp (__epilogue_148)			# LN: 91 | 
else_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	a1 = (0x6000)			# LN: 93 | 
	a0 - a1			# LN: 93 | 
	if (a >= 0) jmp (else_1)			# LN: 93 | 
	a1 = (0x2000)			# LN: 95 | 
	a0 = a0 - a1			# LN: 95 | 
	x0 = a0h			# LN: 95 | 
	uhalfword(x1) = (0x2)			# LN: 95 | 
	a0 = x1 * x0			# LN: 95 | 
	a0 = a0 >> 1			# LN: 95 | 
	AnyReg(a0h, a0l)			# LN: 95 | 
	a0l = (0x0)			# LN: 95 | 
	a1 = xmem[__extractedConst_0_2 + 0]			# LN: 95 | 
	a0 = a1 - a0			# LN: 95 | 
	jmp (__epilogue_148)			# LN: 95 | 
else_1:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	a1 = (0x6000)			# LN: 99 | 
	a0 = a0 - a1			# LN: 99 | 
	x0 = a0h			# LN: 99 | 
	x1 = xmem[__extractedConst_0_2 + 0]			# LN: 99 | 
	a0 = x1 * x0			# LN: 99 | 
	a0 = a0			# LN: 99 | 
__epilogue_148:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 109 | 
