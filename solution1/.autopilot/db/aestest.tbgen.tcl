set moduleName aestest
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set pipeII 1
set pipeLatency 19
set C_modelName aestest
set C_modelType { void 0 }
set C_modelArgList { 
	{ inptext_V int 128 regular {pointer 0}  }
	{ key_V int 128 regular {pointer 0}  }
	{ outtext_V int 128 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "inptext_V", "interface" : "wire", "bitwidth" : 128,"bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "inptext.V","cData": "uint128","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "key_V", "interface" : "wire", "bitwidth" : 128,"bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "key.V","cData": "uint128","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "outtext_V", "interface" : "wire", "bitwidth" : 128,"bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "outtext.V","cData": "uint128","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inptext_V sc_in sc_lv 128 signal 0 } 
	{ key_V sc_in sc_lv 128 signal 1 } 
	{ outtext_V sc_out sc_lv 128 signal 2 } 
	{ outtext_V_ap_vld sc_out sc_logic 1 outvld 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inptext_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "inptext_V", "role": "default" }} , 
 	{ "name": "key_V", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "key_V", "role": "default" }} , 
 	{ "name": "outtext_V", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "outtext_V", "role": "default" }} , 
 	{ "name": "outtext_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outtext_V", "role": "ap_vld" }}  ]}
set Spec2ImplPortList { 
	inptext_V { ap_none {  { inptext_V in_data 0 128 } } }
	key_V { ap_none {  { key_V in_data 0 128 } } }
	outtext_V { ap_vld {  { outtext_V out_data 1 128 }  { outtext_V_ap_vld out_vld 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
