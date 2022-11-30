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
	.extern _init
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

_main:			/* LN: 12 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = i7			# LN: 12 | 
	i7 += 1			# LN: 12 | 
	i7 = i7 + (0x214)			# LN: 12 | 
	i1 = i7 - (0x1)			# LN: 12 | 
	xmem[i1] = a0h			# LN: 12 | 
	i1 = i7 - (0x2)			# LN: 12 | 
	xmem[i1] = i0			# LN: 12 | 
cline_12_0:			/* LN: 31 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 31 | 
	uhalfword(a0) = (0x1)			# LN: 31 | 
	xmem[i0] = a0h			# LN: 31 | 
cline_31_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_0_1 + 0]			# LN: 32 | 
	i0 = i7 - (0x4)			# LN: 32 | 
	xmem[i0] = a0h			# LN: 32 | 
cline_32_0:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	a0 = xmem[__extractedConst_1_1 + 0]			# LN: 33 | 
	i0 = i7 - (0x5)			# LN: 33 | 
	xmem[i0] = a0h			# LN: 33 | 
cline_33_0:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 34 | 
	uhalfword(a0) = (0x2)			# LN: 34 | 
	xmem[i0] = a0h			# LN: 34 | 
cline_34_0:			/* LN: 36 | CYCLE: 0 | RULES: () */ 
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
	i0 = i7 - (0x4)			# LN: 70 | 
	a0 = xmem[i0]			# LN: 70 | 
	i0 = i7 - (0x5)			# LN: 70 | 
	a1 = xmem[i0]			# LN: 70 | 
	i0 = i7 - (0x3)			# LN: 70 | 
	b0 = xmem[i0]			# LN: 70 | 
	call (_initialize)			# LN: 70 | 
cline_70_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
switch_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 71 | 
	a0 = xmem[i0]			# LN: 71 | 
	a0 & a0			# LN: 71 | 
	if (a == 0) jmp (case_0)			# LN: 71 | 
	i0 = i7 - (0x3)			# LN: 71 | 
	a0 = xmem[i0]			# LN: 71 | 
	uhalfword(a1) = (0x1)			# LN: 71 | 
	a0 - a1			# LN: 71 | 
	if (a == 0) jmp (case_1)			# LN: 71 | 
	i0 = i7 - (0x3)			# LN: 71 | 
	a0 = xmem[i0]			# LN: 71 | 
	uhalfword(a1) = (0x2)			# LN: 71 | 
	a0 - a1			# LN: 71 | 
	if (a == 0) jmp (case_2)			# LN: 71 | 
	jmp (default_0)			# LN: 71 | 
