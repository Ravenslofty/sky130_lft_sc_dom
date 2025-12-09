.subckt sky130_lft_sc_dom__buf_1 VPWR VGND CLK A Z
* pull-down network
M1 n0 CLK VPWR VPWR pmos w=0.84u L=0.15u
M5 n0 A n1 VGND nmos w=0.42u L=0.15u
M7 n1 CLK VGND VGND nmos w=0.42u L=0.15u
* output inverter
M3 Z n0 VPWR VPWR pmos w=0.84u L=0.15u
M4 Z n0 VGND VGND nmos w=0.42u L=0.15u
.ends
