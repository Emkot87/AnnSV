import ann_pkg::*;

module neuron(
    input logic clk_i, rst_n_i, en_i,
    
    input logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] x_i,
    input logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] weights_i,

    output logic [WORD_SIZE-1 : 0] result_o
);

    logic [WORD_SIZE-1 : 0] sum_s;
    logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] mult_s;
    logic [WORD_SIZE-1 : 0] result_s;

    always_ff @( posedge clk_i, negedge rst_n_i) begin : summation
        if (rst_n_i == '0) begin
            result_o <= '0;
        end
        else begin
            result_o <= result_s;
        end
    end

    always_comb begin : Mult_Sum_Act
        for (int i = 0 ; i < NEURON_SIZE ; i++ ) begin
            mult_s[i] = x_i[i]*weights_i[i];
        end

        sum_s = '0;

        for (int i = 0 ; i < NEURON_SIZE ; i++ ) begin
            sum_s = sum_s + mult_s[i];
        end

        result_s = mult_s;

    end

endmodule