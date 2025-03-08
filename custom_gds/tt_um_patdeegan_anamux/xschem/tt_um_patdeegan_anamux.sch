v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Muxtest out (ua[2]) selection, depends on select[1:0]:
  * 0: the resistor ladder mux (ladderout)
  * 1: the resistor src VRES, through only this mux 
  * 2: A5 point, between R3 and R4
  * 3: A1 point, on top of last R in chain above GND (R8)} 880 -190 0 0 0.3 0.3 {}
T {Ladderout (ua[3]) is always the output from the inner 
8:1 MUX (two stages) and depends on rsel[2:0]:
 * 0-6 increasing voltage in Rdiv
 * 7: the top VRES itself} 800 -50 0 0 0.3 0.3 {}
T {ring_out (ua[1]) is a 4:1 mux, depending on select[1:0] and will be:
 * 0: raw ring oscillator output
 * 1: the buffered ring osc output (through driver)
 * 2: the output of the counter bit[3]
 * 3: the output of the counter bit[7]} 980 -320 0 0 0.3 0.3 {}
T {VRES (ua[0]) is an input, the V on top of the monitored resistor ladder.} 880 -390 0 0 0.3 0.3 {}
N 440 -620 480 -620 {
lab=uio_out[0]}
N 440 -620 440 -470 {
lab=uio_out[0]}
N 440 -470 480 -470 {
lab=uio_out[0]}
N 440 -490 480 -490 {
lab=uio_out[0]}
N 440 -510 480 -510 {
lab=uio_out[0]}
N 440 -530 480 -530 {
lab=uio_out[0]}
N 440 -560 480 -560 {
lab=uio_out[0]}
N 440 -580 480 -580 {
lab=uio_out[0]}
N 440 -600 480 -600 {
lab=uio_out[0]}
N 440 -470 440 -450 {
lab=uio_out[0]}
N 460 -820 500 -820 {
lab=uo_out[0]}
N 460 -820 460 -670 {
lab=uo_out[0]}
N 460 -670 500 -670 {
lab=uo_out[0]}
N 460 -690 500 -690 {
lab=uo_out[0]}
N 460 -710 500 -710 {
lab=uo_out[0]}
N 460 -730 500 -730 {
lab=uo_out[0]}
N 460 -760 500 -760 {
lab=uo_out[0]}
N 460 -780 500 -780 {
lab=uo_out[0]}
N 460 -800 500 -800 {
lab=uo_out[0]}
N 460 -670 460 -650 {
lab=uo_out[0]}
N 780 -780 820 -780 {
lab=uio_oe[0]}
N 780 -780 780 -630 {
lab=uio_oe[0]}
N 780 -630 820 -630 {
lab=uio_oe[0]}
N 780 -650 820 -650 {
lab=uio_oe[0]}
N 780 -670 820 -670 {
lab=uio_oe[0]}
N 780 -690 820 -690 {
lab=uio_oe[0]}
N 780 -720 820 -720 {
lab=uio_oe[0]}
N 780 -740 820 -740 {
lab=uio_oe[0]}
N 780 -760 820 -760 {
lab=uio_oe[0]}
N 780 -630 780 -610 {
lab=uio_oe[0]}
C {fulltest_userarea.sym} 700 -260 0 0 {name=x1}
C {devices/ipin.sym} 150 -720 0 0 {name=p1 lab=ena}
C {devices/ipin.sym} 150 -690 0 0 {name=p2 lab=clk}
C {devices/ipin.sym} 150 -670 0 0 {name=p3 lab=rst_n}
C {devices/iopin.sym} 60 -270 0 0 {name=p4 lab=ua[4]}
C {devices/iopin.sym} 60 -250 0 0 {name=p5 lab=ua[5]}
C {devices/iopin.sym} 60 -230 0 0 {name=p6 lab=ua[6]}
C {devices/ipin.sym} 290 -340 0 0 {name=p7 lab=ui_in[7]}
C {devices/ipin.sym} 150 -480 0 0 {name=p8 lab=uio_in[0]}
C {devices/ipin.sym} 150 -460 0 0 {name=p9 lab=uio_in[1]}
C {devices/ipin.sym} 150 -440 0 0 {name=p10 lab=uio_in[2]}
C {devices/ipin.sym} 150 -420 0 0 {name=p11 lab=uio_in[3]}
C {devices/ipin.sym} 150 -390 0 0 {name=p12 lab=uio_in[4]}
C {devices/ipin.sym} 150 -370 0 0 {name=p13 lab=uio_in[5]}
C {devices/ipin.sym} 150 -350 0 0 {name=p14 lab=uio_in[6]}
C {devices/ipin.sym} 150 -330 0 0 {name=p15 lab=uio_in[7]}
C {devices/opin.sym} 820 -780 0 0 {name=p16 lab=uio_oe[0]}
C {devices/opin.sym} 820 -760 0 0 {name=p17 lab=uio_oe[1]}
C {devices/opin.sym} 820 -740 0 0 {name=p18 lab=uio_oe[2]}
C {devices/opin.sym} 820 -720 0 0 {name=p19 lab=uio_oe[3]}
C {devices/opin.sym} 820 -690 0 0 {name=p20 lab=uio_oe[4]}
C {devices/opin.sym} 820 -670 0 0 {name=p21 lab=uio_oe[5]}
C {devices/opin.sym} 820 -650 0 0 {name=p22 lab=uio_oe[6]}
C {devices/opin.sym} 820 -630 0 0 {name=p23 lab=uio_oe[7]}
C {devices/iopin.sym} 480 -620 0 0 {name=p24 lab=uio_out[0]}
C {devices/iopin.sym} 480 -600 0 0 {name=p25 lab=uio_out[1]}
C {devices/iopin.sym} 480 -580 0 0 {name=p26 lab=uio_out[2]}
C {devices/iopin.sym} 480 -560 0 0 {name=p27 lab=uio_out[3]}
C {devices/iopin.sym} 480 -530 0 0 {name=p28 lab=uio_out[4]}
C {devices/iopin.sym} 480 -510 0 0 {name=p29 lab=uio_out[5]}
C {devices/iopin.sym} 480 -490 0 0 {name=p30 lab=uio_out[6]}
C {devices/iopin.sym} 480 -470 0 0 {name=p31 lab=uio_out[7]}
C {devices/opin.sym} 500 -820 0 0 {name=p32 lab=uo_out[0]}
C {devices/opin.sym} 500 -800 0 0 {name=p33 lab=uo_out[1]}
C {devices/opin.sym} 500 -780 0 0 {name=p34 lab=uo_out[2]}
C {devices/opin.sym} 500 -760 0 0 {name=p35 lab=uo_out[3]}
C {devices/opin.sym} 500 -730 0 0 {name=p36 lab=uo_out[4]}
C {devices/opin.sym} 500 -710 0 0 {name=p37 lab=uo_out[5]}
C {devices/opin.sym} 500 -690 0 0 {name=p38 lab=uo_out[6]}
C {devices/opin.sym} 500 -670 0 0 {name=p39 lab=uo_out[7]}
C {devices/ipin.sym} 290 -490 0 0 {name=p40 lab=ui_in[0]}
C {devices/ipin.sym} 290 -470 0 0 {name=p41 lab=ui_in[1]}
C {devices/ipin.sym} 290 -450 0 0 {name=p42 lab=ui_in[2]}
C {devices/ipin.sym} 290 -430 0 0 {name=p43 lab=ui_in[3]}
C {devices/ipin.sym} 290 -400 0 0 {name=p44 lab=ui_in[4]}
C {devices/ipin.sym} 290 -380 0 0 {name=p45 lab=ui_in[5]}
C {devices/ipin.sym} 290 -360 0 0 {name=p46 lab=ui_in[6]}
C {devices/iopin.sym} 60 -200 0 0 {name=p48 lab=ua[0]}
C {devices/iopin.sym} 60 -180 0 0 {name=p49 lab=ua[1]}
C {devices/iopin.sym} 60 -160 0 0 {name=p50 lab=ua[2]}
C {devices/iopin.sym} 60 -130 0 0 {name=p51 lab=ua[3]}
C {devices/ipin.sym} 270 -750 0 0 {name=p52 lab=VSS}
C {devices/ipin.sym} 280 -700 0 0 {name=p53 lab=VDPWR}
C {devices/lab_pin.sym} 850 -320 2 0 {name=p54 lab=ua[0]}
C {devices/lab_pin.sym} 550 -290 0 0 {name=p55 lab=ui_in[3]}
C {devices/lab_pin.sym} 550 -190 0 0 {name=p56 lab=VDPWR}
C {devices/lab_pin.sym} 550 -270 0 0 {name=p57 lab=ui_in[4]}
C {devices/lab_pin.sym} 850 -270 0 1 {name=p58 lab=ua[1]}
C {devices/lab_pin.sym} 550 -170 0 0 {name=p59 lab=VSS}
C {devices/lab_pin.sym} 550 -350 0 0 {name=p60 lab=ui_in[0]}
C {devices/lab_pin.sym} 550 -330 0 0 {name=p61 lab=ui_in[1]}
C {devices/lab_pin.sym} 850 -250 0 1 {name=p62 lab=ua[2]}
C {devices/lab_pin.sym} 550 -310 0 0 {name=p63 lab=ui_in[2]}
C {devices/lab_pin.sym} 850 -230 0 1 {name=p64 lab=ua[3]}
C {devices/lab_pin.sym} 550 -250 0 0 {name=p65 lab=ui_in[6]}
C {devices/lab_pin.sym} 550 -230 0 0 {name=p66 lab=ui_in[5]}
C {devices/lab_pin.sym} 440 -450 0 0 {name=p47 lab=VSS}
C {devices/lab_pin.sym} 460 -650 0 0 {name=p67 lab=VSS}
C {devices/lab_pin.sym} 780 -610 0 0 {name=p68 lab=VSS}
C {devices/iopin.sym} 70 -100 0 0 {name=p69 lab=ua[7]}
