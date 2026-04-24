onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Pipeline stages}
add wave -noupdate /tb/dut/mem_ntv_interface_imem/rdata
add wave -noupdate /tb/dut/rv32_inst/compr/instruction_out
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/q
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/q
add wave -noupdate /tb/dut/rv32_inst/EX_MEM_instout/q
add wave -noupdate /tb/dut/rv32_inst/MEM_WB_instout/q
add wave -noupdate /tb/dut/rv32_inst/reg_file/ram
add wave -noupdate /tb/dut/rv32_inst/inst_decoder/instruction_o
add wave -noupdate -divider PC
add wave -noupdate /tb/dut/rv32_inst/PC/clk
add wave -noupdate /tb/dut/rv32_inst/PC/reset
add wave -noupdate /tb/dut/rv32_inst/PC/en
add wave -noupdate /tb/dut/rv32_inst/PC/d
add wave -noupdate /tb/dut/rv32_inst/PC/q
add wave -noupdate -divider {Dummy PC}
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/clk
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/reset
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/instruction
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PCSrc
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PCWrite
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PC_jump_addr
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/p_state
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/dummy_pc
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/nop
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/enable
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/pc_next
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/instruction_dec
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PC_jump_addr_reg
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PC_disable
add wave -noupdate /tb/dut/rv32_inst/dummy_PC_inst/PCSrc_reg
add wave -noupdate /tb/dut/rv32_inst/compr/atomic_
add wave -noupdate -divider {C Controller}
add wave -noupdate /tb/dut/rv32_inst/compr/PCWrite
add wave -noupdate /tb/dut/rv32_inst/compr/PCSrc
add wave -noupdate /tb/dut/rv32_inst/compr/PCSrc_reg
add wave -noupdate /tb/dut/rv32_inst/compr/pc_disable
add wave -noupdate /tb/dut/rv32_inst/compr/atomic_
add wave -noupdate /tb/dut/rv32_inst/compr/p_state
add wave -noupdate /tb/dut/rv32_inst/compr/instruction_in
add wave -noupdate /tb/dut/rv32_inst/compr/instruction_reg
add wave -noupdate /tb/dut/rv32_inst/compr/instruction_out
add wave -noupdate /tb/dut/rv32_inst/compr/compressed
add wave -noupdate /tb/dut/rv32_inst/compr/register
add wave -noupdate /tb/dut/rv32_inst/compr/op1
add wave -noupdate /tb/dut/rv32_inst/compr/op
add wave -noupdate /tb/dut/rv32_inst/compr/nzuimm
add wave -noupdate /tb/dut/rv32_inst/compr/nop
add wave -noupdate /tb/dut/rv32_inst/compr/n_state
add wave -noupdate /tb/dut/rv32_inst/compr/lwsp_imm
add wave -noupdate /tb/dut/rv32_inst/compr/load_imm
add wave -noupdate /tb/dut/rv32_inst/compr/jump_addr
add wave -noupdate /tb/dut/rv32_inst/compr/jal_imm
add wave -noupdate /tb/dut/rv32_inst/compr/inst_comp
add wave -noupdate /tb/dut/rv32_inst/compr/funct3
add wave -noupdate /tb/dut/rv32_inst/compr/comp_state
add wave -noupdate /tb/dut/rv32_inst/compr/clk
add wave -noupdate /tb/dut/rv32_inst/compr/branch_imm
add wave -noupdate /tb/dut/rv32_inst/compr/addi_imm
add wave -noupdate /tb/dut/rv32_inst/compr/addi16sp_imm
add wave -noupdate -divider {register file}
add wave -noupdate /tb/dut/rv32_inst/reg_file/write_data
add wave -noupdate /tb/dut/rv32_inst/reg_file/we
add wave -noupdate /tb/dut/rv32_inst/reg_file/rs2
add wave -noupdate /tb/dut/rv32_inst/reg_file/rs1
add wave -noupdate /tb/dut/rv32_inst/reg_file/read_data2
add wave -noupdate /tb/dut/rv32_inst/reg_file/read_data1
add wave -noupdate -radix unsigned /tb/dut/rv32_inst/reg_file/rd
add wave -noupdate /tb/dut/rv32_inst/reg_file/ram
add wave -noupdate -divider {Control Unit}
add wave -noupdate /tb/dut/rv32_inst/control_unit/valid
add wave -noupdate /tb/dut/rv32_inst/control_unit/MemWrite
add wave -noupdate /tb/dut/rv32_inst/control_unit/MemtoReg
add wave -noupdate /tb/dut/rv32_inst/control_unit/MemRead
add wave -noupdate /tb/dut/rv32_inst/control_unit/dmem_addr_sel
add wave -noupdate /tb/dut/rv32_inst/control_unit/jalr
add wave -noupdate /tb/dut/rv32_inst/control_unit/jal
add wave -noupdate /tb/dut/rv32_inst/control_unit/Branch
add wave -noupdate /tb/dut/rv32_inst/control_unit/ALUSrcB
add wave -noupdate /tb/dut/rv32_inst/control_unit/ALUSrcA
add wave -noupdate /tb/dut/rv32_inst/control_unit/ALUOp
add wave -noupdate -divider {AMO Control Unit}
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/state
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amo_inst_for_state_3
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/next_state
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/is_atomic
add wave -noupdate /tb/dut/rv32_inst/compr/atomic_
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/sc_w_inst
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/lr_w_inst
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/lr_sc_w_inst
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/instruction
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/Instruction_reg
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/sc_w_inst_reg
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/lr_w_inst_reg
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/reset
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/dmem_addr_sel
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/RegWrite
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/regfile_rd_addr_sel
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/MemWrite
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/MemtoReg
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/MemRead
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/lr_w_inst
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/lr_sc_state
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/is_sc_reg_wr
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/idle_state
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/dmem_wr_data_sel
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/clk
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amoxor
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amoswap
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amoor
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amomini
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amomax
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amoand
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amoadd
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amo_stall
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amo_inst
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amo_ins_state_2
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/amo_ins_state
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/ALUSrcB
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/ALUSrcA
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/ALUOp
add wave -noupdate -divider control_signals_normal
add wave -noupdate /tb/dut/rv32_inst/control_signals/a
add wave -noupdate /tb/dut/rv32_inst/control_signals/b
add wave -noupdate /tb/dut/rv32_inst/control_signals/s
add wave -noupdate /tb/dut/rv32_inst/control_signals/c
add wave -noupdate -divider {final controls}
add wave -noupdate /tb/dut/rv32_inst/final_controls/a
add wave -noupdate /tb/dut/rv32_inst/final_controls/b
add wave -noupdate /tb/dut/rv32_inst/final_controls/s
add wave -noupdate /tb/dut/rv32_inst/final_controls/c
add wave -noupdate -divider {control signals stages}
add wave -noupdate /tb/dut/rv32_inst/final_controls/c
add wave -noupdate /tb/dut/rv32_inst/ID_EX_controls/q
add wave -noupdate /tb/dut/rv32_inst/EX_MEM_controls/q
add wave -noupdate /tb/dut/rv32_inst/MEM_WB_controls/q
add wave -noupdate -divider {MUX ALU A}
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/a
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/b
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/c
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/d
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/s
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_A/q
add wave -noupdate -divider {MUX ALU B}
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/a
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/b
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/c
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/d
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/s
add wave -noupdate /tb/dut/rv32_inst/mux_ALU_B/q
add wave -noupdate -divider ALU
add wave -noupdate /tb/dut/rv32_inst/alu/A
add wave -noupdate /tb/dut/rv32_inst/alu/B
add wave -noupdate -radix unsigned /tb/dut/rv32_inst/alu/ALUctl
add wave -noupdate /tb/dut/rv32_inst/alu/ALUOut
add wave -noupdate /tb/dut/rv32_inst/alu/shamt
add wave -noupdate -divider {IMEM INTERFACE}
add wave -noupdate /tb/dut/mem_ntv_interface_imem/rdata
add wave -noupdate /tb/dut/mem_ntv_interface_imem/r_en
add wave -noupdate /tb/dut/mem_ntv_interface_imem/addr
add wave -noupdate -divider DMEM_WR_DATA_MUX
add wave -noupdate /tb/dut/rv32_inst/dmem_wr_mux/a
add wave -noupdate /tb/dut/rv32_inst/dmem_wr_mux/b
add wave -noupdate /tb/dut/rv32_inst/dmem_wr_mux/s
add wave -noupdate /tb/dut/rv32_inst/dmem_wr_mux/c
add wave -noupdate -divider {DMEM INTERFACE}
add wave -noupdate /tb/dut/rv32_inst/amo_control_unit_inst/dmem_addr_sel
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/wdata
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/w_en
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/rdata
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/r_en
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/byteenable
add wave -noupdate /tb/dut/mem_ntv_interface_dmem/addr
add wave -noupdate -divider Memory
add wave -noupdate /tb/dut/mem_inst/wr_data_b
add wave -noupdate /tb/dut/mem_inst/wr_data_a
add wave -noupdate /tb/dut/mem_inst/we_b
add wave -noupdate /tb/dut/mem_inst/we_a
add wave -noupdate /tb/dut/mem_inst/re_b
add wave -noupdate /tb/dut/mem_inst/re_a
add wave -noupdate /tb/dut/mem_inst/rd_data_b
add wave -noupdate /tb/dut/mem_inst/rd_data_a
add wave -noupdate /tb/dut/mem_inst/byteenable_b
add wave -noupdate /tb/dut/mem_inst/addr_b
add wave -noupdate /tb/dut/mem_inst/addr_a
add wave -noupdate -divider Reservation_file
add wave -noupdate /tb/dut/rv32_inst/reserve_file/clk
add wave -noupdate /tb/dut/rv32_inst/reserve_file/write_data
add wave -noupdate /tb/dut/rv32_inst/reserve_file/we
add wave -noupdate /tb/dut/rv32_inst/reserve_file/rst
add wave -noupdate /tb/dut/rv32_inst/reserve_file/reserved
add wave -noupdate /tb/dut/rv32_inst/reserve_file/read_en
add wave -noupdate /tb/dut/rv32_inst/reserve_file/ram
add wave -noupdate /tb/dut/rv32_inst/reserve_file/instruction
add wave -noupdate /tb/dut/rv32_inst/reserve_file/i
add wave -noupdate /tb/dut/rv32_inst/reserve_file/DATA_WIDTH
add wave -noupdate /tb/dut/rv32_inst/reserve_file/compare_data
add wave -noupdate /tb/dut/rv32_inst/reserve_file/comp_addr
add wave -noupdate /tb/dut/rv32_inst/reserve_file/ADDR_WIDTH
add wave -noupdate -divider {write back}
add wave -noupdate /tb/dut/rv32_inst/write_back/a
add wave -noupdate /tb/dut/rv32_inst/write_back/b
add wave -noupdate /tb/dut/rv32_inst/write_back/s
add wave -noupdate /tb/dut/rv32_inst/write_back/c
add wave -noupdate -divider {Write back final}
add wave -noupdate /tb/dut/rv32_inst/final_write_back/a
add wave -noupdate /tb/dut/rv32_inst/final_write_back/b
add wave -noupdate /tb/dut/rv32_inst/final_write_back/c
add wave -noupdate /tb/dut/rv32_inst/final_write_back/d
add wave -noupdate /tb/dut/rv32_inst/final_write_back/s
add wave -noupdate /tb/dut/rv32_inst/final_write_back/q
add wave -noupdate -divider tracer
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_valid
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_pc_rdata_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_insn_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rd_addr_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rd_wdata_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_mem_addr
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs3_addr
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs2_rdata_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs2_rdata
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs2_addr_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs2_addr
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs1_rdata_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs1_rdata
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs1_addr_t
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_rs1_addr
add wave -noupdate -radix unsigned /tb/dut/rv32_inst/tracer_inst/rvfi_rd_addr
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_pc_rdata
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_mem_wdata
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_mem_rdata
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rvfi_insn
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/rst_ni
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/RS3
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/RS2
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/RS1
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/RD
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/MEM
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/insn_is_compressed
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/i
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/hart_id_i
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/file_name
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/file_handle
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/decoded_str
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/data_accessed
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/cycle
add wave -noupdate /tb/dut/rv32_inst/tracer_inst/clk_i
add wave -noupdate -divider {MUX RS1}
add wave -noupdate /tb/dut/rv32_inst/mux_rs1/a
add wave -noupdate /tb/dut/rv32_inst/mux_rs1/b
add wave -noupdate /tb/dut/rv32_inst/mux_rs1/c
add wave -noupdate /tb/dut/rv32_inst/mux_rs1/s
add wave -noupdate /tb/dut/rv32_inst/mux_rs1/q
add wave -noupdate -divider MUX_RS2
add wave -noupdate /tb/dut/rv32_inst/mux_rs2/a
add wave -noupdate /tb/dut/rv32_inst/mux_rs2/b
add wave -noupdate /tb/dut/rv32_inst/mux_rs2/c
add wave -noupdate /tb/dut/rv32_inst/mux_rs2/s
add wave -noupdate /tb/dut/rv32_inst/mux_rs2/q
add wave -noupdate -divider ID_EX_RS2_OUT
add wave -noupdate /tb/dut/rv32_inst/ID_EX_rs2out/clk
add wave -noupdate /tb/dut/rv32_inst/ID_EX_rs2out/reset
add wave -noupdate /tb/dut/rv32_inst/ID_EX_rs2out/flush
add wave -noupdate /tb/dut/rv32_inst/ID_EX_rs2out/d
add wave -noupdate /tb/dut/rv32_inst/ID_EX_rs2out/q
add wave -noupdate -divider {forwarding unit}
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/rs1
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/rs2
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/EX_MEM_rd
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/MEM_WB_rd
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/EX_MEM_regwrite
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/MEM_WB_regwrite
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/forward_A
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/forward_B
add wave -noupdate /tb/dut/rv32_inst/forwarding_unit/is_atomic
add wave -noupdate -divider {Hazard Unit}
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/ID_EX_rd
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/IF_ID_rs1
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/IF_ID_rs2
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/ID_EX_memread
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/opcode
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/PCWrite
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/IF_Dwrite
add wave -noupdate /tb/dut/rv32_inst/hazard_unit/hazard_out
add wave -noupdate -divider ID_EX_Inst
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/clk
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/reset
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/flush
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/d
add wave -noupdate /tb/dut/rv32_inst/ID_EX_instout/q
add wave -noupdate -divider IF_ID_Inst
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/clk
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/reset
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/en
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/flush
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/d
add wave -noupdate /tb/dut/rv32_inst/IF_ID_instout/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1107849 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 352
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1106727 ps} {1108573 ps}
