//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  mux_input_2.sv      
// Description: This is mux which selects input 2 of alu
//###############################################################

module mux_input_2 #(
    parameter int WIDTH = 64
) (
    input   [WIDTH-1:0]     rs2_data_execute_in,
    input   [WIDTH-1:0]     immediate_value_execute_in,
    input                   mux_sel,
    output  [WIDTH-1:0]     mux_input_2_out
);
    
    always_comb begin : mux_input_2_out
        unique case (mux_sel)
            '0:         mux_input_2_out =   rs2_data_execute_in;
            '1:         mux_input_2_out =   immediate_value_execute_in
            default:    mux_input_2_out =   rs2_data_execute_in;
        endcase
    end

endmodule