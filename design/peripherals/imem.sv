//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  imem.sv      
// Description: This is the instruction memory module. This is a
//              combinational memory and output instruction in
//              every cycle. Stall is implemented in Program
//              Counter module. 
//###############################################################

module imem #(
    parameter   int XLEN        = 64,                                                   // RV64
    parameter   int IMEM_BYTES  = 16 * 1024,                                            // 16 KB
    parameter   int INST_WIDTH  = 32,
    localparam  int DEPTH       = IMEM_BYTES / 4,                                       // for 16 KB DEPTH is 4096
    localparam  int ADDR_BITS   = $clog2(DEPTH)                                         // for DEPTH=4096 ADDR_BITS=12
)(
    input  logic [XLEN-1:0]         pc,
    output logic [INST_WIDTH-1:0]   instruction_out
);

    logic [INST_WIDTH-1:0] imem_array [0:DEPTH-1];                                      // instruction memory array 32 bit wide for RV64

    always_comb begin
        instruction_out = imem_array[pc[ADDR_BITS+1 : 2]];                              // we are passing pc by right shift by 2 (means divide by 4) because 
                                                                                        // our memory is word addressed and PC is byte addressed
                                                                                        // since we need 12 bits for address bit so we add 1 during bit slicing
                                                                                        // as (12+1)-2+1=12 bits
    end

endmodule