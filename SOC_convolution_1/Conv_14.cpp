#include "Conv_14.h"

void Conv_14::conv_proc_2(){

	double input_data_temp [14][14];
	double output_res [7][7];

	for( int i = 0; i<14; i++){
		for(int j = 0; j<14; j++){

			input_data_temp[i][j] = input_data[i][j].read();
		}
	}

	double filter [2][2] = {{0.04559669, -0.36797318}, {-0.08351272 , -0.36409515}};


	for( int i = 0; i<7; i++){
		for(int j = 0; j<7; j++){
			output_res[i][j]=input_data_temp[i*2][j*2]*filter[0][0] + input_data_temp[i*2][j*2+1]*filter[0][1]
								+input_data_temp[i*2+1][j*2]*filter[1][0] + input_data_temp[i*2+1][j*2+1]*filter[1][1];

			output_data[i][j].write(output_res[i][j]);
		}
		}
}

