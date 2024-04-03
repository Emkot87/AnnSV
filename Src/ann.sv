
module ann(
    input logic pclk_i, presetn_i, psel_i, penable_i, pwrite_i, pwakeup_i, 
    input logic [ADDR_WIDTH-1:0] paddr_i,
    input logic [WORD_SIZE-1:0] pwdata_i,

    output logic pready_o, pslverr_o,
    output logic [WORD_SIZE-1:0] prdata_o
);

    logic [RAM_PORT-1:0] ram_data_in_s;
    logic [RAM_PORT-1:0] ram_data_out_s;
    logic [ADDR_WIDTH-1:0] ram_addr_s;


    logic [NEURON_SIZE-1 : 0] en_s;
    logic [NEURON_SIZE-1 : 0] [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] x_s, weights_s;
    logic [NEURON_SIZE-1 : 0] [WORD_SIZE-1 : 0] result_s;

    apb_slave i_apb(
        
    );

    fsm i_fsm(
        .clk_i(pclk_i),
        .rst_n_i(presetn_i),

        .psel_i(),
        .penable_i(),
        .pwrite_i(),
        .pwakeup_i(),
        .paddr_i(),
        .pwdata_i(),

        .pready_o(),
        .prdata_o(),
        
        

    );


    cache i_cache(

    );

    ram i_ram(
        .clk_i(pclk_i),
        .rst_n_i(presetn_i),
        .addr_i(ram_addr_s),
        .data_i(ram_data_in_s),
        .data_o(ram_data_out_s)
    );

    // do I need these?
    // registers i_registers(

    // );

    // layer 1
    layer i_layer(
        .clk_i(pclk_i),
        .rst_n_i(presetn_i),

        .en_i(nn_en_s),
        
        .weights_i(weights_s),
        .x_i(x_s),

        .result_o(result_s)
    );



endmodule