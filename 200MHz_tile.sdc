# Constrain clock port clk with a 200MHz requirement

create_clock -period 5 [get_ports clk]

# Automatically apply a generate clock on the output of phase-locked loops (PLLs)
# This command can be safely left in the SDC even if no PLLs exist in the design

derive_pll_clocks
derive_clock_uncertainty
