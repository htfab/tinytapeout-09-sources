v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -500 20 -380 20 {
lab=up}
N -500 40 -380 40 {
lab=upb}
N -500 60 -380 60 {
lab=down}
N -500 80 -380 80 {
lab=downb}
N -900 -20 -800 -20 {
lab=vref}
N -900 0 -800 -0 {
lab=vosc_16}
N -500 -20 -440 -20 {
lab=vdd}
N -500 0 -440 0 {
lab=vss}
N -80 20 -20 20 {
lab=vdd}
N -80 40 -20 40 {
lab=vss}
N 520 60 580 60 {
lab=vdd}
N 520 80 580 80 {
lab=vss}
N 520 100 580 100 {
lab=vosc}
N 380 380 420 380 {
lab=voscb}
N -520 380 -460 380 {
lab=vosc_16}
N 190 400 200 400 {
lab=vosc_2b}
N 190 400 190 420 {
lab=vosc_2b}
N 190 420 390 420 {
lab=vosc_2b}
N 380 400 390 400 {
lab=vosc_2b}
N 390 400 390 420 {
lab=vosc_2b}
N 160 380 200 380 {
lab=vosc_2}
N -60 380 -20 380 {
lab=vosc_4}
N -30 400 -20 400 {
lab=vosc_4b}
N -30 400 -30 420 {
lab=vosc_4b}
N -30 420 170 420 {
lab=vosc_4b}
N 160 400 170 400 {
lab=vosc_4b}
N 170 400 170 420 {
lab=vosc_4b}
N -250 400 -240 400 {
lab=vosc_8b}
N -250 400 -250 420 {
lab=vosc_8b}
N -250 420 -50 420 {
lab=vosc_8b}
N -60 400 -50 400 {
lab=vosc_8b}
N -50 400 -50 420 {
lab=vosc_8b}
N -470 400 -460 400 {
lab=vosc_16b}
N -470 400 -470 420 {
lab=vosc_16b}
N -470 420 -270 420 {
lab=vosc_16b}
N -280 400 -270 400 {
lab=vosc_16b}
N -270 400 -270 420 {
lab=vosc_16b}
N -280 380 -240 380 {
lab=vosc_8}
N 180 80 220 80 {
lab=vstart}
N 180 80 180 180 {
lab=vstart}
N 500 380 560 380 {
lab=vosc}
N -80 60 -20 60 {
lab=vcp}
N -20 60 40 60 {
lab=vcp}
N 40 -10 40 60 {
lab=vcp}
N 60 -10 60 60 {
lab=vctrl}
N 60 60 220 60 {
lab=vctrl}
N 80 -10 80 20 {
lab=vss}
C {cp7.sym} -230 50 0 0 {name=x1}
C {pfd.sym} -650 30 0 0 {name=x2}
C {vcoB.sym} 370 80 0 0 {name=x3}
C {devices/code.sym} -1380 -250 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/simulator_commands_shown.sym} -1450 50 0 0 {name=COMMANDS2
simulator=ngspice
only_toplevel=true 
value="
.param VCC=1.8
.options savecurrents
vvss vss 0 dc 0
vvdd vdd 0 dc VCC
**** vvctrl vctrl 0 dc 0.9
****vvctrl vctrl 0 PWL(0 0.9 100p 0.9 1000n 1.5)
vvstart vstart 0 PWL(0 1.8 100p 1.8 200p 0.0) dc 0
****vvstarve2 vstarve2 0 dc 1.8
vvref vref 0 PULSE(0.0 1.8 0n 1n 1n 80n 160n) dc 0

.ic v(vctrl)=0.8 v(vref)=0 v(vosc)=0

**** .ic v(vo_0)=1.8 v(vo_12)=0.0

**** interactive sim
.control
  remzerovec
  save all
  tran 100p 50000n
  remzerovec
  write untitled.raw
.endc
"}
C {devices/lab_wire.sym} -900 -20 0 0 {name=p1 sig_type=std_logic lab=vref}
C {devices/lab_wire.sym} -900 0 0 0 {name=p2 sig_type=std_logic lab=vosc_16}
C {devices/lab_wire.sym} -440 -20 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -440 0 0 0 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -440 20 0 0 {name=p5 sig_type=std_logic lab=up}
C {devices/lab_wire.sym} -440 40 0 0 {name=p6 sig_type=std_logic lab=upb}
C {devices/lab_wire.sym} -440 60 0 0 {name=p7 sig_type=std_logic lab=down}
C {devices/lab_wire.sym} -440 80 0 0 {name=p8 sig_type=std_logic lab=downb}
C {devices/lab_wire.sym} -20 20 0 0 {name=p9 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -20 40 0 0 {name=p10 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} -20 60 0 0 {name=p11 sig_type=std_logic lab=vcp}
C {devices/lab_wire.sym} 580 60 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 580 80 0 0 {name=p13 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 580 100 0 0 {name=p14 sig_type=std_logic lab=vosc}
C {devices/lab_wire.sym} 420 380 0 0 {name=p15 sig_type=std_logic lab=voscb}
C {devices/lab_wire.sym} -520 380 0 0 {name=p20 sig_type=std_logic lab=vosc_16
}
C {sky130_stdcells/dfxbp_1.sym} 290 390 0 1 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 70 390 0 1 {name=x9 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} -150 390 0 1 {name=x10 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} -370 390 0 1 {name=x11 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 390 420 2 1 {name=p24 sig_type=std_logic lab=vosc_2b}
C {devices/lab_wire.sym} 170 420 2 1 {name=p25 sig_type=std_logic lab=vosc_4b}
C {devices/lab_wire.sym} -50 420 2 1 {name=p26 sig_type=std_logic lab=vosc_8b}
C {devices/lab_wire.sym} -270 420 2 1 {name=p27 sig_type=std_logic lab=vosc_16b}
C {devices/lab_wire.sym} -270 380 1 0 {name=p16 sig_type=std_logic lab=vosc_8}
C {devices/lab_wire.sym} -50 380 1 0 {name=p17 sig_type=std_logic lab=vosc_4
}
C {devices/lab_wire.sym} 170 380 1 0 {name=p18 sig_type=std_logic lab=vosc_2
}
C {devices/lab_wire.sym} 180 180 0 0 {name=p19 sig_type=std_logic lab=vstart}
C {sky130_stdcells/clkinv_1.sym} 460 380 0 1 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_wire.sym} 560 380 0 0 {name=p21 sig_type=std_logic lab=vosc}
C {lpf.sym} 60 -160 3 1 {name=x5}
C {devices/lab_wire.sym} 200 60 0 0 {name=p22 sig_type=std_logic lab=vctrl}
C {devices/lab_wire.sym} 80 20 1 0 {name=p23 sig_type=std_logic lab=vss}
