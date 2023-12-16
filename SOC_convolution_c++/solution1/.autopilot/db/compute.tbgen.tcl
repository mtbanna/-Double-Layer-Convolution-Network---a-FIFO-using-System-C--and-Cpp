set C_TypeInfoList {{ 
"compute" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"ip": [[], {"array": [ {"array": [ {"scalar": "double"}, [28]]}, [28]]}] }],["0","1","2","3"],""],
 "0": [ "out_data_2", [[], {"array": [ {"scalar": "double"}, [7,7]]}],""],
 "1": [ "out_data_1", [[], {"array": [ {"scalar": "double"}, [14,14]]}],""],
 "2": [ "out_data", [[], {"array": [ {"scalar": "double"}, [7,7]]}],""],
 "3": [ "fifo_out", [[], {"array": [ {"scalar": "double"}, [196]]}],""]
}}
set moduleName compute
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ ip double 64 regular {array 784 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "ip", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "ip","cData": "double","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 27,"step" : 1},{"low" : 0,"up" : 27,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ip_address0 sc_out sc_lv 10 signal 0 } 
	{ ip_ce0 sc_out sc_logic 1 signal 0 } 
	{ ip_q0 sc_in sc_lv 64 signal 0 } 
	{ ip_address1 sc_out sc_lv 10 signal 0 } 
	{ ip_ce1 sc_out sc_logic 1 signal 0 } 
	{ ip_q1 sc_in sc_lv 64 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ip_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ip", "role": "address0" }} , 
 	{ "name": "ip_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip", "role": "ce0" }} , 
 	{ "name": "ip_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ip", "role": "q0" }} , 
 	{ "name": "ip_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ip", "role": "address1" }} , 
 	{ "name": "ip_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ip", "role": "ce1" }} , 
 	{ "name": "ip_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ip", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "compute",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "ip", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_data_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "fifo_out", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_data_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "out_data", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_out_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_data_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fifo_in_temp_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_conv2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dadd_64nscud_U1", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nsdEe_U2", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.compute_dmul_64nsdEe_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		ip {Type I LastRead 10 FirstWrite -1}
		out_data_1 {Type IO LastRead -1 FirstWrite -1}
		fifo_out {Type IO LastRead -1 FirstWrite -1}
		out_data_2 {Type IO LastRead -1 FirstWrite -1}
		out_data {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6292", "Max" : "6292"}
	, {"Name" : "Interval", "Min" : "6293", "Max" : "6293"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	ip { ap_memory {  { ip_address0 mem_address 1 10 }  { ip_ce0 mem_ce 1 1 }  { ip_q0 mem_dout 0 64 }  { ip_address1 mem_address 1 10 }  { ip_ce1 mem_ce 1 1 }  { ip_q1 mem_dout 0 64 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
