v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -440 70 -440 100 {
lab=vss}
N -300 70 -300 100 {
lab=vss}
N -440 20 -440 40 {
lab=#net1}
N -300 20 -300 40 {
lab=vnb2}
N -450 -10 -440 -10 {
lab=vss}
N -450 -10 -450 100 {
lab=vss}
N -450 100 -440 100 {
lab=vss}
N -300 -10 -290 -10 {
lab=vss}
N -290 -10 -290 100 {
lab=vss}
N -300 100 -290 100 {
lab=vss}
N -440 -160 -440 -140 {
lab=#net2}
N -300 -160 -300 -140 {
lab=vpb2}
N -440 -220 -440 -190 {
lab=vdd}
N -300 -220 -300 -190 {
lab=vdd}
N -450 -110 -440 -110 {
lab=vdd}
N -450 -220 -450 -110 {
lab=vdd}
N -450 -220 -440 -220 {
lab=vdd}
N -300 -110 -290 -110 {
lab=vdd}
N -290 -220 -290 -110 {
lab=vdd}
N -300 -220 -290 -220 {
lab=vdd}
N -400 -10 -340 -10 {
lab=vnb}
N -520 -50 -390 -50 {
lab=vnb3}
N -440 -50 -440 -40 {
lab=vnb3}
N -400 -110 -340 -110 {
lab=vpb}
N -440 -80 -440 -70 {
lab=vpb3}
N -520 -70 -440 -70 {lab=vpb3}
N -1100 100 -1100 140 {
lab=vss}
N -1100 70 -1100 100 {
lab=vss}
N -1100 40 -1050 40 {
lab=vnb}
N -1050 40 -1050 70 {
lab=vnb}
N -1060 70 -1050 70 {
lab=vnb}
N -1100 20 -1100 40 {
lab=vnb}
N -300 30 -100 30 {
lab=vnb2}
N -100 20 -100 30 {
lab=vnb2}
N -100 -40 -100 -10 {
lab=vdd}
N -60 -10 -20 -10 {
lab=down}
N -100 -80 -100 -40 {
lab=vdd}
N -300 -80 -300 -40 {
lab=out}
N -300 -60 -260 -60 {
lab=out}
N -180 -110 -180 -80 {
lab=vss}
N -180 -80 -180 -60 {
lab=vss}
N -180 -150 -180 -140 {
lab=vpb2}
N -300 -150 -180 -150 {
lab=vpb2}
N -140 -110 -20 -110 {
lab=upb}
N -1100 -100 -1100 -40 {
lab=vdd}
N -440 -280 -440 -220 {
lab=vdd}
N -300 -280 -300 -220 {
lab=vdd}
N -440 100 -440 140 {
lab=vss}
N -290 100 -290 140 {
lab=vss}
N -400 70 -340 70 {
lab=vnb3}
N -390 -50 -390 70 {
lab=vnb3}
N -1050 40 -1030 40 {
lab=vnb}
N -400 -190 -340 -190 {
lab=vpb3}
N -390 -190 -390 -70 {
lab=vpb3}
N -440 -70 -390 -70 {
lab=vpb3}
N -920 -100 -920 -40 {
lab=vdd}
N -920 -40 -920 -10 {
lab=vdd}
N -880 -10 -870 -10 {
lab=vpb}
N -870 -10 -870 20 {
lab=vpb}
N -920 20 -870 20 {
lab=vpb}
N -920 20 -920 40 {
lab=vpb}
N -920 100 -920 140 {
lab=vss}
N -870 20 -850 20 {
lab=vpb}
N -920 280 -860 280 {
lab=vdd}
N -920 300 -860 300 {
lab=G_vnb}
N -920 320 -860 320 {
lab=G_vpb}
N -920 340 -860 340 {
lab=vss}
N -1100 -40 -1100 -10 {
lab=vdd}
N -920 70 -920 100 {
lab=vss}
N -880 70 -850 70 {
lab=G_vnb}
N -1060 -10 -1030 -10 {
lab=G_vpb}
N -780 100 -780 140 {
lab=vss}
N -780 70 -780 100 {
lab=vss}
N -740 70 -710 70 {
lab=G_vnb}
N -660 -100 -660 -40 {
lab=vdd}
N -660 -40 -660 -10 {
lab=vdd}
N -620 -10 -590 -10 {
lab=G_vpb}
N -660 20 -660 60 {
lab=vnb3}
N -660 60 -590 60 {
lab=vnb3}
N -780 -60 -780 40 {
lab=vpb3}
N -780 -60 -720 -60 {
lab=vpb3}
C {sky130_fd_pr/nfet_01v8.sym} -320 70 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} -320 -10 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} -420 -10 0 1 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} -420 70 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} -160 -110 0 1 {name=M5
W=0.45
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -320 -110 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} -320 -190 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} -420 -110 0 1 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} -420 -190 0 1 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} -80 -10 0 1 {name=M10
W=0.60
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -1080 70 0 1 {name=M11
W=0.45
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
C {devices/ipin.sym} -20 -110 0 1 {name=p1 lab=upb}
C {devices/ipin.sym} -20 -80 0 1 {name=p2 lab=up}
C {devices/ipin.sym} -20 -10 0 1 {name=p3 lab=down}
C {devices/ipin.sym} -20 20 0 1 {name=p4 lab=downb}
C {devices/opin.sym} -260 -60 0 0 {name=p5 lab=out}
C {devices/iopin.sym} -760 -240 0 0 {name=p6 lab=vdd}
C {devices/iopin.sym} -760 -220 0 0 {name=p7 lab=vss}
C {devices/lab_wire.sym} -1100 -100 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -440 -280 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -300 -280 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -100 -80 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -440 140 0 0 {name=p14 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -290 140 0 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -1100 140 0 0 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -180 -60 0 0 {name=p17 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -350 -110 0 0 {name=p18 sig_type=std_logic lab=vpb}
C {devices/lab_wire.sym} -350 -10 0 0 {name=p19 sig_type=std_logic lab=vnb
}
C {devices/lab_wire.sym} -190 -150 0 0 {name=p20 sig_type=std_logic lab=vpb2}
C {devices/lab_wire.sym} -190 30 0 0 {name=p21 sig_type=std_logic lab=vnb2}
C {devices/code.sym} -1210 -520 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/simulator_commands_shown.sym} -1620 -350 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=true 
value="
.param VCC=1.8
.options savecurrents
vvss vss 0 dc 0
vvdd vdd 0 dc VCC
**** vvctrl vctrl 0 dc 0.9
****vvctrl vctrl 0 PWL(0 0.9 100p 0.9 1000n 1.5)
vup up vss PULSE(0 1.8 0n 1n 1n 5n 10n)
vupb upb vss PULSE(1.8 0n 0n 1n 1n 5n 10n)
vdown down vss PULSE(0.0 0.0 0n 1n 1n 5n 10n) 
vdownb downb vss PULSE(1.8 1.8 0n 1n 1n 5n 10n)

**** .ic v(vo_0)=1.8 v(vo_12)=0.0

**** interactive sim
.control
  remzerovec
  save all
  tran 100p 1000n
  remzerovec
  write untitled.raw
.endc
"}
C {devices/lab_wire.sym} -1030 40 0 0 {name=p22 sig_type=std_logic lab=vnb
}
C {devices/lab_wire.sym} -390 -50 0 0 {name=p23 sig_type=std_logic lab=vnb3


}
C {devices/lab_wire.sym} -460 -70 0 0 {name=p24 sig_type=std_logic lab=vpb3



}
C {sky130_fd_pr/pfet_01v8.sym} -900 -10 0 1 {name=M12
W=0.45
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
C {devices/lab_wire.sym} -920 140 0 0 {name=p25 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -850 20 2 1 {name=p26 sig_type=std_logic lab=vpb
}
C {devices/lab_wire.sym} -920 -100 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {bias.sym} -1070 310 0 0 {name=x2}
C {devices/lab_wire.sym} -860 280 0 0 {name=p31 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -860 340 0 0 {name=p32 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -860 300 0 0 {name=p33 sig_type=std_logic lab=G_vnb}
C {devices/lab_wire.sym} -860 320 0 0 {name=p34 sig_type=std_logic lab=G_vpb}
C {sky130_fd_pr/pfet_01v8.sym} -1080 -10 0 1 {name=M13
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
C {sky130_fd_pr/nfet_01v8.sym} -900 70 0 1 {name=M14
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
C {devices/lab_wire.sym} -850 70 0 0 {name=p35 sig_type=std_logic lab=G_vnb}
C {devices/lab_wire.sym} -1030 -10 0 0 {name=p36 sig_type=std_logic lab=G_vpb}
C {devices/lab_wire.sym} -780 140 0 0 {name=p12 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -760 70 0 1 {name=M15
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
C {devices/lab_wire.sym} -710 70 0 0 {name=p13 sig_type=std_logic lab=G_vnb}
C {devices/lab_wire.sym} -660 -100 0 0 {name=p37 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -640 -10 0 1 {name=M16
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
C {devices/lab_wire.sym} -590 -10 0 0 {name=p38 sig_type=std_logic lab=G_vpb}
C {devices/lab_wire.sym} -720 -60 0 0 {name=p39 sig_type=std_logic lab=vpb3



}
C {devices/lab_wire.sym} -590 60 0 0 {name=p40 sig_type=std_logic lab=vnb3


}
