import ann_pkg::*;

module RAM (
    input logic clk_i, rst_n_i, wr_e_i
    input logic [ADDR_WIDTH-1:0] addr_i,
    input logic [RAM_WORDS-1:0] data_i,
    output logic [RAM_WORDS-1:0] data_o
);


logic [RAM_PORT-1:0] mem_s [0:RAM_WORDS-1];


always_ff @(posedge clk_i or posedge rst_n_i) begin
    if (!rst_n_i) begin
        for (int i = 0; i < RAM_WORDS; i++) begin
            mem_s[i] <= '0;
        end
    end 
    else begin
        if (!wr_e_i) begin
            data_o <= mem_s[addr_i];
        end
        else begin
            mem_s[addr_i] <= data_i;
        end
    end
end

endmodule
