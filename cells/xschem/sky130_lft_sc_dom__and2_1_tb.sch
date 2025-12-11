v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 10 -220 30 {
lab=B}
N -220 10 -140 10 {
lab=B}
N -300 -10 -140 -10 {
lab=A}
N -300 -10 -300 30 {
lab=A}
N -360 -30 -120 -30 {
lab=CLK}
N -380 -30 -380 30 {
lab=CLK}
N 160 -50 200 -50 {
lab=Z}
N -380 -30 -360 -30 {
lab=CLK}
N -140 -110 -140 -50 {
lab=VPWR}
N -140 30 -140 100 {
lab=VGND}
C {sky130_lft_sc_dom__and2_1.sym} 10 -10 0 0 {name=x1}
C {vsource.sym} -140 130 0 0 {name=VGND value=0 savecurrent=false}
C {vsource.sym} -140 -140 2 0 {name=VPWR value=1.8 savecurrent=false}
C {gnd.sym} -140 160 0 0 {name=l1 lab=GND}
C {gnd.sym} -140 -170 2 0 {name=l2 lab=GND}
C {vsource.sym} -220 120 0 0 {name=VB value="pulse(1.8 0.0 400p 250p 250p 1400p 100n)" savecurrent=false}
C {gnd.sym} -220 150 0 0 {name=l3 lab=GND}
C {vsource.sym} -300 120 0 0 {name=VA value="pulse(1.8 0.0 400p 250p 250p 1600p 100n)" savecurrent=false}
C {gnd.sym} -300 150 0 0 {name=l4 lab=GND}
C {vsource.sym} -380 60 0 0 {name=VCLK value="pulse(1.8 0.0 0p 250p 250p 1800p 100n)" savecurrent=false}
C {gnd.sym} -380 90 0 0 {name=l5 lab=GND}
C {code.sym} 170 80 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice ss
"
spice_ignore=false}
C {netlist.sym} 310 80 0 0 {name="s1" value=".control
let vdd = 1.8
let vdd_rise_trip = vdd * 0.4
let vdd_fall_trip = vdd * 0.6
let vlo = vdd * 0.2
let vhi = vdd * 0.8

stop when time > 2000p when v(Z) > 1.6

tran 1p 100n

meas tran a_rise_start WHEN v(A)=vlo RISE=1
meas tran a_rise_stop WHEN v(A)=vhi RISE=1

meas tran a_z_rise_trans TRIG v(Z) VAL=vlo RISE=1 TARG v(Z) VAL=vhi RISE=1
meas tran a_z_fall_trans TRIG v(Z) VAL=vhi FALL=1 TARG v(Z) VAL=vlo FALL=1
meas tran a_z_rise_delay TRIG v(A) VAL=vdd_rise_trip RISE=1 TARG v(Z) VAL=vdd_rise_trip RISE=1
meas tran clk_z_fall_delay TRIG v(CLK) VAL=vdd_fall_trip FALL=1 TARG v(Z) VAL=vdd_fall_trip FALL=1
meas tran a_charge INTEG VAI#branch FROM=a_rise_start TO=a_rise_stop

meas tran a_z_fall_trans_full_swing TRIG v(Z) VAL=vdd FALL=1 TARG v(Z) VAL=0 FALL=1

plot v(CLK) v(A)+2 v(B)+4 v(Z)+6


.endc"}
C {lab_pin.sym} -140 90 0 0 {name=p1 sig_type=std_logic lab=VGND}
C {lab_pin.sym} -140 -80 0 1 {name=p2 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} -220 20 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} -300 20 0 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} -380 20 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 200 -50 0 1 {name=p6 sig_type=std_logic lab=Z}
C {vsource.sym} -220 60 0 0 {name=VBI value="0" savecurrent=false}
C {vsource.sym} -300 60 0 0 {name=VAI value="0" savecurrents=true}
C {capa.sym} 200 -20 0 0 {name=C1
m=1
value=0.234p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 200 10 0 0 {name=l6 lab=GND}
