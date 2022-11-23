#include "common.h"
#include "processing.h"

/*double saturation(double in, double threshold)
{
	// Simple limiter since we know that pre-Gain adds 6dB
	if (in > threshold)
	{
		return fmin(in, threshold);
	}
	else if (in < -threshold)
	{
		return fmax(in, -threshold);
	}

	return in;
}*/



void gainProcessing(double pIn[][BLOCK_SIZE], double pOut[][BLOCK_SIZE], double input_gain, double headroom_gain, int mode)
{
	double sum;
	double pTemp[INPUT_NUM_CHANNELS][BLOCK_SIZE];

	tremolo_struct_t tremolo;
	tremolo_struct_t*  tremolo_ptr = &tremolo;
	init(tremolo_ptr);


	for (int i = 0; i < BLOCK_SIZE; i++)
	{	

		// Multiply with -6db
		pIn[LEFT_CH][i] *= input_gain;
		pIn[RIGHT_CH][i] *= input_gain;

		pTemp[LEFT_CH][i] = pIn[LEFT_CH][i];
		pTemp[RIGHT_CH][i] = pIn[RIGHT_CH][i];

		if (mode != OM0_2_0)
		{
			// Sum of left and right channel and multiply the sum with -3db
			sum = (pIn[LEFT_CH][i] + pIn[RIGHT_CH][i]) * headroom_gain;

			// Output for left, right and center channel

			pOut[LEFT_CH][i] = sum * MINUS_6DB;
			pOut[RIGHT_CH][i] = sum * MINUS_6DB;
		}

		if (mode == OM3_2_0)
		{
			pOut[CENTER_CH][i] = sum;
		}
	}

	// Tremolo processing for Ls and Rs
	// void processBlock(double* input, double* output, tremolo_struct_t* data, int numSamples);

	if (mode != OM2_0_0)
	{

		processBlock(pTemp[LEFT_CH], pTemp[LEFT_CH], tremolo_ptr, BLOCK_SIZE);
		// Maybe not needed.
		init(tremolo_ptr);
		processBlock(pTemp[RIGHT_CH], pTemp[RIGHT_CH], tremolo_ptr, BLOCK_SIZE);

		for (int i = 0; i < BLOCK_SIZE; i++)
		{
			pOut[LEFTS_CH][i] = pTemp[LEFT_CH][i] * MINUS_2DB;
			pOut[RIGHTS_CH][i] = pTemp[RIGHT_CH][i] * MINUS_2DB;
		}
	}
}