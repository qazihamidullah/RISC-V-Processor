//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  dmem.sv      
// Description: This is the Data mmemory. It is clocked and will
//              output data after 1 cycle latency. 
//###############################################################

module dmem #(
    parameter   int XLEN        = 64,                                                       // RV64
    parameter   int DMEM_BYTES  = 16 * 1024,                                                // 16 KB 
    localparam  int DEPTH       = DMEM_BYTES / (XLEN/8),                                    // we have 8 bytes per word so 16kb/8=2048 entries
    localparam  int ADDR_BITS   = $clog2(DEPTH)                                             // 11 bits required to index 2048
)(
    input  logic               clk,
    input  logic               mem_valid,
    input  logic               mem_we,
    input  logic [XLEN-1:0]    address_in,
    input  logic [XLEN-1:0]    wdata,
    input  logic [XLEN/8-1:0]  wstrb,                                                       // will decide which byte to use among 8 bytes of a word
    output logic [XLEN-1:0]    rdata
);

    logic [XLEN-1:0] dmem_array [0:DEPTH-1];                                                // data memory array 64 bit wide for RV64
    logic [ADDR_BITS-1:0] word_index;
    assign word_index = address_in[ADDR_BITS + $clog2(XLEN/8) - 1 : $clog2(XLEN/8)];        // to convert byte addressed pc to word (8 byte) addressed memory

    always_ff @(posedge clk) begin
        if (mem_valid) begin                                                                // check if memory access is valid
            if (mem_we) begin                                                               // check if data should be written into memory
                for (int i = 0; i < XLEN/8; i++) begin
                    if (wstrb[i]) begin                                                     // if wstrb of any byte among 8 bytes is 1 it will write that byte
                        dmem_array[word_index][8*i +: 8] <= wdata[8*i +: 8];                // write data to memory
                    end
                end
            end
            rdata <= dmem_array[word_index];                                                // read data from memory
        end
    end

endmodule
