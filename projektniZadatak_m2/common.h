#include "stdfix_emu.h"
#ifndef COMMON_H
#define COMMON_H

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define INPUT_NUM_CHANNELS 2
// Defined tremolo num channels
#define TREMOLO_NUM_CHANNELS 2



#define LEFT_CH 0
#define RIGHT_CH 1
#define CENTER_CH 2
#define LEFTS_CH 3
#define RIGHTS_CH 4

#define MINUS_6DB 0.50118
#define MINUS_2DB 0.794328
#define MINUS_3DB 0.707946

// Tremolo
#define SAMPLE_RATE 48000
#define PI 3.14159265358979323846

#define limiterThreshold = 0.999;


enum OUTPUT_MODES
{
	OM2_0_0 = 0, //l & R
	OM0_2_0 = 1, // Ls & Rs
	OM3_2_0 = 2, // L & R & C & Ls & Rs
};

/* DSP integer */
typedef short DSPshort;
/* DSP unsigned integer */
typedef unsigned DPushort;
/* native integer */
typedef int DSPint;
/* DSP fixed-point fractional */
typedef fract DSPfract;
/* DSP fixed-point fractional */
typedef long_accum DSPaccum;

#endif // !COMMON_H
