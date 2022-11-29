#include "tremolo.h"




void init(tremolo_struct_t * data)
{

	// Set default values:
	data->LFO_frequency = FRACT_NUM(2.0);
	data->depth = FRACT_NUM(1.0);
	data->waveform = kWaveformSine;
	data->lfoPhase = FRACT_NUM(0.0);
	data->inverseSampleRate = FRACT_NUM(1.0) / SAMPLE_RATE;
}


void processBlock(DSPfract* input, DSPfract* output, tremolo_struct_t* data)
{

	DSPfract ph;
	DSPint i;
	DSPfract rescaledSample;

	// Make a temporary copy of any state variables which need to be

	// maintained between calls to processBlock(). Each channel needs to be processed identically

	// which means that the activity of processing one channel can't affect the state variable for

	// the next channel.

	//EDIT: Added pointers.

	ph = data->lfoPhase;


	for (i = 0; i < BLOCK_SIZE; ++i)

	{

		const DSPfract in = *input;

		// Ring modulation is easy! Just multiply the waveform by a periodic carrier

		*output = in * (FRACT_NUM(1.0) - data->depth*lfo(ph, data->waveform));

		// Update the carrier and LFO phases, keeping them in the range 0-1
		
		rescaledSample =  data->LFO_frequency*data->inverseSampleRate;
		rescaledSample = rescaledSample << 1;
		ph += rescaledSample;
		if (ph >= FRACT_NUM(1.0))

			ph -= FRACT_NUM(1.0);
		input++;
		output++;
	}


	// Having made a local copy of the state variables for each channel, now transfer the result

	// back to the main state variable so they will be preserved for the next call of processBlock()



	data->lfoPhase = ph;

}

//==============================================================================



DSPfract lfo(DSPfract phase, wave_forms_t waveform)

{

	switch (waveform)

	{

	case kWaveformTriangle:

		if (phase < FRACT_NUM(0.25))

			return FRACT_NUM(0.5) + (fract)((long)2 * phase);

		else if (phase < FRACT_NUM(0.75))

			return FRACT_NUM(1.0) - (fract)((long)2 * (phase - FRACT_NUM(0.25)));

		else

			return FRACT_NUM(2.0) * (phase - FRACT_NUM(0.75));

	case kWaveformSine:

	default:

		return FRACT_NUM(0.5) + FRACT_NUM(0.5) * cl_sin(phase << 1);

	}

}
