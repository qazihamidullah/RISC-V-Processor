//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    26/04/2026
// Module:  writeback_top.sv      
// Description: This is the top module of the writeback stage.
//###############################################################

module writeback_top #(
    parameter int WIDTH =   64
) (
    input   [WIDTH-1:0]     dmem_read_data_in_writeback_top,
    input   [WIDTH-1:0]     alu_out_in_writeback_top,
    input   [WIDTH-1:0]     pc_plus_four_in_writeback_top,
    input   [1:0]           mux_writeback_sel_in_writeback_top,
    output  [WIDTH-1:0]     mux_writeback_out_writeback_top
);
    
    //  writeback mux instance
    mux_writeback mux_writeback_inst (
        .dmem_read_data (dmem_read_data_in_writeback_top),
        .alu_out (alu_out_in_writeback_top),
        .pc_plus_four (pc_plus_four_in_writeback_top),
        .mux_sel (mux_writeback_sel_in_writeback_top),
        .mux_writeback_out (mux_writeback_out_writeback_top)
    );


endmodule