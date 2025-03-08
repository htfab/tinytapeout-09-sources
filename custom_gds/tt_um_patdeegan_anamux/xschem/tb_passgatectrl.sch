v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 840 -350 1640 50 {flags=graph
y1=0
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="10 6 4 4"
node="sel0;\\"sel0 0.05 +\\"
sel1"}
B 2 1770 160 2570 560 {flags=graph
y1=-0.03
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out2;gno2"
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1790 580 2590 980 {flags=graph
y1=-0.0032
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out3;gno3"
color=21
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 850 100 1650 500 {flags=graph
y1=-0.0034
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out0;gno0"
color=6
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 830 520 1630 920 {flags=graph
y1=-0.0034
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out1;gno1"
color=8
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -560 440 240 840 {flags=graph
y1=-0.0034
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="gpo0
gpo1
gpo2
gpo3"
color="5 6 7 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1780 -340 2580 60 {flags=graph
y1=0
y2=3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="selected;\\"sel0 1.8 / sel1 1.8 / 2 * +\\""
color="4 4 4 4 4 4 4 4 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 2660 -310 3460 90 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1e-06
x2=9e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="mismatch0;\\"gno0 gpo0 + 1.8 -\\"
mismatch1;\\"gno1 gpo1 + 1.8 -\\"
mismatch2;\\"gno2 gpo2 + 1.8 -\\"
mismatch3;\\"gno3 gpo3 + 1.8 -\\""
color="8 8 8 8 8 10 10 10 10 10 11 11 11 11 11 7 7 7 7 7"
dataset=-1
unitx=1
logx=0
logy=0
}
N -155 -35 -155 -15 {
lab=VSS}
N -155 -125 -155 -95 {
lab=VCC}
N -220 -270 -220 -260 {
lab=VSS}
N -220 -335 -185 -335 {
lab=SEL0}
N -220 -335 -220 -330 {
lab=SEL0}
N -260 -45 -260 -30 {
lab=GND}
N -260 -125 -260 -105 {
lab=VSS}
N -50 -280 -50 -270 {
lab=VSS}
N -50 -345 -15 -345 {
lab=SEL1}
N -50 -345 -50 -340 {
lab=SEL1}
N 110 -70 110 -50 {
lab=SEL1}
N 50 -70 50 -50 {
lab=SEL0}
N 210 -20 210 20 {
lab=GPO2}
N 290 -20 290 20 {
lab=GPO3}
N 130 -20 130 20 {
lab=GPO1}
N 50 -20 50 20 {
lab=GPO0}
N 90 -20 90 20 {
lab=GNO0}
N 170 -20 170 20 {
lab=GNO1}
N 250 -20 250 20 {
lab=GNO2}
N 330 -20 330 20 {
lab=GNO3}
N 0 -0 30 -0 {
lab=VCC}
N 30 10 30 30 {
lab=VSS}
N 0 30 30 30 {
lab=VSS}
C {passgatesCtrl.sym} -150 -40 0 0 {name=x1
schematic=passgatesctrl_parax
spice_sym_def="tcleval(.include [file normalize extracted/passgatesCtrl_parax.spice])"
tclcommand="textwindow [file normalize extracted/passgatesCtrl_parax.spice]"}
C {devices/vsource.sym} -155 -65 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/lab_pin.sym} -155 -125 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {devices/vsource.sym} -220 -300 0 0 {name=V2 value="PULSE(0 1.8 1u 2n 2n 2u 4u)" savecurrent=false}
C {devices/lab_pin.sym} -185 -335 2 0 {name=p6 sig_type=std_logic lab=SEL0}
C {devices/vsource.sym} -260 -75 0 0 {name=V4 value=0 savecurrent=false}
C {devices/gnd.sym} -260 -30 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -260 -125 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -220 -260 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -155 -15 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -50 -310 0 0 {name=V3 value="PULSE(0 1.8 500n 1n 1n 1u 2u)" savecurrent=false}
C {devices/lab_pin.sym} -15 -345 2 0 {name=p2 sig_type=std_logic lab=SEL1}
C {devices/lab_pin.sym} -50 -270 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 110 -70 1 0 {name=p4 sig_type=std_logic lab=SEL1}
C {devices/lab_pin.sym} 50 -70 1 0 {name=p5 sig_type=std_logic lab=SEL0}
C {devices/lab_pin.sym} 50 20 3 0 {name=p7 sig_type=std_logic lab=GPO0}
C {devices/lab_pin.sym} 130 20 3 0 {name=p8 sig_type=std_logic lab=GPO1}
C {devices/lab_pin.sym} 210 20 3 0 {name=p9 sig_type=std_logic lab=GPO2}
C {devices/lab_pin.sym} 290 20 3 0 {name=p11 sig_type=std_logic lab=GPO3}
C {devices/lab_pin.sym} 90 20 3 0 {name=p14 sig_type=std_logic lab=GNO0}
C {devices/lab_pin.sym} 170 20 3 0 {name=p15 sig_type=std_logic lab=GNO1}
C {devices/lab_pin.sym} 250 20 3 0 {name=p16 sig_type=std_logic lab=GNO2}
C {devices/lab_pin.sym} 330 20 3 0 {name=p17 sig_type=std_logic lab=GNO3}
C {sky130_fd_pr/corner.sym} 535 -260 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 515 -450 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
* .options savecurrents

.control
save all
op
write tb_passgatesctrl.raw
set appendwrite
tran 10n 10u
write tb_passgatesctrl.raw
quit 0
.endc
"}
C {devices/launcher.sym} 700 110 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_passgatesctrl.raw tran"
}
C {devices/lab_pin.sym} 0 0 0 0 {name=p18 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 0 30 0 0 {name=p19 sig_type=std_logic lab=VSS}
