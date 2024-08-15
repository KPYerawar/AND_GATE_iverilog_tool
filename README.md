# AND_GATE_iverilog_tool
//Compile the Verilog Code:
iverilog -o out.vvp -s testbench testbench.v design.v

//Run the Simulation:
vvp out.vvp

//View the Results:
//Open the waveform file dump.vcd using GTKWave:
gtkwave dump.vcd





