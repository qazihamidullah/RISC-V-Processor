//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  fetch_top.sv      
// Description: This is the top module of the fetch stage.
//###############################################################

import pipeline_register_pkg::*;
module fetch_top # (
    parameter int WIDTH = 64,
    parameter int INST_WIDTH = 32
) (
    input   clk,
    input   reset,
    input   [1:0]               mux_pc_sel_in_fetch_top,
    input   [WIDTH-1:0]         pc_plus_imm_in_fetch_top,
    input   [WIDTH-1:0]         rs1_data_plus_imm_in_fetch_top,
    output  [WIDTH-1:0]         pc_out_fetch_top,
    output  [WIDTH-1:0]         pc_plus_four_out_fetch_top,
    output  [INST_WIDTH-1:0]    instruction_out_fetch_top
);
    //  signals declaration
    logic [WIDTH-1]             pc;
    logic [WIDTH-1]             next_pc;
    logic [WIDTH-1]             pc_plus_four;
    logic [INST_WIDTH-1]        imem_out;
    fetch_pipeline_register_t   fetch_pipeline_register_out;

    //  generate pc enable signal
    assign pc_enable = 1;               // TODO modify it for stall

    //  next pc selection
    mux_pc mux_pc_inst (
        .pc_plus_four (pc_plus_four),
        .pc_plus_immediate (pc_plus_imm_in_fetch_top),
        .rs1_data_immediate (rs1_data_plus_imm_in_fetch_top),
        .mux_sel (mux_pc_sel_in_fetch_top),
        .next_pc (next_pc)
    );
    // program counter instance
    program_counter pc_inst (
        .clk (clk),
        .reset (reset), 
        .pc_enable (pc_enable),
        .next_pc (next_pc),
        .pc (pc)
    );

    //  instruction memory instance
    imem imem_inst (
        .pc (pc),
        .instruction_out (imem_out)
    );

    //  calculating next pc value by adding 4 to current  pc
    add_four_to_pc add_four_to_pc_inst (
        .pc (pc),
        .pc_plus_four (pc_plus_four)
    );

    // Fetch Pipeline Register
    fetch_pipeline_register fetch_pipeline_register_inst (
        .clk (clk),
        .reset (reset),
        .enable (1),                // TODO modify when flush is needed
        .pc (pc),
        .pc_plus_four (pc_plus_four),
        .fetch_pipeline_register_out (fetch_pipeline_register_out)
    );

    //  output signals
    assign instruction_out_fetch_top = imem_out;
    assign pc_out_fetch_top = fetch_pipeline_register_out.pc;
    assign pc_plus_four_out_fetch_top = fetch_pipeline_register_out.pc_plus_four;

endmodule