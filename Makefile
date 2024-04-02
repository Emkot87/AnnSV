src_files = src/ann_pkg.sv src/ann_tb.sv src/ann.sv src/neuron.sv src/ram.sv src/apb_slave.sv src/layer.sv
obj = ann

all: $(src_files)
	iverilog -g2012 -gno-specify -o $(obj) $(src_files)
	vvp $(obj)
	gtkwave .\$(obj).vcd