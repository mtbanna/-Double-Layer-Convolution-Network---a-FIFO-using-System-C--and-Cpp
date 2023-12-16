#include "fifo.h"

double fifo_out [196];
void buff(double fifo_in[196]){

	for(int i = 0; i<196; i++){

		fifo_out[i] = fifo_in[i];
	}

}

