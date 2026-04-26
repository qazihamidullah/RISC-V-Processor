//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  memory_top.sv      
// Description: This is the top module of the memory stage.
//###############################################################

module memory_top #(
    parameter int WIDTH = 64
) (
    input                   clk,
    input                   mem_valid_in_memory_top,
    input                   mem_we_in_memory_top,
    input                   wstrb_in_memory_top,
    input   [WIDTH-1:0]     address_in_memory_top,
    input   [WIDTH-1:0]     rs2_data_in_memory_top,
    output  [WIDTH-1:0]     dmem_read_data_out_memory_top
);
    
    //  data memory instance
    dmem dmem_inst (
        .clk (clk),
        .mem_valid (mem_valid_in_memory_top),
        .mem_we (mem_we_in_memory_top),
        .address_in (address_in_memory_top),
        .wdata (rs2_data_in_memory_top),
        .wstrb (wstrb_in_memory_top),
        .rdata (dmem_read_data_out_memory_top)
    );
endmodule