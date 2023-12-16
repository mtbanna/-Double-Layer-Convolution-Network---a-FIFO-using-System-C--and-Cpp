#include "FIFO.h"

void FIFO_module::data_pass()
	{
		for (int i=0;i<196;i++)
			Buffer_out[i].write(Buffer_in[i]);
		return;
	}
