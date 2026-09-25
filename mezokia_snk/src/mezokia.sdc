# MEZOKIA minimal design clocks.
create_clock -name {core_clk_8mhz} -period 125.000 [get_ports {CLK_FROM_5510}]
create_clock -name {por_clk_8mhz} -period 125.000 [get_ports {POR_CLK_8MHZ}]
create_clock -name {ftdi_clk_60mhz} -period 16.667 [get_ports {FCLK_OUT}]

# The two domains communicate only through generated asynchronous FIFOs.
set_clock_groups -asynchronous \
    -group [get_clocks {core_clk_8mhz}] \
    -group [get_clocks {por_clk_8mhz}] \
    -group [get_clocks {ftdi_clk_60mhz}]

derive_clock_uncertainty

# Values retained from the original project for the FTDI output interface.
set_output_delay -clock {ftdi_clk_60mhz} -max 7.5 \
    [get_ports {FU_D[0] FU_D[1] FU_D[2] FU_D[3] FU_D[4] FU_D[5] FU_D[6] FU_D[7] FOE FODD FWR FRD}]
set_output_delay -clock {ftdi_clk_60mhz} -min 9.0 \
    [get_ports {FU_D[0] FU_D[1] FU_D[2] FU_D[3] FU_D[4] FU_D[5] FU_D[6] FU_D[7] FOE FODD FWR FRD}]
