import ann_pkg::*;

module layer(
    input logic clk_i, rst_n_i, 
    input logic [NEURON_SIZE-1 : 0] en_i,
    
    input logic [NEURON_SIZE-1 : 0] [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] x_i,
    input logic [NEURON_SIZE-1 : 0] [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] weights_i,

    output logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] result_o
);

    genvar i;

    generate
        for (i = 0 ; i<NEURON_SIZE ; i++) begin
            neuron i_neuron(
                .clk_i  (clk_s),
                .rst_n_i(rst_n_s),
                .en_i   (en_s),

                .weights_i(weights_s[i]),
                .x_i(x_s[i]),

                .result_o(result_o[i])
            );
        end

    endgenerate



endmodule