#include "operation.h"

 double out_data[7][7];

void compute(double ip[28][28]){

	int counter_buffer1 = 0;
	int counter_buffer2 = 0;

	double fifo_in_temp[196];

	double in_conv2[14][14];

//compute convolution 1

conv1(ip);

for(int i = 0 ; i<14 ;i++){
	for(int j = 0; j<14; j++){

		fifo_in_temp[counter_buffer1++] = out_data_1[i][j];

	}
}


//compute FIFO
buff(fifo_in_temp);

for(int i = 0 ; i<14 ;i++){
	for(int j = 0; j<14; j++){

		in_conv2[i][j] = fifo_out[counter_buffer2++];

	}
}


//compute convolution 2

conv2(in_conv2);

for(int i = 0 ; i<7 ;i++){
	for(int j = 0; j<7; j++){

		out_data[i][j] = out_data_2[i][j];

	}
}

}
