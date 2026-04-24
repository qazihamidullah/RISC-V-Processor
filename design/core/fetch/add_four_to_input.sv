//####################################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    24/04/2026
// Module:  add_four_to_input.sv      
// Description: This is the add_four_to_input file. This will 
//              add 4 to input. 
//####################################################################

module add_four_to_input #(
    parameter int WIDTH = 64
) (
    input   [WIDTH-1:0] pc,
    output  [WIDTH-1:0] pc_plus_four
);
    
    // parameterized adddition of 4 to input
    assign pc_plus_four = pc + {{(WIDTH-3){1'b0}}, 3'd4};

endmodule