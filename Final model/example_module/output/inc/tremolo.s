	.extern _cl_sin
	.public _lfo
	.extern __mul_sat_laccum
	.extern __laccum_sat_accum
X__extractedConst_0_2	.xdata_ovly
__extractedConst_0_2
	.dw  (0x7fffffff)
	.code_ovly



_lfo:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	uhalfword(b0) = (0x2)			# LN: 32 | 
	a1 - b0			# LN: 32 | 
	if (a == 0) jmp (case_0)			# LN: 32 | 
	a0 = a0 << 1			# LN: 54 | 
	call (_cl_sin)			# LN: 54 | 
	a1 =+ a0			# LN: 54 | 
	b0 = (0x4000)			# LN: 54 | 
	a0 =+ b0			# LN: 54 | 
	call (__mul_sat_laccum)			# LN: 54 | 
	call (__laccum_sat_accum)			# LN: 54 | 
	a0 = a0 + b0			# LN: 54 | 
	a0 = a0			# LN: 54 | 
	jmp (__epilogue_144)			# LN: 54 | 
case_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	a1 = (0x2000)			# LN: 38 | 
	a0 - a1			# LN: 38 | 
	if (a >= 0) jmp (else_0)			# LN: 38 | 
	uhalfword(x0) = (0x2)			# LN: 40 | 
	x1 = a0h			# LN: 40 | 
	a0 = x0 * x1			# LN: 40 | 
	a0 = a0 >> 1			# LN: 40 | 
	AnyReg(a0h, a0l)			# LN: 40 | 
	a0l = (0x0)			# LN: 40 | 
	a1 = (0x4000)			# LN: 40 | 
	a0 = a1 + a0			# LN: 40 | 
	jmp (__epilogue_144)			# LN: 40 | 
else_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	a1 = (0x6000)			# LN: 42 | 
	a0 - a1			# LN: 42 | 
	if (a >= 0) jmp (else_1)			# LN: 42 | 
	a1 = (0x2000)			# LN: 44 | 
	a0 = a0 - a1			# LN: 44 | 
	x0 = a0h			# LN: 44 | 
	uhalfword(x1) = (0x2)			# LN: 44 | 
	a0 = x1 * x0			# LN: 44 | 
	a0 = a0 >> 1			# LN: 44 | 
	AnyReg(a0h, a0l)			# LN: 44 | 
	a0l = (0x0)			# LN: 44 | 
	a1 = xmem[__extractedConst_0_2 + 0]			# LN: 44 | 
	a0 = a1 - a0			# LN: 44 | 
	jmp (__epilogue_144)			# LN: 44 | 
else_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	a1 = (0x6000)			# LN: 48 | 
	a0 = a0 - a1			# LN: 48 | 
	x0 = a0h			# LN: 48 | 
	x1 = xmem[__extractedConst_0_2 + 0]			# LN: 48 | 
	a0 = x1 * x0			# LN: 48 | 
	a0 = a0			# LN: 48 | 
__epilogue_144:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	ret			# LN: 58 | 
