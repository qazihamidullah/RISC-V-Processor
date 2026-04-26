//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  alu.sv      
// Description: This modules add pc and immediate value.
//###############################################################

module add_imm_to_pc # (
    parameter int WIDTH = 64
) (
    input   [WIDTH-1:0]     pc,
    input   [WIDTH-1:0]     immediate_value,
    output  [WIDTH-1:0]     pc_plus_immediate
);
    
    //  adding pc and immediate value
    assign pc_plus_immediate    =   pc + immediate_value;
    
endmodule