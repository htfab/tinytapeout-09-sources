v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1380 -1140 4515 -100 {flags=graph
y1=-0.085
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-12
x2=1.1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=10
node=out}
B 2 45 -2215 1355 -1465 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-12
x2=1.1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="7 8 11 4 4 4 4"
node="en_c
en_r
selected;\\"sel0 1.8 / sel1 +\\""
rainbow=1}
B 2 1390 -2220 4505 -1180 {flags=graph
y1=-0.099
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=3e-12
x2=1.1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="12 10"
node="drv_out;x1.drv_out

out"}
T {Ring osc MUX test} 340 -1300 0 0 1 1 {}
T {4:1 MUX (parasitic extraction sim), monitoring ring osc and counter} 750 -2400 0 0 1.8 1.8 {}
T {Output configured such that:
 * SEL 0: ring oscillator raw output
 * SEL 1: ring osc, post driver
 * SEL 2: counter divider (bit 3)
 * SEL 3: counter divider (bit 7)
} 200 -980 0 0 1 1 {}
T {raw drv} 1780 -80 0 0 1 1 {}
T {counter[3]} 2010 -80 0 0 1 1 {}
T {counter[3]} 3820 -70 0 0 1 1 {}
T {counter[7]} 2570 -70 0 0 1 1 {}
T {disabled} 4150 -70 0 0 1 1 {}
N 380 -1210 400 -1210 {
lab=SEL0}
N 750 -1120 750 -1090 {
lab=VSS}
N 380 -1190 400 -1190 {
lab=SEL1}
N 700 -1210 750 -1210 {
lab=OUT}
N 750 -1210 750 -1180 {
lab=OUT}
N 390 -1110 400 -1110 {
lab=VSS}
N 390 -1130 400 -1130 {
lab=VCC}
N 370 -1150 400 -1150 {
lab=EN_C}
N 380 -1170 400 -1170 {
lab=EN_R}
C {sky130_fd_pr/corner.sym} 25 -1230 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 25 -1380 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
* .options savecurrents
.param VCC = 1.8
.param SRCRES = 1k
.include stimuli_tb_ringtest.cir
.control
save all
op
write tb_ringtest.raw
set appendwrite
tran 0.3n 1.1u uic
write tb_ringtest.raw
quit 0
.endc
"}
C {devices/launcher.sym} 1020 -1270 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_ringtest.raw tran"
}
C {devices/lab_wire.sym} 750 -1210 0 0 {name=p45 sig_type=std_logic lab=OUT}
C {devices/lab_pin.sym} 390 -1130 0 0 {name=p46 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 390 -1110 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/res.sym} 750 -1150 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 750 -1090 2 0 {name=p48 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 380 -1190 0 0 {name=p4 sig_type=std_logic lab=SEL1
}
C {devices/title.sym} 180 -40 0 0 {name=l1 author="Pat Deegan"}
C {ringtest.sym} 550 -1160 0 0 {name=x1
schematic=ringtest_parax
spice_sym_def="tcleval(.include [file normalize extracted/ringtest_parax.spice])"
tclcommand="textwindow [file normalize extracted/ringtest_parax.spice]"
}
C {devices/lab_pin.sym} 370 -1150 0 0 {name=p1 sig_type=std_logic lab=EN_C}
C {devices/lab_pin.sym} 380 -1210 0 0 {name=p2 sig_type=std_logic lab=SEL0
}
C {devices/lab_pin.sym} 380 -1170 0 0 {name=p3 sig_type=std_logic lab=EN_R
}
