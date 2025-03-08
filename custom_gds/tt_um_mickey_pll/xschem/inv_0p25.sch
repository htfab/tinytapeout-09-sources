v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -80 -0 -50 {
lab=VDD}
N -60 -50 -40 -50 {
lab=A}
N -60 -50 -60 50 {
lab=A}
N -60 50 -40 50 {
lab=A}
N 0 -20 -0 20 {
lab=Y}
N -0 50 0 80 {
lab=VSS}
N -0 -0 100 0 {
lab=Y}
N -160 0 -60 0 {
lab=A}
N -0 -120 0 -80 {
lab=VDD}
N -0 80 0 140 {
lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M1
W=0.65
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
C {devices/ipin.sym} -160 0 0 0 {name=p1 lab=A}
C {devices/iopin.sym} 0 -120 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 0 140 0 0 {name=p3 lab=VSS}
C {devices/opin.sym} 100 0 0 0 {name=p4 lab=Y}
C {sky130_fd_pr/pfet_01v8_hvt.sym} -20 -50 0 0 {name=M2
W=1
L=0.60
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_hvt
spiceprefix=X
}
