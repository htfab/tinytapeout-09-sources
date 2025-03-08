v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1355 -370 2495 310 {flags=graph
y1=-0.0012
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-06
x2=5.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6 7 8 9 8"
node="out
en1
en2
en3
en4
outpx"}
B 2 1305 380 2445 1060 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-06
x2=5.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6 7 8 9 8"
node="out
en1
en2
en3
en4
outpx"}
B 2 2635 -560 3775 120 {flags=graph
y1=-0.23
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=5e-06
x2=5.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 6 6 6"
node="en4
nen4;\\"nen4 0.2 -\\""}
N -430 -600 -430 -590 {
lab=VSS}
N -430 -665 -395 -665 {
lab=#net1}
N -430 -665 -430 -660 {
lab=#net1}
N -430 -260 -430 -250 {
lab=VSS}
N -430 -325 -395 -325 {
lab=#net2}
N -430 -325 -430 -320 {
lab=#net2}
N -430 -480 -430 -470 {
lab=VSS}
N -430 -545 -395 -545 {
lab=#net3}
N -430 -545 -430 -540 {
lab=#net3}
N -440 -370 -440 -360 {
lab=VSS}
N -440 -435 -405 -435 {
lab=#net4}
N -440 -435 -440 -430 {
lab=#net4}
N -395 -325 -370 -325 {
lab=#net2}
N -310 -325 -285 -325 {
lab=IN4}
N -405 -435 -380 -435 {
lab=#net4}
N -320 -435 -285 -435 {
lab=IN3}
N -395 -545 -375 -545 {
lab=#net3}
N -315 -545 -285 -545 {
lab=IN2}
N -395 -665 -380 -665 {
lab=#net1}
N -320 -665 -285 -665 {
lab=IN1}
N 270 165 290 165 {
lab=EN1}
N 220 175 290 175 {
lab=nEN1}
N 270 195 290 195 {
lab=EN2}
N 220 205 290 205 {
lab=nEN2}
N 270 225 290 225 {
lab=EN3}
N 220 235 290 235 {
lab=nEN3}
N 270 255 290 255 {
lab=EN4}
N 220 265 290 265 {
lab=nEN4}
N 260 285 290 285 {
lab=IN1}
N 260 305 290 305 {
lab=IN2}
N 260 325 290 325 {
lab=IN3}
N 260 345 290 345 {
lab=IN4}
N 460 285 500 285 {
lab=OUTPX}
N 460 305 500 305 {
lab=OUTPX}
N 460 325 500 325 {
lab=OUTPX}
N 460 345 500 345 {
lab=OUTPX}
N 460 175 490 175 {
lab=VCC}
N 460 195 490 195 {
lab=VSS}
N 500 285 500 305 {
lab=OUTPX}
N 500 305 500 325 {
lab=OUTPX}
N 500 325 500 345 {
lab=OUTPX}
N 510 435 510 465 {
lab=VSS}
N 500 345 510 345 {
lab=OUTPX}
N 510 345 510 375 {
lab=OUTPX}
N 10 -20 10 20 {
lab=nEN1}
N 50 -20 50 20 {
lab=EN1}
N 90 -20 90 20 {
lab=nEN2}
N 130 -20 130 20 {
lab=EN2}
N 170 -20 170 20 {
lab=nEN3}
N 210 -20 210 20 {
lab=EN3}
N 250 -20 250 20 {
lab=nEN4}
N 290 -20 290 20 {
lab=EN4}
N -60 -5 -15 -5 {
lab=VCC}
N -15 -5 -15 0 {
lab=VCC}
N -15 0 -10 -0 {
lab=VCC}
N -60 10 -10 10 {
lab=VSS}
N -60 10 -60 15 {
lab=VSS}
N 10 -80 10 -50 {
lab=SEL0}
N 70 -80 70 -50 {
lab=SEL1}
C {devices/vsource.sym} -430 -630 0 0 {name=V2 value="sin(0.9 0.9 250k)" savecurrent=false}
C {devices/lab_pin.sym} -285 -665 2 0 {name=p6 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} -430 -590 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/corner.sym} 1015 -620 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/simulator_commands.sym} 995 -810 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false
place=end
value="* ngspice commands
* .options savecurrents
.param VCC = 1.8
.param SRCRES = 1k
.include stimuli_tb_4to1mux.cir
.control
save all
op
write tb_4to1muxraw
set appendwrite
tran 10n 33u
write tb_4to1mux.raw
quit 0
.endc
"}
C {devices/vsource.sym} -430 -290 0 0 {name=V3 value="sin(0.9 0.9 8Meg)" savecurrent=false}
C {devices/lab_pin.sym} -285 -325 2 0 {name=p7 sig_type=std_logic lab=IN4}
C {devices/lab_pin.sym} -430 -250 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -430 -510 0 0 {name=V5 value="sin(0.9 0.9 500k)" savecurrent=false}
C {devices/lab_pin.sym} -285 -545 2 0 {name=p24 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} -430 -470 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -440 -400 0 0 {name=V6 value="sin(0.9 0.9 1Meg)" savecurrent=false}
C {devices/lab_pin.sym} -285 -435 2 0 {name=p26 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} -440 -360 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/launcher.sym} 900 40 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_4to1mux.raw tran"
}
C {devices/res.sym} -350 -665 1 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -345 -545 1 0 {name=R3
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -350 -435 1 0 {name=R4
value=1
footprint=1206
device=resistor
m=1}
C {devices/res.sym} -340 -325 1 0 {name=R5
value=1
footprint=1206
device=resistor
m=1}
C {passgatex4.sym} 270 365 0 0 {name=x6
schematic=passgatex4_parax
spice_sym_def="tcleval(.include [file normalize extracted/passgatex4_parax.spice])"
tclcommand="textwindow [file normalize extracted/passgatex4_parax.spice]"
}
C {devices/lab_pin.sym} 270 165 0 0 {name=p10 sig_type=std_logic lab=EN1
}
C {devices/lab_pin.sym} 220 175 0 0 {name=p13 sig_type=std_logic lab=nEN1
}
C {devices/lab_pin.sym} 270 195 0 0 {name=p32 sig_type=std_logic lab=EN2
}
C {devices/lab_pin.sym} 220 205 0 0 {name=p34 sig_type=std_logic lab=nEN2
}
C {devices/lab_pin.sym} 270 225 0 0 {name=p35 sig_type=std_logic lab=EN3}
C {devices/lab_pin.sym} 220 235 0 0 {name=p38 sig_type=std_logic lab=nEN3
}
C {devices/lab_pin.sym} 270 255 0 0 {name=p39 sig_type=std_logic lab=EN4
}
C {devices/lab_pin.sym} 220 265 0 0 {name=p40 sig_type=std_logic lab=nEN4
}
C {devices/lab_pin.sym} 260 285 0 0 {name=p41 sig_type=std_logic lab=IN1}
C {devices/lab_pin.sym} 260 305 0 0 {name=p42 sig_type=std_logic lab=IN2}
C {devices/lab_pin.sym} 260 325 0 0 {name=p43 sig_type=std_logic lab=IN3}
C {devices/lab_pin.sym} 260 345 0 0 {name=p44 sig_type=std_logic lab=IN4}
C {devices/lab_pin.sym} 500 285 2 0 {name=p45 sig_type=std_logic lab=OUTPX}
C {devices/lab_pin.sym} 490 175 2 0 {name=p46 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 490 195 2 0 {name=p47 sig_type=std_logic lab=VSS}
C {devices/res.sym} 510 405 0 0 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} 510 465 2 0 {name=p48 sig_type=std_logic lab=VSS}
C {passgatesCtrl.sym} -190 -40 0 0 {name=x7
schematic=passgatesctrl_parax
spice_sym_def="tcleval(.include [file normalize extracted/passgatesCtrl_parax.spice])"
tclcommand="textwindow [file normalize extracted/passgatesCtrl_parax.spice]"}
C {devices/lab_pin.sym} 50 20 3 0 {name=p1 sig_type=std_logic lab=EN1
}
C {devices/lab_pin.sym} 10 20 3 0 {name=p16 sig_type=std_logic lab=nEN1
}
C {devices/lab_pin.sym} 130 20 3 0 {name=p17 sig_type=std_logic lab=EN2
}
C {devices/lab_pin.sym} 90 20 3 0 {name=p18 sig_type=std_logic lab=nEN2
}
C {devices/lab_pin.sym} 210 20 3 0 {name=p19 sig_type=std_logic lab=EN3
}
C {devices/lab_pin.sym} 170 20 3 0 {name=p20 sig_type=std_logic lab=nEN3
}
C {devices/lab_pin.sym} 290 20 3 0 {name=p21 sig_type=std_logic lab=EN4
}
C {devices/lab_pin.sym} 250 20 3 0 {name=p22 sig_type=std_logic lab=nEN4}
C {devices/lab_pin.sym} -60 -5 0 0 {name=p23 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} -60 15 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 10 -80 1 0 {name=p2 sig_type=std_logic lab=SEL0
}
C {devices/lab_pin.sym} 70 -80 1 0 {name=p3 sig_type=std_logic lab=SEL1
}
