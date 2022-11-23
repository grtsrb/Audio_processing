#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "common.h"
#include "processing.h"

static DSPfract sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];

/////////////////////////////////////////////////////////////////////////////////
// @Author	<student name>
// @Date		<date>  
//
// Function:
// main
//
// @param - argv[0] - Input file name
//        - argv[1] - Output file name
// @return - nothing
// Comment: main routine of a program
//
// E-mail:	<email>
//
/////////////////////////////////////////////////////////////////////////////////
int main(int argc, char* argv[])
{
	FILE* wav_in = NULL;
	FILE* wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;
	DSPfract input_gain;
	double input_gainDB;
	DSPfract headroom_gain;
	double headroom_gainDB;
	int mode;
	DSPint OUTPUT_NUM_CHANNELS = 2;

	if (argc < 3 || argc > 6 || argc == 4 || argc == 5)
	{
		printf("Wrong input.\n");
		printf("Command line arguments: \n");
		printf("[Input file location] [Output file location] [Input Gain] [Headroom Gain] [Mode] \n");
		printf("\n");
		printf("a) Input gain -> Default = -6db Values: From 0 to  negative inf db \n");
		printf("b) Headroom gain -> Default = -6db Values: From 0 to negative inf db \n");
		printf("c) Mode: 0 -> OM2_0_0, 1 -> OM0_2_0, 2 -> OM3_2_0 \n");
		return -1;
	}
	if (argc == 3)
	{
		input_gain = MINUS_6DB;
		headroom_gain = MINUS_3DB;
		mode = OM2_0_0;
		OUTPUT_NUM_CHANNELS = 2;
	}
	else
	{
		//TO DO: Should I add if input_gain > 1 / 2
		input_gainDB = atof(argv[3]);
		input_gainDB = input_gainDB > fract(0.0) ? -6.0 : input_gainDB;
		input_gain = pow(10.0, input_gainDB / 20.0);

		headroom_gainDB = atof(argv[4]);
		headroom_gainDB = headroom_gainDB > fract(0.0) ? -3.0 : headroom_gainDB;
		headroom_gain = pow(10.0, headroom_gainDB / 20.0);

		mode = atoi(argv[5]);

		if (mode < 0 || mode > 3)
		{
			mode = OM2_0_0;
			OUTPUT_NUM_CHANNELS = 2;
		}

		switch (mode)
		{
		case OM2_0_0:
			OUTPUT_NUM_CHANNELS = 2;
			break;
		case  OM0_2_0:
			OUTPUT_NUM_CHANNELS = 2;
			break;
		case OM3_2_0:
			OUTPUT_NUM_CHANNELS = 5;
			break;
		default:
			break;
		}
	}

	// Init channel buffers
	for (DSPint i = 0; i < MAX_NUM_CHANNEL; i++)
		for (DSPint j = 0; j < BLOCK_SIZE; j++)
			sampleBuffer[i][j] = FRACT_NUM(0.0);

	// Open input and output wav files
	//-------------------------------------------------
	strcpy(WavInputName, argv[1]);
	wav_in = OpenWavFileForRead(WavInputName, "rb");
	strcpy(WavOutputName, argv[2]);
	wav_out = OpenWavFileForRead(WavOutputName, "wb");
	//-------------------------------------------------

	// Read input wav header
	//-------------------------------------------------
	ReadWavHeader(wav_in, inputWAVhdr);
	//-------------------------------------------------
	
	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = OUTPUT_NUM_CHANNELS; // change number of channels

	DSPint oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	DSPint oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign * outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);
	// Added initialize function for values.
	initialize(input_gain, headroom_gain, mode);


	// Processing loop
	//-------------------------------------------------	
	{
		DSPint sample;
		DSPint BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		DSPint iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels * inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (DSPint i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					double value = sample / SAMPLE_SCALE;
					sampleBuffer[k][j] = fract(value);			// scale sample to 1.0/-1.0 range		
				}
			}
			if (i >= 13)
			{
				int a = 0;
			}

			gainProcessing(sampleBuffer, sampleBuffer);

			for (DSPint j = 0; j < BLOCK_SIZE; j++)
			{
				for (DSPint k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
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
					sample = sampleBuffer[channel][j].toLong();	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
			fflush(wav_out);
		}
	}

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}