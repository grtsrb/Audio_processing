	.public _sampleBuffer
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

_main:			/* LN: 8 | CYCLE: 0 | RULES: () */ 
	xmem[i7] = b2g; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = b2h; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = b2l; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a2g; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a2h; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a2l; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a3g; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a3h; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = a3l; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = b3g; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = b3h; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = b3l; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = i2; i7 += 1			# LN: 8, 8 | 
	xmem[i7] = i3; i7 += 1			# LN: 8, 8 | 
	i7 = i7 + (0x201)			# LN: 8 | 
	i4 = i0			# LN: 8 | 
	b2 = 0			# LN: 27 | 
	a2 = xmem[__extractedConst_0_1 + 0]			# LN: 28 | 
	b1 = xmem[__extractedConst_1_1 + 0]			# LN: 29 | 
	a0 = 0			# LN: 32 | 
	do (0x8), label_end_93			# LN: 32 | 
label_begin_93:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	a1 = 0			# LN: 33 | 
	do (0x10), label_end_92			# LN: 33 | 
label_begin_92:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	b0 =+ a0			# LN: 34 | 
	b0 = b0 << 4			# LN: 34 | 
	i0 = b0; b0 = 0			# LN: 34, 34 | 
	uhalfword(a3) = (0x1)			# LN: 33 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 34 | 
	b3 = i0			# LN: 34 | 
	b3 = b3 + a1			# LN: 34 | 
	AnyReg(i0, b3h)			# LN: 34 | 
	a1 = a1 + a3			# LN: 33 | 
label_end_92:			# LN: 33 | CYCLE: 9 | RULES: ()
	ymem[i0] = b0h			# LN: 34 | 
init_latch_label_1:			/* LN: 34 | CYCLE: 0 | RULES: () */ 
for_end_1:			/* LN: 33 | CYCLE: 0 | RULES: () */ 
	uhalfword(a1) = (0x1)			# LN: 32 | 
label_end_93:			# LN: 32 | CYCLE: 1 | RULES: ()
	a0 = a0 + a1			# LN: 32 | 
for_end_0:			/* LN: 32 | CYCLE: 0 | RULES: () */ 
	i1 = xmem[i4]			# LN: 38 | 
	i0 = i7 - (256 - 0)			# LN: 38 | 
	call (_strcpy)			# LN: 38 | 
	i0 = i7 - (256 - 0)			# LN: 39 | 
	call (_cl_wavread_open)			# LN: 39 | 
	AnyReg(i2, a0h)			# LN: 39 | 
	a0 = i2			# LN: 40 | 
	a0 & a0			# LN: 40 | 
	if (a != 0) jmp (else_0)			# LN: 40 | 
	i0 = (0) + (_string_const_0)			# LN: 42 | 
	call (_printf)			# LN: 42 | 
	halfword(a0) = (0xffff)			# LN: 43 | 
	jmp (__epilogue_270)			# LN: 43 | 
endif_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
else_0:			/* LN: 40 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 49 | 
	call (_cl_wavread_getnchannels)			# LN: 49 | 
	i0 = i7 - (0x201)			# LN: 49 | 
	xmem[i0] = a0h			# LN: 49 | 
	i0 = i2			# LN: 50 | 
	call (_cl_wavread_bits_per_sample)			# LN: 50 | 
	i4 += 1; a1 =+ a0			# LN: 57, 50 | 
	i0 = i2			# LN: 51 | 
	call (_cl_wavread_frame_rate)			# LN: 51 | 
	b0 =+ a0			# LN: 51 | 
	i0 = i2			# LN: 52 | 
	call (_cl_wavread_number_of_frames)			# LN: 52 | 
	i0 = i7 - (512 - 0)			# LN: 57 | 
	i1 = xmem[i4]			# LN: 57 | 
	a3 =+ a0			# LN: 52 | 
	call (_strcpy)			# LN: 57 | 
	uhalfword(b3) = (0x2)			# LN: 58 | 
	i0 = i7 - (512 - 0)			# LN: 59 | 
	a0 =+ a1			# LN: 59 | 
	a1 =+ b3			# LN: 59 | 
	call (_cl_wavwrite_open)			# LN: 59 | 
	AnyReg(i3, a0h)			# LN: 59 | 
	a0 = i3			# LN: 60 | 
	a0 & a0			# LN: 60 | 
	if (a != 0) jmp (else_1)			# LN: 60 | 
	i0 = (0) + (_string_const_1)			# LN: 62 | 
	call (_printf)			# LN: 62 | 
	halfword(a0) = (0xffff)			# LN: 63 | 
	jmp (__epilogue_270)			# LN: 63 | 
endif_1:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
else_1:			/* LN: 60 | CYCLE: 0 | RULES: () */ 
	a1 =+ b1			# LN: 66 | 
	a0 =+ a2; b0 =+ b2			# LN: 66, 66 | 
	call (_initialize)			# LN: 66 | 
	uhalfword(a1) = (0x10)			# LN: 91 | 
	a0 =+ a3			# LN: 91 | 
	call (__div)			# LN: 91 | 
	AnyReg(i0, a0h)			# LN: 91 | 
	nop #empty cycle
	do (i0), label_end_98			# LN: 91 | 
