//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    25/04/2026
// Module:  alu_control_unit.sv      
// Description: This is the control unit which will generate
//              control signals for the alu operations. 
//###############################################################

import instr_decode_pkg::*;
import alu_operations_pkg::*;
module alu_control_unit (
    input inst_name_64i_t inst_name_64i,
    output alu_op_t alu_op
);
    
    //  generate control signals based on the instruction
    always_comb begin : alu_control_unit  
        unique case (inst_name_64i)
            INST_JALR,
            INST_SB,
            INST_SD,
            INST_SH,
            INST_SW,
            INST_LB,
            INST_LBU,
            INST_LD,
            INST_LH,
            INST_LHU,
            INST_LUI,
            INST_LW,
            INST_LWU,
            INST_AUIPC,
            INST_ADDI,
            INST_ADD:       alu_op  =   ALU_ADD;
            INST_ADDIW,
            INST_ADDW:      alu_op  =   ALU_ADDW;
            INST_ANDI,
            INST_AND:       alu_op  =   ALU_AND;
            INST_BEQ:       alu_op  =   ALU_BEQ;
            INST_BGE:       alu_op  =   ALU_BGE;
            INST_BGEU:      alu_op  =   ALU_BGEU;
            INST_BLT:       alu_op  =   ALU_BLT;
            INST_BLTU:      alu_op  =   ALU_BLTU;
            INST_BNE:       alu_op  =   ALU_BNE;
            INST_ORI,
            INST_OR:        alu_op  =   ALU_OR;
            INST_SLLI,
            INST_SLL:       alu_op  =   ALU_SLL;
            INST_SLLIW,
            INST_SLLW:      alu_op  =   ALU_SLLW;
            INST_SLTI,
            INST_SLT:       alu_op  =   ALU_SLT;
            INST_SLTIU,
            INST_SLTU:      alu_op  =   ALU_SLTU;
            INST_SRAI,
            INST_SRA:       alu_op  =   ALU_SRA;
            INST_SRAIW,
            INST_SRAW:      alu_op  =   ALU_SRAW;
            INST_SRLI,
            INST_SRL:       alu_op  =   ALU_SRL;
            INST_SRLIW,
            INST_SRLW:      alu_op  =   ALU_SRLW;
            INST_SUB:       alu_op  =   ALU_SUB;
            INST_SUBW:      alu_op  =   ALU_SUBW;
            INST_XORI,
            INST_XOR:       alu_op  =   ALU_XOR;

            default:        alu_op  =   ALU_NOP;
        endcase
    end
endmodule