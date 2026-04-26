//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  core_top.sv      
// Description: This is the top module of the core top.
//###############################################################

import instr_decode_pkg::*;
module core_top #(
    parameter int WIDTH = 64,
    parameter int INST_WIDTH = 32
) (
    input   clk,
    input   reset
);

    logic   [INST_WIDTH-1:0]    instruction_out_fetch_top;
    logic   [WIDTH-1:0]         pc_out_fetch_top;
    logic   [WIDTH-1:0]         pc_plus_four_out_fetch_top;
    logic   [WIDTH-1:0]         pc_plus_immediate_out_execute_top;
    logic   [WIDTH-1:0]         rs1_data_plus_imm_out_execute_top;
    logic   inst_name_64i_t     inst_name_64i_out_decode_top;
    logic   control_signals_t   control_signals_out_decode_top;

    //  fetch top instance
    fetch_top # (
        .WIDTH = 64,
        .OUT_REG_WIDTH =128
    ) fetch_top_inst (
        .clk                                (clk),
        .reset                              (reset),
        .mux_pc_sel_in_fetch_top            (control_signals_out_decode_top.mux_pc_sel),
        .pc_plus_imm_in_fetch_top           (pc_plus_immediate_out_execute_top),
        .rs1_data_plus_imm_in_fetch_top     (rs1_data_plus_imm_out_execute_top),
        .pc_out_fetch_top                   (pc_out_fetch_top),
        .pc_plus_four_out_fetch_top         (pc_plus_four_out_fetch_top),
        .instruction_out_fetch_top          (instruction_out_fetch_top)
    );

    //  decode top instance
    decode_top decode_top_inst (
        .clk                                (clk),
        .reset                              (reset),
        .instruction_in_decode_top          (instruction_out_fetch_top),
        .pc_in_decode_top                   (pc_out_fetch_top),
        .pc_plus_four_in_decode_top         (pc_plus_four_out_fetch_top),
        .write_back_data_in_decode_top      (),
        .regfile_write_en_in_decode_top     (),
        .pc_out_decode_top                  (),
        .pc_plus_four_out_decode_top        (),
        .rs1_data_out_decode_top            (),
        .rs2_data_out_decode_top            (),
        .immediate_value_out_decode_top     (),
        .inst_name_64i_out_decode_top       (inst_name_64i_out_decode_top),
        .control_signals_out_decode_top     (control_signals_out_decode_top)
    );

    //  execute top instance
    execute_top execute_top_inst (
        .clk                                (clk),
        .reset                              (reset),
        .inst_name_64i_in_execute_top       (inst_name_64i_out_decode_top),
        .control_signals_in_execute_top     (control_signals_out_decode_top),
        .pc_in_execute_top                  (),
        .pc_plus_four_in_execute_top        (),
        .rs2_data_in_execute_top            (),
        .rs1_data_in_execute_top            (),
        .immediate_value_in_execute_top     (),
        .alu_out_execute_top                (alu_out_execute_top),
        .rs2_data_out_execute_top           (),
        .pc_plus_four_out_execute_top       (),
        .pc_plus_immediate_out_execute_top  (pc_plus_immediate_out_execute_top),
        .rs1_data_plus_imm_out_execute_top  (rs1_data_plus_imm_out_execute_top)
    );

    //  mempory top instance
    memory_top memory_top_inst (
        .clk (),
        .mem_valid_in_memory_top (),
        .mem_we_in_memory_top (),
        .wstrb_in_memory_top (),
        .address_in_memory_top (),
        .rs2_data_in_memory_top (),
        .dmem_read_data_out_memory_top ()
    );

    //  writeback top instance
    writeback_top writeback_top_inst (
        .dmem_read_data_in_writeback_top (),
        .alu_out_in_writeback_top (),
        .pc_plus_four_in_writeback_top (),
        .mux_writeback_sel_in_writeback_top (),
        .mux_writeback_out_writeback_top ()
    );
    
endmodule