v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -80 -140 0 -140 {
lab=vdd}
N -80 40 0 40 {
lab=vdd}
N -80 -160 0 -160 {
lab=vref}
N -80 -120 0 -120 {
lab=rstb}
N -80 20 0 20 {
lab=vin}
N -80 60 0 60 {
lab=rstb}
N 180 -160 280 -160 {
lab=#net1}
N 180 20 280 20 {
lab=#net2}
N 360 -160 390 -160 {
lab=up}
N 390 -160 390 -90 {
lab=up}
N 390 -90 420 -90 {
lab=up}
N 360 20 390 20 {
lab=down}
N 390 -50 390 20 {
lab=down}
N 390 -50 420 -50 {
lab=down}
N 540 -70 600 -70 {
lab=rstb}
N 180 -140 190 -140 {
lab=upb}
N 180 40 190 40 {
lab=downb}
N 190 -140 190 -100 {
lab=upb}
N 190 -100 260 -100 {
lab=upb}
N 190 40 190 90 {
lab=downb}
N 190 90 260 90 {
lab=downb}
C {sky130_stdcells/dfrbp_1.sym} 90 -140 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfrbp_1.sym} 90 40 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_8.sym} 320 -160 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/buf_8.sym} 320 20 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 480 -70 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/ipin.sym} -80 -160 0 0 {name=p1 lab=vref}
C {devices/ipin.sym} -80 20 0 0 {name=p2 lab=vin}
C {devices/iopin.sym} -170 -240 0 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -170 -220 0 0 {name=p4 lab=vss}
C {devices/opin.sym} 390 -160 0 0 {name=p5 lab=up}
C {devices/opin.sym} 390 20 0 0 {name=p6 lab=down}
C {devices/lab_wire.sym} -50 -140 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -50 -120 0 0 {name=p9 sig_type=std_logic lab=rstb}
C {devices/lab_wire.sym} -50 60 0 0 {name=p11 sig_type=std_logic lab=rstb}
C {devices/lab_wire.sym} -50 40 0 0 {name=p12 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} 600 -70 0 0 {name=p8 sig_type=std_logic lab=rstb}
C {devices/opin.sym} 260 90 0 0 {name=p10 lab=downb}
C {devices/opin.sym} 260 -100 0 0 {name=p13 lab=upb}
