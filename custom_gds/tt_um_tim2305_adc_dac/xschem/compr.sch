v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 170 -280 170 -250 {
lab=bias}
N 170 -250 210 -250 {
lab=bias}
N 550 -450 550 -400 {
lab=vdd}
N 450 -150 650 -150 {
lab=vss}
N 490 -200 610 -200 {
lab=#net1}
N 450 -230 490 -230 {
lab=#net1}
N 490 -230 490 -200 {
lab=#net1}
N 570 -280 650 -280 {
lab=vdd}
N 570 -290 570 -280 {
lab=vdd}
N 450 -250 450 -230 {
lab=#net1}
N 650 -250 650 -230 {
lab=#net2}
N 450 -340 650 -340 {
lab=#net3}
N 650 -340 650 -310 {
lab=#net3}
N 450 -340 450 -310 {
lab=#net3}
N 550 -370 620 -370 {
lab=vdd}
N 650 -200 710 -200 {
lab=vss}
N 450 -280 570 -280 {
lab=vdd}
N 170 -250 170 -220 {
lab=bias}
N 360 -200 450 -200 {
lab=vss}
N 450 -170 450 -150 {
lab=vss}
N 650 -170 650 -150 {
lab=vss}
N 550 -150 550 -130 {
lab=vss}
N 210 -190 210 -170 {
lab=vss}
N 210 -330 210 -280 {
lab=vdd}
N 210 -220 210 -190 {
lab=vss}
N 840 -200 910 -200 {
lab=vss}
N 840 -300 900 -300 {
lab=vdd}
N 840 -360 840 -330 {
lab=vdd}
N 840 -170 840 -150 {
lab=vss}
N 650 -250 800 -250 {
lab=#net2}
N 840 -250 910 -250 {
lab=out}
N 840 -250 840 -230 {
lab=out}
N 840 -270 840 -250 {
lab=out}
N 800 -300 800 -250 {
lab=#net2}
N 800 -250 800 -200 {
lab=#net2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 190 -280 0 0 {name=M3
L=1
W=8
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
C {lab_pin.sym} 210 -330 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 170 -250 0 0 {name=p8 sig_type=std_logic lab=bias
}
C {lab_pin.sym} 510 -370 0 0 {name=p9 sig_type=std_logic lab=bias
}
C {lab_pin.sym} 550 -450 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 530 -370 0 0 {name=M8
L=1
W=8
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
C {lab_pin.sym} 570 -290 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 410 -280 0 0 {name=p12 sig_type=std_logic lab=in-
}
C {lab_pin.sym} 620 -370 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 630 -200 0 0 {name=M5
L=2
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 470 -200 0 1 {name=M6
L=2
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 430 -280 0 0 {name=M7
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 670 -280 0 1 {name=M9
L=2
W=8
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 190 -220 0 0 {name=M4
L=1
W=4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 690 -280 0 1 {name=p26 sig_type=std_logic lab=in+}
C {lab_pin.sym} 840 -360 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 900 -300 0 1 {name=p5 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 820 -300 0 0 {name=M21
L=0.15
W=3
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
C {lab_pin.sym} 910 -250 0 1 {name=p1 sig_type=std_logic lab=out
}
C {title.sym} 170 -40 0 0 {name=l3 author="Timonas Juonys"}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 820 -200 0 0 {name=M1
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
C {ipin.sym} 80 -370 0 0 {name=p7 lab=in+}
C {ipin.sym} 80 -350 0 0 {name=p13 lab=in-}
C {ipin.sym} 80 -390 0 0 {name=p14 lab=vdd}
C {opin.sym} 180 -390 0 0 {name=p17 lab=out}
C {ipin.sym} 80 -330 0 0 {name=p22 lab=vss}
C {lab_pin.sym} 210 -170 0 0 {name=p27 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 710 -200 0 1 {name=p29 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 360 -200 0 0 {name=p30 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 550 -130 0 0 {name=p31 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 910 -200 0 1 {name=p32 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 840 -150 0 0 {name=p33 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 80 -390 0 1 {name=p2 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 80 -330 0 1 {name=p4 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 80 -350 0 1 {name=p15 sig_type=std_logic lab=in-
}
C {lab_pin.sym} 80 -370 0 1 {name=p18 sig_type=std_logic lab=in+}
C {lab_pin.sym} 180 -390 0 0 {name=p19 sig_type=std_logic lab=out
}
