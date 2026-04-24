//###############################################################
// Author:  Qazi Hamid Ullah (qazihamidullah.eecs@gmail.com)
//          Asad Ahmed (asadahmed674@gmail.com)
// Date:    30/12/2025
// Module:  core_top_tb.sv      
// Description: This is the top module of the testbench of core_top.
//###############################################################


module core_top_tb ();

    logic clk;
    logic reset;    

    //  generate clock
    parameter CLK_PERIOD = 10; // ns → 100 MHz
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end

    //  generate reset 
    initial begin
        reset = 0;              // assert reset
        repeat (5) @(posedge clk); // hold reset for a few cycles
        reset = 1;              // deassert reset
    end

    //  dut instance
    core_top dut_core_top (

    );

    //  finish simulation
    initial begin
        // run for some cycles
        repeat (20) @(posedge clk);
        $finish;
    end
endmodule