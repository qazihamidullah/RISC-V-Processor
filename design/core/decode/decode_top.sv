//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  decode_top.sv      
// Description: This is the top module of the decode stage.
//###############################################################

import instr_decode_pkg::*;
import pipeline_register_pkg::*;

module decode_top #(
    parameter int WIDTH = 64,
    parameter int INST_WIDTH = 32
) (
    input                       clk,
    input                       reset,
    input   [INST_WIDTH-1:0]    instruction_in_decode_top,
    input   [WIDTH-1:0]         pc_in_decode_top,
    input   [WIDTH-1:0]         pc_plus_four_in_decode_top,
    input   [WIDTH-1:0]         write_back_data_in_decode_top,
    input                       regfile_write_en_in_decode_top,
    output  [WIDTH-1:0]         pc_out_decode_top,
    output  [WIDTH-1:0]         rs1_data_out_decode_top,
    output  [WIDTH-1:0]         rs2_data_out_decode_top,
    output  [WIDTH-1:0]         immediate_value_out_decode_top,
    output  [WIDTH-1:0]         pc_plus_four_out_decode_top,
    output  inst_name_64i_t     inst_name_64i_out_decode_top,
    output  control_signals_t   control_signals_out_decode_top
);
    
    //  signals declaration
    decoded_instr_t             decoded_instruction;
    imm_type_t                  imm_type;
    decode_pipeline_register_t  decode_pipeline_register_out;
    control_signals_t           control_signals;
    logic   [WIDTH-1:0]         immediate_value;
    logic   [WIDTH-1:0]         rs1_data;
    logic   [WIDTH-1:0]         rs2_data;
    
    //  decode input instruction 
    decoder decoder_inst (
        .instruction_in (instruction_in_decode_top),
        .decoded_instruction (decoded_instruction)
    );

    //  immediate extender unit instance
    immediate_extender immediate_extender_inst (
        .instruction_in (instruction_in_decode_top),
        .imm_type (imm_type),
        .immediate_value (immediate_value)
    );

    //  register file instance
    register_file register_file_inst (
        .clk (clk),
        .rs1_address (decoded_instruction.rs1),
        .rs2_address (decoded_instruction.rs2),
        .rd_address (decoded_instruction.rd),
        .regfile_write_en (regfile_write_en_in_decode_top),
        .rd_data (write_back_data_in_decode_top),
        .rs1_data (rs1_data),
        .rs2_data (rs2_data)
    );

    //  control unit instance
    control_unit control_unit_inst (
        .inst_name_64i (decoded_instruction.inst_name_64i),
        .control_signals (control_signals)
    );

    //  decode pipeline register
    decode_pipeline_register decode_pipeline_register_inst (
        .clk (clk),
        .reset (reset),
        .pc (pc_in_decode_top),
        .rs1_data (rs1_data),
        .rs2_data (rs2_data),
        .immediate_value (immediate_value),
        .inst_name_64i (decoded_instruction.inst_name_64i),
        .pc_plus_four_in_decode_top (pc_plus_four_in_decode_top),
        .decode_pipeline_register_out (decode_pipeline_register_out)
    );

    //  output signals
    assign pc_out_decode_top = decode_pipeline_register_out.pc;
    assign rs1_data_out_decode_top = decode_pipeline_register_out.rs1_data;
    assign rs2_data_out_decode_top = decode_pipeline_register_out.rs2_data;
    assign immediate_value_out_decode_top = decode_pipeline_register_out.immediate_value;
    assign inst_name_64i_out_decode_top = decode_pipeline_register_out.inst_name_64i;
    assign pc_plus_four_out_decode_top = decode_pipeline_register_out.pc_plus_four
    assign control_signals_out_decode_top = control_signals;
endmodule