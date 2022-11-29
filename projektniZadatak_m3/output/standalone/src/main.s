	.public _sampleBuffer
	.public _tremoloL
	.public _tremoloR
	.extern _cl_wavread_bits_per_sample
	.extern _cl_wavread_close
	.extern _cl_wavread_frame_rate
	.extern _cl_wavread_getnchannels
	.extern _cl_wavread_number_of_frames
	.extern _cl_wavread_open
	.extern _cl_wavread_recvsample
	.extern _cl_wavwrite_close
	.extern _cl_wavwrite_open
	.extern _cl_wavwrite_sendsample
	.extern _gainProcessing
	.extern _initialize
	.public _main
	.extern _printf
	.extern _strcpy
	.extern __div
	.xdata_ovly
__extractedConst_0_1
	.dw  (0x4026aa8e)
	.xdata_ovly
__extractedConst_1_1
	.dw  (0x5a9df97a)
	.ydata_ovly
_sampleBuffer
	.bss (0x80)
	.xdata_ovly
_string_const_0
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.xdata_ovly
_string_const_1
	.dw  (0x45)
	.dw  (0x72)
	.dw  (0x72)
	.dw  (0x6f)
	.dw  (0x72)
	.dw  (0x3a)
	.dw  (0x20)
	.dw  (0x43)
	.dw  (0x6f)
	.dw  (0x75)
	.dw  (0x6c)
	.dw  (0x64)
	.dw  (0x20)
	.dw  (0x6e)
	.dw  (0x6f)
	.dw  (0x74)
	.dw  (0x20)
	.dw  (0x6f)
	.dw  (0x70)
	.dw  (0x65)
	.dw  (0x6e)
	.dw  (0x20)
	.dw  (0x77)
	.dw  (0x61)
	.dw  (0x76)
	.dw  (0x65)
	.dw  (0x66)
	.dw  (0x69)
	.dw  (0x6c)
	.dw  (0x65)
	.dw  (0x2e)
	.dw  (0xa)
	.dw  (0x0)
	.ydata_ovly
_tremoloL
	.bss (0x6)
	.ydata_ovly
_tremoloR
	.bss (0x6)
	.code_ovly



	# This construction should ensure linking of crt0 in case when target is a standalone program without the OS
	.if defined(_OVLY_)
		.if .strcmp('standalone',_OVLY_)=0
		.if .strcmp('crystal32',_TARGET_FAMILY_)=0
			.extern __start         # dummy use of __start to force linkage of crt0
dummy		.equ(__start)
		.else
			.extern __intvec         # dummy use of __intvec to force linkage of intvec
dummy		.equ(__intvec)
		.endif
		.endif
	.endif