cline_71_0:			/* LN: 74 | CYCLE: 0 | RULES: () */ 
case_0:			/* LN: 73 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 74 | 
	uhalfword(a0) = (0x2)			# LN: 74 | 
	xmem[i0] = a0h			# LN: 74 | 
cline_74_0:			/* LN: 75 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 75 | 
cline_75_0:			/* LN: 77 | CYCLE: 0 | RULES: () */ 
case_1:			/* LN: 76 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 77 | 
	uhalfword(a0) = (0x2)			# LN: 77 | 
	xmem[i0] = a0h			# LN: 77 | 
cline_77_0:			/* LN: 78 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 78 | 
cline_78_0:			/* LN: 80 | CYCLE: 0 | RULES: () */ 
case_2:			/* LN: 79 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 80 | 
	uhalfword(a0) = (0x5)			# LN: 80 | 
	xmem[i0] = a0h			# LN: 80 | 
cline_80_0:			/* LN: 81 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 81 | 
cline_81_0:			/* LN: 83 | CYCLE: 0 | RULES: () */ 
default_0:			/* LN: 82 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x6)			# LN: 83 | 
	uhalfword(a0) = (0x2)			# LN: 83 | 
	xmem[i0] = a0h			# LN: 83 | 
cline_83_0:			/* LN: 84 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_0)			# LN: 84 | 
cline_84_0:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
switch_end_0:			/* LN: 71 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 95 | 
	a0 = 0			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
for_2:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x10d)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x10)			# LN: 95 | 
	call (__div)			# LN: 95 | 
	i0 = i7 - (0x210)			# LN: 95 | 
	a1 = xmem[i0]			# LN: 95 | 
	a1 - a0			# LN: 95 | 
	if (a >= 0) jmp (for_end_2)			# LN: 95 | 
cline_95_0:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 97 | 
	a0 = 0			# LN: 97 | 
	xmem[i0] = a0h			# LN: 97 | 
	do (0x10), label_end_94			# LN: 97 | 
cline_97_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
label_begin_94:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 99 | 
	a0 = 0			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
for_4:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	i0 = i7 - (0x10a)			# LN: 99 | 
	a1 = xmem[i0]			# LN: 99 | 
	a0 - a1			# LN: 99 | 
	if (a >= 0) jmp (for_end_4)			# LN: 99 | 
cline_99_0:			/* LN: 101 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 101 | 
	i0 = xmem[i0]			# LN: 101 | 
	call (_cl_wavread_recvsample)			# LN: 101 | 
	i0 = i7 - (0x213)			# LN: 101 | 
	xmem[i0] = a0h			# LN: 101 | 
cline_101_0:			/* LN: 102 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 102 | 
	a0 = xmem[i0]			# LN: 102 | 
	a0 = a0 << 4			# LN: 102 | 
	i0 = a0			# LN: 102 | 
	i1 = i7 - (0x211)			# LN: 102 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 102 | 
	a0 = xmem[i1]			# LN: 102 | 
	a1 = i0			# LN: 102 | 
	a0 = a1 + a0			# LN: 102 | 
	AnyReg(i0, a0h)			# LN: 102 | 
	i1 = i7 - (0x213)			# LN: 102 | 
	a0 = xmem[i1]			# LN: 102 | 
	ymem[i0] = a0h			# LN: 102 | 
cline_102_0:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
init_latch_label_2:			/* LN: 103 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 99 | 
	a0 = xmem[i0]			# LN: 99 | 
	uhalfword(a1) = (0x1)			# LN: 99 | 
	a0 = a0 + a1			# LN: 99 | 
	i0 = i7 - (0x212)			# LN: 99 | 
	xmem[i0] = a0h			# LN: 99 | 
	jmp (for_4)			# LN: 99 | 
cline_99_1:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
init_latch_label_3:			/* LN: 104 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 99 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 97 | 
	a0 = xmem[i0]			# LN: 97 | 
	uhalfword(a1) = (0x1)			# LN: 97 | 
	a0 = a0 + a1			# LN: 97 | 
	i0 = i7 - (0x211)			# LN: 97 | 
label_end_94:			# LN: 97 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 97 | 
cline_97_1:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
for_end_3:			/* LN: 97 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_tremoloL)			# LN: 107 | 
	call (_init)			# LN: 107 | 
cline_107_0:			/* LN: 108 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_tremoloR)			# LN: 108 | 
	call (_init)			# LN: 108 | 
cline_108_0:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 109 | 
	i1 = (0) + (_sampleBuffer)			# LN: 109 | 
	call (_gainProcessing)			# LN: 109 | 
cline_109_0:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 111 | 
	a0 = 0			# LN: 111 | 
	xmem[i0] = a0h			# LN: 111 | 
	do (0x10), label_end_95			# LN: 111 | 
cline_111_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
label_begin_95:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 113 | 
	a0 = 0			# LN: 113 | 
	xmem[i0] = a0h			# LN: 113 | 
for_6:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 113 | 
	a0 = xmem[i0]			# LN: 113 | 
	i0 = i7 - (0x20e)			# LN: 113 | 
	a1 = xmem[i0]			# LN: 113 | 
	a0 - a1			# LN: 113 | 
	if (a >= 0) jmp (for_end_6)			# LN: 113 | 
cline_113_0:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 115 | 
	a0 = 0			# LN: 115 | 
	xmem[i0] = a0h			# LN: 115 | 
cline_115_0:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
switch_1:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x3)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	a0 & a0			# LN: 116 | 
	if (a == 0) jmp (case_3)			# LN: 116 | 
	i0 = i7 - (0x3)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	uhalfword(a1) = (0x1)			# LN: 116 | 
	a0 - a1			# LN: 116 | 
	if (a == 0) jmp (case_4)			# LN: 116 | 
	i0 = i7 - (0x3)			# LN: 116 | 
	a0 = xmem[i0]			# LN: 116 | 
	uhalfword(a1) = (0x2)			# LN: 116 | 
	a0 - a1			# LN: 116 | 
	if (a == 0) jmp (case_5)			# LN: 116 | 
	jmp (default_1)			# LN: 116 | 
cline_116_0:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
case_3:			/* LN: 118 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 119 | 
	a0 = xmem[i0]			# LN: 119 | 
	a0 & a0			# LN: 119 | 
	if (a != 0) jmp (else_2)			# LN: 119 | 
	i0 = i7 - (0x214)			# LN: 119 | 
	a0 = 0			# LN: 119 | 
	xmem[i0] = a0h			# LN: 119 | 
	jmp (endif_2)			# LN: 119 | 
cline_119_0:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
endif_2:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 119 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 120 | 
	a0 = xmem[i0]			# LN: 120 | 
	uhalfword(a1) = (0x1)			# LN: 120 | 
	a0 - a1			# LN: 120 | 
	if (a != 0) jmp (else_3)			# LN: 120 | 
	i0 = i7 - (0x214)			# LN: 120 | 
	uhalfword(a0) = (0x1)			# LN: 120 | 
	xmem[i0] = a0h			# LN: 120 | 
	jmp (endif_3)			# LN: 120 | 
cline_120_0:			/* LN: 121 | CYCLE: 0 | RULES: () */ 
endif_3:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
else_3:			/* LN: 120 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 121 | 
cline_121_0:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
case_4:			/* LN: 122 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 123 | 
	a0 = xmem[i0]			# LN: 123 | 
	a0 & a0			# LN: 123 | 
	if (a != 0) jmp (else_4)			# LN: 123 | 
	i0 = i7 - (0x214)			# LN: 123 | 
	uhalfword(a0) = (0x3)			# LN: 123 | 
	xmem[i0] = a0h			# LN: 123 | 
	jmp (endif_4)			# LN: 123 | 
cline_123_0:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
endif_4:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
else_4:			/* LN: 123 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 124 | 
	a0 = xmem[i0]			# LN: 124 | 
	uhalfword(a1) = (0x1)			# LN: 124 | 
	a0 - a1			# LN: 124 | 
	if (a != 0) jmp (else_5)			# LN: 124 | 
	i0 = i7 - (0x214)			# LN: 124 | 
	uhalfword(a0) = (0x4)			# LN: 124 | 
	xmem[i0] = a0h			# LN: 124 | 
	jmp (endif_5)			# LN: 124 | 
cline_124_0:			/* LN: 125 | CYCLE: 0 | RULES: () */ 
endif_5:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
else_5:			/* LN: 124 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 125 | 
cline_125_0:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
case_5:			/* LN: 126 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 127 | 
	a0 = xmem[i0]			# LN: 127 | 
	a0 & a0			# LN: 127 | 
	if (a != 0) jmp (else_6)			# LN: 127 | 
	i0 = i7 - (0x214)			# LN: 127 | 
	a0 = 0			# LN: 127 | 
	xmem[i0] = a0h			# LN: 127 | 
	jmp (endif_6)			# LN: 127 | 
cline_127_0:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
endif_6:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
else_6:			/* LN: 127 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 128 | 
	a0 = xmem[i0]			# LN: 128 | 
	uhalfword(a1) = (0x1)			# LN: 128 | 
	a0 - a1			# LN: 128 | 
	if (a != 0) jmp (else_7)			# LN: 128 | 
	i0 = i7 - (0x214)			# LN: 128 | 
	uhalfword(a0) = (0x1)			# LN: 128 | 
	xmem[i0] = a0h			# LN: 128 | 
	jmp (endif_7)			# LN: 128 | 
cline_128_0:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
endif_7:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
else_7:			/* LN: 128 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 129 | 
	a0 = xmem[i0]			# LN: 129 | 
	uhalfword(a1) = (0x2)			# LN: 129 | 
	a0 - a1			# LN: 129 | 
	if (a != 0) jmp (else_8)			# LN: 129 | 
	i0 = i7 - (0x214)			# LN: 129 | 
	uhalfword(a0) = (0x2)			# LN: 129 | 
	xmem[i0] = a0h			# LN: 129 | 
	jmp (endif_8)			# LN: 129 | 
cline_129_0:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
endif_8:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
else_8:			/* LN: 129 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 130 | 
	a0 = xmem[i0]			# LN: 130 | 
	uhalfword(a1) = (0x3)			# LN: 130 | 
	a0 - a1			# LN: 130 | 
	if (a != 0) jmp (else_9)			# LN: 130 | 
	i0 = i7 - (0x214)			# LN: 130 | 
	uhalfword(a0) = (0x3)			# LN: 130 | 
	xmem[i0] = a0h			# LN: 130 | 
	jmp (endif_9)			# LN: 130 | 
cline_130_0:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
endif_9:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
else_9:			/* LN: 130 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 131 | 
	a0 = xmem[i0]			# LN: 131 | 
	uhalfword(a1) = (0x4)			# LN: 131 | 
	a0 - a1			# LN: 131 | 
	if (a != 0) jmp (else_10)			# LN: 131 | 
	i0 = i7 - (0x214)			# LN: 131 | 
	uhalfword(a0) = (0x4)			# LN: 131 | 
	xmem[i0] = a0h			# LN: 131 | 
	jmp (endif_10)			# LN: 131 | 
cline_131_0:			/* LN: 132 | CYCLE: 0 | RULES: () */ 
endif_10:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
else_10:			/* LN: 131 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 132 | 
cline_132_0:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
default_1:			/* LN: 133 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 134 | 
	a0 = xmem[i0]			# LN: 134 | 
	a0 & a0			# LN: 134 | 
	if (a != 0) jmp (else_11)			# LN: 134 | 
	i0 = i7 - (0x214)			# LN: 134 | 
	a0 = 0			# LN: 134 | 
	xmem[i0] = a0h			# LN: 134 | 
	jmp (endif_11)			# LN: 134 | 
cline_134_0:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
endif_11:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
else_11:			/* LN: 134 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 135 | 
	a0 = xmem[i0]			# LN: 135 | 
	uhalfword(a1) = (0x1)			# LN: 135 | 
	a0 - a1			# LN: 135 | 
	if (a != 0) jmp (else_12)			# LN: 135 | 
	i0 = i7 - (0x214)			# LN: 135 | 
	uhalfword(a0) = (0x1)			# LN: 135 | 
	xmem[i0] = a0h			# LN: 135 | 
	jmp (endif_12)			# LN: 135 | 
cline_135_0:			/* LN: 136 | CYCLE: 0 | RULES: () */ 
endif_12:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
else_12:			/* LN: 135 | CYCLE: 0 | RULES: () */ 
	jmp (switch_end_1)			# LN: 136 | 
