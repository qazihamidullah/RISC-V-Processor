//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    25/04/2026
// Module:  alu_operations_pkg.sv      
// Description: This is the alu_operations_pkg which will
//              consolidate all signals into a single struct.
//###############################################################

package alu_operations_pkg;

typedef enum logic [5:0] {

    //  NOP Operation
    ALU_NOP,

    // Arithmetic
    ALU_ADD,
    ALU_SUB,

    // Logical
    ALU_AND,
    ALU_OR,
    ALU_XOR,

    // Shifts
    ALU_SLL,
    ALU_SRL,
    ALU_SRA,

    // Comparisons
    ALU_SLT,
    ALU_SLTU,

    // RV64 W operations
    ALU_ADDW,
    ALU_SUBW,
    ALU_SLLW,
    ALU_SRLW,
    ALU_SRAW,

    // Branch comparisons (optional but useful)
    ALU_BEQ,
    ALU_BNE,
    ALU_BLT,
    ALU_BGE,
    ALU_BLTU,
    ALU_BGEU

} alu_op_t;

endpackage