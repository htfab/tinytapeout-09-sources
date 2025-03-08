v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 980 -610 1780 -210 {flags=graph
y1=-0.0021
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
sti"
color="11 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 980 -1010 1780 -610 {flags=graph
y1=-3.7e-05
y2=4.7e-06
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=3e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=12
node=i(v1)}
N 300 -210 320 -210 {
lab=GND}
N 270 -270 320 -270 {
lab=GND}
C {vsource.sym} 70 -370 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 70 -400 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {code.sym} 50 -230 0 0 {name=s1 only_toplevel=false value="
.tran 100p 3u
.save all
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {vsource.sym} 70 -490 0 0 {name=V3 value="pwl(0 0 330n 0 331n 0.9 660n 0.9 661n 1.8 990n 1.8 1u 0 1.33u 0 1.331u 0.9 1.66u 0.9 1.661 1.8 1.99u 1.8 2u 0 2.33u 0 2.331u 0.9 2.66u 0.9 2.661u 1.8 3u 1.8)" savecurrent=false}
C {lab_pin.sym} 70 -520 0 1 {name=p15 sig_type=std_logic lab=b}
C {vsource.sym} 70 -600 0 0 {name=V2 value="pwl(0 0 1u 0 1.001u 0.9 2u 0.9 2.001u 1.8 3u 1.8)" savecurrent=false}
C {lab_pin.sym} 70 -630 0 1 {name=p4 sig_type=std_logic lab=a}
C {gnd.sym} 70 -570 0 0 {name=l1 lab=GND}
C {gnd.sym} 70 -460 0 0 {name=l2 lab=GND}
C {gnd.sym} 70 -340 0 0 {name=l4 lab=GND}
C {title.sym} 170 -40 0 0 {name=l3 author="Stefan Schippers"}
C {/home/ttuser/Documents/github_project/adc_dac2/xschem/tnand.sym} 470 -240 0 0 {name=x1}
C {lab_pin.sym} 320 -250 2 1 {name=p3 sig_type=std_logic lab=a}
C {lab_pin.sym} 320 -230 2 1 {name=p5 sig_type=std_logic lab=b}
C {lab_pin.sym} 620 -270 2 0 {name=p7 sig_type=std_logic lab=out}
C {gnd.sym} 300 -210 0 0 {name=l5 lab=GND}
C {launcher.sym} 1050 -180 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tnand_tb.raw tran"
}
C {/home/ttuser/Documents/github_project/adc_dac2/xschem/sti.sym} 470 -360 0 0 {name=x2}
C {lab_pin.sym} 620 -380 2 0 {name=p6 sig_type=std_logic lab=sti
}
C {lab_pin.sym} 320 -380 2 1 {name=p8 sig_type=std_logic lab=vdd}
C {gnd.sym} 320 -340 0 0 {name=l6 lab=GND}
C {gnd.sym} 270 -270 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 320 -360 0 0 {name=p1 sig_type=std_logic lab=a}
