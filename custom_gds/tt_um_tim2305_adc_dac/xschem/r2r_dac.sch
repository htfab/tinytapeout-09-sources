v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -440 180 -440 {
lab=vdd}
N 60 -440 60 -380 {
lab=b0}
N 100 -490 100 -470 {
lab=vdd}
N 100 -380 100 -350 {
lab=vss}
N 100 -410 180 -410 {
lab=t0}
N 180 -410 180 -310 {
lab=t0}
N 180 -250 180 -200 {
lab=#net1}
N 320 -440 400 -440 {
lab=vdd}
N 280 -440 280 -380 {
lab=b1}
N 320 -490 320 -470 {
lab=vdd}
N 320 -380 320 -350 {
lab=vss}
N 320 -410 400 -410 {
lab=t1}
N 400 -410 400 -310 {
lab=t1}
N 340 -200 400 -200 {
lab=#net2}
N 400 -250 400 -200 {
lab=#net2}
N 540 -440 620 -440 {
lab=vdd}
N 500 -440 500 -380 {
lab=b2}
N 540 -490 540 -470 {
lab=vdd}
N 540 -380 540 -350 {
lab=vss}
N 540 -410 620 -410 {
lab=t2}
N 620 -410 620 -310 {
lab=t2}
N 560 -200 620 -200 {
lab=#net3}
N 620 -250 620 -200 {
lab=#net3}
N 760 -440 840 -440 {
lab=vdd}
N 720 -440 720 -380 {
lab=b3}
N 760 -490 760 -470 {
lab=vdd}
N 760 -380 760 -350 {
lab=vss}
N 760 -410 840 -410 {
lab=t3}
N 840 -410 840 -310 {
lab=t3}
N 780 -200 840 -200 {
lab=#net4}
N 840 -250 840 -200 {
lab=#net4}
N 980 -440 1060 -440 {
lab=vdd}
N 940 -440 940 -380 {
lab=b4}
N 980 -490 980 -470 {
lab=vdd}
N 980 -380 980 -350 {
lab=vss}
N 980 -410 1060 -410 {
lab=t4}
N 1060 -410 1060 -310 {
lab=t4}
N 1000 -200 1060 -200 {
lab=#net5}
N 1060 -250 1060 -200 {
lab=#net5}
N 1200 -440 1280 -440 {
lab=vdd}
N 1160 -440 1160 -380 {
lab=b5}
N 1200 -490 1200 -470 {
lab=vdd}
N 1200 -380 1200 -350 {
lab=vss}
N 1200 -410 1280 -410 {
lab=t5}
N 1280 -410 1280 -310 {
lab=t5}
N 1220 -200 1280 -200 {
lab=#net6}
N 1280 -250 1280 -200 {
lab=#net6}
N 1420 -440 1500 -440 {
lab=vdd}
N 1380 -440 1380 -380 {
lab=b6}
N 1420 -490 1420 -470 {
lab=vdd}
N 1420 -380 1420 -350 {
lab=vss}
N 1420 -410 1500 -410 {
lab=t6}
N 1500 -410 1500 -310 {
lab=t6}
N 1440 -200 1500 -200 {
lab=#net7}
N 1500 -250 1500 -200 {
lab=#net7}
N 1640 -440 1720 -440 {
lab=vdd}
N 1600 -440 1600 -380 {
lab=b7}
N 1640 -490 1640 -470 {
lab=vdd}
N 1640 -380 1640 -350 {
lab=vss}
N 1640 -410 1720 -410 {
lab=t7}
N 1720 -410 1720 -310 {
lab=t7}
N 1660 -200 1720 -200 {
lab=out}
N 1720 -250 1720 -200 {
lab=out}
N 180 -200 280 -200 {
lab=#net1}
N 400 -200 500 -200 {
lab=#net2}
N 620 -200 720 -200 {
lab=#net3}
N 840 -200 940 -200 {
lab=#net4}
N 1060 -200 1160 -200 {
lab=#net5}
N 1280 -200 1380 -200 {
lab=#net6}
N 1500 -200 1600 -200 {
lab=#net7}
N 100 -350 100 -330 {
lab=vss}
N 320 -350 320 -330 {
lab=vss}
N 540 -350 540 -330 {
lab=vss}
N 760 -350 760 -330 {
lab=vss}
N 980 -350 980 -330 {
lab=vss}
N 1200 -350 1200 -330 {
lab=vss}
N 1420 -350 1420 -330 {
lab=vss}
N 1640 -350 1640 -330 {
lab=vss}
N 150 -200 180 -200 {
lab=#net1}
C {title.sym} 170 -40 0 0 {name=l1 author="Timonas Juonys"}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 120 -200 3 0 {name=R3
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 180 -440 0 1 {name=p2 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 60 -410 0 0 {name=p3 sig_type=std_logic lab=b0}
C {lab_pin.sym} 100 -490 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 180 -280 0 0 {name=R1
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 310 -200 3 0 {name=R2
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 400 -440 0 1 {name=p4 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 280 -410 0 0 {name=p6 sig_type=std_logic lab=b1}
C {lab_pin.sym} 320 -490 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 400 -280 0 0 {name=R5
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 530 -200 3 0 {name=R6
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 620 -440 0 1 {name=p8 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 500 -410 0 0 {name=p9 sig_type=std_logic lab=b2}
C {lab_pin.sym} 540 -490 0 0 {name=p10 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 620 -280 0 0 {name=R7
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 750 -200 3 0 {name=R8
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 840 -440 0 1 {name=p11 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 720 -410 0 0 {name=p12 sig_type=std_logic lab=b3}
C {lab_pin.sym} 760 -490 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 840 -280 0 0 {name=R9
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 970 -200 3 0 {name=R10
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 1060 -440 0 1 {name=p14 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 940 -410 0 0 {name=p15 sig_type=std_logic lab=b4}
C {lab_pin.sym} 980 -490 0 0 {name=p16 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1060 -280 0 0 {name=R11
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1190 -200 3 0 {name=R12
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 1280 -440 0 1 {name=p17 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 1160 -410 0 0 {name=p18 sig_type=std_logic lab=b5}
C {lab_pin.sym} 1200 -490 0 0 {name=p19 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1280 -280 0 0 {name=R13
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1410 -200 3 0 {name=R14
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 1500 -440 0 1 {name=p20 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 1380 -410 0 0 {name=p21 sig_type=std_logic lab=b6}
C {lab_pin.sym} 1420 -490 0 0 {name=p22 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1500 -280 0 0 {name=R15
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1630 -200 3 0 {name=R16
L=0.35*2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 1720 -440 0 1 {name=p23 sig_type=std_logic lab=vdd
value=1.8}
C {lab_pin.sym} 1600 -410 0 0 {name=p24 sig_type=std_logic lab=b7}
C {lab_pin.sym} 1640 -490 0 0 {name=p25 sig_type=std_logic lab=vdd}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po_0p35.sym} 1720 -280 0 0 {name=R17
L=0.35*4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1

}
C {lab_pin.sym} 1720 -200 0 1 {name=p26 sig_type=std_logic lab=out}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 80 -440 0 0 {name=M2
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -440 0 0 {name=M4
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 520 -440 0 0 {name=M6
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 740 -440 0 0 {name=M8
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 960 -440 0 0 {name=M10
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1180 -440 0 0 {name=M12
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1400 -440 0 0 {name=M14
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1620 -440 0 0 {name=M16
L=0.15
W=6
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 80 -380 0 0 {name=M1
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -380 0 0 {name=M3
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 520 -380 0 0 {name=M5
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 740 -380 0 0 {name=M7
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 960 -380 0 0 {name=M9
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1180 -380 0 0 {name=M11
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1400 -380 0 0 {name=M13
L=0.15
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1620 -380 0 0 {name=M15
L=0.15
W=2
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
C {lab_pin.sym} 180 -410 0 1 {name=p27 sig_type=std_logic lab=t0}
C {lab_pin.sym} 400 -410 0 1 {name=p28 sig_type=std_logic lab=t1}
C {lab_pin.sym} 620 -410 0 1 {name=p29 sig_type=std_logic lab=t2}
C {lab_pin.sym} 840 -410 0 1 {name=p39 sig_type=std_logic lab=t3}
C {lab_pin.sym} 1060 -410 0 1 {name=p40 sig_type=std_logic lab=t4}
C {lab_pin.sym} 1280 -410 0 1 {name=p41 sig_type=std_logic lab=t5}
C {lab_pin.sym} 1500 -410 0 1 {name=p42 sig_type=std_logic lab=t6}
C {lab_pin.sym} 1720 -410 0 1 {name=p43 sig_type=std_logic lab=t7}
C {lab_pin.sym} 100 -330 0 0 {name=p64 sig_type=std_logic lab=vss}
C {lab_pin.sym} 320 -330 0 0 {name=p65 sig_type=std_logic lab=vss}
C {lab_pin.sym} 540 -330 0 0 {name=p66 sig_type=std_logic lab=vss}
C {lab_pin.sym} 760 -330 0 0 {name=p67 sig_type=std_logic lab=vss}
C {lab_pin.sym} 980 -330 0 0 {name=p68 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1200 -330 0 0 {name=p69 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1420 -330 0 0 {name=p70 sig_type=std_logic lab=vss}
C {lab_pin.sym} 1640 -330 0 0 {name=p71 sig_type=std_logic lab=vss}
C {lab_pin.sym} 90 -200 0 0 {name=p72 sig_type=std_logic lab=vss}
C {ipin.sym} 100 -740 0 0 {name=p1 lab=vdd}
C {lab_pin.sym} 100 -740 0 1 {name=p32 sig_type=std_logic lab=vdd}
C {opin.sym} 250 -740 0 0 {name=p46 lab=out}
C {lab_pin.sym} 250 -740 0 0 {name=p47 sig_type=std_logic lab=out}
C {ipin.sym} 100 -720 0 0 {name=p30 lab=b0}
C {lab_pin.sym} 100 -720 0 1 {name=p31 sig_type=std_logic lab=b0}
C {ipin.sym} 100 -700 0 0 {name=p33 lab=b1}
C {lab_pin.sym} 100 -700 0 1 {name=p34 sig_type=std_logic lab=b1}
C {ipin.sym} 100 -680 0 0 {name=p35 lab=b2}
C {lab_pin.sym} 100 -680 0 1 {name=p36 sig_type=std_logic lab=b2}
C {ipin.sym} 100 -660 0 0 {name=p37 lab=b3}
C {lab_pin.sym} 100 -660 0 1 {name=p38 sig_type=std_logic lab=b3}
C {ipin.sym} 100 -640 0 0 {name=p44 lab=b4}
C {lab_pin.sym} 100 -640 0 1 {name=p45 sig_type=std_logic lab=b4}
C {ipin.sym} 100 -620 0 0 {name=p48 lab=b5}
C {lab_pin.sym} 100 -620 0 1 {name=p49 sig_type=std_logic lab=b5}
C {ipin.sym} 100 -600 0 0 {name=p50 lab=b6}
C {lab_pin.sym} 100 -600 0 1 {name=p51 sig_type=std_logic lab=b6}
C {ipin.sym} 100 -580 0 0 {name=p52 lab=b7}
C {lab_pin.sym} 100 -580 0 1 {name=p53 sig_type=std_logic lab=b7}
C {ipin.sym} 100 -560 0 0 {name=p54 lab=vss}
C {lab_pin.sym} 100 -560 0 1 {name=p55 sig_type=std_logic lab=vss}
