	.public _OUTPUT_GAIN2
	.public _OUTPUT_GAIN6
	.public _headroom_gain
	.public _input_gain
	.public _mode
	.public _tremoloBuffer
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
