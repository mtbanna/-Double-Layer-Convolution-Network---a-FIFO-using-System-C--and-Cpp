#include "Conv_28.h"

void Conv_28 ::conv_proc(){

	double input_data_temp [28][28];

	double output_res [14][14];


	for( int i = 0; i<28; i++){
		for(int j = 0; j<28; j++){

			input_data_temp[i][j] = input_data[i][j].read();
		}
	}

	double filter [2][2]={{0.09147772 , 0.08124895},{-0.20509367, -0.0041643}};

	for( int i = 0; i<14; i++){
		for(int j = 0; j<14; j++){
			output_res[i][j]=input_data_temp[i*2][j*2]*filter[0][0] + input_data_temp[i*2][j*2+1]*filter[0][1]
							+input_data_temp[i*2+1][j*2]*filter[1][0] + input_data_temp[i*2+1][j*2+1]*filter[1][1];

			output_data[i][j].write(output_res[i][j]);
		}
		}
	return ;
}


