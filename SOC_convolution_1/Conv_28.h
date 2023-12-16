
#ifndef CONV28_H_
#define CONV28_H_

#include <systemc.h>

SC_MODULE(Conv_28)
{
	sc_in<double> input_data [28][28];
	sc_out<double> output_data [14][14];
	void conv_proc(); // convolution function
	SC_HAS_PROCESS(Conv_28);
	Conv_28(sc_module_name Conv_28):sc_module(Conv_28)
	{
		SC_METHOD(conv_proc);
		for( int i =0; i<28;i++){
			for(int j=0;j<28;j++){
				sensitive << input_data[i][j];
	}}}
};

#endif

