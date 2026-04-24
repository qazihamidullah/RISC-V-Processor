#########################
######### memories ######
######################### 
../../design/peripherals/dmem.sv
../../design/peripherals/imem.sv

#########################
####### packages ########
######################### 
../../design/core/packages/immediate_extender_pkg.sv
../../design/core/packages/instr_decode_pkg.sv

#########################
######### core ##########
######################### 

# fetch stage
../../design/core/fetch/program_counter.sv
../../design/core/fetch/fetch_top.sv

# decode stage
../../design/core/decode/decoder.sv
../../design/core/decode/immediate_extender.sv
../../design/core/decode/register_file.sv
../../design/core/decode/decode_top.sv

# execute stage
../../design/core/execute/execute_top.sv

# memory stage
../../design/core/memory/memory_top.sv

# writeback stage
../../design/core/writeback/writeback_top.sv

# core top
../../design/core/core_top.sv

#soc_top
../../design/soc/soc_top.sv

# testbench
../../verif/core/core_top_tb.sv