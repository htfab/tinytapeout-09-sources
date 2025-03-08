v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1060 -720 1860 -320 {flags=graph
y1=-0.019
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="uao
bus0[0]
bus0[1]
bus0[2]
bus0[3]"
color="4 5 6 9 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1060 -1120 1860 -720 {flags=graph
y1=-0.0005
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=uao
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1060 -1520 1860 -1120 {flags=graph
y1=-0.00051
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
node="uao

x1.sti_0/in"}
B 2 1920 -720 2720 -320 {flags=graph
y1=-0.024
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=8e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0






color="12 12 12 12 12 12 12 12 12 12 12 12 12 12 12 4 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6"
node="x1.compr2_14/in-
x1.compr2_13/in-
x1.compr2_12/in-
x1.compr2_11/in-
x1.compr2_10/in-
x1.compr2_9/in-
x1.compr2_8/in-
x1.compr2_7/in-
x1.compr2_6/in-
x1.compr2_5/in-
x1.compr2_4/in-
x1.compr2_3/in-
x1.compr2_2/in-
x1.compr2_1/in-
x1.compr2_0/in-
uao
x1.compr2_14/out
x1.compr2_13/out
x1.compr2_12/out
x1.compr2_11/out
x1.compr2_10/out
x1.compr2_9/out
x1.compr2_8/out
x1.compr2_7/out
x1.compr2_6/out
x1.compr2_5/out
x1.compr2_4/out
x1.compr2_3/out
x1.compr2_2/out
x1.compr2_1/out
x1.compr2_0/out"}
N 560 -350 580 -350 {
lab=GND}
N 580 -530 580 -470 {
lab=vdd}
C {vsource.sym} 30 -360 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_pin.sym} 30 -390 2 0 {name=p2 sig_type=std_logic lab=vdd}
C {code.sym} 10 -220 0 0 {name=s1 only_toplevel=false value="
.tran 100p 800n
.save all
.lib /home/ttuser/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.include /home/ttuser/Documents/github_project/adc_dac2/mag/tt_um_tim2305_adc_dac.spice
"}
C {vsource.sym} 30 -480 0 0 {name=V3 value="pwl(0 0 1u 1)" savecurrent=false}
C {lab_pin.sym} 30 -510 0 1 {name=p15 sig_type=std_logic lab=ua}
C {title.sym} 170 -40 0 0 {name=l3 author="Timonas Juonys"}
C {vsource.sym} 30 -590 0 0 {name=V2 value="pulse(0 1.8 0 100p 100p 10n 20n)" savecurrent=false}
C {lab_pin.sym} 30 -620 0 1 {name=p4 sig_type=std_logic lab=clk}
C {gnd.sym} 30 -560 0 0 {name=l1 lab=GND}
C {gnd.sym} 30 -450 0 0 {name=l2 lab=GND}
C {gnd.sym} 30 -330 0 0 {name=l4 lab=GND}
C {/home/ttuser/Documents/github_project/adc_dac2/xschem/tile_pinout.sym} 730 -440 0 0 {name=x1
schematic=tt_um_tim2305_adc_dac}
C {lab_pin.sym} 580 -750 2 1 {name=p1 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 -730 2 1 {name=p3 sig_type=std_logic lab=clk}
C {gnd.sym} 560 -350 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 580 -370 2 1 {name=p17 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 880 -270 0 1 {name=p5 sig_type=std_logic lab=bus0[0]}
C {lab_pin.sym} 880 -250 0 1 {name=p6 sig_type=std_logic lab=bus0[1]}
C {lab_pin.sym} 880 -230 0 1 {name=p7 sig_type=std_logic lab=bus0[2]}
C {lab_pin.sym} 880 -210 0 1 {name=p8 sig_type=std_logic lab=bus0[3]}
C {lab_pin.sym} 880 -190 0 1 {name=p9 sig_type=std_logic lab=bus1[0]}
C {lab_pin.sym} 880 -170 0 1 {name=p10 sig_type=std_logic lab=bus1[1]}
C {lab_pin.sym} 880 -150 0 1 {name=p11 sig_type=std_logic lab=bus1[2]}
C {lab_pin.sym} 880 -130 0 1 {name=p12 sig_type=std_logic lab=bus1[3]}
C {lab_pin.sym} 880 -430 0 1 {name=p13 sig_type=std_logic lab=bus2[0]}
C {lab_pin.sym} 880 -410 0 1 {name=p14 sig_type=std_logic lab=bus2[1]}
C {lab_pin.sym} 880 -390 0 1 {name=p18 sig_type=std_logic lab=bus2[2]}
C {lab_pin.sym} 880 -370 0 1 {name=p19 sig_type=std_logic lab=bus2[3]}
C {launcher.sym} 1120 -290 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/top_tb.raw tran"
}
C {lab_pin.sym} 880 -750 0 1 {name=p21 sig_type=std_logic lab=uao}
C {lab_pin.sym} 880 -350 0 1 {name=p23 sig_type=std_logic lab=uio_out[4]}
C {lab_pin.sym} 880 -330 0 1 {name=p24 sig_type=std_logic lab=uio_out[5]}
C {lab_pin.sym} 880 -310 0 1 {name=p26 sig_type=std_logic lab=uio_out[6]}
C {lab_pin.sym} 880 -290 0 1 {name=p27 sig_type=std_logic lab=uio_out[6]}
C {vsource.sym} 40 -960 0 0 {name=V7 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 40 -990 0 1 {name=p30 sig_type=std_logic lab=b0}
C {vsource.sym} 40 -1060 0 0 {name=V8 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 40 -1090 0 1 {name=p31 sig_type=std_logic lab=b1}
C {vsource.sym} 40 -1160 0 0 {name=V9 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 40 -1190 0 1 {name=p32 sig_type=std_logic lab=b2}
C {vsource.sym} 40 -1260 0 0 {name=V10 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 40 -1290 0 1 {name=p33 sig_type=std_logic lab=b3}
C {vsource.sym} 300 -960 0 0 {name=V11 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 300 -990 0 1 {name=p34 sig_type=std_logic lab=b4}
C {vsource.sym} 300 -1060 0 0 {name=V12 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 300 -1090 0 1 {name=p35 sig_type=std_logic lab=b5}
C {vsource.sym} 300 -1160 0 0 {name=V13 value="pwl(0 0 400n 0 401n 1.8)" savecurrent=false}
C {lab_pin.sym} 300 -1190 0 1 {name=p37 sig_type=std_logic lab=b6}
C {vsource.sym} 300 -1260 0 0 {name=V14 value="pwl(0 0 200n 0 201n 1.8 )" savecurrent=false}
C {lab_pin.sym} 300 -1290 0 1 {name=p38 sig_type=std_logic lab=b7}
C {gnd.sym} 40 -930 0 0 {name=l7 lab=GND}
C {gnd.sym} 40 -1030 0 0 {name=l8 lab=GND}
C {gnd.sym} 40 -1130 0 0 {name=l9 lab=GND}
C {gnd.sym} 40 -1230 0 0 {name=l10 lab=GND}
C {gnd.sym} 300 -1230 0 0 {name=l11 lab=GND}
C {gnd.sym} 300 -1130 0 0 {name=l12 lab=GND}
C {gnd.sym} 300 -1030 0 0 {name=l13 lab=GND}
C {gnd.sym} 300 -930 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 580 -690 0 0 {name=p29 sig_type=std_logic lab=b0}
C {lab_pin.sym} 580 -670 0 0 {name=p36 sig_type=std_logic lab=b1}
C {lab_pin.sym} 580 -710 2 1 {name=p39 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 580 -650 0 0 {name=p40 sig_type=std_logic lab=b2}
C {lab_pin.sym} 580 -630 0 0 {name=p41 sig_type=std_logic lab=b3}
C {lab_pin.sym} 580 -610 0 0 {name=p42 sig_type=std_logic lab=b4}
C {lab_pin.sym} 580 -590 0 0 {name=p43 sig_type=std_logic lab=b5}
C {lab_pin.sym} 580 -570 0 0 {name=p44 sig_type=std_logic lab=b6}
C {lab_pin.sym} 580 -550 0 0 {name=p45 sig_type=std_logic lab=b7}
C {vsource.sym} 40 -850 0 0 {name=V4 value=0 savecurrent=false}
C {lab_pin.sym} 40 -880 0 1 {name=p16 sig_type=std_logic lab=dac_conn}
C {vsource.sym} 300 -850 0 0 {name=V5 value="pwl(0 0 600n 0 601n 1.8)" savecurrent=false}
C {lab_pin.sym} 300 -880 0 1 {name=p20 sig_type=std_logic lab=res_conn}
C {gnd.sym} 40 -820 0 0 {name=l6 lab=GND}
C {gnd.sym} 300 -820 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 580 -430 0 0 {name=p22 sig_type=std_logic lab=res_conn}
C {lab_pin.sym} 580 -450 0 0 {name=p25 sig_type=std_logic lab=dac_conn}
C {lab_pin.sym} 580 -530 2 1 {name=p28 sig_type=std_logic lab=vdd}
C {vsource.sym} 40 -750 0 0 {name=V6 value="pwl(0 1.8 600n 1.8 601n 0)" savecurrent=false}
C {lab_pin.sym} 40 -780 0 1 {name=p46 sig_type=std_logic lab=sti_conn}
C {vsource.sym} 300 -750 0 0 {name=V15 value="pwl(0 1.8 600n 1.8 601n 0)" savecurrent=false}
C {lab_pin.sym} 300 -780 0 1 {name=p47 sig_type=std_logic lab=sti_dac_conn}
C {gnd.sym} 40 -720 0 0 {name=l16 lab=GND}
C {gnd.sym} 300 -720 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 580 -390 0 0 {name=p48 sig_type=std_logic lab=sti_dac_conn}
C {lab_pin.sym} 580 -410 0 0 {name=p49 sig_type=std_logic lab=sti_conn}
