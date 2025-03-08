v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -120 380 -120 {
lab=vo_10}
N -500 -200 -500 -160 {
lab=vpb}
N -500 -320 -500 -260 {
lab=vdd}
N -500 -100 -500 -20 {
lab=vss}
N -500 -130 -500 -100 {
lab=vss}
N -500 -260 -500 -230 {
lab=vdd}
N -560 -230 -540 -230 {
lab=vpb}
N -560 -230 -560 -190 {
lab=vpb}
N -560 -190 -500 -190 {
lab=vpb}
N -720 -130 -540 -130 {
lab=vctrl}
N 460 -120 500 -120 {
lab=vo_9}
N 700 -120 760 -120 {
lab=vo_7}
N 840 -120 880 -120 {
lab=vo_6}
N 580 -120 620 -120 {
lab=vo_8}
N 960 -120 1000 -120 {
lab=vo_5}
N 1080 -120 1140 -120 {
lab=vo_4}
N 1220 -120 1260 -120 {
lab=vo_3}
N 1340 -120 1380 -120 {
lab=vo_2}
N 1460 -120 1520 -120 {
lab=vo_1}
N 1600 -120 1640 -120 {
lab=vo_0}
N 1720 -120 1760 -120 {
lab=vo_12}
N 1760 -200 1760 -120 {
lab=vo_12}
N 40 -120 100 -120 {
lab=vo_12}
N 40 -340 40 -120 {
lab=vo_12}
N 40 -340 1760 -340 {
lab=vo_12}
N -300 -260 -300 -230 {
lab=vdd}
N -300 -320 -300 -260 {
lab=vdd}
N -500 -180 -380 -180 {
lab=vpb}
N -380 -230 -380 -180 {
lab=vpb}
N -380 -230 -340 -230 {
lab=vpb}
N -300 -200 -300 -120 {
lab=vstarve}
N 140 -260 140 -160 {
lab=vstarve}
N 1760 -340 1760 -200 {
lab=vo_12}
N 140 -260 1680 -260 {
lab=vstarve}
N 1680 -260 1680 -160 {
lab=vstarve}
N 1560 -260 1560 -160 {
lab=vstarve}
N 1420 -260 1420 -160 {
lab=vstarve}
N 1300 -260 1300 -160 {
lab=vstarve}
N 1180 -260 1180 -160 {
lab=vstarve}
N 1040 -260 1040 -160 {
lab=vstarve}
N 920 -260 920 -160 {
lab=vstarve}
N 800 -260 800 -160 {
lab=vstarve}
N 660 -260 660 -160 {
lab=vstarve}
N 540 -260 540 -160 {
lab=vstarve}
N 420 -260 420 -160 {
lab=vstarve}
N 280 -260 280 -160 {
lab=vstarve}
N 140 -80 140 20 {
lab=vss}
N 140 20 1680 20 {
lab=vss}
N 1680 -80 1680 20 {
lab=vss}
N 1560 -80 1560 20 {
lab=vss}
N 1420 -80 1420 20 {
lab=vss}
N 1300 -80 1300 20 {
lab=vss}
N 1180 -80 1180 20 {
lab=vss}
N 1040 -80 1040 20 {
lab=vss}
N 920 -80 920 20 {
lab=vss}
N 800 -80 800 20 {
lab=vss}
N 660 -80 660 20 {
lab=vss}
N 540 -80 540 20 {
lab=vss}
N 420 -80 420 20 {
lab=vss}
N 280 -80 280 20 {
lab=vss}
N 1520 140 1520 170 {
lab=vss}
N 1520 170 1520 240 {
lab=vss}
N 1420 140 1480 140 {
lab=vstart}
N 1520 80 1520 110 {
lab=vo_0}
N 1520 80 1620 80 {
lab=vo_0}
N 180 -120 210 -120 {
lab=vo_5}
N -60 -320 -60 -300 {
lab=vdd}
N -300 -120 -160 -120 {
lab=vstarve}
N -60 -300 -60 -260 {
lab=vdd}
N -60 -200 -60 -120 {
lab=vstarve}
N -160 -120 -60 -120 {
lab=vstarve}
N 220 -120 240 -120 {
lab=vo_11}
N 220 -160 220 -120 {
lab=vo_11}
N -160 80 -100 80 {
lab=vo_12}
N -340 80 -240 80 {
lab=vo}
N -100 -230 -80 -230 {
lab=vss}
N -100 -260 -100 -230 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} -520 -130 0 0 {name=M1
W=0.5
L=0.6
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
C {sky130_fd_pr/pfet_01v8.sym} -520 -230 0 0 {name=M2
W=2.0
L=0.15
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
C {devices/ipin.sym} -720 -130 0 0 {name=p1 lab=vctrl}
C {devices/iopin.sym} -740 -320 0 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -740 -260 0 0 {name=p6 lab=vss}
C {devices/lab_wire.sym} -500 -320 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -560 -190 0 0 {name=p2 sig_type=std_logic lab=vpb}
C {devices/lab_wire.sym} -500 -20 0 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 40 -340 0 0 {name=p7 sig_type=std_logic lab=vo_12}
C {devices/lab_wire.sym} 360 -120 0 0 {name=p8 sig_type=std_logic lab=vo_10}
C {devices/code.sym} -1150 -590 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/simulator_commands_shown.sym} -1220 -290 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=true 
value="
.param VCC=1.8
.options savecurrents
vvss vss 0 dc 0
vvdd vdd 0 dc VCC
**** vvctrl vctrl 0 dc 0.9
vvctrl vctrl 0 PWL(0 0.9 100p 0.9 1000n 1.5)
vvstart vstart 0 PWL(0 1.8 100p 1.8 200p 0.0)
vvstarve2 vstarve2 0 dc 1.8


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
C {devices/lab_wire.sym} 490 -120 0 0 {name=p9 sig_type=std_logic lab=vo_9}
C {devices/lab_wire.sym} 740 -120 0 0 {name=p10 sig_type=std_logic lab=vo_7}
C {devices/lab_wire.sym} 870 -120 0 0 {name=p11 sig_type=std_logic lab=vo_6}
C {devices/lab_wire.sym} 600 -120 0 0 {name=p12 sig_type=std_logic lab=vo_8}
C {devices/lab_wire.sym} 980 -120 0 0 {name=p13 sig_type=std_logic lab=vo_5}
C {devices/lab_wire.sym} 1120 -120 0 0 {name=p14 sig_type=std_logic lab=vo_4}
C {devices/lab_wire.sym} 1250 -120 0 0 {name=p15 sig_type=std_logic lab=vo_3}
C {devices/lab_wire.sym} 1360 -120 0 0 {name=p16 sig_type=std_logic lab=vo_2}
C {devices/lab_wire.sym} 1500 -120 0 0 {name=p17 sig_type=std_logic lab=vo_1}
C {devices/lab_wire.sym} 1630 -120 0 0 {name=p18 sig_type=std_logic lab=vo_0}
C {sky130_stdcells/inv_0p25.sym} 140 -120 0 1 {name=x13 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 210 -120 0 0 {name=p20 sig_type=std_logic lab=vo_5}
C {sky130_fd_pr/pfet_01v8.sym} -320 -230 0 0 {name=M3
W=2.0
L=0.15
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
C {devices/lab_wire.sym} -300 -320 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -300 -120 0 0 {name=p21 sig_type=std_logic lab=vstarve}
C {devices/lab_wire.sym} 140 -260 0 0 {name=p22 sig_type=std_logic lab=vstarve}
C {devices/lab_wire.sym} 140 20 0 0 {name=p23 sig_type=std_logic lab=vss}
C {devices/ipin.sym} 1420 140 0 0 {name=p24 lab=vstart}
C {sky130_fd_pr/nfet_01v8.sym} 1500 140 0 0 {name=M4
W=3.0
L=0.15
nf=6 
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
C {devices/lab_wire.sym} 1520 240 0 0 {name=p25 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 1620 80 0 0 {name=p26 sig_type=std_logic lab=vo_0}
C {sky130_stdcells/inv_0p25.sym} 1680 -120 0 1 {name=x12 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} -60 -320 0 0 {name=p27 sig_type=std_logic lab=vdd}
C {sky130_stdcells/inv_0p25.sym} 1560 -120 0 1 {name=x1 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_0p25.sym} 1420 -120 0 1 {name=x2 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_0p25.sym} 1300 -120 0 1 {name=x3 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 220 -160 0 0 {name=p29 sig_type=std_logic lab=vo_11}
C {sky130_stdcells/inv_0p25.sym} 1180 -120 0 1 {name=x4 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_0p25.sym} 1040 -120 0 1 {name=x5 VGND=vss VNB=vss VPB=vstarve VPWR=vstarve prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} -200 80 0 1 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} -100 80 0 0 {name=p30 sig_type=std_logic lab=vo_12}
C {devices/opin.sym} -740 80 0 0 {name=p31 lab=vo}
C {devices/lab_wire.sym} -340 80 0 0 {name=p32 sig_type=std_logic lab=vo}
C {sky130_fd_pr/res_xhigh_po.sym} -60 -230 0 0 {name=R3
W=0.35
L=17.5
model=res_xhigh_po
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -100 -260 0 0 {name=p33 sig_type=std_logic lab=vss}
