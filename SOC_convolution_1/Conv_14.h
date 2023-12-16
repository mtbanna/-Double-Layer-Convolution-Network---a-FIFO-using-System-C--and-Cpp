#ifndef Conv14_H_
#define Conv14_H_
#include "systemc.h"


SC_MODULE(Conv_14){

sc_in<double> input_data [14][14];
sc_out<double> output_data [7][7];

void conv_proc_2();

SC_HAS_PROCESS(Conv_14);

Conv_14(sc_module_name Conv_14):sc_module(Conv_14){

SC_METHOD(conv_proc_2);

for( int i =0; i<7;i++){
	for(int j=0;j<7;j++){
		sensitive << input_data[i][j];
	}
}
}

};

#endif
