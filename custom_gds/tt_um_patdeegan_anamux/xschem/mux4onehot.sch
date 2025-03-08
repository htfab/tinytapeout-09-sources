v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 -140 220 -90 {
lab=gpo0}
N 260 -140 260 -90 {
lab=gno0}
N 300 -140 300 -90 {
lab=gpo1}
N 340 -140 340 -90 {
lab=gno1}
N 380 -140 380 -90 {
lab=gpo2}
N 420 -140 420 -90 {
lab=gno2}
N 460 -140 460 -90 {
lab=gpo3}
N 500 -140 500 -90 {
lab=gno3}
N 220 -200 220 -170 {
lab=SELECT0}
N 280 -200 280 -170 {
lab=SELECT1}
N 180 -120 200 -120 {
lab=VDD}
N 120 -110 200 -110 {
lab=VSS}
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
C {passgatesCtrl.sym} 20 -160 0 0 {name=x1
type=primitive
format="@name @pinlist @symname"
}
C {devices/ipin.sym} 200 -400 0 0 {name=p1 lab=VSS}
C {devices/ipin.sym} 200 -420 0 0 {name=p2 lab=VDD}
C {devices/iopin.sym} 400 -290 2 0 {name=p3 lab=A1}
C {devices/iopin.sym} 400 -270 2 0 {name=p4 lab=A2}
C {devices/iopin.sym} 400 -250 2 0 {name=p5 lab=A3}
C {devices/iopin.sym} 400 -230 2 0 {name=p6 lab=A4}
C {devices/iopin.sym} 610 -290 0 0 {name=p7 lab=Z1}
C {devices/iopin.sym} 610 -270 0 0 {name=p8 lab=Z2}
C {devices/iopin.sym} 610 -250 0 0 {name=p9 lab=Z3}
C {devices/iopin.sym} 610 -230 0 0 {name=p10 lab=Z4}
C {devices/ipin.sym} 200 -340 0 0 {name=p11 lab=SELECT0}
C {devices/ipin.sym} 200 -320 0 0 {name=p12 lab=SELECT1}
C {devices/lab_pin.sym} 260 -90 1 1 {name=p13 lab=gno0}
C {devices/lab_pin.sym} 220 -90 1 1 {name=p14 lab=gpo0}
C {devices/lab_pin.sym} 300 -90 1 1 {name=p15 lab=gpo1}
C {devices/lab_pin.sym} 380 -90 1 1 {name=p16 lab=gpo2}
C {devices/lab_pin.sym} 460 -90 1 1 {name=p17 lab=gpo3}
C {devices/lab_pin.sym} 220 -200 1 0 {name=p18 lab=SELECT0}
C {devices/lab_pin.sym} 180 -120 0 0 {name=p19 lab=VDD}
C {devices/lab_pin.sym} 280 -200 1 0 {name=p20 lab=SELECT1}
C {devices/lab_pin.sym} 120 -110 0 0 {name=p21 lab=VSS}
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
C {devices/lab_pin.sym} 340 -90 1 1 {name=p32 lab=gno1}
C {devices/lab_pin.sym} 420 -90 1 1 {name=p33 lab=gno2}
C {devices/lab_pin.sym} 500 -90 1 1 {name=p34 lab=gno3}
C {passgatex4.sym} 400 -210 0 0 {name=x2}
