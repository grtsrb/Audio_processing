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
	.xdata_ovly
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

_main:			/* LN: 9 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 9 | 
	i7 += 1			# LN: 9 | 
	i7 = i7 + (0x214)			# LN: 9 | 
	i1 = i7 - (0x1)			# LN: 9 | 
	xmem[i1] = a0h			# LN: 9 | 
	i1 = i7 - (0x2)			# LN: 9 | 
	xmem[i1] = i0			# LN: 9 | 
cline_9_0:			/* LN: 28 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 28 | 
	i0 = i7 - (0x3)			# LN: 28 | 
	xmem[i0] = a0h			# LN: 28 | 
cline_28_0:			/* LN: 29 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 29 | 
	i0 = i7 - (0x4)			# LN: 29 | 
	xmem[i0] = a0h			# LN: 29 | 
cline_29_0:			/* LN: 30 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 30 | 
	a0 = 0			# LN: 30 | 
	xmem[i0] = a0h			# LN: 30 | 
cline_30_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 31 | 
	uhalfword(a0) = (0x2)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 34 | 
	a0 = 0			# LN: 34 | 
	xmem[i0] = a0h			# LN: 34 | 
	do (0x8), label_end_93			# LN: 34 | 
cline_34_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
label_begin_93:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 35 | 
	a0 = 0			# LN: 35 | 
	xmem[i0] = a0h			# LN: 35 | 
	do (0x10), label_end_92			# LN: 35 | 
cline_35_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
label_begin_92:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 36 | 
	a0 = xmem[i0]; a1 = 0			# LN: 36, 36 | 
	a0 = a0 << 4			# LN: 36 | 
	i0 = a0			# LN: 36 | 
	i1 = i7 - (0x8)			# LN: 36 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 36 | 
	a0 = xmem[i1]			# LN: 36 | 
	b0 = i0			# LN: 36 | 
	a0 = a0 + b0			# LN: 36 | 
	AnyReg(i0, a0h)			# LN: 36 | 
	nop #empty cycle
	xmem[i0] = a1h			# LN: 36 | 
cline_36_0:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
init_latch_label_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x8)			# LN: 35 | 
	a0 = xmem[i0]			# LN: 35 | 
	uhalfword(a1) = (0x1)			# LN: 35 | 
	a0 = a0 + a1			# LN: 35 | 
	i0 = i7 - (0x8)			# LN: 35 | 
label_end_92:			# LN: 35 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 35 | 
cline_35_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
init_latch_label_1:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 35 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x7)			# LN: 34 | 
	a0 = xmem[i0]			# LN: 34 | 
	uhalfword(a1) = (0x1)			# LN: 34 | 
	a0 = a0 + a1			# LN: 34 | 
	i0 = i7 - (0x7)			# LN: 34 | 
label_end_93:			# LN: 34 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 34 | 
cline_34_1:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
for_end_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 40 | 
	i0 = xmem[i0]			# LN: 40 | 
	i1 = i7 - (264 - 0)			# LN: 40 | 
	i4 = xmem[i0]			# LN: 40 | 
	i0 = i1			# LN: 40 | 
	i1 = i4			# LN: 40 | 
	call (_strcpy)			# LN: 40 | 
cline_40_0:			/* LN: 41 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (264 - 0)			# LN: 41 | 
	call (_cl_wavread_open)			# LN: 41 | 
	AnyReg(i0, a0h)			# LN: 41 | 
	i1 = i7 - (0x109)			# LN: 41 | 
	xmem[i1] = i0			# LN: 41 | 
cline_41_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 42 | 
	a0 = xmem[i0]			# LN: 42 | 
	a0 & a0			# LN: 42 | 
	if (a != 0) jmp (else_0)			# LN: 42 | 
cline_42_0:			/* LN: 44 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_0)			# LN: 44 | 
	call (_printf)			# LN: 44 | 
cline_44_0:			/* LN: 45 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 45 | 
	jmp (__epilogue_270)			# LN: 45 | 
cline_45_0:			/* LN: 51 | CYCLE: 0 | RULES: () */ 
endif_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 42 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 51 | 
	i0 = xmem[i0]			# LN: 51 | 
	call (_cl_wavread_getnchannels)			# LN: 51 | 
	i0 = i7 - (0x10a)			# LN: 51 | 
	xmem[i0] = a0h			# LN: 51 | 
