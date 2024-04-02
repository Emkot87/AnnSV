
module ann(
    input logic pclk_i, presetn_i, psel_i, penable_i, pwrite_i, pwakeup_i, 
    input logic [ADDR_WIDTH-1:0] paddr_i,

    output logic pready_o, pslverr_o,
    output logic [WORD_SIZE-1:0] prdata_o
);


    apb_slave i_apb(
        
    );

    fsm i_fsm(
        
    );


    cache i_cache(

    );

    ram i_ram(

    );

    // do I need these?
    // registers i_registers(

    // );

    // layer 1
    layer i_layer(
        .clk_i(pclk_i),
        .rst_n_i(presetn_i),
        .en_i(),
        
        .weights_i(),
        .x_i(),

        .result_o()
    );



endmodule