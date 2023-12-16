#include"operation.h"
#include <iostream>
#include <fstream>
#include <string>
#include <string.h>

int main(){

ifstream inputFile;
	inputFile.open("C:/Users/Mahmoud/Documents/Semester 10/Systems On a Chip/Project/Inputs.csv"); // open inputfile
	if(!inputFile) cout<<"File not found "<< std::endl;; //exit(EXIT_FAILURE);
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


	double out_res [7][7];


	compute(in_data);


for(int i = 0; i<7; i++){

	for(int j = 0; j<7; j++){

		out_res[i][j] = out_data[i][j];

		cout<< out_res[i][j]<<" ";
	}
	cout<<endl;
}}