cline_51_0:			/* LN: 52 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 52 | 
	i0 = xmem[i0]			# LN: 52 | 
	call (_cl_wavread_bits_per_sample)			# LN: 52 | 
	i0 = i7 - (0x10b)			# LN: 52 | 
	xmem[i0] = a0h			# LN: 52 | 
cline_52_0:			/* LN: 53 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 53 | 
	i0 = xmem[i0]			# LN: 53 | 
	call (_cl_wavread_frame_rate)			# LN: 53 | 
	i0 = i7 - (0x10c)			# LN: 53 | 
	xmem[i0] = a0h			# LN: 53 | 
cline_53_0:			/* LN: 54 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 54 | 
	i0 = xmem[i0]			# LN: 54 | 
	call (_cl_wavread_number_of_frames)			# LN: 54 | 
	i0 = i7 - (0x10d)			# LN: 54 | 
	xmem[i0] = a0h			# LN: 54 | 
cline_54_0:			/* LN: 59 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x2)			# LN: 59 | 
	i0 = xmem[i0]			# LN: 59 | 
	i1 = i7 - (525 - 0)			# LN: 59 | 
	i0 += 1			# LN: 59 | 
	i4 = xmem[i0]			# LN: 59 | 
	i0 = i1			# LN: 59 | 
	i1 = i4			# LN: 59 | 
	call (_strcpy)			# LN: 59 | 
cline_59_0:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 60 | 
	a0 = xmem[i0]			# LN: 60 | 
	i0 = i7 - (0x20e)			# LN: 60 | 
	xmem[i0] = a0h			# LN: 60 | 
cline_60_0:			/* LN: 61 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (525 - 0)			# LN: 61 | 
	i1 = i7 - (0x10b)			# LN: 61 | 
	a0 = xmem[i1]			# LN: 61 | 
	i1 = i7 - (0x20e)			# LN: 61 | 
	a1 = xmem[i1]			# LN: 61 | 
	i1 = i7 - (0x10c)			# LN: 61 | 
	b0 = xmem[i1]			# LN: 61 | 
	call (_cl_wavwrite_open)			# LN: 61 | 
	AnyReg(i0, a0h)			# LN: 61 | 
	i1 = i7 - (0x20f)			# LN: 61 | 
	xmem[i1] = i0			# LN: 61 | 
cline_61_0:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 62 | 
	a0 = xmem[i0]			# LN: 62 | 
	a0 & a0			# LN: 62 | 
	if (a != 0) jmp (else_1)			# LN: 62 | 
cline_62_0:			/* LN: 64 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_string_const_1)			# LN: 64 | 
	call (_printf)			# LN: 64 | 
cline_64_0:			/* LN: 65 | CYCLE: 0 | RULES: () */ 
	halfword(a0) = (0xffff)			# LN: 65 | 
	jmp (__epilogue_270)			# LN: 65 | 
cline_65_0:			/* LN: 68 | CYCLE: 0 | RULES: () */ 
endif_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 62 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 68 | 
	a0 = xmem[i0]			# LN: 68 | 
	i0 = i7 - (0x4)			# LN: 68 | 
	a1 = xmem[i0]			# LN: 68 | 
	i0 = i7 - (0x5)			# LN: 68 | 
	b0 = xmem[i0]			# LN: 68 | 
	call (_initialize)			# LN: 68 | 
cline_68_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 78 | 
	a0 = 0			# LN: 78 | 
	xmem[i0] = a0h			# LN: 78 | 
for_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10d)			# LN: 78 | 
	a0 = xmem[i0]			# LN: 78 | 
	uhalfword(a1) = (0x10)			# LN: 78 | 
	call (__div)			# LN: 78 | 
	i0 = i7 - (0x210)			# LN: 78 | 
	a1 = xmem[i0]			# LN: 78 | 
	a1 - a0			# LN: 78 | 
	if (a >= 0) jmp (for_end_2)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 80 | 
	a0 = 0			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
	do (0x10), label_end_94			# LN: 80 | 
cline_80_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 82 | 
	a0 = 0			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
for_4:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	i0 = i7 - (0x10a)			# LN: 82 | 
	a1 = xmem[i0]			# LN: 82 | 
	a0 - a1			# LN: 82 | 
	if (a >= 0) jmp (for_end_4)			# LN: 82 | 
cline_82_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 84 | 
	i0 = xmem[i0]			# LN: 84 | 
	call (_cl_wavread_recvsample)			# LN: 84 | 
	i0 = i7 - (0x213)			# LN: 84 | 
	xmem[i0] = a0h			# LN: 84 | 
