v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2780 -3090 4995 -2320 {flags=graph
y1=-0.058
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=4
node=ringoutpx}
B 2 1180 -2470 2665 -1970 {flags=graph
y1=0
y2=2.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 6 6 6"
node="sel0
sel1;\\"sel1 0.1 +\\""}
B 2 1190 -3110 2665 -2510 {flags=graph
y1=0
y2=6.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 4 4 4 4 4 4 4 4"
node="RSELECTION;\\"RSEL0 1.8 / RSEL1 + RSEL2 2 * +\\""}
B 2 1180 -1940 2665 -1440 {flags=graph
y1=1.7
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0


color="4 6 6 6"
node="en_ring;\\"en_ring 0.004 -\\"
en_counter"}
B 2 2790 -2250 4995 -1600 {flags=graph
y1=0.18
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color=7
node="ladderOut;ladoutpx"}
B 2 1200 -1340 3415 -570 {flags=graph
y1=0.17
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.5989e-08
x2=1.44001e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

color="4 6"
node="muxoutpx
muxout"}
T {Muxtest out (ua[2]) selection, depends on select[1:0]:
  * 0: the resistor ladder mux (ladderout)
  * 1: the resistor src VRES, through only this mux 
  * 2: A5 point, between R3 and R4
  * 3: A1 point, on top of last R in chain above GND (R8)} 560 -1150 0 0 0.3 0.3 {}
T {Ladderout (ua[3]) is always the output from the inner 
8:1 MUX (two stages) and depends on rsel[2:0]:
 * 0-6 increasing voltage in Rdiv
 * 7: the top VRES itself} 560 -1040 0 0 0.3 0.3 {}
T {ring_out (ua[1]) is a 4:1 mux, depending on select[1:0] and will be:
 * 0: raw ring oscillator output
 * 1: the buffered ring osc output (through driver)
 * 2: the output of the counter bit[3]
 * 3: the output of the counter bit[7]} 560 -1260 0 0 0.3 0.3 {}
T {VRES (ua[0]) is an input, the V on top of the monitored resistor ladder.} 560 -1350 0 0 0.3 0.3 {}
N 1270 -160 1270 -130 {
lab=VSS}
N 1090 -240 1120 -240 {
lab=VRES}
N 1090 -220 1270 -220 {
lab=RINGOUTPX}
N 1270 -220 1310 -220 {
lab=RINGOUTPX}
N 1210 -140 1210 -110 {
lab=VSS}
N 1150 -120 1150 -90 {
lab=VSS}
N 1090 -180 1150 -180 {
lab=LADOUTPX}
N 1090 -200 1210 -200 {
lab=MUXOUTPX}
N 1150 -180 1160 -180 {
lab=LADOUTPX}
N 770 -560 790 -560 {
lab=SEL0}
N 770 -540 790 -540 {
lab=SEL1}
N 1160 -180 1170 -180 {
lab=LADOUTPX}
N 290 290 290 320 {
lab=VSS}
N 110 210 140 210 {
lab=VRES}
N 110 230 290 230 {
lab=RINGOUT}
N 290 230 330 230 {
lab=RINGOUT}
N 230 310 230 340 {
lab=VSS}
N 170 330 170 360 {
lab=VSS}
N 110 270 170 270 {
lab=LADOUT}
N 110 250 230 250 {
lab=MUXOUT}
N 170 270 180 270 {
lab=LADOUT}
N -210 -110 -190 -110 {
lab=SEL0}
N -210 -90 -190 -90 {
lab=SEL1}
C {tt_um_patdeegan_anamux.sym} 940 -420 0 0 {name=x1
schematic=tt_um_patdeegan_anamux_parax
spice_sym_def="tcleval(.include [file normalize extracted/tt_um_patdeegan_anamux_parax.spice])"
tclcommand="textwindow [file normalize extracted/tt_um_patdeegan_anamux_parax.spice]"
}
C {devices/lab_pin.sym} 790 -130 0 0 {name=p46 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 790 -150 0 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1270 -190 0 0 {name=R6
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1270 -130 2 0 {name=p48 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 770 -540 0 0 {name=p4 sig_type=std_logic lab=SEL1
}
C {devices/lab_pin.sym} 770 -560 0 0 {name=p2 sig_type=std_logic lab=SEL0
}
C {devices/lab_pin.sym} 1120 -240 2 0 {name=p1 sig_type=std_logic lab=VRES}
C {devices/lab_pin.sym} 1310 -220 2 0 {name=p3 sig_type=std_logic lab=RINGOUTPX}
C {devices/res.sym} 1210 -170 0 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1210 -110 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1150 -150 0 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 1150 -90 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1200 -200 0 0 {name=p7 sig_type=std_logic lab=MUXOUTPX}
C {devices/lab_wire.sym} 1170 -180 0 0 {name=p8 sig_type=std_logic lab=LADOUTPX}
C {devices/lab_pin.sym} 790 -620 0 0 {name=p9 sig_type=std_logic lab=RSEL0
}
C {devices/lab_pin.sym} 790 -600 0 0 {name=p10 sig_type=std_logic lab=RSEL1
}
C {devices/lab_pin.sym} 790 -580 0 0 {name=p11 sig_type=std_logic lab=RSEL2}
C {sky130_fd_pr/corner.sym} 275 -800 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 275 -950 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
* .options savecurrents

.param VCC = 1.8
.param SRCRES = 1k
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.include ../extracted/simplecounter_parax.spice
.include stimuli_tb_anamux.cir
.control
save all
* op
* write tb_anamux.raw
* set appendwrite
tran 1n 200n uic
write tb_anamux.raw
* quit 0
.endc
"}
C {devices/launcher.sym} 880 -890 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_anamux.raw tran"
}
C {devices/lab_pin.sym} 790 -520 0 0 {name=p12 sig_type=std_logic lab=EN_COUNTER
}
C {devices/lab_pin.sym} 790 -500 0 0 {name=p13 sig_type=std_logic lab=EN_RING
}
C {devices/lab_pin.sym} -190 320 0 0 {name=p14 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -190 300 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/res.sym} 290 260 0 0 {name=R3
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 290 320 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 -90 0 0 {name=p17 sig_type=std_logic lab=SEL1
}
C {devices/lab_pin.sym} -210 -110 0 0 {name=p18 sig_type=std_logic lab=SEL0
}
C {devices/lab_pin.sym} 140 210 2 0 {name=p19 sig_type=std_logic lab=VRES}
C {devices/lab_pin.sym} 330 230 2 0 {name=p20 sig_type=std_logic lab=RINGOUT}
C {devices/res.sym} 230 280 0 0 {name=R4
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 230 340 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {devices/res.sym} 170 300 0 0 {name=R5
value=100k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 170 360 2 0 {name=p22 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 250 0 0 {name=p23 sig_type=std_logic lab=MUXOUT}
C {devices/lab_wire.sym} 180 270 0 0 {name=p24 sig_type=std_logic lab=LADOUT}
C {devices/lab_pin.sym} -190 -170 0 0 {name=p25 sig_type=std_logic lab=RSEL0
}
C {devices/lab_pin.sym} -190 -150 0 0 {name=p26 sig_type=std_logic lab=RSEL1
}
C {devices/lab_pin.sym} -190 -130 0 0 {name=p27 sig_type=std_logic lab=RSEL2}
C {devices/lab_pin.sym} -190 -70 0 0 {name=p28 sig_type=std_logic lab=EN_COUNTER
}
C {devices/lab_pin.sym} -190 -50 0 0 {name=p29 sig_type=std_logic lab=EN_RING
}
C {/home/ttuser/vmswap/tt09-analogmux/xschem/tt_um_patdeegan_anamux.sym} -40 30 0 0 {name=x2}
