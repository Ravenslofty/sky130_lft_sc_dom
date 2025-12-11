v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {0.5 = W=0.42 L=0.15} 410 100 0 0 0.4 0.4 {}
T {HI-Skew: P/N = 2/0.5} 280 -90 0 0 0.4 0.4 {}
T {LO-Skew: P/N = 1/3} -90 -100 0 0 0.4 0.4 {}
N 0 -0 200 0 {
lab=N0}
N 320 0 320 30 {
lab=N0}
N 320 -30 320 0 {
lab=N0}
N 360 0 550 0 {
lab=Z}
N 200 -70 200 0 {
lab=N0}
N 200 0 320 -0 {
lab=N0}
N 240 -100 550 -100 {
lab=Z}
N 550 -100 550 -0 {
lab=Z}
N 360 -180 360 -60 {
lab=VPWR}
N 200 -180 360 -180 {
lab=VPWR}
N 200 -180 200 -130 {
lab=VPWR}
N -0 -180 0 -60 {
lab=VPWR}
N 0 -180 200 -180 {
lab=VPWR}
N 200 -220 200 -180 {
lab=VPWR}
N 0 220 200 220 {
lab=VGND}
N 200 220 360 220 {
lab=VGND}
N 360 100 360 220 {
lab=VGND}
N 200 220 200 260 {
lab=VGND}
N -230 -30 -40 -30 {
lab=CLK}
N -230 -30 -230 150 {
lab=CLK}
N -320 -30 -230 -30 {
lab=CLK}
N 0 210 -0 220 {
lab=VGND}
N -230 180 -40 180 {
lab=CLK}
N -230 150 -230 180 {
lab=CLK}
N 360 60 360 100 {
lab=VGND}
N -0 140 -0 150 {
lab=#net1}
N 0 70 -0 80 {
lab=#net2}
N -0 -0 -0 10 {
lab=N0}
N 550 -0 600 -0 {
lab=Z}
N 0 210 20 210 {
lab=VGND}
N 20 180 20 210 {
lab=VGND}
N -0 180 20 180 {
lab=VGND}
N 20 110 20 180 {
lab=VGND}
N -0 110 20 110 {
lab=VGND}
N 20 40 20 110 {
lab=VGND}
N -0 40 20 40 {
lab=VGND}
N 20 -60 20 -30 {
lab=VPWR}
N -0 -60 20 -60 {
lab=VPWR}
N -0 -30 20 -30 {
lab=VPWR}
N 360 60 380 60 {
lab=VGND}
N 380 30 380 50 {
lab=VGND}
N 360 30 370 30 {
lab=VGND}
N 370 30 380 30 {
lab=VGND}
N 380 50 380 60 {
lab=VGND}
N 360 -30 380 -30 {
lab=VPWR}
N 380 -60 380 -30 {
lab=VPWR}
N 360 -60 380 -60 {
lab=VPWR}
N 180 -130 200 -130 {
lab=VPWR}
N 180 -130 180 -100 {
lab=VPWR}
N 180 -100 190 -100 {
lab=VPWR}
N 190 -100 200 -100 {
lab=VPWR}
C {sky130_fd_pr/pfet_01v8.sym} -20 -30 0 0 {name=M1
W=0.84
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 40 0 0 {name=M2
W=2.52
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 110 0 0 {name=M3
W=2.52
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 180 0 0 {name=M4
W=2.52
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 340 30 0 0 {name=M6
W=0.42
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 340 -30 0 0 {name=M7
W=1.68
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 220 -100 0 1 {name=M8
W=0.42
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -40 40 0 0 {name=p1 lab=A}
C {ipin.sym} -40 110 0 0 {name=p2 lab=B}
C {ipin.sym} -320 -30 0 0 {name=p3 lab=CLK}
C {ipin.sym} 200 -220 0 0 {name=p4 lab=VPWR}
C {ipin.sym} 200 260 0 0 {name=p5 lab=VGND}
C {opin.sym} 600 0 0 0 {name=p6 lab=Z}
C {lab_pin.sym} 200 -20 0 0 {name=p7 sig_type=std_logic lab=N0}
C {lab_pin.sym} 550 -20 0 0 {name=p8 sig_type=std_logic lab=Z}
