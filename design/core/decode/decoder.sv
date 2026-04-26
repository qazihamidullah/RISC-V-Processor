//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  decoder.sv      
// Description: This is the Instruction Decoder. It decodes 
//              32 bit instruction into func3, func5, func7 etc.
//###############################################################

import instr_decode_pkg::*;
module decoder # (
    parameter int INST_WIDTH = 32,
    parameter int WIDTH = 64
) (
    input   logic   [INST_WIDTH-1:0]  instruction_in,
    output  decoded_instr_t decoded_instruction
);

    //  decoding instructions type
    always_comb begin
        decoded_instruction.opcode = opcode_t'(instruction_in[OPCODE_MSB:OPCODE_LSB]);          //  opcode[6:0]
        decoded_instruction.rd     = instruction_in[RD_MSB:RD_LSB];                             //  rd[11:7]
        decoded_instruction.rs1    = instruction_in[RS1_MSB:RS1_LSB];                           //  rs1[19:15]
        decoded_instruction.rs2    = instruction_in[RS2_MSB:RS2_LSB];                           //  rs2[24:20]
        decoded_instruction.funct3 = instruction_in[FUNCT3_MSB:FUNCT3_LSB];                     //  func3[14:12]
        decoded_instruction.funct7 = instruction_in[FUNCT7_MSB:FUNCT7_LSB];                     //  func7[31:25]

        unique case (decoded_instruction.opcode)
            OPCODE_OP_W,
            OPCODE_OP:          decoded_instruction.format = TYPE_R;                            
            OPCODE_OP_IMM,
            OPCODE_LOAD,
            OPCODE_FENCE,
            OPCODE_JALR,
            OPCODE_OP_IMM_W,
            OPCODE_SYSTEM:      decoded_instruction.format = TYPE_I;
            OPCODE_STORE:       decoded_instruction.format = TYPE_S;
            OPCODE_BRANCH:      decoded_instruction.format = TYPE_B;
            OPCODE_LUI,
            OPCODE_AUIPC:       decoded_instruction.format = TYPE_U;
            OPCODE_JAL:         decoded_instruction.format = TYPE_J;
            default:            decoded_instruction.format = TYPE_I;
        endcase
    end

    //  decoding instructions
    always_comb begin : decode_instructions
        unique case (decoded_instruction.opcode)
            OPCODE_LOAD:        begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_LB;
                                    3'b001:     decoded_instruction.inst_name_64i = INST_LH;
                                    3'b010:     decoded_instruction.inst_name_64i = INST_LW;
                                    3'b011:     decoded_instruction.inst_name_64i = INST_LD;
                                    3'b100:     decoded_instruction.inst_name_64i = INST_LBU;
                                    3'b101:     decoded_instruction.inst_name_64i = INST_LHU;
                                    3'b110:     decoded_instruction.inst_name_64i = INST_LWU;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP; 
                                endcase 
                                end
            OPCODE_FENCE:       begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_FENCE;
                                    3'b001:     decoded_instruction.inst_name_64i = INST_FENCE_I;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_OP_IMM:      begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_ADDI;
                                    3'b001:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLLI;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b010:     decoded_instruction.inst_name_64i = INST_SLTI;
                                    3'b011:     decoded_instruction.inst_name_64i = INST_SLTIU;
                                    3'b100:     decoded_instruction.inst_name_64i = INST_XORI;
                                    3'b101:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SRLI; 
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SRAI; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b110:     decoded_instruction.inst_name_64i = INST_ORI;
                                    3'b111:     decoded_instruction.inst_name_64i = INST_ANDI;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_AUIPC:       decoded_instruction.inst_name_64i = INST_AUIPC;
            OPCODE_OP_IMM_W:    begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_ADDIW;
                                    3'b001:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLLIW; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b101:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SRLIW;
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SRAIW; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_STORE:       begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_SB;
                                    3'b001:     decoded_instruction.inst_name_64i = INST_SH;
                                    3'b010:     decoded_instruction.inst_name_64i = INST_SW;
                                    3'b011:     decoded_instruction.inst_name_64i = INST_SD;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_OP:          begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_ADD;
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SUB; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b001:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLL;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b010:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLT;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b011:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLTU;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b100:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_XOR;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b101:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SRL;
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SRA; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b110:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_OR;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b111:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_AND;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_LUI:         decoded_instruction.inst_name_64i = INST_LUI;
            OPCODE_OP_W:        begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_ADDW;
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SUBW; 
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b001:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SLLW;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b101:     begin
                                                unique case (decoded_instruction.funct7)
                                                    7'b0000000:     decoded_instruction.inst_name_64i = INST_SRLW;
                                                    7'b0100000:     decoded_instruction.inst_name_64i = INST_SRAW;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end

                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_BRANCH:      begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_BEQ;
                                    3'b001:     decoded_instruction.inst_name_64i = INST_BNE;
                                    3'b100:     decoded_instruction.inst_name_64i = INST_BLT;
                                    3'b101:     decoded_instruction.inst_name_64i = INST_BGE;
                                    3'b110:     decoded_instruction.inst_name_64i = INST_BLTU;
                                    3'b111:     decoded_instruction.inst_name_64i = INST_BGEU;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_JALR:        begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     decoded_instruction.inst_name_64i = INST_JALR; 
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            OPCODE_JAL:         decoded_instruction.inst_name_64i = INST_JAL;
            OPCODE_SYSTEM:      begin
                                unique case (decoded_instruction.funct3)
                                    3'b000:     begin
                                                unique case (decoded_instruction.funct7)
                                                    12'b000000000000:     decoded_instruction.inst_name_64i = INST_ECALL;
                                                    12'b010000000001:     decoded_instruction.inst_name_64i = INST_EBREAK;
                                                    default:        decoded_instruction.inst_name_64i = INST_NOP;
                                                endcase
                                                end
                                    3'b001:     decoded_instruction.inst_name_64i = INST_CSRRW;
                                    3'b010:     decoded_instruction.inst_name_64i = INST_CSRRS;
                                    3'b011:     decoded_instruction.inst_name_64i = INST_CSRRC;
                                    3'b101:     decoded_instruction.inst_name_64i = INST_CSRRWI;
                                    3'b110:     decoded_instruction.inst_name_64i = INST_CSRRSI;
                                    3'b111:     decoded_instruction.inst_name_64i = INST_CSRRCI;
                                    default:    decoded_instruction.inst_name_64i = INST_NOP;
                                endcase
                                end
            default:            decoded_instruction.inst_name_64i = INST_NOP;
        endcase
    end

endmodule
