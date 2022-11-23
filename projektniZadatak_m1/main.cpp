
#include <stdlib.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "WAVheader.h"
#include "processing.h"



// IO Buffers
static double sampleBuffer[MAX_NUM_CHANNEL][BLOCK_SIZE];





/////////////////////////////////////////////////////////////////////////////////
// @Author	Nikola Vlaskalin
// @Date		21.11.2022. 
//
// Function:
// main
//
// @param - argv[0] - Input file name
//        - argv[1] - Output file name
// @return - nothing
// Comment: main routine of a program
//
// E-mail:	nikola.vlaskalin00@gmail.com
//
/////////////////////////////////////////////////////////////////////////////////
int main(int argc, char* argv[])
{
	FILE* wav_in = NULL;
	FILE* wav_out = NULL;
	char WavInputName[256];
	char WavOutputName[256];
	WAV_HEADER inputWAVhdr, outputWAVhdr;
	// TO DO: Check if I should use global variables from processing.
	double input_gain;
	double input_gainDB;
	double headroom_gain;
	double headroom_gainDB;
	int mode;
	int OUTPUT_NUM_CHANNELS;

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
	} else
	{
		//TO DO: Should I add if input_gain > 1 / 2
		input_gainDB = atof(argv[3]);
		input_gainDB = input_gainDB > 0 ? -6.0 : input_gainDB;
		input_gain = pow(10.0, input_gainDB / 20.0);

		headroom_gainDB = atof(argv[4]);
		headroom_gainDB = headroom_gainDB > 0 ? -3.0 : headroom_gainDB;
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
	for (int i = 0; i < MAX_NUM_CHANNEL; i++)
		memset(&sampleBuffer[i], 0, BLOCK_SIZE);

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



	//Default values


	// Set up output WAV header
	//-------------------------------------------------	
	outputWAVhdr = inputWAVhdr;
	outputWAVhdr.fmt.NumChannels = OUTPUT_NUM_CHANNELS; // change number of channels

	int oneChannelSubChunk2Size = inputWAVhdr.data.SubChunk2Size / inputWAVhdr.fmt.NumChannels;
	int oneChannelByteRate = inputWAVhdr.fmt.ByteRate / inputWAVhdr.fmt.NumChannels;
	int oneChannelBlockAlign = inputWAVhdr.fmt.BlockAlign / inputWAVhdr.fmt.NumChannels;

	outputWAVhdr.data.SubChunk2Size = oneChannelSubChunk2Size * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.ByteRate = oneChannelByteRate * outputWAVhdr.fmt.NumChannels;
	outputWAVhdr.fmt.BlockAlign = oneChannelBlockAlign * outputWAVhdr.fmt.NumChannels;


	// Write output WAV header to file
	//-------------------------------------------------
	WriteWavHeader(wav_out, outputWAVhdr);
	initialize(input_gain, headroom_gain, mode);

	// Processing loop
	//-------------------------------------------------	
	{
		int sample;
		int BytesPerSample = inputWAVhdr.fmt.BitsPerSample / 8;
		const double SAMPLE_SCALE = -(double)(1 << 31);		//2^31
		int iNumSamples = inputWAVhdr.data.SubChunk2Size / (inputWAVhdr.fmt.NumChannels * inputWAVhdr.fmt.BitsPerSample / 8);

		// exact file length should be handled correctly...
		for (int i = 0; i < iNumSamples / BLOCK_SIZE; i++)
		{
			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < inputWAVhdr.fmt.NumChannels; k++)
				{
					sample = 0; //debug
					fread(&sample, BytesPerSample, 1, wav_in);
					sample = sample << (32 - inputWAVhdr.fmt.BitsPerSample); // force signextend
					sampleBuffer[k][j] = sample / SAMPLE_SCALE;				// scale sample to 1.0/-1.0 range		
				}
			}

			gainProcessing(sampleBuffer, sampleBuffer);

			for (int j = 0; j < BLOCK_SIZE; j++)
			{
				for (int k = 0; k < outputWAVhdr.fmt.NumChannels; k++)
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
					sample = sampleBuffer[channel][j] * SAMPLE_SCALE;	// crude, non-rounding 			
					sample = sample >> (32 - inputWAVhdr.fmt.BitsPerSample);
					fwrite(&sample, outputWAVhdr.fmt.BitsPerSample / 8, 1, wav_out);
				}
			}
		}
	}

	// Close files
	//-------------------------------------------------	
	fclose(wav_in);
	fclose(wav_out);
	//-------------------------------------------------	

	return 0;
}