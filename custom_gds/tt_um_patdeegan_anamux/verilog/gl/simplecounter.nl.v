// This is the unpowered netlist.
module simplecounter (clk,
    enable,
    counter);
 input clk;
 input enable;
 output [9:0] counter;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;
 wire _21_;
 wire _22_;
 wire _23_;
 wire _24_;
 wire _25_;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net1;
 wire net10;
 wire net11;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__decap_6 FILLER_0_0_10 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_16 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_0_20 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_32 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_36 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_40 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_46 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_50 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_6 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_0_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_66 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_0_70 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_10_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_10_65 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_10_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_10_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_11_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_11_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_11_69 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_11_7 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_11_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_15 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_12_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_12_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_12_77 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_18 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_13_26 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_29 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_41 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_13_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_13_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_13_77 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_1_11 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_27 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_1_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_1_34 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_46 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_1_55 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_78 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_2_25 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_2_3 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_57 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_3_76 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_4_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_4_33 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_4_70 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_4_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_5_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_5_54 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_5_73 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_79 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_27 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_6_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_6_33 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_54 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_6_66 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_6_78 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_15 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_27 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_39 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_7_51 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_7_55 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_7_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_7_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_7_77 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_8_11 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_8_24 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_29 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_8_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_41 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_53 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_8_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_8_77 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_9_3 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_36 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_48 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_9_57 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_9_69 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_39 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_40 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_41 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_42 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_43 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_34 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_38 ();
 sky130_fd_sc_hd__xor2_1 _26_ (.A(net2),
    .B(net1),
    .X(_00_));
 sky130_fd_sc_hd__and3_1 _27_ (.A(net2),
    .B(net3),
    .C(net1),
    .X(_10_));
 sky130_fd_sc_hd__clkbuf_2 _28_ (.A(_10_),
    .X(_11_));
 sky130_fd_sc_hd__a21oi_1 _29_ (.A1(net2),
    .A2(net1),
    .B1(net3),
    .Y(_12_));
 sky130_fd_sc_hd__nor2_1 _30_ (.A(_11_),
    .B(_12_),
    .Y(_01_));
 sky130_fd_sc_hd__nor2_1 _31_ (.A(net4),
    .B(_11_),
    .Y(_13_));
 sky130_fd_sc_hd__and2_1 _32_ (.A(net4),
    .B(_11_),
    .X(_14_));
 sky130_fd_sc_hd__nor2_1 _33_ (.A(_13_),
    .B(_14_),
    .Y(_02_));
 sky130_fd_sc_hd__and2_1 _34_ (.A(net4),
    .B(net5),
    .X(_15_));
 sky130_fd_sc_hd__and2_1 _35_ (.A(_11_),
    .B(_15_),
    .X(_16_));
 sky130_fd_sc_hd__o21ba_1 _36_ (.A1(net5),
    .A2(_14_),
    .B1_N(_16_),
    .X(_03_));
 sky130_fd_sc_hd__xor2_1 _37_ (.A(net6),
    .B(_16_),
    .X(_04_));
 sky130_fd_sc_hd__and4_1 _38_ (.A(net6),
    .B(net7),
    .C(_11_),
    .D(_15_),
    .X(_17_));
 sky130_fd_sc_hd__a31o_1 _39_ (.A1(net6),
    .A2(_11_),
    .A3(_15_),
    .B1(net7),
    .X(_18_));
 sky130_fd_sc_hd__and2b_1 _40_ (.A_N(_17_),
    .B(_18_),
    .X(_19_));
 sky130_fd_sc_hd__clkbuf_1 _41_ (.A(_19_),
    .X(_05_));
 sky130_fd_sc_hd__and3_1 _42_ (.A(net6),
    .B(net7),
    .C(net8),
    .X(_20_));
 sky130_fd_sc_hd__and3_1 _43_ (.A(_11_),
    .B(_15_),
    .C(_20_),
    .X(_21_));
 sky130_fd_sc_hd__o21ba_1 _44_ (.A1(net8),
    .A2(_17_),
    .B1_N(_21_),
    .X(_06_));
 sky130_fd_sc_hd__and4_1 _45_ (.A(net6),
    .B(net7),
    .C(net8),
    .D(net9),
    .X(_22_));
 sky130_fd_sc_hd__o2bb2a_1 _46_ (.A1_N(_16_),
    .A2_N(_22_),
    .B1(_21_),
    .B2(net9),
    .X(_07_));
 sky130_fd_sc_hd__and4_1 _47_ (.A(net10),
    .B(_11_),
    .C(_15_),
    .D(_22_),
    .X(_23_));
 sky130_fd_sc_hd__a31o_1 _48_ (.A1(_11_),
    .A2(_15_),
    .A3(_22_),
    .B1(net10),
    .X(_24_));
 sky130_fd_sc_hd__and2b_1 _49_ (.A_N(_23_),
    .B(_24_),
    .X(_25_));
 sky130_fd_sc_hd__clkbuf_1 _50_ (.A(_25_),
    .X(_08_));
 sky130_fd_sc_hd__xor2_1 _51_ (.A(net11),
    .B(_23_),
    .X(_09_));
 sky130_fd_sc_hd__dfxtp_1 _52_ (.CLK(clknet_1_0__leaf_clk),
    .D(_00_),
    .Q(net2));
 sky130_fd_sc_hd__dfxtp_1 _53_ (.CLK(clknet_1_0__leaf_clk),
    .D(_01_),
    .Q(net3));
 sky130_fd_sc_hd__dfxtp_1 _54_ (.CLK(clknet_1_0__leaf_clk),
    .D(_02_),
    .Q(net4));
 sky130_fd_sc_hd__dfxtp_1 _55_ (.CLK(clknet_1_0__leaf_clk),
    .D(_03_),
    .Q(net5));
 sky130_fd_sc_hd__dfxtp_1 _56_ (.CLK(clknet_1_0__leaf_clk),
    .D(_04_),
    .Q(net6));
 sky130_fd_sc_hd__dfxtp_1 _57_ (.CLK(clknet_1_1__leaf_clk),
    .D(_05_),
    .Q(net7));
 sky130_fd_sc_hd__dfxtp_1 _58_ (.CLK(clknet_1_1__leaf_clk),
    .D(_06_),
    .Q(net8));
 sky130_fd_sc_hd__dfxtp_1 _59_ (.CLK(clknet_1_1__leaf_clk),
    .D(_07_),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_1 _60_ (.CLK(clknet_1_1__leaf_clk),
    .D(_08_),
    .Q(net10));
 sky130_fd_sc_hd__dfxtp_1 _61_ (.CLK(clknet_1_1__leaf_clk),
    .D(_09_),
    .Q(net11));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__buf_1 input1 (.A(enable),
    .X(net1));
 sky130_fd_sc_hd__buf_1 output10 (.A(net10),
    .X(counter[8]));
 sky130_fd_sc_hd__buf_1 output11 (.A(net11),
    .X(counter[9]));
 sky130_fd_sc_hd__buf_1 output2 (.A(net2),
    .X(counter[0]));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(counter[1]));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(counter[2]));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(counter[3]));
 sky130_fd_sc_hd__buf_1 output6 (.A(net6),
    .X(counter[4]));
 sky130_fd_sc_hd__buf_1 output7 (.A(net7),
    .X(counter[5]));
 sky130_fd_sc_hd__buf_1 output8 (.A(net8),
    .X(counter[6]));
 sky130_fd_sc_hd__buf_1 output9 (.A(net9),
    .X(counter[7]));
endmodule

