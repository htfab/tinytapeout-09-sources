v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {The 4:1 mux output is selected with select[1:0] and will be:
 * 0: raw ring oscillator output
 * 1: the buffered ring osc output (through driver)
 * 2: the output of the counter bit[3]
 * 3: the output of the counter bit[7]} 690 -30 0 0 0.3 0.3 {}
N 510 -210 550 -210 {
lab=ring_out}
N 550 -210 550 -180 {
lab=ring_out}
N 200 -180 550 -180 {
lab=ring_out}
N 200 -180 200 -150 {
lab=ring_out}
N 200 -150 210 -150 {
lab=ring_out}
N 810 -150 840 -150 {
lab=ring_out}
N 510 -110 540 -110 {
lab=drv_out}
N 810 -130 840 -130 {
lab=drv_out}
N 510 -250 530 -250 {
lab=VDD}
N 510 -230 530 -230 {
lab=VSS}
N 510 -150 530 -150 {
lab=VDD}
N 510 -130 530 -130 {
lab=VSS}
N 1010 -260 1030 -260 {
lab=VDD}
N 1010 -240 1030 -240 {
lab=VSS}
N 840 -250 840 -230 {
lab=VDD}
N 830 -230 840 -230 {
lab=VDD}
N 190 -250 210 -250 {
lab=enable_ring}
N 820 -270 840 -270 {
lab=select0}
N 750 -260 840 -260 {
lab=select1}
N 680 -620 710 -620 {
lab=counter3}
N 680 -540 710 -540 {
lab=counter7}
N 490 -510 520 -510 {
lab=VSS}
N 490 -540 520 -540 {
lab=VDD}
N 500 -660 520 -660 {
lab=enable_counter}
N 500 -680 520 -680 {
lab=drv_out}
N 810 -110 840 -110 {
lab=counter3}
N 810 -90 840 -90 {
lab=counter7}
N 1010 -150 1060 -150 {
lab=mux_out}
N 1010 -90 1040 -90 {
lab=mux_out}
N 1040 -150 1040 -90 {
lab=mux_out}
N 1010 -130 1040 -130 {
lab=mux_out}
N 1010 -110 1040 -110 {
lab=mux_out}
C {devices/ipin.sym} 130 -370 0 0 {name=p5 lab=VDD}
C {devices/ipin.sym} 130 -340 0 0 {name=p6 lab=VSS}
C {devices/ipin.sym} 130 -300 0 0 {name=p14 lab=enable_ring}
C {devices/ipin.sym} 280 -380 0 0 {name=p16 lab=select0}
C {devices/ipin.sym} 280 -360 0 0 {name=p17 lab=select1}
C {devices/ipin.sym} 130 -270 0 0 {name=p24 lab=enable_counter}
C {devices/opin.sym} 280 -320 0 0 {name=p29 lab=mux_out}
C {mux4onehot_b.sym} 820 -70 0 0 {name=x3}
C {devices/lab_wire.sym} 540 -180 0 0 {name=p1 sig_type=std_logic lab=ring_out}
C {devices/lab_pin.sym} 810 -150 0 0 {name=p2 sig_type=std_logic lab=ring_out}
C {devices/lab_pin.sym} 540 -110 2 0 {name=p3 sig_type=std_logic lab=drv_out
}
C {devices/lab_pin.sym} 810 -130 0 0 {name=p4 sig_type=std_logic lab=drv_out
}
C {devices/lab_pin.sym} 530 -250 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -230 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 530 -150 2 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 530 -130 2 0 {name=p10 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1030 -260 2 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1030 -240 2 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 830 -230 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 190 -250 0 0 {name=p15 sig_type=std_logic lab=enable_ring}
C {devices/lab_pin.sym} 820 -270 0 0 {name=p18 sig_type=std_logic lab=select0}
C {devices/lab_pin.sym} 750 -260 0 0 {name=p19 sig_type=std_logic lab=select1}
C {devices/lab_pin.sym} 710 -620 2 0 {name=p20 sig_type=std_logic lab=counter3
}
C {devices/lab_pin.sym} 710 -540 2 0 {name=p21 sig_type=std_logic lab=counter7
}
C {devices/lab_pin.sym} 490 -540 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 490 -510 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 500 -660 0 0 {name=p25 sig_type=std_logic lab=enable_counter}
C {devices/lab_pin.sym} 500 -680 0 0 {name=p26 sig_type=std_logic lab=drv_out
}
C {devices/lab_pin.sym} 810 -110 0 0 {name=p27 sig_type=std_logic lab=counter3
}
C {devices/lab_pin.sym} 810 -90 0 0 {name=p28 sig_type=std_logic lab=counter7
}
C {devices/lab_pin.sym} 1060 -150 2 0 {name=p30 sig_type=std_logic lab=mux_out}
C {simplecounter.sym} 500 -480 0 0 {name=x4}
C {ring.sym} 360 -230 0 0 {name=x1}
C {driver.sym} 360 -130 0 0 {name=x2}
