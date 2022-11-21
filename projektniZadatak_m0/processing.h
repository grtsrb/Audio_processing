#ifndef PROCESSING_H
#define PROCESSING_H

#include <math.h>
#include "common.h"

//void initGainProcessing(double preGainValue, double* defaultVariablesGain, double postGainValue);

//double saturation(double in, double threshold);

void gainProcessing(double pIn[][BLOCK_SIZE], double pOut[][BLOCK_SIZE]);





#endif // !_PROCESSING_H_
