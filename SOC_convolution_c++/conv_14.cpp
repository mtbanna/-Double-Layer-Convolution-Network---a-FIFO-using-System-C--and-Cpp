#include "conv_14.h"
double out_data_2 [7][7];
void conv2(double in_data [14][14]){


		 double filter [2][2]= {{0.04559669 , -0.36797318} , {-0.08351272 , -0.36409515}};

		for( int i = 0; i<7; i++){
			for(int j = 0; j<7; j++){
				out_data_2[i][j]=in_data[i*2][j*2]*filter[0][0] + in_data[i*2][j*2+1]*filter[0][1]
								 +in_data[i*2+1][j*2]*filter[1][0] + in_data[i*2+1][j*2+1]*filter[1][1];


			}
			}
		return ;


}
