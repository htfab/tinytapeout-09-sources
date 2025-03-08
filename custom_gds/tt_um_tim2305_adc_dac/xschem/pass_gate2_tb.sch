v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 800 -660 1600 -260 {flags=graph
y1=-5.9e-05
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="ctrl
a
b"
color="6 4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 800 -1060 1600 -660 {flags=graph
y1=-3.2e-07
y2=0.00042
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=0.0001
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=6
node=i(vmeas)}
N 240 -270 270 -270 {
lab=GND}
N 570 -290 620 -290 {
lab=b}
N 620 -290 650 -290 {
lab=b}
C {title.sym} 170 -40 0 0 {name=l1 author="Timonas Juonys"}
C {vsource.sym} 40 -310 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 40 -340 0 1 {name=p6 sig_type=std_logic lab=vdd}
C {vsource.sym} 40 -430 0 0 {name=V3 value="SIN(0.9 0.9 50k)" savecurrent=false}
C {lab_pin.sym} 40 -460 0 1 {name=p15 sig_type=std_logic lab=a}
C {vsource.sym} 40 -540 0 0 {name=V2 value="pulse(1.8 0 0 100p 100p 50u 100u)" savecurrent=false}
C {lab_pin.sym} 40 -570 0 1 {name=p7 sig_type=std_logic lab=ctrl}
C {code.sym} 10 -190 0 0 {name=s1 only_toplevel=false value="
.tran 100n 100u
.save all
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {lab_pin.sym} 270 -310 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 270 -290 0 0 {name=p3 sig_type=std_logic lab=ctrl}
C {lab_pin.sym} 570 -310 0 1 {name=p4 sig_type=std_logic lab=a}
C {lab_pin.sym} 650 -290 0 1 {name=p5 sig_type=std_logic lab=b}
C {gnd.sym} 40 -280 0 0 {name=l4 lab=GND}
C {gnd.sym} 40 -400 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 -510 0 0 {name=l3 lab=GND}
C {gnd.sym} 240 -270 0 0 {name=l5 lab=GND}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/res_xhigh_po.sym} 620 -260 0 0 {name=R1
W=1
L=2
model=res_xhigh_po
spiceprefix=X
mult=1}
C {ammeter.sym} 620 -200 0 0 {name=Vmeas savecurrent=true}
C {gnd.sym} 620 -170 0 0 {name=l6 lab=GND}
C {/home/ttuser/Documents/aprx_adc/pass_gate2.sym} 420 -290 0 0 {name=x1}
C {launcher.sym} 860 -230 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/pass_gate2_tb.raw tran"
}
