//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    25/04/2026
// Module:  control_unit.sv      
// Description: This is the control unit which will generate
//              control signals for the design. 
//###############################################################

import instr_decode_pkg::*;
module control_unit #(
    parameter int WIDTH = 64, 
    parameter int INST_WIDTH = 32
) (
    input inst_name_64i_t inst_name_64i,

);
    
    //  generate control signals based on the instruction
    always_comb begin : control_unit
        unique case (inst_name_64i)
            INST_ADD:   
            
            default: 
        endcase
    end
endmodule