#ifndef PROCESSING_H
#define PROCESSING_H

#include <math.h>
#include "common.h"
#include "tremolo.h"


//void initGainProcessing(double preGainValue, double* defaultVariablesGain, double postGainValue);

//double saturation(double in, double threshold);




void initialize(double input_gain_func, double headroom_gain_func, int mode_func);
void gainProcessing(double pIn[][BLOCK_SIZE], double pOut[][BLOCK_SIZE]);





#endif // !_PROCESSING_H_