cline_84_0:			/* LN: 85 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 85 | 
	a0 = xmem[i0]			# LN: 85 | 
	a0 = a0 << 4			# LN: 85 | 
	i0 = a0			# LN: 85 | 
	i1 = i7 - (0x211)			# LN: 85 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 85 | 
	a0 = xmem[i1]			# LN: 85 | 
	a1 = i0			# LN: 85 | 
	a0 = a1 + a0			# LN: 85 | 
	AnyReg(i0, a0h)			# LN: 85 | 
	i1 = i7 - (0x213)			# LN: 85 | 
	a0 = xmem[i1]			# LN: 85 | 
	xmem[i0] = a0h			# LN: 85 | 
cline_85_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 86 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 82 | 
	a0 = xmem[i0]			# LN: 82 | 
	uhalfword(a1) = (0x1)			# LN: 82 | 
	a0 = a0 + a1			# LN: 82 | 
	i0 = i7 - (0x212)			# LN: 82 | 
	xmem[i0] = a0h			# LN: 82 | 
	jmp (for_4)			# LN: 82 | 
cline_82_1:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 87 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 80 | 
	a0 = xmem[i0]			# LN: 80 | 
	uhalfword(a1) = (0x1)			# LN: 80 | 
	a0 = a0 + a1			# LN: 80 | 
	i0 = i7 - (0x211)			# LN: 80 | 
label_end_94:			# LN: 80 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 80 | 
cline_80_1:			/* LN: 90 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 90 | 
	i1 = (0) + (_sampleBuffer)			# LN: 90 | 
	call (_gainProcessing)			# LN: 90 | 
cline_90_0:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 92 | 
	a0 = 0			# LN: 92 | 
	xmem[i0] = a0h			# LN: 92 | 
	do (0x10), label_end_95			# LN: 92 | 
cline_92_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 94 | 
	a0 = 0			# LN: 94 | 
	xmem[i0] = a0h			# LN: 94 | 
for_6:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	i0 = i7 - (0x20e)			# LN: 94 | 
	a1 = xmem[i0]			# LN: 94 | 
	a0 - a1			# LN: 94 | 
	if (a >= 0) jmp (for_end_6)			# LN: 94 | 
cline_94_0:			/* LN: 96 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 96 | 
	a0 = 0			# LN: 96 | 
	xmem[i0] = a0h			# LN: 96 | 
cline_96_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x5)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	a0 & a0			# LN: 97 | 
	if (a == 0) jmp (case_0)			# LN: 97 | 
	i0 = i7 - (0x5)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	uhalfword(a1) = (0x1)			# LN: 97 | 
	a0 - a1			# LN: 97 | 
	if (a == 0) jmp (case_1)			# LN: 97 | 
	i0 = i7 - (0x5)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	uhalfword(a1) = (0x2)			# LN: 97 | 
	a0 - a1			# LN: 97 | 
	if (a == 0) jmp (case_2)			# LN: 97 | 
	jmp (default_0)			# LN: 97 | 
cline_97_0:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 100 | 
	a0 = xmem[i0]			# LN: 100 | 
	a0 & a0			# LN: 100 | 
	if (a != 0) jmp (else_2)			# LN: 100 | 
	i0 = i7 - (0x214)			# LN: 100 | 
	a0 = 0			# LN: 100 | 
	xmem[i0] = a0h			# LN: 100 | 
	jmp (endif_2)			# LN: 100 | 
cline_100_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 101 | 
	a0 = xmem[i0]			# LN: 101 | 
	uhalfword(a1) = (0x1)			# LN: 101 | 
	a0 - a1			# LN: 101 | 
	if (a != 0) jmp (else_3)			# LN: 101 | 
	i0 = i7 - (0x214)			# LN: 101 | 
	uhalfword(a0) = (0x1)			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
	jmp (endif_3)			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 102 | 
cline_102_0:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 104 | 
	a0 = xmem[i0]			# LN: 104 | 
	a0 & a0			# LN: 104 | 
	if (a != 0) jmp (else_4)			# LN: 104 | 
	i0 = i7 - (0x214)			# LN: 104 | 
	uhalfword(a0) = (0x3)			# LN: 104 | 
	xmem[i0] = a0h			# LN: 104 | 
	jmp (endif_4)			# LN: 104 | 
cline_104_0:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 105 | 
	a0 = xmem[i0]			# LN: 105 | 
	uhalfword(a1) = (0x1)			# LN: 105 | 
	a0 - a1			# LN: 105 | 
	if (a != 0) jmp (else_5)			# LN: 105 | 
	i0 = i7 - (0x214)			# LN: 105 | 
	uhalfword(a0) = (0x4)			# LN: 105 | 
	xmem[i0] = a0h			# LN: 105 | 
	jmp (endif_5)			# LN: 105 | 
cline_105_0:			/* LN: 106 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 105 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 106 | 
cline_106_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 108 | 
	a0 = xmem[i0]			# LN: 108 | 
	a0 & a0			# LN: 108 | 
	if (a != 0) jmp (else_6)			# LN: 108 | 
	i0 = i7 - (0x214)			# LN: 108 | 
	a0 = 0			# LN: 108 | 
	xmem[i0] = a0h			# LN: 108 | 
	jmp (endif_6)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 109 | 
	a0 = xmem[i0]			# LN: 109 | 
	uhalfword(a1) = (0x1)			# LN: 109 | 
	a0 - a1			# LN: 109 | 
	if (a != 0) jmp (else_7)			# LN: 109 | 
	i0 = i7 - (0x214)			# LN: 109 | 
	uhalfword(a0) = (0x1)			# LN: 109 | 
	xmem[i0] = a0h			# LN: 109 | 
	jmp (endif_7)			# LN: 109 | 
cline_109_0:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 110 | 
	a0 = xmem[i0]			# LN: 110 | 
	uhalfword(a1) = (0x2)			# LN: 110 | 
	a0 - a1			# LN: 110 | 
	if (a != 0) jmp (else_8)			# LN: 110 | 
	i0 = i7 - (0x214)			# LN: 110 | 
	uhalfword(a0) = (0x2)			# LN: 110 | 
	xmem[i0] = a0h			# LN: 110 | 
	jmp (endif_8)			# LN: 110 | 
cline_110_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 110 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	uhalfword(a1) = (0x3)			# LN: 111 | 
	a0 - a1			# LN: 111 | 
	if (a != 0) jmp (else_9)			# LN: 111 | 
	i0 = i7 - (0x214)			# LN: 111 | 
	uhalfword(a0) = (0x3)			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
	jmp (endif_9)			# LN: 111 | 
cline_111_0:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 112 | 
	a0 = xmem[i0]			# LN: 112 | 
	uhalfword(a1) = (0x4)			# LN: 112 | 
	a0 - a1			# LN: 112 | 
	if (a != 0) jmp (else_10)			# LN: 112 | 
	i0 = i7 - (0x214)			# LN: 112 | 
	uhalfword(a0) = (0x4)			# LN: 112 | 
	xmem[i0] = a0h			# LN: 112 | 
	jmp (endif_10)			# LN: 112 | 
cline_112_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	jmp (_8C56D8)			# LN: 113 | 
cline_97_1:			/* LN: 114 | CYCLE: 0 | RULES: () */ 
_8C56D8:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 114 | 
cline_114_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	a0 = a0 << 4			# LN: 116 | 
	i0 = a0			# LN: 116 | 
	i1 = i7 - (0x211)			# LN: 116 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 116 | 
	a0 = xmem[i1]			# LN: 116 | 
	a1 = i0			# LN: 116 | 
	a0 = a1 + a0			# LN: 116 | 
	AnyReg(i0, a0h)			# LN: 116 | 
	i1 = i7 - (0x213)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	xmem[i1] = a0h			# LN: 116 | 
