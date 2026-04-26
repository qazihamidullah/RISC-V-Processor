//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    25/04/2026
// Module:  control_unit.sv      
// Description: This is the control unit which will generate
//              control signals for the design. 
//###############################################################

import instr_decode_pkg::*;
import control_unit_pkg::*;
module control_unit (
    input   inst_name_64i_t     inst_name_64i,
    output  control_signals_t   control_signals
);
    
    //  generate control signals based on the instruction
    always_comb begin : control_unit
        unique case (inst_name_64i)
            INST_ADD:       begin       
                            control_signals.mux_input_2_sel = 1'b0;                     //  selects rs2_data
                            control_signals.regfile_write_en = 1'b1;                    //  write enbale on for regfile
                            end
            default: 
        endcase
    end
endmodule