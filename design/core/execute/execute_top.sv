//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  execute_top.sv      
// Description: This is the top module of the execute stage.
//###############################################################
import control_unit_pkg::*;
module execute_top #(
    parameter int WIDTH = 64
) (
    input                       clk,
    input                       reset,
    input   inst_name_64i_t     inst_name_64i_in_execute_top,
    input   control_signals_t   control_signals_in_execute_top,
    input   [WIDTH-1:0]         pc_in_execute_top,
    input   [WIDTH-1:0]         pc_plus_four_in_execute_top,
    input   [WIDTH-1:0]         rs2_data_in_execute_top,
    input   [WIDTH-1:0]         rs1_data_in_execute_top,
    input   [WIDTH-1:0]         immediate_value_in_execute_top,
    output  [WIDTH-1:0]         alu_out_execute_top,
    output  [WIDTH-1:0]         rs2_data_out_execute_top,
    output  [WIDTH-1:0]         pc_plus_four_out_execute_top,
    output  [WIDTH-1:0]         pc_plus_immediate_out_execute_top,
    output  [WIDTH-1:0]         rs1_data_plus_imm_out_execute_top
);
    
    //  variable declarations
    execute_pipeline_register_t execute_pipeline_register_out;
    alu_op_t                alu_op;
    logic   [WIDTH-1:0]     mux_input_2_out;
    logic   [WIDTH-1:0]     alu_out;
    logic                   cmp_out;
    logic   [WIDTH-1:0]     pc_plus_immediate;

    //  mux to select input 2 of alu
    mux_input_2 mux_input_2_inst (
        .rs2_data_execute_in (rs2_data_in_execute_top),
        .immediate_value_execute_in (immediate_value_in_execute_top),
        .mux_sel (control_signals_in_execute_top.mux_input_2_sel),
        .mux_input_2_out (mux_input_2_out)
    );

    //  alu control unit instance
    alu_control_unit alu_control_unit_inst (
        .inst_name_64i (inst_name_64i_in_execute_top),
        .alu_op (alu_op)
    );

    //  alu instance
    alu alu_inst (
        .input_1 (rs1_data_in_execute_top),
        .input_2 (mux_input_2_out),
        .alu_op (alu_op),
        .alu_out (alu_out),
        .cmp_out (cmp_out)
    );

    //  add_imm_to_pc instance
    add_imm_to_pc add_imm_to_pc_inst (
        .pc (pc_in_execute_top),
        .immediate_value (immediate_value_in_execute_top),
        .pc_plus_immediate (pc_plus_immediate)
    );
    
    //  execute stage pipeline register instance
    execute_pipeline_register execute_pipeline_register_inst (
        .clk (clk),
        .reset (reset),
        .pc_plus_four (pc_plus_four_in_execute_top),
        .rs2_data (rs2_data_in_execute_top),
        .alu_out (alu_out),
        .execute_pipeline_register_out (execute_pipeline_register_out)
    );

    //  output signals
    assign alu_out_execute_top = execute_pipeline_register_out.alu_out;
    assign rs2_data_out_execute_top = execute_pipeline_register_out.rs2_data;
    assign pc_plus_four_out_execute_top = execute_pipeline_register_out.pc_plus_four;
    assign pc_plus_immediate_out_execute_top = pc_plus_immediate;
    assign rs1_data_plus_imm_out_execute_top = alu_out;
endmodule