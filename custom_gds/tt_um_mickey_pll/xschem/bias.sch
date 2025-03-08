v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -70 20 -40 {
lab=#net1}
N 20 -180 20 -130 {
lab=vdd}
N -20 -180 20 -180 {
lab=vdd}
N 60 -10 120 -10 {
lab=vpb}
N 60 80 120 80 {
lab=vnb}
N 20 20 20 50 {
lab=vnb}
N 160 20 160 50 {
lab=vpb}
N -20 160 20 160 {
lab=vss}
N 20 110 20 160 {
lab=vss}
N 20 80 20 110 {
lab=vss}
N 160 80 160 110 {
lab=vss}
N 20 160 160 160 {
lab=vss}
N 160 110 160 160 {
lab=vss}
N 20 40 70 40 {
lab=vnb}
N 70 40 70 80 {
lab=vnb}
N 110 -10 110 30 {
lab=vpb}
N 110 30 160 30 {
lab=vpb}
N 160 -180 160 -40 {
lab=vdd}
N 20 -180 160 -180 {
lab=vdd}
N -40 30 20 30 {
lab=vnb}
N 160 40 220 40 {
lab=vpb}
N 160 -40 160 -10 {
lab=vdd}
N 0 -180 -0 -100 {
lab=vdd}
N 460 80 460 110 {
lab=vss}
N 290 160 460 160 {
lab=vss}
N 460 110 460 160 {
lab=vss}
N 390 -10 420 -10 {
lab=vpb}
N 390 -50 390 -10 {
lab=vpb}
N 100 -50 260 -50 {
lab=vpb}
N 100 -50 100 -10 {
lab=vpb}
N 460 20 460 50 {
lab=#net2}
N 460 -180 460 -40 {
lab=vdd}
N 290 -180 460 -180 {
lab=vdd}
N 460 -40 460 -10 {
lab=vdd}
N 410 80 420 80 {
lab=#net2}
N 410 40 410 80 {
lab=#net2}
N 410 40 460 40 {
lab=#net2}
N 160 -180 290 -180 {
lab=vdd}
N 160 160 290 160 {
lab=vss}
N 260 -50 390 -50 {
lab=vpb}
N 380 80 410 80 {
lab=#net2}
N 380 -20 380 80 {
lab=#net2}
N 320 -20 340 -20 {
lab=vdd}
N 320 -180 320 -20 {
lab=vdd}
N 340 10 340 30 {
lab=vnb}
N 100 80 100 120 {
lab=vnb}
N 100 120 340 120 {
lab=vnb}
N 340 30 340 120 {
lab=vnb}
N -0 -10 20 -10 {
lab=vdd}
N 0 -100 0 -10 {
lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 140 80 0 0 {name=M1
W=1.80
L=0.60
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 40 80 0 1 {name=M2
W=1.80
L=0.60
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 140 -10 0 0 {name=M3
W=1.80
L=0.60
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 40 -10 0 1 {name=M4
W=7.20
L=0.60
nf=4
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -20 -180 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} -20 160 0 1 {name=p2 lab=vss}
C {devices/iopin.sym} -40 30 0 1 {name=p3 lab=vnb}
C {devices/iopin.sym} 220 40 0 0 {name=p4 lab=vpb}
C {devices/code.sym} -400 -240 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/simulator_commands_shown.sym} -640 60 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=true 
value="
.param VCC=1.8
.options savecurrents
vvss vss 0 dc 0
vvdd vdd 0 dc VCC
**** vvctrl vctrl 0 dc 0.9
****vvctrl vctrl 0 PWL(0 0.9 100p 0.9 1000n 1.5)

**** .ic v(vo_0)=1.8 v(vo_12)=0.0

**** interactive sim
.control
  remzerovec
  save all
  dc vvdd 1.0 2.2 0.05
  remzerovec
  write untitled.raw
.endc
"}
C {sky130_fd_pr/pfet_01v8.sym} 440 -10 0 0 {name=M5
W=1.80
L=0.60
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 80 0 0 {name=M6
W=0.45
L=1.50
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 360 -20 0 1 {name=M7
W=0.9
L=0.60
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 20 -100 0 0 {name=R1
L=2.000
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
