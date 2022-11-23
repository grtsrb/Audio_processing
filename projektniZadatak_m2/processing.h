#ifndef PROCESSING_H
#define PROCESSING_H

#include <math.h>
#include "common.h"
#include "tremolo.h"


//void initGainProcessing(double preGainValue, double* defaultVariablesGain, double postGainValue);

//double saturation(double in, double threshold);




void initialize(DSPfract input_gain_func, DSPfract headroom_gain_func, DSPint mode_func);
void gainProcessing(DSPfract pIn[][BLOCK_SIZE], DSPfract pOut[][BLOCK_SIZE]);





#endif // !_PROCESSING_H_
