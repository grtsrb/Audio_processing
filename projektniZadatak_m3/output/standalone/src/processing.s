	.public _OUTPUT_GAIN2
	.public _OUTPUT_GAIN6
	.public _headroom_gain
	.public _input_gain
	.public _mode
	.public _tremoloBuffer
	.public _tremoloL
	.public _tremoloR
	.ydata_ovly
S_tremoloR_0	.struct
_numChannels	.dw (0x0)
_LFO_frequency	.dw (0x0)
_depth	.dw (0x0)
_waveform	.dw (0x0)
_lfoPhase	.dw (0x0)
_inverseSampleRate	.dw (0x0)
	.endstruct

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
	.ydata_ovly
_tremoloBuffer
	.bss (0x20)
	.ydata_ovly
_tremoloL S_tremoloR_0

	.ydata_ovly
_tremoloR S_tremoloR_0

