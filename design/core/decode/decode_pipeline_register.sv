//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  decode_pipeline_register.sv      
// Description: This is the top module of the decode stage.
//###############################################################

import pipeline_register_pkg::*;
module decode_pipeline_register #(
    parameter int WIDTH = 64,
    parameter int OUT_REG_WIDTH = 4*WIDTH
) (
    input   clk,
    input   reset,
    input   [WIDTH-1:0]         pc,
    input   [WIDTH-1:0]         rs1_data,
    input   [WIDTH-1:0]         rs2_data,
    input   [WIDTH-1:0]         immediate_value,
    output  decode_pipeline_register_t decode_pipeline_register_out
);
    
    decode_pipeline_register_t decode_stage_signals;
    
    //  combined all decode stage inputs into a single variable
    assign decode_stage_signals.pc = pc;
    assign decode_stage_signals.rs1_data = rs1_data;
    assign decode_stage_signals.rs2_data = rs2_data;
    assign decode_stage_signals.immediate_value = immediate_value;


    //  register all signals before sending them to execute stage
    always_ff @( posedge clk or negedge reset ) begin : decode_pipeline_register_out
        if (!reset) begin
            decode_pipeline_register_out = `0;                                                       //  if reset then set value to 0
        end else if (enable) begin
            decode_pipeline_register_out = decode_stage_signals;                                      //  if enable then register new input
        end else begin 
            decode_pipeline_register_out = decode_pipeline_register_out;                             //  if not enable then retain old value
        end
    end



endmodule