cline_136_0:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
switch_end_1:			/* LN: 116 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x214)			# LN: 138 | 
	a0 = xmem[i0]			# LN: 138 | 
	a0 = a0 << 4			# LN: 138 | 
	i0 = a0			# LN: 138 | 
	i1 = i7 - (0x211)			# LN: 138 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 138 | 
	a0 = xmem[i1]			# LN: 138 | 
	a1 = i0			# LN: 138 | 
	a0 = a1 + a0			# LN: 138 | 
	AnyReg(i0, a0h)			# LN: 138 | 
	i1 = i7 - (0x213)			# LN: 138 | 
	a0 = ymem[i0]			# LN: 138 | 
	xmem[i1] = a0h			# LN: 138 | 
cline_138_0:			/* LN: 139 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 139 | 
	i1 = i7 - (0x213)			# LN: 139 | 
	a0 = xmem[i1]			# LN: 139 | 
	i0 = xmem[i0]			# LN: 139 | 
	call (_cl_wavwrite_sendsample)			# LN: 139 | 
cline_139_0:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
init_latch_label_4:			/* LN: 140 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x212)			# LN: 113 | 
	a0 = xmem[i0]			# LN: 113 | 
	uhalfword(a1) = (0x1)			# LN: 113 | 
	a0 = a0 + a1			# LN: 113 | 
	i0 = i7 - (0x212)			# LN: 113 | 
	xmem[i0] = a0h			# LN: 113 | 
	jmp (for_6)			# LN: 113 | 
cline_113_1:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
init_latch_label_5:			/* LN: 141 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 113 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x211)			# LN: 111 | 
	a0 = xmem[i0]			# LN: 111 | 
	uhalfword(a1) = (0x1)			# LN: 111 | 
	a0 = a0 + a1			# LN: 111 | 
	i0 = i7 - (0x211)			# LN: 111 | 
label_end_95:			# LN: 111 | CYCLE: 5 | RULES: ()
	xmem[i0] = a0h			# LN: 111 | 
cline_111_1:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
init_latch_label_6:			/* LN: 142 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 111 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x210)			# LN: 95 | 
	a0 = xmem[i0]			# LN: 95 | 
	uhalfword(a1) = (0x1)			# LN: 95 | 
	a0 = a0 + a1			# LN: 95 | 
	i0 = i7 - (0x210)			# LN: 95 | 
	xmem[i0] = a0h			# LN: 95 | 
	jmp (for_2)			# LN: 95 | 
cline_95_1:			/* LN: 147 | CYCLE: 0 | RULES: () */ 
for_end_2:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x109)			# LN: 147 | 
	i0 = xmem[i0]			# LN: 147 | 
	call (_cl_wavread_close)			# LN: 147 | 
cline_147_0:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x20f)			# LN: 148 | 
	i0 = xmem[i0]			# LN: 148 | 
	call (_cl_wavwrite_close)			# LN: 148 | 
cline_148_0:			/* LN: 151 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 151 | 
	jmp (__epilogue_270)			# LN: 151 | 
cline_151_0:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
__epilogue_270:			/* LN: 152 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x214)			# LN: 152 | 
	i7 -= 1			# LN: 152 | 
	ret			# LN: 152 | 