label_begin_98:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	a2 = 0			# LN: 93 | 
	do (0x10), label_end_95			# LN: 93 | 
label_begin_95:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = i7 - (0x201)			# LN: 95 | 
	a0 = xmem[i0]; b0 = 0			# LN: 95, 95 | 
	AnyReg(i0, a0h)			# LN: 95 | 
	nop #empty cycle
	do (i0), label_end_94			# LN: 95 | 
label_begin_94:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 97 | 
	call (_cl_wavread_recvsample)			# LN: 97 | 
	a1 =+ a0; b1 =+ b0			# LN: 97, 98 | 
	b1 = b1 << 4			# LN: 98 | 
	i0 = b1; a0 =+ a1			# LN: 98, 98 | 
	uhalfword(a1) = (0x1)			# LN: 95 | 
	i0 = i0 + (_sampleBuffer + 0)			# LN: 98 | 
	b1 = i0; b0 = b0 + a1			# LN: 98, 95 | 
	a1 = a2 + b1			# LN: 98 | 
	AnyReg(i0, a1h)			# LN: 98 | 
	nop #empty cycle
label_end_94:			# LN: 95 | CYCLE: 11 | RULES: ()
	ymem[i0] = a0h			# LN: 98 | 
init_latch_label_3:			/* LN: 100 | CYCLE: 0 | RULES: () */ 
for_end_4:			/* LN: 95 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 93 | 
label_end_95:			# LN: 93 | CYCLE: 1 | RULES: ()
	a2 = a2 + a0			# LN: 93 | 
for_end_3:			/* LN: 93 | CYCLE: 0 | RULES: () */ 
	i0 = (0) + (_sampleBuffer)			# LN: 105 | 
	i1 = (0) + (_sampleBuffer)			# LN: 105 | 
	call (_gainProcessing)			# LN: 105 | 
	a1 = 0			# LN: 107 | 
	do (0x10), label_end_97			# LN: 107 | 
label_begin_97:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
	b0 = 0			# LN: 109 | 
	do (0x2), label_end_96			# LN: 109 | 
label_begin_96:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	a0 = 0			# LN: 111 | 
	b0 & b0			# LN: 115 | 
	if (b != 0) jmp (else_2)			# LN: 115 | 
	a0 = 0			# LN: 115 | 
endif_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
else_2:			/* LN: 115 | CYCLE: 0 | RULES: () */ 
	uhalfword(b1) = (0x1)			# LN: 116 | 
	b0 - b1			# LN: 116 | 
	if (b != 0) jmp (switch_end_1)			# LN: 116 | 
	uhalfword(a0) = (0x1)			# LN: 116 | 
switch_end_1:			/* LN: 112 | CYCLE: 0 | RULES: () */ 
	a0 = a0 << 4			# LN: 134 | 
	i1 = a0			# LN: 134 | 
	i0 = i3			# LN: 135 | 
	i1 = i1 + (_sampleBuffer + 0)			# LN: 134 | 
	a0 = i1			# LN: 134 | 
	a0 = a0 + a1			# LN: 134 | 
	AnyReg(i1, a0h)			# LN: 134 | 
	uhalfword(a0) = (0x1)			# LN: 109 | 
	b1 = ymem[i1]; b0 = b0 + a0			# LN: 134, 109 | 
	a0 =+ b1			# LN: 134 | 
label_end_96:			# LN: 109 | CYCLE: 10 | RULES: ()
	call (_cl_wavwrite_sendsample)			# LN: 135 | 
init_latch_label_5:			/* LN: 137 | CYCLE: 0 | RULES: () */ 
for_end_6:			/* LN: 109 | CYCLE: 0 | RULES: () */ 
	uhalfword(a0) = (0x1)			# LN: 107 | 
label_end_97:			# LN: 107 | CYCLE: 1 | RULES: ()
	a1 = a1 + a0			# LN: 107 | 
init_latch_label_6:			/* LN: 138 | CYCLE: 0 | RULES: () */ 
for_end_5:			/* LN: 107 | CYCLE: 0 | RULES: () */ 
label_end_98:			# LN: 91 | CYCLE: 0 | RULES: ()
	nop #empty cycle
for_end_2:			/* LN: 91 | CYCLE: 0 | RULES: () */ 
	i0 = i2			# LN: 143 | 
	call (_cl_wavread_close)			# LN: 143 | 
	i0 = i3			# LN: 144 | 
	call (_cl_wavwrite_close)			# LN: 144 | 
	a0 = 0			# LN: 147 | 
__epilogue_270:			/* LN: 148 | CYCLE: 0 | RULES: () */ 
	i7 = i7 - (0x201)			# LN: 148 | 
	i7 -= 1			# LN: 148 | 
	i3 = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	i2 = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b3l = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b3h = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b3g = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a3l = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a3h = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a3g = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a2l = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a2h = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	a2g = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b2l = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b2h = xmem[i7]; i7 -= 1			# LN: 148, 148 | 
	b2g = xmem[i7]			# LN: 148 | 
	ret			# LN: 148 | 
