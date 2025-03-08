v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 450 -250 740 -250 {
lab=out}
N 610 -330 650 -330 {
lab=a}
N 610 -270 610 -250 {
lab=out}
N 750 -300 750 -250 {
lab=out}
N 550 -300 570 -300 {
lab=b}
N 550 -360 550 -300 {
lab=b}
N 550 -360 690 -360 {
lab=b}
N 580 -330 610 -330 {
lab=a}
N 450 -330 450 -310 {
lab=vdd}
N 450 -130 450 -110 {
lab=vss}
N 320 -250 450 -250 {
lab=out}
N 320 -310 450 -310 {
lab=vdd}
N 310 -310 320 -310 {
lab=vdd}
N 310 -250 320 -250 {
lab=out}
N 310 -280 340 -280 {
lab=vdd}
N 450 -280 490 -280 {
lab=vdd}
N 650 -330 710 -330 {
lab=a}
N 690 -360 750 -360 {
lab=b}
N 740 -250 750 -250 {
lab=out}
N 750 -250 800 -250 {
lab=out}
N 750 -330 790 -330 {
lab=vdd}
N 610 -300 670 -300 {
lab=vdd}
N 450 -220 470 -220 {
lab=vss}
N 470 -220 530 -220 {
lab=vss}
N 450 -160 530 -160 {
lab=vss}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 430 -160 0 0 {name=M1
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 430 -220 0 0 {name=M2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 430 -280 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {title.sym} 170 -40 0 0 {name=l1 author="Stefan Schippers"}
C {ipin.sym} 140 -280 0 0 {name=p1 lab=vdd}
C {ipin.sym} 140 -260 0 0 {name=p2 lab=a}
C {ipin.sym} 140 -240 0 0 {name=p3 lab=b}
C {ipin.sym} 140 -220 0 0 {name=p4 lab=vss}
C {opin.sym} 800 -250 0 0 {name=p5 lab=out}
C {lab_pin.sym} 450 -110 0 0 {name=p6 sig_type=std_logic lab=vss}
C {lab_pin.sym} 410 -160 0 0 {name=p7 sig_type=std_logic lab=a}
C {lab_pin.sym} 410 -220 0 0 {name=p8 sig_type=std_logic lab=b}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 290 -280 0 0 {name=M4
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 410 -280 0 0 {name=p9 sig_type=std_logic lab=b}
C {lab_pin.sym} 270 -280 0 0 {name=p10 sig_type=std_logic lab=a}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 730 -330 0 0 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 590 -300 0 0 {name=M6
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 580 -330 0 0 {name=p11 sig_type=std_logic lab=a}
C {lab_pin.sym} 550 -360 0 0 {name=p12 sig_type=std_logic lab=b}
C {lab_pin.sym} 450 -330 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 790 -330 0 1 {name=p14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 340 -280 0 1 {name=p15 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 490 -280 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 670 -300 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 530 -220 0 1 {name=p18 sig_type=std_logic lab=vss}
C {lab_pin.sym} 530 -160 0 1 {name=p19 sig_type=std_logic lab=vss}
C {lab_pin.sym} 140 -220 0 1 {name=p20 sig_type=std_logic lab=vss}
C {lab_pin.sym} 140 -280 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 140 -260 0 1 {name=p22 sig_type=std_logic lab=a}
C {lab_pin.sym} 140 -240 0 1 {name=p23 sig_type=std_logic lab=b}
