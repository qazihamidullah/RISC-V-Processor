//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    25/04/2026
// Module:  control_unit_pkg.sv      
// Description: This is the control unit pkg which will
//              consolidate all signals into a single struct.
//###############################################################

package control_unit_pkg;

    typedef struct packed {

        logic           mux_input_2_sel;
        logic           regfile_write_en;
        logic   [1:0]   mux_pc_sel,
        
    } control_signals_t;

    //  fetch stage control signals
    typedef struct packed {
        
    } fetch_control_signals_t;

    //  decode stage control signals
    typedef struct packed {
        
    } decode_control_signals_t;

    //  execute stage control signals
    typedef struct packed {
        
    } execute_control_signals_t;

    //  memory stage control signals
    typedef struct packed {
        
    } memory_control_signals_t;

    //  writeback stage control signals
    typedef struct packed {
        
    } writeback_control_signals_t;
endpackage