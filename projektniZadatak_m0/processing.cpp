#include "common.h"


/*void initGainProcessing(double preGainValue, double* defaultVariablesGain, double postGainValue)
{
	preGain = preGainValue;
	for (int i = 0; i < INPUT_NUM_CHANNELS; i++)
	{
		variablesGain[i] = defaultVariablesGain[i];
	}
	postGain = postGainValue;
}*/

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

void gainProcessing(double pIn[][BLOCK_SIZE], double pOut[][BLOCK_SIZE])
{
	double sum;

	for (int i = 0; i < BLOCK_SIZE; i++)
	{	
		// Multiply with -6db
		pIn[LEFT_CH][i] *= MINUS_6DB;
		pIn[RIGHT_CH][i] *= MINUS_6DB;

		// Sum of left and right channel and multiply the sum with 3db
		sum = (pIn[LEFT_CH][i] + pIn[RIGHT_CH][i]) * MINUS_3DB;
		

		// Output for left, right and center channel
		pOut[LEFT_CH][i] = sum * MINUS_6DB;
		pOut[RIGHT_CH][i] = sum * MINUS_6DB;
		pOut[CENTER_CH][i] = sum;
	}
}