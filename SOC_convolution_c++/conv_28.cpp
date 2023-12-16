#include "conv_28.h"
double out_data_1 [14][14];
 void conv1(double inp [28][28]){

		 double filter [2][2] = {{0.09147772 , 0.08124895},{-0.20509367, -0.0041643}};

		for( int i = 0; i<14; i++){
			for(int j = 0; j<14; j++){
				out_data_1[i][j]=inp[i*2][j*2]*filter[0][0] + inp[i*2][j*2+1]*filter[0][1]
								 +inp[i*2+1][j*2]*filter[1][0] + inp[i*2+1][j*2+1]*filter[1][1];


			}
			}

		return ;


}
