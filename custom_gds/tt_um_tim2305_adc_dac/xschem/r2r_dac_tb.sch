v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1480 -590 2280 -190 {flags=graph
y1=-0.0093
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2.56e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
out_parax"
color="6 5"
dataset=-1
unitx=1
logx=0
logy=0
}
N 850 -420 870 -420 {
lab=GND}
N 850 -160 870 -160 {
lab=GND}
C {title.sym} 170 -40 0 0 {name=l1 author="Timonas Juonys"}
C {code.sym} 10 -230 0 0 {name=s1 only_toplevel=false value="
.tran 10n 25.6u
.save all
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
"}
C {vsource.sym} 40 -360 0 0 {name=V2 value=1.8 savecurrent=false}
C {lab_pin.sym} 40 -390 0 1 {name=p1 sig_type=std_logic lab=vdd
value=1.8}
C {launcher.sym} 1540 -160 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/r2r_dac_tb.raw tran"}
C {vsource.sym} 40 -490 0 0 {name=V7 value="pulse(0 1.8 0 100p 100p 100n 200n)" savecurrent=false}
C {lab_pin.sym} 40 -520 0 1 {name=p30 sig_type=std_logic lab=b0}
C {vsource.sym} 40 -590 0 0 {name=V8 value="pulse(0 1.8 0 100p 100p 200n 400n)" savecurrent=false}
C {lab_pin.sym} 40 -620 0 1 {name=p31 sig_type=std_logic lab=b1}
C {vsource.sym} 40 -690 0 0 {name=V9 value="pulse(0 1.8 0 100p 100p 400n 800n)" savecurrent=false}
C {lab_pin.sym} 40 -720 0 1 {name=p32 sig_type=std_logic lab=b2}
C {vsource.sym} 40 -790 0 0 {name=V10 value="pulse(0 1.8 0 100p 100p 800n 1.6u)" savecurrent=false}
C {lab_pin.sym} 40 -820 0 1 {name=p33 sig_type=std_logic lab=b3}
C {vsource.sym} 300 -490 0 0 {name=V11 value="pulse(0 1.8 0 100p 100p 1.6u 3.2u)" savecurrent=false}
C {lab_pin.sym} 300 -520 0 1 {name=p34 sig_type=std_logic lab=b4}
C {vsource.sym} 300 -590 0 0 {name=V12 value="pulse(0 1.8 0 100p 100p 3.2u 6.4u)" savecurrent=false}
C {lab_pin.sym} 300 -620 0 1 {name=p35 sig_type=std_logic lab=b5}
C {vsource.sym} 300 -690 0 0 {name=V13 value="pulse(0 1.8 0 100p 100p 6.4u 12.8u)" savecurrent=false}
C {lab_pin.sym} 300 -720 0 1 {name=p37 sig_type=std_logic lab=b6}
C {vsource.sym} 300 -790 0 0 {name=V14 value="pulse(0 1.8 0 100p 100p 12.8u 25.6u)" savecurrent=false}
C {lab_pin.sym} 300 -820 0 1 {name=p38 sig_type=std_logic lab=b7}
C {lab_pin.sym} 870 -440 0 0 {name=p3 sig_type=std_logic lab=b7}
C {lab_pin.sym} 870 -460 0 0 {name=p4 sig_type=std_logic lab=b6}
C {lab_pin.sym} 870 -480 0 0 {name=p5 sig_type=std_logic lab=b5}
C {lab_pin.sym} 870 -500 0 0 {name=p6 sig_type=std_logic lab=b4}
C {lab_pin.sym} 870 -520 0 0 {name=p7 sig_type=std_logic lab=b3}
C {lab_pin.sym} 870 -540 0 0 {name=p8 sig_type=std_logic lab=b2}
C {lab_pin.sym} 870 -560 0 0 {name=p9 sig_type=std_logic lab=b1}
C {lab_pin.sym} 870 -580 0 0 {name=p10 sig_type=std_logic lab=b0}
C {lab_pin.sym} 870 -600 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1170 -340 0 1 {name=p12 sig_type=std_logic lab=out}
C {/home/ttuser/Documents/aprx_adc/r2r_dac.sym} 1020 -250 0 0 {name=x1}
C {gnd.sym} 40 -330 0 0 {name=l5 lab=GND}
C {gnd.sym} 850 -420 0 0 {name=l2 lab=GND}
C {gnd.sym} 40 -460 0 0 {name=l3 lab=GND}
C {gnd.sym} 40 -560 0 0 {name=l4 lab=GND}
C {gnd.sym} 40 -660 0 0 {name=l6 lab=GND}
C {gnd.sym} 40 -760 0 0 {name=l7 lab=GND}
C {gnd.sym} 300 -760 0 0 {name=l8 lab=GND}
C {gnd.sym} 300 -660 0 0 {name=l9 lab=GND}
C {gnd.sym} 300 -560 0 0 {name=l10 lab=GND}
C {gnd.sym} 300 -460 0 0 {name=l11 lab=GND}
C {/home/ttuser/Documents/aprx_adc/r2r_dac.sym} 1020 -510 0 0 {name=x2
schematic=r2r_dac_layout
spice_sym_def="tcleval(.include [abs_sym_path r2r_dac_layout.cir])"
tclcommand="textwindow [abs_sym_path r2r_dac_layout.cir]"}
C {lab_pin.sym} 870 -180 0 0 {name=p2 sig_type=std_logic lab=b7}
C {lab_pin.sym} 870 -200 0 0 {name=p13 sig_type=std_logic lab=b6}
C {lab_pin.sym} 870 -220 0 0 {name=p14 sig_type=std_logic lab=b5}
C {lab_pin.sym} 870 -240 0 0 {name=p15 sig_type=std_logic lab=b4}
C {lab_pin.sym} 870 -260 0 0 {name=p16 sig_type=std_logic lab=b3}
C {lab_pin.sym} 870 -280 0 0 {name=p17 sig_type=std_logic lab=b2}
C {lab_pin.sym} 870 -300 0 0 {name=p18 sig_type=std_logic lab=b1}
C {lab_pin.sym} 870 -320 0 0 {name=p19 sig_type=std_logic lab=b0}
C {lab_pin.sym} 870 -340 0 0 {name=p20 sig_type=std_logic lab=vdd}
C {gnd.sym} 850 -160 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 1170 -600 0 1 {name=p21 sig_type=std_logic lab=out_parax}
