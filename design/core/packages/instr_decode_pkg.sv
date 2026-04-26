//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  instr_decode_pkg.sv      
// Description: This is the instruction decode package file.  
//###############################################################

package instr_decode_pkg;

    // ---------------------------------
    // Global parameters
    // ---------------------------------
    parameter int WIDTH      = 64;
    parameter int INST_WIDTH = 32;
    parameter int REG_BITS   = 5;

    // ---------------------------------
    // Instruction field bit ranges
    // ---------------------------------
    localparam int OPCODE_LSB = 0;
    localparam int OPCODE_MSB = 6;

    localparam int RD_LSB     = 7;
    localparam int RD_MSB     = 11;

    localparam int FUNCT3_LSB = 12;
    localparam int FUNCT3_MSB = 14;

    localparam int RS1_LSB    = 15;
    localparam int RS1_MSB    = 19;

    localparam int RS2_LSB    = 20;
    localparam int RS2_MSB    = 24;

    localparam int FUNCT7_LSB = 25;
    localparam int FUNCT7_MSB = 31;

    // ---------------------------------
    // Opcode definitions (RV64I)
    // ---------------------------------
    typedef enum logic [6:0] {
        OPCODE_LUI     = 7'b0110111,
        OPCODE_AUIPC   = 7'b0010111,
        OPCODE_JAL     = 7'b1101111,
        OPCODE_JALR    = 7'b1100111,
        OPCODE_BRANCH  = 7'b1100011,
        OPCODE_LOAD    = 7'b0000011,
        OPCODE_FENCE   = 7'b0001111,
        OPCODE_STORE   = 7'b0100011,
        OPCODE_OP_IMM  = 7'b0010011,
        OPCODE_OP_IMM_W = 7'b0011011,
        OPCODE_OP      = 7'b0110011,
        OPCODE_OP_W    = 7'b0111011,
        OPCODE_SYSTEM  = 7'b1110011
    } opcode_t;

    // ---------------------------------
    // Instruction format type
    // ---------------------------------
    typedef enum logic [2:0] {
        TYPE_R,
        TYPE_I,
        TYPE_S,
        TYPE_B,
        TYPE_U,
        TYPE_J
    } inst_format_t;

    //  --------------------------------
    //  Instruction Identification
    //  --------------------------------
typedef enum logic [5:0] {

    // ALU R-type
    INST_ADD, INST_SUB, INST_AND, INST_OR, INST_XOR,
    INST_SLL, INST_SRL, INST_SRA,
    INST_SLT, INST_SLTU,
    INST_SLLW, INST_SRLW, INST_SRAW, INST_SUBW, INST_ADDW,

    // ALU I-type
    INST_ADDI, INST_ADDIW, INST_ANDI, INST_ORI, INST_XORI,
    INST_SLTI, INST_SLTIU,
    INST_SLLI, INST_SRLI, INST_SRAI,
    INST_SLLIW, INST_SRLIW, INST_SRAIW,

    // Loads
    INST_LB, INST_LH, INST_LW, INST_LD,
    INST_LBU, INST_LHU, INST_LWU,

    // Stores
    INST_SB, INST_SH, INST_SW, INST_SD,

    // Branches
    INST_BEQ, INST_BNE, INST_BLT, INST_BGE,
    INST_BLTU, INST_BGEU,

    // Upper
    INST_LUI, INST_AUIPC,

    // Jumps
    INST_JAL, INST_JALR,

    // System
    INST_ECALL, INST_EBREAK,
    INST_CSRRW, INST_CSRRS, INST_CSRRC,
    INST_CSRRWI, INST_CSRRSI, INST_CSRRCI,

    // Fence
    INST_FENCE, INST_FENCE_I,

    //  NOP
    INST_NOP = 32'h00000013
} inst_name_64i_t;

    // ---------------------------------
    // Decoded instruction struct
    // ---------------------------------
    typedef struct packed {
        opcode_t                        opcode;
        logic           [REG_BITS-1:0]  rd;
        logic           [REG_BITS-1:0]  rs1;
        logic           [REG_BITS-1:0]  rs2;
        logic           [2:0]           funct3;
        logic           [6:0]           funct7;
        inst_format_t                   format;
        inst_name_64i_t                 inst_name_64i;
    } decoded_instr_t;


endpackage
