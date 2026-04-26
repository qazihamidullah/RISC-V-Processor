//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  execute_top.sv      
// Description: This is the top module of the execute stage.
//###############################################################

module execute_top #(
    parameter int WIDTH = 64
) (
    input   
);
    
    //  alu control unit instance
    alu_control_unit alu_control_unit_inst (
        .inst_name_64i (),
        .alu_op ()
    );

    //  alu instance
    alu alu_inst (
        .input_1 (),
        .input_2 (),
        .alu_op (),
        .alu_out (),
        .cmp_out ()
    );

    //  add_imm_to_pc instance
    add_imm_to_pc add_imm_to_pc_inst (
        .pc (),
        .immediate_value (),
        .pc_plus_immediate ()
    );
    
    //  

endmodule