cline_116_0:			/* LN: 117 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 117 | 
	i1 = i7 - (0x213)			# LN: 117 | 
	a0 = xmem[i1]			# LN: 117 | 
	i0 = xmem[i0]			# LN: 117 | 
	call (_cl_wavwrite_sendsample)			# LN: 117 | 
cline_117_0:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 94 | 
	a0 = xmem[i0]			# LN: 94 | 
	uhalfword(a1) = (0x1)			# LN: 94 | 
	a0 = a0 + a1			# LN: 94 | 
	i0 = i7 - (0x212)			# LN: 94 | 
	xmem[i0] = a0h			# LN: 94 | 
	jmp (for_6)			# LN: 94 | 
cline_94_1:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 94 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 92 | 
	a0 = xmem[i0]			# LN: 92 | 
	uhalfword(a1) = (0x1)			# LN: 92 | 
	a0 = a0 + a1			# LN: 92 | 
	i0 = i7 - (0x211)			# LN: 92 | 
label_end_95:			# LN: 92 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 92 | 
cline_92_1:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 92 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 78 | 
	a0 = xmem[i0]			# LN: 78 | 
	uhalfword(a1) = (0x1)			# LN: 78 | 
	a0 = a0 + a1			# LN: 78 | 
	i0 = i7 - (0x210)			# LN: 78 | 
	xmem[i0] = a0h			# LN: 78 | 
	jmp (for_2)			# LN: 78 | 
cline_78_1:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 125 | 
	i0 = xmem[i0]			# LN: 125 | 
	call (_cl_wavread_close)			# LN: 125 | 
cline_125_0:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 126 | 
	i0 = xmem[i0]			# LN: 126 | 
	call (_cl_wavwrite_close)			# LN: 126 | 
cline_126_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 129 | 
	jmp (__epilogue_270)			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
__epilogue_270:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x214)			# LN: 130 | 
	i7 -= 1			# LN: 130 | 
	ret			# LN: 130 | 
