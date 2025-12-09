.subckt sky130_lft_sc_dom__dff_1 VPWR VGND CLK D Q
* delayed clock
M0 CLK_1 CLK VPWR VPWR pmos w=0.84u L=0.15u
M1 CLK_1 CLK VGND VGND nmos w=0.42u L=0.15u
M2 CLK_2 CLK_1 VPWR VPWR pmos w=0.84u L=0.15u
M3 CLK_2 CLK_1 VGND VGND nmos w=0.42u L=0.15u
M4 CLK_2 CLK_3 VPWR VPWR pmos w=0.84u L=0.15u
M5 CLK_2 CLK_3 VGND VGND nmos w=0.42u L=0.15u
* pull-down network
M6a n0 CLK VPWR VPWR pmos w=0.42u l=0.15u
M6b n0 CLK VPWR VPWR pmos w=0.42u l=0.15u
M7 n0 CLK_3 n1 VGND nmos w=0.42u l=0.15u
M8 n1 D n2 VGND nmos w=0.42u l=0.15u
M9 n2 CLK VGND VGND nmos w=0.42u l=0.15u
* keeper
M10 n0 Q VPWR VPWR pmos w=0.42u l=0.15u
* output inverter
M11 Q n0 VPWR VPWR pmos w=0.84u l=0.15u
M12 Q n0 VGND VGND nmos w=0.42u l=0.15u
.ends
