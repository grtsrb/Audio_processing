#ifndef COMMON_H
#define COMMON_H

#define BLOCK_SIZE 16
#define MAX_NUM_CHANNEL 8

#define INPUT_NUM_CHANNELS 2
#define OUTPUT_NUM_CHANNELS 3 // Default -> Left and Right


#define LEFT_CH 0
#define RIGHT_CH 1
#define CENTER_CH 2
#define LEFTS_CH 3
#define RIGHTS_CH 4

#define MINUS_6DB 0.50118
#define MINUS_2DB 0.794328
#define MINUS_3DB 0.707946

enum OUTPUT_MODES
{
	OM2_0_0 = 0, //l & R
	OM0_2_0 = 1, // Ls & Rs
	OM3_2_0 = 2, // L & R & C & Ls & Rs
};


#endif // !COMMON_H
