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



_init:			/* LN: 6 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 6 | 
	i7 += 1			# LN: 6 | 
	i7 = i7 + (0x1)			# LN: 6 | 
	i1 = i7 - (0x1)			# LN: 6 | 
	xmem[i1] = i0			# LN: 6 | 
cline_6_0:			/* LN: 10 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 10 | 
	i0 = xmem[i0]			# LN: 10 | 
	a0 = xmem[__extractedConst_0_7 + 0]			# LN: 10 | 
	i0 += 1			# LN: 10 | 
	xmem[i0] = a0h			# LN: 10 | 
cline_10_0:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 11 | 
	i0 = xmem[i0]			# LN: 11 | 
	a0 = xmem[__extractedConst_0_7 + 0]			# LN: 11 | 
	i0 += 2			# LN: 11 | 
	xmem[i0] = a0h			# LN: 11 | 
cline_11_0:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 12 | 
	i0 = xmem[i0]			# LN: 12 | 
	uhalfword(a0) = (0x1)			# LN: 12 | 
	i0 = i0 + (0x3)			# LN: 12 | 
	xmem[i0] = a0h			# LN: 12 | 
cline_12_0:			/* LN: 13 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 13 | 
	i0 = xmem[i0]			# LN: 13 | 
	a0 = 0			# LN: 13 | 
	i0 = i0 + (0x4)			# LN: 13 | 
	xmem[i0] = a0h			# LN: 13 | 
cline_13_0:			/* LN: 14 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 14 | 
	i0 = xmem[i0]			# LN: 14 | 
	uhalfword(a0) = (0xaec3)			# LN: 14 | 
	i0 = i0 + (0x5)			# LN: 14 | 
	xmem[i0] = a0h			# LN: 14 | 
cline_14_0:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_144)			# LN: 15 | 
__epilogue_144:			/* LN: 15 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x1)			# LN: 15 | 
	i7 -= 1			# LN: 15 | 
	ret			# LN: 15 | 



_lfo:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 75 | 
	i7 += 1			# LN: 75 | 
	i7 = i7 + (0x2)			# LN: 75 | 
	i0 = i7 - (0x1)			# LN: 75 | 
	xmem[i0] = a0h			# LN: 75 | 
	i0 = i7 - (0x2)			# LN: 75 | 
	xmem[i0] = a1h			# LN: 75 | 
cline_75_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 79 | 
	a0 = xmem[i0]			# LN: 79 | 
	uhalfword(a1) = (0x2)			# LN: 79 | 
	a0 - a1			# LN: 79 | 
	if (a == 0) jmp (case_0)			# LN: 79 | 
	jmp (default_0)			# LN: 79 | 
cline_79_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	a1 = (0x2000)			# LN: 85 | 
	a0 - a1			# LN: 85 | 
	if (a >= 0) jmp (else_1)			# LN: 85 | 
cline_85_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	uhalfword(x0) = (0x2)			# LN: 87 | 
	i0 = i7 - (0x1)			# LN: 87 | 
	x1 = xmem[i0]			# LN: 87 | 
	a0 = x0 * x1			# LN: 87 | 
	a0 = a0 >> 1			# LN: 87 | 
	AnyReg(a0h, a0l)			# LN: 87 | 
	a0l = (0x0)			# LN: 87 | 
	a1 = (0x4000)			# LN: 87 | 
	a0 = a1 + a0			# LN: 87 | 
	jmp (__epilogue_148)			# LN: 87 | 
cline_87_0:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 89 | 
	a0 = xmem[i0]			# LN: 89 | 
	a1 = (0x6000)			# LN: 89 | 
	a0 - a1			# LN: 89 | 
	if (a >= 0) jmp (else_2)			# LN: 89 | 
cline_89_0:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 91 | 
	a0 = xmem[i0]			# LN: 91 | 
	a1 = (0x2000)			# LN: 91 | 
	a0 = a0 - a1			# LN: 91 | 
	x0 = a0h			# LN: 91 | 
	uhalfword(x1) = (0x2)			# LN: 91 | 
	a0 = x1 * x0			# LN: 91 | 
	a0 = a0 >> 1			# LN: 91 | 
	AnyReg(a0h, a0l)			# LN: 91 | 
	a0l = (0x0)			# LN: 91 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 91 | 
	a0 = a1 - a0			# LN: 91 | 
	jmp (__epilogue_148)			# LN: 91 | 
cline_91_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	a1 = (0x6000)			# LN: 95 | 
	a0 = a0 - a1			# LN: 95 | 
	x0 = a0h			# LN: 95 | 
	x1 = xmem[__extractedConst_0_7 + 0]			# LN: 95 | 
	a0 = x1 * x0			# LN: 95 | 
	a0 = a0			# LN: 95 | 
	jmp (__epilogue_148)			# LN: 95 | 
cline_79_1:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	a0 = a0 << 1			# LN: 101 | 
	call (_cl_sin)			# LN: 101 | 
	a1 =+ a0			# LN: 101 | 
	b0 = (0x4000)			# LN: 101 | 
	a0 =+ b0			# LN: 101 | 
	call (__mul_sat_laccum)			# LN: 101 | 
	call (__laccum_sat_accum)			# LN: 101 | 
	a0 = a0 + b0			# LN: 101 | 
	a0 = a0			# LN: 101 | 
	jmp (__epilogue_148)			# LN: 101 | 
cline_79_2:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
__epilogue_148:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x2)			# LN: 105 | 
	i7 -= 1			# LN: 105 | 
	ret			# LN: 105 | 



_processBlock:			/* LN: 18 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 18 | 
	i7 += 1			# LN: 18 | 
	i7 = i7 + (0x7)			# LN: 18 | 
	i5 = i7 - (0x1)			# LN: 18 | 
	xmem[i5] = i0			# LN: 18 | 
	i0 = i7 - (0x2)			# LN: 18 | 
	xmem[i0] = i1			# LN: 18 | 
	i0 = i7 - (0x3)			# LN: 18 | 
	xmem[i0] = i4			# LN: 18 | 
cline_18_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 35 | 
	i0 = xmem[i0]			# LN: 35 | 
	i1 = i7 - (0x4)			# LN: 35 | 
	i0 = i0 + (0x4)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	xmem[i1] = a0h			# LN: 35 | 
cline_35_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 38 | 
	a0 = 0			# LN: 38 | 
	xmem[i0] = a0h			# LN: 38 | 
	do (0x10), label_end_92			# LN: 38 | 
cline_38_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 42 | 
	i0 = xmem[i0]			# LN: 42 | 
	i1 = i7 - (0x6)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	xmem[i1] = a0h			# LN: 42 | 
cline_42_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	i1 = i7 - (0x3)			# LN: 46 | 
	i1 = xmem[i1]			# LN: 46 | 
	i0 += 2			# LN: 46 | 
	i1 = i1 + (0x3)			# LN: 46 | 
	a1 = xmem[i1]			# LN: 46 | 
	i1 = i7 - (0x4)			# LN: 46 | 
	a0 = xmem[i1]			# LN: 46 | 
	y0 = xmem[i0]			# LN: 46 | 
	call (_lfo)			# LN: 46 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 46 | 
	x0 = a0h			# LN: 46 | 
	i0 = i7 - (0x6)			# LN: 46 | 
	a0 = xmem[i0]; a1 -= y0 * x0			# LN: 46, 46 | 
	call (__mul_sat_laccum)			# LN: 46 | 
	i0 = i7 - (0x2)			# LN: 46 | 
	i0 = xmem[i0]			# LN: 46 | 
	nop #empty cycle
	xmem[i0] = a0			# LN: 46 | 
cline_46_0:			/* LN: 50 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 50 | 
	i0 = xmem[i0]			# LN: 50 | 
	i1 = i7 - (0x3)			# LN: 50 | 
	i0 += 1			# LN: 50 | 
	i1 = xmem[i1]			# LN: 50 | 
	x0 = xmem[i0]			# LN: 50 | 
	i0 = i1 + (0x5)			# LN: 50 | 
	x1 = xmem[i0]			# LN: 50 | 
	a0 = x0 * x1			# LN: 50 | 
	i0 = i7 - (0x7)			# LN: 50 | 
	xmem[i0] = a0			# LN: 50 | 
cline_50_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 51 | 
	a0 = xmem[i0]			# LN: 51 | 
	a0 = a0 << 1			# LN: 51 | 
	i0 = i7 - (0x7)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 52 | 
	a0 = xmem[i0]			# LN: 52 | 
	i0 = i7 - (0x7)			# LN: 52 | 
	a1 = xmem[i0]			# LN: 52 | 
	a0 = a0 + a1			# LN: 52 | 
	i0 = i7 - (0x4)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 53 | 
	a0 = xmem[i0]			# LN: 53 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 53 | 
	a0 - a1			# LN: 53 | 
	if (a < 0) jmp (else_0)			# LN: 53 | 
cline_53_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x4)			# LN: 55 | 
	a0 = xmem[i0]			# LN: 55 | 
	a1 = xmem[__extractedConst_0_7 + 0]			# LN: 55 | 
	a0 = a0 - a1			# LN: 55 | 
	i0 = i7 - (0x4)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
	jmp (endif_0)			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x1)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	i1 = i7 - (0x1)			# LN: 56 | 
	i0 += 1			# LN: 56 | 
	xmem[i1] = i0			# LN: 56 | 
cline_56_0:			/* LN: 57 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 57 | 
	i0 = xmem[i0]			# LN: 57 | 
	i1 = i7 - (0x2)			# LN: 57 | 
	i0 += 1			# LN: 57 | 
	xmem[i1] = i0			# LN: 57 | 
cline_57_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 58 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 38 | 
	a0 = xmem[i0]			# LN: 38 | 
	uhalfword(a1) = (0x1)			# LN: 38 | 
	a0 = a0 + a1			# LN: 38 | 
	i0 = i7 - (0x5)			# LN: 38 | 
label_end_92:			# LN: 38 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 38 | 
cline_38_1:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 67 | 
	i0 = xmem[i0]			# LN: 67 | 
	i1 = i7 - (0x4)			# LN: 67 | 
	i0 = i0 + (0x4)			# LN: 67 | 
	a0 = xmem[i1]			# LN: 67 | 
	xmem[i0] = a0h			# LN: 67 | 
cline_67_0:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	jmp (__epilogue_146)			# LN: 69 | 
__epilogue_146:			/* LN: 69 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x7)			# LN: 69 | 
	i7 -= 1			# LN: 69 | 
	ret			# LN: 69 | 
