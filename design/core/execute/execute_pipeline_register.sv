//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  execute_pipeline_register.sv      
// Description: This is the top module of the execute stage.
//###############################################################

import instr_decode_pkg::*;
import pipeline_register_pkg::*;
module execute_pipeline_register #(
    parameter int WIDTH = 64
) (
    input   clk,
    input   reset,
    input   [WIDTH-1:0]         pc_plus_four,
    input   [WIDTH-1:0]         rs2_data,
    input   [WIDTH-1:0]         alu_out,
    output  execute_pipeline_register_t execute_pipeline_register_out
);
    
    execute_pipeline_register_t execute_stage_signals;
    
    //  combined all execute stage inputs into a single variable
    assign execute_stage_signals.pc_plus_four = pc_plus_four;
    assign execute_stage_signals.rs2_data = rs2_data;
    assign execute_stage_signals.alu_out = alu_out;

    //  register all signals before sending them to execute stage
    always_ff @( posedge clk or negedge reset ) begin : execute_pipeline_register_out
        if (!reset) begin
            execute_pipeline_register_out = `0;                                                       //  if reset then set value to 0
        end else if (enable) begin
            execute_pipeline_register_out = execute_stage_signals;                                      //  if enable then register new input
        end else begin 
            execute_pipeline_register_out = execute_pipeline_register_out;                             //  if not enable then retain old value
        end
    end



endmodule