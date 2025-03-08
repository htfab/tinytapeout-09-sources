v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -260 170 -230 {
lab=in}
N 170 -230 170 -200 {
lab=in}
N 210 -200 210 -170 {
lab=vss}
N 210 -290 210 -260 {
lab=vdd}
N 210 -310 210 -290 {
lab=vdd}
N 210 -230 280 -230 {
lab=xxx}
C {title.sym} 170 -40 0 0 {name=l1 author="Stefan Schippers"}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 190 -200 0 0 {name=M1
L=0.15
W=1
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 190 -260 0 0 {name=M2
L=0.15
W=3.5
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
C {ipin.sym} 170 -230 0 0 {name=p1 lab=in
}
C {ipin.sym} 210 -170 0 0 {name=p2 lab=vss}
C {ipin.sym} 210 -310 0 0 {name=p3 lab=vdd}
C {opin.sym} 280 -230 0 0 {name=p4 lab=out}
