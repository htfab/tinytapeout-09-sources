v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -410 420 -410 {
lab=gno0}
N 360 -400 420 -400 {
lab=gpo0}
N 410 -380 420 -380 {
lab=gno1}
N 360 -370 420 -370 {
lab=gpo1}
N 410 -350 420 -350 {
lab=gno2}
N 360 -340 420 -340 {
lab=gpo2}
N 410 -320 420 -320 {
lab=gno3}
N 360 -310 420 -310 {
lab=gpo3}
N 590 -400 610 -400 {
lab=VDD}
N 590 -380 610 -380 {
lab=VSS}
N 400 -290 420 -290 {
lab=A1}
N 400 -270 420 -270 {
lab=A2}
N 400 -250 420 -250 {
lab=A3}
N 400 -230 420 -230 {
lab=A4}
N 590 -290 610 -290 {
lab=Z1}
N 590 -270 610 -270 {
lab=Z2}
N 590 -250 610 -250 {
lab=Z3}
N 590 -230 610 -230 {
lab=Z4}
C {devices/ipin.sym} 200 -340 0 0 {name=p11 lab=select0}
C {devices/ipin.sym} 200 -320 0 0 {name=p12 lab=select1}
C {devices/ipin.sym} 200 -270 0 0 {name=p35 lab=select2}
C {devices/iopin.sym} 400 -290 2 0 {name=p3 lab=A1}
C {devices/iopin.sym} 400 -270 2 0 {name=p4 lab=A2}
C {devices/iopin.sym} 400 -250 2 0 {name=p5 lab=A3}
C {devices/iopin.sym} 400 -230 2 0 {name=p6 lab=A4}
C {devices/iopin.sym} 610 -290 0 0 {name=p7 lab=Z1}
C {devices/iopin.sym} 610 -270 0 0 {name=p8 lab=Z2}
C {devices/iopin.sym} 610 -250 0 0 {name=p9 lab=Z3}
C {devices/iopin.sym} 610 -230 0 0 {name=p10 lab=Z4}
C {devices/opin.sym} 100 -300 0 0 {name=p36 lab=nselect2}
C {devices/ipin.sym} 200 -420 0 0 {name=p2 lab=VDD}
C {devices/ipin.sym} 200 -400 0 0 {name=p1 lab=VSS}
C {devices/lab_pin.sym} 410 -350 2 1 {name=p22 lab=gno2}
C {devices/lab_pin.sym} 360 -400 2 1 {name=p23 lab=gpo0}
C {devices/lab_pin.sym} 360 -370 2 1 {name=p24 lab=gpo1}
C {devices/lab_pin.sym} 360 -340 2 1 {name=p25 lab=gpo2}
C {devices/lab_pin.sym} 360 -310 2 1 {name=p26 lab=gpo3}
C {devices/lab_pin.sym} 410 -380 2 1 {name=p27 lab=gno1}
C {devices/lab_pin.sym} 410 -320 2 1 {name=p28 lab=gno3}
C {devices/lab_pin.sym} 610 -400 2 0 {name=p29 lab=VDD}
C {devices/lab_pin.sym} 610 -380 2 0 {name=p30 lab=VSS}
C {devices/lab_pin.sym} 410 -410 2 1 {name=p31 lab=gno0}
C {passgatex4.sym} 400 -210 0 0 {name=x2}
C {passgatesCtrlManual.sym} 1040 -110 0 0 {name=x1}
C {devices/lab_pin.sym} 1190 -190 0 1 {name=p39 lab=gpo0}
C {devices/lab_pin.sym} 1190 -170 0 1 {name=p40 lab=gno0}
C {devices/lab_pin.sym} 1190 -150 0 1 {name=p41 lab=gno1}
C {devices/lab_pin.sym} 1190 -130 0 1 {name=p42 lab=gpo1}
C {devices/lab_pin.sym} 890 -190 0 0 {name=p43 lab=select0}
C {devices/lab_pin.sym} 890 -170 0 0 {name=p44 lab=select1}
C {devices/lab_pin.sym} 1190 -110 0 1 {name=p45 lab=gno2}
C {devices/lab_pin.sym} 1190 -90 0 1 {name=p46 lab=gpo2}
C {devices/lab_pin.sym} 1190 -70 0 1 {name=p47 lab=nselect2}
C {devices/lab_pin.sym} 890 -150 0 0 {name=p48 lab=select2}
C {devices/lab_pin.sym} 1190 -50 0 1 {name=p49 lab=gno3}
C {devices/lab_pin.sym} 1190 -30 0 1 {name=p50 lab=gpo3}
C {devices/lab_pin.sym} 890 -60 0 0 {name=p51 lab=VDD}
C {devices/lab_pin.sym} 890 -40 0 0 {name=p52 lab=VSS}
