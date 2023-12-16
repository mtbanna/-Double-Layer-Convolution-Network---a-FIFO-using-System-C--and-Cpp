#ifndef FIFO_H_
#define FIFO_H_

#include <systemc.h>

SC_MODULE(FIFO_module)
{
	sc_in<double>  Buffer_in[196];
	sc_out<double>  Buffer_out[196];
	void data_pass();
	SC_CTOR(FIFO_module){
		SC_METHOD(data_pass);
		for (int i=0;i<196;i++) // 14*14 = 196
			sensitive << Buffer_in[i]; // sensitivity list of inputs
	}
};

#endif
