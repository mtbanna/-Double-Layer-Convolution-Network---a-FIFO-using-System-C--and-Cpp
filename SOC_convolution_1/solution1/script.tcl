############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project SOC_convolution_1
add_files SOC_convolution_1/Conv_14.cpp
add_files SOC_convolution_1/Conv_14.h
add_files SOC_convolution_1/Conv_28.cpp
add_files SOC_convolution_1/Conv_28.h
add_files SOC_convolution_1/FIFO.cpp
add_files SOC_convolution_1/FIFO.h
add_files Inputs.csv
add_files -tb SOC_convolution_1/Main.cpp
open_solution "solution1"
set_part {xc7a200tfbg676-2} -tool vivado
create_clock -period 10 -name default
#source "./SOC_convolution_1/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
