v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1240 -1080 2865 -40 {flags=graph
y1=-2e-05
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.3666047e-07
x2=0.00011946331
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=8
node="4:1MUX;out"}
B 2 35 -1975 1545 -1225 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-3.9796642e-07
x2=0.00011960201
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 4 4 4 4 7"
node="selected;\\"sel0 1.8 / sel1 +\\"
highbit;sel2"}
T {One hot 8:1} 550 -810 0 0 1 1 {}
T {4x passgates, parasitic extraction sim, in one-hot and 4:1 MUX configuration} 20 -2110 0 0 1.4 1.4 {}
N 120 -515 120 -505 {
lab=VSS}
N 120 -580 155 -580 {
lab=#net1}
N 120 -580 120 -575 {
lab=#net1}
N 120 -175 120 -165 {
lab=VSS}
N 120 -240 155 -240 {
lab=#net2}
N 120 -240 120 -235 {
lab=#net2}
N 120 -395 120 -385 {
lab=VSS}
N 120 -460 155 -460 {
lab=#net3}
N 120 -460 120 -455 {
lab=#net3}
N 110 -285 110 -275 {
lab=VSS}
N 110 -350 145 -350 {
lab=#net4}
N 110 -350 110 -345 {
lab=#net4}
N 155 -240 180 -240 {
lab=#net2}
N 240 -240 265 -240 {
lab=IN4}
N 145 -350 170 -350 {
lab=#net4}
N 230 -350 265 -350 {
lab=IN3}
N 155 -460 175 -460 {
lab=#net3}
N 235 -460 265 -460 {
lab=IN2}
N 155 -580 170 -580 {
lab=#net1}
N 230 -580 265 -580 {
lab=IN1}
N 540 -700 560 -700 {
lab=SEL2}
N 540 -680 560 -680 {
lab=SEL1}
N 540 -660 560 -660 {
lab=SEL0}
N -290 -545 -290 -535 {
lab=VSS}
N -290 -610 -255 -610 {
lab=#net5}
N -290 -610 -290 -605 {
lab=#net5}
N -255 -610 -240 -610 {
lab=#net5}
N -180 -610 -145 -610 {
lab=IN5}
N -280 -425 -280 -415 {
lab=VSS}
N -280 -490 -245 -490 {
lab=#net6}
N -280 -490 -280 -485 {
lab=#net6}
N -245 -490 -230 -490 {
lab=#net6}
N -170 -490 -135 -490 {
lab=IN6}
N -280 -295 -280 -285 {
lab=VSS}
N -280 -360 -245 -360 {
lab=#net7}
N -280 -360 -280 -355 {
lab=#net7}
N -245 -360 -230 -360 {
lab=#net7}
N -170 -360 -135 -360 {
lab=IN7}
N -270 -175 -270 -165 {
lab=VSS}
N -270 -240 -235 -240 {
lab=#net8}
N -270 -240 -270 -235 {
lab=#net8}
N -235 -240 -220 -240 {
lab=#net8}
N -160 -240 -125 -240 {
lab=IN8}
N 540 -580 560 -580 {
lab=VCC}
N 540 -560 560 -560 {
lab=VSS}
N 860 -550 930 -550 {
lab=OUT}
C {devices/vsource.sym} 120 -545 0 0 {name=V2 value="sin(0.9 0.9 250k)" savecurrent=false}
C {devices/lab_pin.sym} 265 -580 2 0 {name=p6 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 120 -505 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 45 -900 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 25 -1090 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
* .options savecurrents
.param VCC = 1.8
.param SRCRES = 1k
.include stimuli_tb_8muxonehot.cir
.control
save all
op
write tb_8muxonehot.raw
set appendwrite
tran 200n 120u
write tb_8muxonehot.raw
quit 0
.endc
"}
C {devices/vsource.sym} 120 -205 0 0 {name=V3 value="sin(0.9 0.9 5Meg)" savecurrent=false}
C {devices/lab_pin.sym} 265 -240 2 0 {name=p7 sig_type=std_logic lab=IN4}
C {devices/lab_pin.sym} 120 -165 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 120 -425 0 0 {name=V5 value="sin(0.9 0.9 500k)" savecurrent=false}
C {devices/lab_pin.sym} 265 -460 2 0 {name=p24 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 120 -385 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 110 -315 0 0 {name=V6 value="sin(0.9 0.9 1Meg)" savecurrent=false}
C {devices/lab_pin.sym} 265 -350 2 0 {name=p26 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 110 -275 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 980 -350 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_8muxonehot.raw tran"
}
C {devices/res.sym} 200 -580 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 205 -460 1 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 200 -350 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 210 -240 1 0 {name=R5
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 860 -710 2 0 {name=p41 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 860 -690 2 0 {name=p42 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 860 -670 2 0 {name=p43 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 860 -650 2 0 {name=p44 sig_type=std_logic lab=IN4}
C {devices/lab_pin.sym} 540 -580 0 0 {name=p46 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 540 -660 0 0 {name=p4 sig_type=std_logic lab=SEL0
}
C {devices/title.sym} 180 -40 0 0 {name=l1 author="Pat Deegan"}
C {devices/lab_pin.sym} 860 -630 2 0 {name=p1 sig_type=std_logic lab=IN5}
C {devices/lab_pin.sym} 860 -610 2 0 {name=p2 sig_type=std_logic lab=IN6}
C {devices/lab_pin.sym} 860 -590 2 0 {name=p3 sig_type=std_logic lab=IN7}
C {devices/lab_pin.sym} 860 -570 2 0 {name=p8 sig_type=std_logic lab=IN8}
C {mux8onehot.sym} 710 -630 0 0 {name=x1
schematic=mux8onehot_parax
spice_sym_def="tcleval(.include [file normalize extracted/mux8onehot_parax.spice])"
tclcommand="textwindow [file normalize extracted/mux8onehot_parax.spice]"
}
C {devices/lab_pin.sym} 540 -680 0 0 {name=p5 sig_type=std_logic lab=SEL1
}
C {devices/lab_pin.sym} 540 -700 0 0 {name=p9 sig_type=std_logic lab=SEL2}
C {devices/lab_pin.sym} 540 -560 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -290 -575 0 0 {name=V1 value="dc 0.25 sin(0.3 0.1 1Meg)" savecurrent=false}
C {devices/lab_pin.sym} -145 -610 2 0 {name=p13 sig_type=std_logic lab=IN5}
C {devices/lab_pin.sym} -290 -535 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/res.sym} -210 -610 1 0 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -280 -455 0 0 {name=V4 value="dc 0.88 sin(0.6 0.3 500k)" savecurrent=false}
C {devices/lab_pin.sym} -135 -490 2 0 {name=p15 sig_type=std_logic lab=IN6}
C {devices/lab_pin.sym} -280 -415 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/res.sym} -200 -490 1 0 {name=R6
value=1
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -280 -325 0 0 {name=V7 value="dc 1.25" savecurrent=false}
C {devices/lab_pin.sym} -135 -360 2 0 {name=p17 sig_type=std_logic lab=IN7}
C {devices/lab_pin.sym} -280 -285 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/res.sym} -200 -360 1 0 {name=R7
value=1
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} -270 -205 0 0 {name=V8 value="dc 1.2 sin(1.2 0.4 200k)" savecurrent=false}
C {devices/lab_pin.sym} -125 -240 2 0 {name=p19 sig_type=std_logic lab=IN8}
C {devices/lab_pin.sym} -270 -165 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/res.sym} -190 -240 1 0 {name=R8
value=1
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 930 -550 2 0 {name=p21 sig_type=std_logic lab=OUT}