_main:			/* LN: 11 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 11 | 
	i7 += 1			# LN: 11 | 
	i7 = i7 + (0x214)			# LN: 11 | 
	i1 = i7 - (0x1)			# LN: 11 | 
	xmem[i1] = a0h			# LN: 11 | 
	i1 = i7 - (0x2)			# LN: 11 | 
	xmem[i1] = i0			# LN: 11 | 
cline_11_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 30 | 
	i0 = i7 - (0x3)			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 31 | 
	i0 = i7 - (0x4)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 32 | 
	uhalfword(a0) = (0x1)			# LN: 32 | 
	xmem[i0] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 33 | 
	uhalfword(a0) = (0x2)			# LN: 33 | 
	xmem[i0] = a0h			# LN: 33 | 
cline_33_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 36 | 
	a0 = 0			# LN: 36 | 
	xmem[i0] = a0h			# LN: 36 | 
	do (0x8), label_end_93			# LN: 36 | 
cline_36_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 37 | 
	a0 = 0			# LN: 37 | 
	xmem[i0] = a0h			# LN: 37 | 
	do (0x10), label_end_92			# LN: 37 | 
cline_37_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 38 | 
	a0 = xmem[i0]; a1 = 0			# LN: 38, 38 | 
	a0 = a0 << 4			# LN: 38 | 
	i0 = a0			# LN: 38 | 
	i1 = i7 - (0x8)			# LN: 38 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 38 | 
	a0 = xmem[i1]			# LN: 38 | 
	b0 = i0			# LN: 38 | 
	a0 = a0 + b0			# LN: 38 | 
	AnyReg(i0, a0h)			# LN: 38 | 
	nop #empty cycle
	ymem[i0] = a1h			# LN: 38 | 
cline_38_0:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 37 | 
	a0 = xmem[i0]			# LN: 37 | 
	uhalfword(a1) = (0x1)			# LN: 37 | 
	a0 = a0 + a1			# LN: 37 | 
	i0 = i7 - (0x8)			# LN: 37 | 
label_end_92:			# LN: 37 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 37 | 
cline_37_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 38 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 37 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 36 | 
	a0 = xmem[i0]			# LN: 36 | 
	uhalfword(a1) = (0x1)			# LN: 36 | 
	a0 = a0 + a1			# LN: 36 | 
	i0 = i7 - (0x7)			# LN: 36 | 
label_end_93:			# LN: 36 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 36 | 
cline_36_1:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 42 | 
	i0 = xmem[i0]			# LN: 42 | 
	i1 = i7 - (264 - 0)			# LN: 42 | 
	i4 = xmem[i0]			# LN: 42 | 
	i0 = i1			# LN: 42 | 
	i1 = i4			# LN: 42 | 
	call (_strcpy)			# LN: 42 | 
cline_42_0:			/* LN: 43 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (264 - 0)			# LN: 43 | 
	call (_cl_wavread_open)			# LN: 43 | 
	AnyReg(i0, a0h)			# LN: 43 | 
	i1 = i7 - (0x109)			# LN: 43 | 
	xmem[i1] = i0			# LN: 43 | 
cline_43_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 44 | 
	a0 = xmem[i0]			# LN: 44 | 
	a0 & a0			# LN: 44 | 
	if (a != 0) jmp (else_0)			# LN: 44 | 
cline_44_0:			/* LN: 46 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 46 | 
	call (_printf)			# LN: 46 | 
cline_46_0:			/* LN: 47 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 47 | 
	jmp (__epilogue_270)			# LN: 47 | 
cline_47_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_getnchannels)			# LN: 53 | 
	i0 = i7 - (0x10a)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_bits_per_sample)			# LN: 54 | 
	i0 = i7 - (0x10b)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 55 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 55 | 
	i0 = xmem[i0]			# LN: 55 | 
	call (_cl_wavread_frame_rate)			# LN: 55 | 
	i0 = i7 - (0x10c)			# LN: 55 | 
	xmem[i0] = a0h			# LN: 55 | 
cline_55_0:			/* LN: 56 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 56 | 
	i0 = xmem[i0]			# LN: 56 | 
	call (_cl_wavread_number_of_frames)			# LN: 56 | 
	i0 = i7 - (0x10d)			# LN: 56 | 
	xmem[i0] = a0h			# LN: 56 | 
cline_56_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 61 | 
	i0 = xmem[i0]			# LN: 61 | 
	i1 = i7 - (525 - 0)			# LN: 61 | 
	i0 += 1			# LN: 61 | 
	i4 = xmem[i0]			# LN: 61 | 
	i0 = i1			# LN: 61 | 
	i1 = i4			# LN: 61 | 
	call (_strcpy)			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	i0 = i7 - (0x20e)			# LN: 62 | 
	xmem[i0] = a0h			# LN: 62 | 
cline_62_0:			/* LN: 63 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (525 - 0)			# LN: 63 | 
	i1 = i7 - (0x10b)			# LN: 63 | 
	a0 = xmem[i1]			# LN: 63 | 
	i1 = i7 - (0x20e)			# LN: 63 | 
	a1 = xmem[i1]			# LN: 63 | 
	i1 = i7 - (0x10c)			# LN: 63 | 
	b0 = xmem[i1]			# LN: 63 | 
	call (_cl_wavwrite_open)			# LN: 63 | 
	AnyReg(i0, a0h)			# LN: 63 | 
	i1 = i7 - (0x20f)			# LN: 63 | 
	xmem[i1] = i0			# LN: 63 | 
cline_63_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 64 | 
	a0 = xmem[i0]			# LN: 64 | 
	a0 & a0			# LN: 64 | 
	if (a != 0) jmp (else_1)			# LN: 64 | 
cline_64_0:			/* LN: 66 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 66 | 
	call (_printf)			# LN: 66 | 
cline_66_0:			/* LN: 67 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 67 | 
	jmp (__epilogue_270)			# LN: 67 | 
cline_67_0:			/* LN: 70 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 70 | 
	a0 = xmem[i0]			# LN: 70 | 
	i0 = i7 - (0x4)			# LN: 70 | 
	a1 = xmem[i0]			# LN: 70 | 
	i0 = i7 - (0x5)			# LN: 70 | 
	b0 = xmem[i0]			# LN: 70 | 
	call (_initialize)			# LN: 70 | 
cline_70_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
for_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10d)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x10)			# LN: 80 | 
	call (__div)			# LN: 80 | 
	i0 = i7 - (0x210)			# LN: 80 | 
	a1 = xmem[i0]			# LN: 80 | 
	a1 - a0			# LN: 80 | 
	if (a >= 0) jmp (for_end_2)			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	do (0x10), label_end_94			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 84 | 
	a0 = 0			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
for_4:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	i0 = i7 - (0x10a)			# LN: 84 | 
	a1 = xmem[i0]			# LN: 84 | 
	a0 - a1			# LN: 84 | 
	if (a >= 0) jmp (for_end_4)			# LN: 84 | 
cline_84_0:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 86 | 
	i0 = xmem[i0]			# LN: 86 | 
	call (_cl_wavread_recvsample)			# LN: 86 | 
	i0 = i7 - (0x213)			# LN: 86 | 
	xmem[i0] = a0h			# LN: 86 | 
cline_86_0:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 87 | 
	a0 = xmem[i0]			# LN: 87 | 
	a0 = a0 << 4			# LN: 87 | 
	i0 = a0			# LN: 87 | 
	i1 = i7 - (0x211)			# LN: 87 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	a1 = i0			# LN: 87 | 
	a0 = a1 + a0			# LN: 87 | 
	AnyReg(i0, a0h)			# LN: 87 | 
	i1 = i7 - (0x213)			# LN: 87 | 
	a0 = xmem[i1]			# LN: 87 | 
	ymem[i0] = a0h			# LN: 87 | 
cline_87_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 88 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 84 | 
	a0 = xmem[i0]			# LN: 84 | 
	uhalfword(a1) = (0x1)			# LN: 84 | 
	a0 = a0 + a1			# LN: 84 | 
	i0 = i7 - (0x212)			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
	jmp (for_4)			# LN: 84 | 
cline_84_1:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 89 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x211)			# LN: 82 | 
label_end_94:			# LN: 82 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 82 | 
cline_82_1:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 92 | 
	i1 = (0) + (_sampleBuffer)			# LN: 92 | 
	call (_gainProcessing)			# LN: 92 | 
cline_92_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 94 | 
	a0 = 0			# LN: 94 | 
	xmem[i0] = a0h			# LN: 94 | 
	do (0x10), label_end_95			# LN: 94 | 
cline_94_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 96 | 
	a0 = 0			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
for_6:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	i0 = i7 - (0x20e)			# LN: 96 | 
	a1 = xmem[i0]			# LN: 96 | 
	a0 - a1			# LN: 96 | 
	if (a >= 0) jmp (for_end_6)			# LN: 96 | 
cline_96_0:			/* LN: 98 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 98 | 
	a0 = 0			# LN: 98 | 
	xmem[i0] = a0h			# LN: 98 | 
cline_98_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	a0 & a0			# LN: 99 | 
	if (a == 0) jmp (case_0)			# LN: 99 | 
	i0 = i7 - (0x5)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	uhalfword(a1) = (0x1)			# LN: 99 | 
	a0 - a1			# LN: 99 | 
	if (a == 0) jmp (case_1)			# LN: 99 | 
	i0 = i7 - (0x5)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	uhalfword(a1) = (0x2)			# LN: 99 | 
	a0 - a1			# LN: 99 | 
	if (a == 0) jmp (case_2)			# LN: 99 | 
	jmp (default_0)			# LN: 99 | 
cline_99_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	a0 & a0			# LN: 102 | 
	if (a != 0) jmp (else_2)			# LN: 102 | 
	i0 = i7 - (0x214)			# LN: 102 | 
	a0 = 0			# LN: 102 | 
	xmem[i0] = a0h			# LN: 102 | 
	jmp (endif_2)			# LN: 102 | 
cline_102_0:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 103 | 
	a0 = xmem[i0]			# LN: 103 | 
	uhalfword(a1) = (0x1)			# LN: 103 | 
	a0 - a1			# LN: 103 | 
	if (a != 0) jmp (else_3)			# LN: 103 | 
	i0 = i7 - (0x214)			# LN: 103 | 
	uhalfword(a0) = (0x1)			# LN: 103 | 
	xmem[i0] = a0h			# LN: 103 | 
	jmp (endif_3)			# LN: 103 | 
cline_103_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 104 | 
cline_104_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 106 | 
	a0 = xmem[i0]			# LN: 106 | 
	a0 & a0			# LN: 106 | 
	if (a != 0) jmp (else_4)			# LN: 106 | 
	i0 = i7 - (0x214)			# LN: 106 | 
	uhalfword(a0) = (0x3)			# LN: 106 | 
	xmem[i0] = a0h			# LN: 106 | 
	jmp (endif_4)			# LN: 106 | 
cline_106_0:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 107 | 
	a0 = xmem[i0]			# LN: 107 | 
	uhalfword(a1) = (0x1)			# LN: 107 | 
	a0 - a1			# LN: 107 | 
	if (a != 0) jmp (else_5)			# LN: 107 | 
	i0 = i7 - (0x214)			# LN: 107 | 
	uhalfword(a0) = (0x4)			# LN: 107 | 
	xmem[i0] = a0h			# LN: 107 | 
	jmp (endif_5)			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 108 | 
cline_108_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 110 | 
	a0 = xmem[i0]			# LN: 110 | 
	a0 & a0			# LN: 110 | 
	if (a != 0) jmp (else_6)			# LN: 110 | 
	i0 = i7 - (0x214)			# LN: 110 | 
	a0 = 0			# LN: 110 | 
	xmem[i0] = a0h			# LN: 110 | 
	jmp (endif_6)			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	uhalfword(a1) = (0x1)			# LN: 111 | 
	a0 - a1			# LN: 111 | 
	if (a != 0) jmp (else_7)			# LN: 111 | 
	i0 = i7 - (0x214)			# LN: 111 | 
	uhalfword(a0) = (0x1)			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
	jmp (endif_7)			# LN: 111 | 
cline_111_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 112 | 
	a0 = xmem[i0]			# LN: 112 | 
	uhalfword(a1) = (0x2)			# LN: 112 | 
	a0 - a1			# LN: 112 | 
	if (a != 0) jmp (else_8)			# LN: 112 | 
	i0 = i7 - (0x214)			# LN: 112 | 
	uhalfword(a0) = (0x2)			# LN: 112 | 
	xmem[i0] = a0h			# LN: 112 | 
	jmp (endif_8)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 113 | 
	a0 = xmem[i0]			# LN: 113 | 
	uhalfword(a1) = (0x3)			# LN: 113 | 
	a0 - a1			# LN: 113 | 
	if (a != 0) jmp (else_9)			# LN: 113 | 
	i0 = i7 - (0x214)			# LN: 113 | 
	uhalfword(a0) = (0x3)			# LN: 113 | 
	xmem[i0] = a0h			# LN: 113 | 
	jmp (endif_9)			# LN: 113 | 
cline_113_0:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 114 | 
	a0 = xmem[i0]			# LN: 114 | 
	uhalfword(a1) = (0x4)			# LN: 114 | 
	a0 - a1			# LN: 114 | 
	if (a != 0) jmp (else_10)			# LN: 114 | 
	i0 = i7 - (0x214)			# LN: 114 | 
	uhalfword(a0) = (0x4)			# LN: 114 | 
	xmem[i0] = a0h			# LN: 114 | 
	jmp (endif_10)			# LN: 114 | 
cline_114_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
	jmp (_9A5760)			# LN: 115 | 
cline_99_1:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
_9A5760:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 116 | 
cline_116_0:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 118 | 
	a0 = xmem[i0]			# LN: 118 | 
	a0 = a0 << 4			# LN: 118 | 
	i0 = a0			# LN: 118 | 
	i1 = i7 - (0x211)			# LN: 118 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 118 | 
	a0 = xmem[i1]			# LN: 118 | 
	a1 = i0			# LN: 118 | 
	a0 = a1 + a0			# LN: 118 | 
	AnyReg(i0, a0h)			# LN: 118 | 
	i1 = i7 - (0x213)			# LN: 118 | 
	a0 = ymem[i0]			# LN: 118 | 
	xmem[i1] = a0h			# LN: 118 | 
cline_118_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 119 | 
	i1 = i7 - (0x213)			# LN: 119 | 
	a0 = xmem[i1]			# LN: 119 | 
	i0 = xmem[i0]			# LN: 119 | 
	call (_cl_wavwrite_sendsample)			# LN: 119 | 
cline_119_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 96 | 
	a0 = xmem[i0]			# LN: 96 | 
	uhalfword(a1) = (0x1)			# LN: 96 | 
	a0 = a0 + a1			# LN: 96 | 
	i0 = i7 - (0x212)			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
	jmp (for_6)			# LN: 96 | 
cline_96_1:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	uhalfword(a1) = (0x1)			# LN: 94 | 
	a0 = a0 + a1			# LN: 94 | 
	i0 = i7 - (0x211)			# LN: 94 | 
label_end_95:			# LN: 94 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 94 | 
cline_94_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0x210)			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	jmp (for_2)			# LN: 80 | 
cline_80_1:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 127 | 
	i0 = xmem[i0]			# LN: 127 | 
	call (_cl_wavread_close)			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 128 | 
	i0 = xmem[i0]			# LN: 128 | 
	call (_cl_wavwrite_close)			# LN: 128 | 
cline_128_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 131 | 
	jmp (__epilogue_270)			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
__epilogue_270:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x214)			# LN: 132 | 
	i7 -= 1			# LN: 132 | 
	ret			# LN: 132 | 
