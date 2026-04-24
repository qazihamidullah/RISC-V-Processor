//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    03/01/2026
// Module:  pipeline_register_pkg.sv      
// Description: This is the pipeline_register_pkg file.  
//###############################################################

package pipeline_register_pkg;

    //  fetch stage pipeline register struct
    typedef struct packed {
        logic [63:0] pc;
    } fetch_pipeline_register_t;

    //  decode stage pipeline register struct
    typedef struct packed {
        logic [63:0] pc;
        logic [63:0] rs1_data;
        logic [63:0] rs2_data;
        logic [63:0] immediate_value;
    } decode_pipeline_register_t;

    //  execute stage pipeline register struct
    
    
    //  memory stage pipeline register struct

    //  writeback stage pipeline register struct

endpackage
