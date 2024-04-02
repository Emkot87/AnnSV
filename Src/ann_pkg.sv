package ann_pkg;
    parameter int NEURON_SIZE = 8;
    parameter int WORD_SIZE   = 32;

    parameter int ADDR_WIDTH = 8;

    typedef enum  {APB_ACCESS, NN_ACCESS } e_state;

endpackage