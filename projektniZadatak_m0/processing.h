#ifndef PROCESSING_H
#define PROCESSING_H

#include <math.h>
#include "common.h"
#include "tremolo.h"


//void initGainProcessing(double preGainValue, double* defaultVariablesGain, double postGainValue);

//double saturation(double in, double threshold);

void gainProcessing(double pIn[][BLOCK_SIZE], double pOut[][BLOCK_SIZE], double input_gain, double headroom_gain, int mode);





#endif // !_PROCESSING_H_
