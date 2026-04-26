//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  mux_pc.sv      
// Description: This is a mux modules which select nex PC.
//###############################################################

module mux_pc #(
    parameter int WIDTH = 64
) (
    input   [WIDTH-1:0]     pc_plus_four,
    input   [WIDTH-1:0]     pc_plus_immediate,
    input   [WIDTH-1:0]     rs1_data_immediate,
    input   [1:0]           mux_sel,
    output  [WIDTH-1:0]     next_pc
);
    
    always_comb begin : next_pc
        unique case (param)
            2'b00:      next_pc =   pc_plus_four;
            2'b01:      next_pc =   pc_plus_immediate;
            2'b10:      next_pc =   rs1_data_immediate;
            default:    next_pc =   pc_plus_four;
        endcase
    end
endmodule