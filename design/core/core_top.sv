//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  core_top.sv      
// Description: This is the top module of the core top.
//###############################################################


module core_top #(
    parameter int WIDTH = 64,
    parameter int INST_WIDTH = 32
) (
    input   clk,
    input   reset
);

    logic   [INST_WIDTH-1:0]    instruction_out_fetch_top;
    logic   [WIDTH-1:0] pc_out_fetch_top;
    
    //  fetch top instance
    fetch_top # (
        .WIDTH = 64,
        .OUT_REG_WIDTH =128
    ) fetch_top_inst (
        .clk (clk),
        .reset (reset),
        .instruction_out_fetch_top (instruction_out_fetch_top),
        .pc_out_fetch_top (pc_out_fetch_top)
    );

    //  decode top instance
    decode_top decode_top_inst (
        .clk (clk),
        .reset (reset),
        .instruction_in (instruction_out_fetch_top),
        .pc_in_decode_top (pc_out_fetch_top),
        .write_back_data (),
        .write_en (),
        .pc_out_decode_top (),
        .rs1_data_decode_out (),
        .rs2_data_decode_out (),
        .immediate_value_decode_out ()
    );

    //  execute top instance


    //  mempory top instance


    //  writeback top instance

    
endmodule