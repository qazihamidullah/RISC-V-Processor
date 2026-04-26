//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  register_file.sv      
// Description: This is the register file. It is combinational
//              and width is 64 for RV64. Contains 32 registers.
//###############################################################

module register_file #(
    parameter int WIDTH = 64,
    parameter int NUM_REGS = 32
)(
    input  logic                        clk,
    input  logic [$clog2(NUM_REGS)-1:0] rs1_address,
    input  logic [$clog2(NUM_REGS)-1:0] rs2_address,
    input  logic [$clog2(NUM_REGS)-1:0] rd_address,
    input  logic                        regfile_write_en,                                         // write enable for register file
    input  logic [WIDTH-1:0]            rd_data,
    output logic [WIDTH-1:0]            rs1_data,
    output logic [WIDTH-1:0]            rs2_data
);

    logic [WIDTH-1:0] register_file [0:NUM_REGS-1];                                       // register file array of 64 width and 32 depth

    always_comb begin                                                                    // combinational read access 
        rs1_data = (rs1_addr == 0) ? '0 : register_file[rs1_addr];
        rs2_data = (rs2_addr == 0) ? '0 : register_file[rs2_addr];
    end

    always_ff @(posedge clk) begin                                                      // sequential write access
        if (regfile_write_en && (rd_addr != 0)) begin
            register_file[rd_addr] <= rd_data;
        end
    end
    assign register_file[0] = '0;                                                       // X0 register is hard wired to 0 for RISC-V
endmodule
