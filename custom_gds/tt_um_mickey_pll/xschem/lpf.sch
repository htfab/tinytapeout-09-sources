v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 200 220 200 {
lab=vss}
N 220 160 220 200 {
lab=vss}
N 220 80 220 100 {
lab=#net1}
N 220 -0 220 20 {
lab=in}
N 220 -0 340 0 {
lab=in}
N 300 -0 300 20 {
lab=in}
N 300 80 300 200 {
lab=vss}
N 220 200 300 200 {
lab=vss}
N 120 0 220 0 {
lab=in}
N 400 0 440 0 {
lab=out}
N 180 50 200 50 {
lab=vss}
N 180 50 180 200 {
lab=vss}
C {devices/res.sym} 370 0 1 1 {name=R2
value=0.1
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 120 0 0 1 {name=p1 lab=in}
C {devices/iopin.sym} 120 200 0 1 {name=p2 lab=vss}
C {devices/iopin.sym} 440 0 0 0 {name=p3 lab=out}
C {sky130_fd_pr/res_high_po.sym} 220 50 0 0 {name=R1
W=0.690
L=20.35
model=res_high_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 50 2 0 {name=C1 model=cap_mim_m3_1 W=22.175 L=22.175 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 220 130 2 0 {name=C2 model=cap_mim_m3_1 W=22.175 L=22.175 MF=5 spiceprefix=X}
