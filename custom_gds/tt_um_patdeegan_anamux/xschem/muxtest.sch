v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Res sel:
0-6 increasing voltage in Rdiv
7: the top VRES itself} 410 -320 0 0 0.3 0.3 {}
T {Output selection:
  * 0: the resistor ladder mux
  * 1: the resistor src VRES, through only this mux 
  * 2: A5 point, between R3 and R4
  * 3: A1 point, on top of last R in chain above GND (R8)} 460 -630 0 0 0.3 0.3 {}
N 1200 -600 1220 -600 {
lab=VSS}
N 1200 -520 1220 -520 {
lab=VSS}
N 1200 -430 1220 -430 {
lab=VSS}
N 1200 -350 1220 -350 {
lab=VSS}
N 1560 -600 1580 -600 {
lab=VSS}
N 1560 -520 1580 -520 {
lab=VSS}
N 1560 -430 1580 -430 {
lab=VSS}
N 1560 -350 1580 -350 {
lab=VSS}
N 1240 -570 1240 -550 {
lab=A7}
N 1240 -490 1240 -460 {
lab=A6}
N 1240 -400 1240 -380 {
lab=A5}
N 1240 -320 1240 -280 {
lab=A4}
N 1240 -280 1440 -280 {
lab=A4}
N 1440 -650 1440 -280 {
lab=A4}
N 1440 -650 1600 -650 {
lab=A4}
N 1600 -650 1600 -630 {
lab=A4}
N 1600 -570 1600 -550 {
lab=A3}
N 1600 -490 1600 -460 {
lab=A2}
N 1600 -400 1600 -380 {
lab=A1}
N 1600 -320 1600 -300 {
lab=VSS}
N 1210 -640 1240 -640 {
lab=VRES}
N 1210 -560 1240 -560 {
lab=A7}
N 1210 -480 1240 -480 {
lab=A6}
N 1220 -390 1240 -390 {
lab=A5}
N 1220 -280 1240 -280 {
lab=A4}
N 1580 -560 1600 -560 {
lab=A3}
N 1580 -480 1600 -480 {
lab=A2}
N 1580 -390 1600 -390 {
lab=A1}
N 1240 -640 1240 -630 {
lab=VRES}
N 570 -830 630 -830 {
lab=SELECT1}
N 630 -820 630 -800 {
lab=VDD}
N 600 -720 630 -720 {
lab=LADDEROUT}
N 800 -720 840 -720 {
lab=OUT}
N 840 -720 840 -660 {
lab=OUT}
N 800 -660 840 -660 {
lab=OUT}
N 800 -680 840 -680 {
lab=OUT}
N 800 -700 840 -700 {
lab=OUT}
C {mux8onehot.sym} 530 -420 0 0 {name=x1}
C {mux4onehot_b.sym} 610 -640 0 0 {name=x2}
C {sky130_fd_pr/res_high_po_1p41.sym} 1240 -600 0 0 {name=R1
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 380 -370 0 0 {name=p1 lab=VDD}
C {devices/lab_pin.sym} 380 -350 0 0 {name=p2 lab=VSS}
C {devices/lab_pin.sym} 630 -840 0 0 {name=p3 lab=SELECT0}
C {devices/lab_pin.sym} 570 -830 0 0 {name=p4 lab=SELECT1}
C {devices/lab_pin.sym} 680 -500 0 1 {name=p5 lab=A1}
C {devices/lab_pin.sym} 680 -420 0 1 {name=p6 lab=A5}
C {devices/lab_pin.sym} 680 -400 0 1 {name=p7 lab=A6}
C {devices/lab_pin.sym} 680 -480 0 1 {name=p8 lab=A2}
C {devices/lab_pin.sym} 680 -380 0 1 {name=p9 lab=A7}
C {devices/lab_pin.sym} 680 -460 0 1 {name=p10 lab=A3}
C {devices/lab_pin.sym} 380 -490 0 0 {name=p11 lab=RSEL2}
C {devices/lab_pin.sym} 680 -440 0 1 {name=p13 lab=A4}
C {devices/lab_pin.sym} 680 -340 0 1 {name=p14 lab=LADDEROUT}
C {devices/lab_pin.sym} 1200 -600 0 0 {name=p15 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1240 -520 0 0 {name=R2
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1200 -520 0 0 {name=p16 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1240 -430 0 0 {name=R3
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1200 -430 0 0 {name=p17 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1240 -350 0 0 {name=R4
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1200 -350 0 0 {name=p18 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1600 -600 0 0 {name=R5
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1560 -600 0 0 {name=p19 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1600 -520 0 0 {name=R6
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1560 -520 0 0 {name=p20 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1600 -430 0 0 {name=R7
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1560 -430 0 0 {name=p21 lab=VSS}
C {sky130_fd_pr/res_high_po_1p41.sym} 1600 -350 0 0 {name=R8
L=1.75
model=res_high_po_1p41
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1560 -350 0 0 {name=p22 lab=VSS}
C {devices/lab_pin.sym} 1600 -300 0 0 {name=p23 lab=VSS}
C {devices/lab_pin.sym} 1210 -640 2 1 {name=p25 lab=VRES}
C {devices/lab_pin.sym} 1210 -560 2 1 {name=p26 lab=A7}
C {devices/lab_pin.sym} 1210 -480 2 1 {name=p27 lab=A6}
C {devices/lab_pin.sym} 1220 -390 2 1 {name=p28 lab=A5}
C {devices/lab_pin.sym} 1220 -280 2 1 {name=p24 lab=A4}
C {devices/lab_pin.sym} 1580 -560 2 1 {name=p29 lab=A3}
C {devices/lab_pin.sym} 1580 -480 2 1 {name=p30 lab=A2}
C {devices/lab_pin.sym} 1580 -390 2 1 {name=p31 lab=A1}
C {devices/ipin.sym} 270 -780 0 0 {name=p32 lab=VSS}
C {devices/ipin.sym} 270 -800 0 0 {name=p33 lab=VDD}
C {devices/ipin.sym} 280 -680 0 0 {name=p34 lab=SELECT0}
C {devices/ipin.sym} 280 -660 0 0 {name=p35 lab=SELECT1}
C {devices/ipin.sym} 270 -740 0 0 {name=p36 lab=VRES}
C {devices/lab_pin.sym} 680 -360 0 1 {name=p37 lab=VRES}
C {devices/lab_pin.sym} 800 -830 2 0 {name=p12 lab=VDD}
C {devices/lab_pin.sym} 800 -810 2 0 {name=p38 lab=VSS}
C {devices/lab_pin.sym} 630 -800 0 0 {name=p39 lab=VDD}
C {devices/ipin.sym} 280 -620 0 0 {name=p40 lab=RSEL0}
C {devices/ipin.sym} 280 -600 0 0 {name=p41 lab=RSEL1}
C {devices/ipin.sym} 280 -580 0 0 {name=p42 lab=RSEL2}
C {devices/lab_pin.sym} 380 -470 0 0 {name=p43 lab=RSEL1}
C {devices/lab_pin.sym} 380 -450 0 0 {name=p44 lab=RSEL0}
C {devices/lab_pin.sym} 600 -720 2 1 {name=p45 lab=LADDEROUT}
C {devices/lab_pin.sym} 630 -680 2 1 {name=p47 lab=A5}
C {devices/lab_pin.sym} 630 -660 2 1 {name=p48 lab=A1}
C {devices/lab_pin.sym} 630 -700 2 1 {name=p46 lab=VRES}
C {devices/opin.sym} 270 -550 0 0 {name=p49 lab=OUT}
C {devices/lab_pin.sym} 840 -720 2 0 {name=p50 lab=OUT}
C {devices/opin.sym} 270 -530 0 0 {name=p51 lab=LADDEROUT}
