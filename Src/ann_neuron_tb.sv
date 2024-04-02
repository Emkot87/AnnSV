`timescale 1ps/1ps

import ann_pkg::*;

module ann_tb();

    logic clk_s = '0; 
    logic rst_n_s = '1;

    logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] weights_s;
    logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] x_s;

    logic [WORD_SIZE-1 : 0] result_s;

/*
    ann ann(
        .clk_i(clk_s),
        .rst_n_i(rst_n_s)
    );
*/

    neuron neuron(
        .clk_i  (clk_s),
        .rst_n_i(rst_n_s),
        .en_i   (en_s),

        .weights_i(weights_s),
        .x_i(x_s),

        .result_o(result_s)
    );

    initial begin
        $dumpfile("ann.vcd");
        $dumpvars(0, ann_tb);
    end

    always #5 clk_s = ~clk_s;
    
    initial begin

        for (int i = 0 ; i < NEURON_SIZE ; i++ ) begin
            weights_s[i] = 2;
            x_s[i] = 1;
        end

        rst_n_s = '0;
        #20
        rst_n_s = 1'b1;
        
        #50 $finish;

    end

    


endmodule
