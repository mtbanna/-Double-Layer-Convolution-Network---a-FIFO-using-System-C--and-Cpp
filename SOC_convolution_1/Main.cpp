#include "Conv_28.h"
#include "Conv_14.h"
#include <systemc.h>
#include <iostream>
#include <fstream>
#include <string>
#include <string.h>
#include "FIFO.h"
using namespace std;

int main()
{
	ifstream inputFile;
	inputFile.open("C:/Users/Mahmoud/Documents/Semester 10/Systems On a Chip/Project/Inputs.csv"); // open inputfile
	if(!inputFile) cout<<"File not found";
	double  in_data[28][28];
	int a=0,b=0;

	string line= " ";
	while (getline(inputFile,line,',')) // read data from cells
	{

		if (b==28) {a++;b=0;}
		if (a==28) {break;}
		in_data[a][b]= atoi(line.c_str());
		b++;
	}

	sc_signal<double>  conv1_input[28][28];   // conv1 inputs
	sc_signal<double>  conv1_output[14][14];  // conv1 outputs
	sc_signal<double>  buffer_output[196];    //  fifo outputs
	sc_signal<double>  conv2_out[7][7];       // conv2 output


    Conv_28 Conv_1("convo");
	FIFO_module F1("fifos");
	Conv_14 Conv_2("convs");

	//conv1 signals

	for (int i=0;i<28;i++){
						for (int j=0;j<28;j++){
							conv1_input[i][j]=(in_data[i][j]);
						}
		}

	for (int i=0;i<28;i++){
					for (int j=0;j<28;j++){
						Conv_1.input_data[i][j].bind(conv1_input[i][j]);
					}
	}

				for (int i=0;i<14;i++){
					for (int j=0;j<14;j++)
						Conv_1.output_data[i][j].bind(conv1_output[i][j]);
	}

// conv1 in fifo

		int buff_counter=0;
		for (int i=0;i<14;i++)
			for (int j=0;j<14;j++)
				F1.Buffer_in[buff_counter++].bind(conv1_output[i][j]);

		for (int i=0;i<196;i++) // assign signals for object
		{
			F1.Buffer_out[i].bind(buffer_output[i]);
		}


		//FIFO into conv2
		int counter_buffer=0;
		for (int i=0;i<14;i++){
				for (int j=0;j<14;j++){
					Conv_2.input_data[i][j](buffer_output[counter_buffer++]);
				}}

		for (int i=0;i<7;i++){
						for (int j=0;j<7;j++){
							Conv_2.output_data[i][j].bind(conv2_out[i][j]);
						}}

		sc_start();


		for (int i=0;i<7;i++){
			for (int j=0;j<7;j++){
				cout<< Conv_2.output_data[i][j]<<" ";
						}
			cout<<endl;
		}


	return 0;
}
