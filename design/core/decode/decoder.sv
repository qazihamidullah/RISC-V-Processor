//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  register_file.sv      
// Description: This is the Instruction Decoder. It decodes 
//              32 bit instruction into func3, func5, func7 etc.
//###############################################################

`include "instr_decode_pkg.sv"

module decoder (
    input                       logic           [31:0]  instruction_in,
    output instr_decode_pkg::   decoded_instr_t         decoded_instruction
);

    import instr_decode_pkg::*;                                                                 // importing package for use

    always_comb begin
        decoded_instruction.opcode = opcode_t'(instruction_in[OPCODE_MSB:OPCODE_LSB]);          //  opcode[6:0]
        decoded_instruction.rd     = instruction_in[RD_MSB:RD_LSB];                             //  rd[11:7]
        decoded_instruction.rs1    = instruction_in[RS1_MSB:RS1_LSB];                           //  rs1[19:15]
        decoded_instruction.rs2    = instruction_in[RS2_MSB:RS2_LSB];                           //  rs2[24:20]
        decoded_instruction.funct3 = instruction_in[FUNCT3_MSB:FUNCT3_LSB];                     //  func3[14:12]
        decoded_instruction.funct7 = instruction_in[FUNCT7_MSB:FUNCT7_LSB];                     //  func7[31:25]

        unique case (decoded_instruction.opcode)
            OPCODE_OP:          decoded_instruction.format = TYPE_R;                            
            OPCODE_OP_IMM,
            OPCODE_LOAD,
            OPCODE_JALR,
            OPCODE_SYSTEM:      decoded_instruction.format = TYPE_I;
            OPCODE_STORE:       decoded_instruction.format = TYPE_S;
            OPCODE_BRANCH:      decoded_instruction.format = TYPE_B;
            OPCODE_LUI,
            OPCODE_AUIPC:       decoded_instruction.format = TYPE_U;
            OPCODE_JAL:         decoded_instruction.format = TYPE_J;
            default:            decoded_instruction.format = TYPE_I;
        endcase
    end

endmodule
