//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  fetch_top.sv      
// Description: This is the top module of the fetch stage.
//###############################################################


module fetch_top # (
    parameter int WIDTH = 64,
    parameter int OUT_REG_WIDTH =128
) (
    input   clk,
    input   reset,
    output  [WIDTH-1]   instruction_out_fetch_top,
    output  [WIDTH-1]   pc_out_fetch_top
);

logic [WIDTH-1] pc;
logic [WIDTH-1] next_pc;
logic [WIDTH-1] pc_plus_four;
logic [WIDTH-1] imem_out;
logic [OUT_REG_WIDTH-1:0] fetch_pipeline_register_out;

//  generate pc enable signal
assign pc_enable = 1;               // TODO modify it for stall

//  genearte next pc
assign next_pc = pc_plus_four;      //  TODO modify it for jump and branch instructions

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
add_four_to_input add_four_to_input_inst (
    .pc (pc),
    .pc_plus_four (pc_plus_four)
);

// Fetch Pipeline Register
fetch_pipeline_register fetch_pipeline_register_inst (
    .clk (clk),
    .reset (reset),
    .pc (pc),
    .fetch_pipeline_register_out (fetch_pipeline_register_out)
);

//  output signals
assign instruction_out_fetch_top = imem_out;
assign pc_out_fetch_top = fetch_pipeline_register_out[WIDTH-1:0];

endmodule