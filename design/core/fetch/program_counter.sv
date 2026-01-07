//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  program_counter.sv      
// Description: Program Counter module to generate address for 
//              Instruction Memory.
//###############################################################

module program_counter # (
    parameter int WIDTH = 64
) (
    input               clk, 
    input               reset,
    input               pc_enable, 
    input  [WIDTH-1:0]  next_pc, 
    output [WIDTH-1:0]  pc       
);
    
    always_ff @(posedge clk or negedge reset) begin : pc
        if(!reset) begin
            pc <= {WIDTH{1'b0}};                                                // reset program counter to 0
        end else if (pc_enable) begin
            pc <= next_pc;                                                      // assign next program counter value
        end else begin 
            pc <= pc;                                                           // stall program counter for 1 cycle
        end
    end

endmodule