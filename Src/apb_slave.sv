module apb_slave(
    input logic pclk_i, presetn_i, psel_i, penable_i, pwrite_i, pwakeup_i, 
    input logic [ADDR_WIDTH-1:0] paddr_i,
    

    output logic pready_o, pslverr_o,
    output logic [WORD_SIZE-1:0] prdata_o
);

endmodule