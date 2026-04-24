//####################################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  immediate_extender.sv      
// Description: This is the immediate_extender file. This will 
//              sign extend or zero extend to generate 
//              immediate values for different types of instructions. 
//####################################################################

import immediate_extender_pkg::*;

module immediate_extender #(
    parameter int WIDTH = 64,
    parameter int INST_WIDTH = 32
)(
    input  logic    [INST_WIDTH-1:0]    instruction_in,
    input  imm_type_t                   imm_type,
    output logic    [WIDTH-1:0]         immediate_value
);

    always_comb begin
        immediate_value = '0;
        case (imm_type)
            IMM_I: begin
                immediate_value = {{(WIDTH-12){instruction_in[31]}}, instruction_in[31:20]};                      // I-type immediate                
            end
            IMM_S: begin
                immediate_value = {{(WIDTH-12){instruction_in[31]}},
                       instruction_in[31:25],
                       instruction_in[11:7]};                                                                   // S-type immediate
            end
            IMM_B: begin
                immediate_value = {{(WIDTH-13){instruction_in[31]}},             
                       instruction_in[31],
                       instruction_in[7],
                       instruction_in[30:25],
                       instruction_in[11:8],
                       1'b0};                                                                                   // B-type immediate (branch)
            end
            IMM_U: begin
                immediate_value = {{(WIDTH-32){instruction_in[31]}},
                       instruction_in[31:12],
                       12'b0};                                                                                  // U-type immediate
            end
            IMM_J: begin
                immediate_value = {{(WIDTH-21){instruction_in[31]}},
                       instruction_in[31],
                       instruction_in[19:12],
                       instruction_in[20],
                       instruction_in[30:21],
                       1'b0};                                                                                   // J-type immediate
            end
            default: immediate_value = '0;
        endcase
    end
endmodule
