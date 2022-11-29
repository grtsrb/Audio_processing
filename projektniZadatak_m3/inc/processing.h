#ifndef PROCESSING_H
#define PROCESSING_H

#include <math.h>
#include "common.h"
#include "tremolo.h"



void initialize(DSPfract input_gain_func, DSPfract headroom_gain_func, DSPint mode_func);
void gainProcessing(__memY DSPfract pIn[][BLOCK_SIZE],__memY DSPfract pOut[][BLOCK_SIZE]);



#endif // !_PROCESSING_H_
