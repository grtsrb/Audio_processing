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
	int numChannels;

	double LFO_frequency;  // LFO frequency (Hz)

	double depth;      // Depth of effect (0-1)

	wave_forms_t   waveform;      // What shape should be used for the LFO

	double lfoPhase;

	double inverseSampleRate;
} tremolo_struct_t;

void init(tremolo_struct_t* data);
void processBlock(double* input, double* output, tremolo_struct_t* data, int numSamples);
double lfo(double phase, wave_forms_t waveform);


#endif // !TREMOLO_H
