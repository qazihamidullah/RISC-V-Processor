//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  fetch_pipeline_register.sv      
// Description: This is the top module of the fetch stage.
//###############################################################

module fetch_pipeline_register #(
    parameter int WIDTH = 64
) (
    input                               clk,
    input                               reset,
    input                               enable,
    input   [WIDTH-1:0]                 pc,
    input   [WIDTH-1:0]                 pc_plus_four,
    output  fetch_pipeline_register_t   fetch_pipeline_register_out
);
    fetch_pipeline_register_t fetch_pipeline_signals;
    
    //  combined all fetch stage inputs into a single structure
    assign fetch_pipeline_signals.pc = pc;
    assign fetch_pipeline_signals.pc_plus_four = pc_plus_four;

    //  register all signals before sending them to decode stage
    always_ff @( posedge clk or negedge reset ) begin : fetch_pipeline_register_out
        if (!reset) begin
            fetch_pipeline_register_out = `0;                                                       //  if reset then set value to 0
        end else if (enable) begin
            fetch_pipeline_register_out = fetch_pipeline_signals;                                   //  if enable then register new input
        end else begin 
            fetch_pipeline_register_out = fetch_pipeline_register_out;                              //  if not enable then retain old value
        end
    end

endmodule