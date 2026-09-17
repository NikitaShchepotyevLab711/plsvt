create_clock -name bb_clk_in -period 125 -waveform {0 62.5} [get_ports bb_clk_in]

# The inter-board POR is consumed as an asynchronous reset by MEZOKIA. Its
# assertion/deassertion is millisecond-scale, so the generic 25 ns output-path
# limit inserted by XCAD is not a functional timing requirement for this pin.
set_false_path -to [get_ports reset_n_to_mezokia]
