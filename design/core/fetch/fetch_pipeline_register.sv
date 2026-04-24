//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  fetch_top.sv      
// Description: This is the top module of the fetch stage.
//###############################################################

module fetch_pipeline_register #(
    parameter int WIDTH = 64,
    parameter int OUT_REG_WIDTH = 128
) (
    input   clk,
    input   reset,
    input   [WIDTH-1]   pc,
    output  [OUT_REG_WIDTH-1:0] fetch_pipeline_register_out
);
    
    logic   [OUT_REG_WIDTH-1] fetch_stage_signals;
    
    //  combined all fetch stage inputs into a single variable
    assign fetch_stage_signals = pc;


    //  register all signals before sending them to decode stage
    always_ff @( posedge clk or negedge reset ) begin : fetch_pipeline_register
        if (!reset) begin
            fetch_pipeline_register_out = `0;                                                       //  if reset then set value to 0
        end else if (enable) begin
            fetch_pipeline_register_out = fetch_stage_signals;                                      //  if enable then register new input
        end else begin 
            fetch_pipeline_register_out = fetch_pipeline_register_out;                              //  if not enable then retain old value
        end
    end



endmodule