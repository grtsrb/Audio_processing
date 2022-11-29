#include <stdio.h>
#include <dsplib\wavefile.h>
#include <stdfix.h>
#include <string.h>
#include "common.h"
#include "processing.h"
__memY DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];
__memY tremolo_struct_t tremoloL;
__memY tremolo_struct_t tremoloR;

int main(int argc, char *argv[])
 {
    WAVREAD_HANDLE *wav_in;
    WAVWRITE_HANDLE *wav_out;

	char WavInputName[256];
	char WavOutputName[256];

    DSPint inChannels;
    DSPint outChannels;
    DSPint bitsPerSample;
    DSPint sampleRate;
    DSPint iNumSamples;
	DSPfract input_gain;
	DSPfract headroom_gain;
	DSPint mode;
	DSPint OUTPUT_NUM_CHANNELS;
    DSPint i;
    DSPint j;
	input_gain = MINUS_6DB;
	headroom_gain = MINUS_3DB;
	mode = OM2_0_0;
	OUTPUT_NUM_CHANNELS = 2;

	// Init channel buffers
	for(i=0; i<MAX_NUM_CHANNEL; i++)
		for(j=0; j<BLOCK_SIZE; j++)
			sampleBuffer[i][j] = FRACT_NUM(0.0);

	// Open input wav file
	//-------------------------------------------------
	strcpy(WavInputName,argv[0]);
	wav_in = cl_wavread_open(WavInputName);
	 if(wav_in == NULL)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	inChannels = cl_wavread_getnchannels(wav_in);
    bitsPerSample = cl_wavread_bits_per_sample(wav_in);
    sampleRate = cl_wavread_frame_rate(wav_in);
    iNumSamples =  cl_wavread_number_of_frames(wav_in);
	//-------------------------------------------------

	// Open output wav file
	//-------------------------------------------------
	strcpy(WavOutputName,argv[1]);
	outChannels = OUTPUT_NUM_CHANNELS;
	wav_out = cl_wavwrite_open(WavOutputName, bitsPerSample, outChannels, sampleRate);
	if(!wav_out)
    {
        printf("Error: Could not open wavefile.\n");
        return -1;
    }
	//-------------------------------------------------
	initialize(input_gain, headroom_gain, mode);
	// Processing loop
	//-------------------------------------------------
    {
		int i;
		int j;
		int k;
		int sample;

		// exact file length should be handled correctly...
		for(i=0; i<iNumSamples/BLOCK_SIZE; i++)
		{
			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<inChannels; k++)
				{
					sample = cl_wavread_recvsample(wav_in);
        			sampleBuffer[k][j] = rbits(sample);
				}
			}

			// pozvati processing funkciju ovde
			gainProcessing(sampleBuffer, sampleBuffer);

			for(j=0; j<BLOCK_SIZE; j++)
			{
				for(k=0; k<outChannels; k++)
				{
					int channel = 0;
					switch (mode)
					{
					case OM2_0_0:
						if (k == 0) channel = LEFT_CH;
						if (k == 1) channel = RIGHT_CH;
						break;
					case OM0_2_0:
						if (k == 0) channel = LEFTS_CH;
						if (k == 1) channel = RIGHTS_CH;
						break;
					case OM3_2_0:
						if (k == 0) channel = LEFT_CH;
						if (k == 1) channel = RIGHT_CH;
						if (k == 2) channel = CENTER_CH;
						if (k == 3) channel = LEFTS_CH;
						if (k == 4) channel = RIGHTS_CH;
					default:
						break;
					}
					sample = bitsr(sampleBuffer[channel][j]);
					cl_wavwrite_sendsample(wav_out, sample);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------
    cl_wavread_close(wav_in);
    cl_wavwrite_close(wav_out);
	//-------------------------------------------------

    return 0;
 }
