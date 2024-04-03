package ann_pkg;
    parameter int NEURON_SIZE = 8;
    parameter int WORD_SIZE   = 32;

    parameter int ADDR_WIDTH = 8;

    parameter int RAM_PORT   = 64;
    parameter int RAM_WORDS  = 1024;


    typedef enum  {
        IDLE,
        APB_ACCESS,
        NN_ACCESS,
        XXX = 'x
    } e_state;

endpackage