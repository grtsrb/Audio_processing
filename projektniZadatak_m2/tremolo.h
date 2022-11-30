#ifndef TREMOLO_H
#define TREMOLO_H

#include <math.h>
#include "common.h"



typedef enum

{
	kWaveformSine = 1,
	kWaveformTriangle,
} wave_forms_t;

typedef struct {
	DSPint numChannels;

	DSPfract LFO_frequency;  // LFO frequency (Hz)

	DSPfract depth;      // Depth of effect (0-1)

	wave_forms_t   waveform;      // What shape should be used for the LFO

	DSPfract lfoPhase;

	DSPfract inverseSampleRate;
} tremolo_struct_t;


void init(tremolo_struct_t* data);
void processBlock(DSPfract* input, DSPfract* output, tremolo_struct_t* data);
DSPfract lfo(DSPfract phase, wave_forms_t waveform);


#endif // !TREMOLO_H
