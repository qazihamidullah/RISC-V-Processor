//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  alu.sv      
// Description: This is the alu module.
//###############################################################

import alu_operations_pkg::*;
module alu #(
    parameter int WIDTH = 64
) (
    input   [WIDTH-1:0] input_1,
    input   [WIDTH-1:0] input_2,
    input  alu_op_t     alu_op,
    output  [WIDTH-1:0] alu_out,
    output              cmp_out                     //  comparison output
);

    //  for word operations we will use only initial 32 bits of both input oprands
    logic [31:0]    input_1_w;
    logic [31:0]    input_2_w;
    logic [31:0]    result_w;

    assign  input_1_w   =   input_1[31:0];
    assign  input_2_w   =   input_2[31:0];
    
    always_comb begin : alu
        alu_out  = '0;
        result_w = '0;
        cmp_out  = '0;
        unique case (alu_op)
            ALU_NOP:        begin
                            alu_out = '0;
                            cmp_out = '0;
                            end
            //  arithmetic operations
            ALU_ADD:        alu_out = input_1 + input_2;
            ALU_SUB:        alu_out = input_1 - input_2;
            
            //  logical operations
            ALU_AND:        alu_out = input_1 & input_2;
            ALU_OR:         alu_out = input_1 | input_2;
            ALU_XOR:        alu_out = input_1 ^ input_2;

            //  shift operations
            ALU_SLL:        alu_out = input_1 << input_2[5:0];
            ALU_SRL:        alu_out = input_1 >> input_2[5:0];
            ALU_SRA:        alu_out = $signed(input_1) >>> input_2[5:0];
            
            //  comparison operations
            ALU_SLT:        alu_out = ($signed(input_1) < $signed(input_2)) ? 64'd1 : 64'd0;
            ALU_SLTU:       alu_out = (input_1 < input_2) ? 64'd1 : 64'd0;
            
            //  word operations
            ALU_ADDW:       begin
                            result_w  = input_1_w + input_2_w;
                            alu_out = {{32{result_w[31]}}, result_w};
                            end
            ALU_SUBW:       begin
                            result_w  = input_1_w - input_2_w;
                            alu_out = {{32{result_w[31]}}, result_w};
                            end
            ALU_SLLW:       begin
                            result_w  = input_1_w << input_2_w[4:0];
                            alu_out = {{32{result_w[31]}}, result_w};
                            end
            ALU_SRLW:       begin
                            result_w  = input_1_w >> input_2_w[4:0];
                            alu_out = {{32{result_w[31]}}, result_w};
                            end
            ALU_SRAW:       begin
                            result_w  = $signed(input_1_w) >>> input_2_w[4:0];
                            alu_out = {{32{result_w[31]}}, result_w};
                            end
            //  branch operations
            ALU_BEQ:         cmp_out = (input_1 == input_2);
            ALU_BNE:         cmp_out = (input_1 != input_2);
            ALU_BLT:         cmp_out = ($signed(input_1) < $signed(input_2));
            ALU_BGE:         cmp_out = ($signed(input_1) >= $signed(input_2));
            ALU_BLTU:        cmp_out = (input_1 < input_2);
            ALU_BGEU:        cmp_out = (input_1 >= input_2);

            default:        begin
                            alu_out  = '0;
                            result_w = '0;
                            cmp_out  = '0;
                            end
        endcase
    end
    
endmodule