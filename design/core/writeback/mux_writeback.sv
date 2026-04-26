//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  mux_writeback.sv      
// Description: This is the writeback mux which select what
//              to write back to the register file.
//###############################################################

module mux_writeback #(
    parameter int WIDTH = 64    
) (
    input   [WIDTH-1:0]     dmem_read_data,
    input   [WIDTH-1:0]     alu_out,
    input   [WIDTH-1:0]     pc_plus_four,
    input   [1:0]           mux_sel,
    output  [WIDTH-1:0]     mux_writeback_out
);

    always_comb begin : mux_writeback_out
        unique case (mux_sel)
            2'b00:      mux_writeback_out   =   dmem_read_data;
            2'b01:      mux_writeback_out   =   alu_out;
            2'b10:      mux_writeback_out   =   pc_plus_four;
            default:    mux_writeback_out   =   dmem_read_data;
        endcase
    end
    
endmodule