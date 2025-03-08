// This is the unpowered netlist.
module passgatesCtrl (gno0,
    gno1,
    gno2,
    gno3,
    gpo0,
    gpo1,
    gpo2,
    gpo3,
    select);
 output gno0;
 output gno1;
 output gno2;
 output gno3;
 output gpo0;
 output gpo1;
 output gpo2;
 output gpo3;
 input [1:0] select;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire net1;
 wire net10;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;

 sky130_fd_sc_hd__fill_2 FILLER_0_0_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_0_32 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_0_8 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_1_17 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_2_14 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_2_26 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_2_29 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_2_7 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_3_12 ();
 sky130_fd_sc_hd__decap_8 FILLER_0_3_22 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3_30 ();
 sky130_fd_sc_hd__decap_6 FILLER_0_3_6 ();
 sky130_ef_sc_hd__decap_12 FILLER_0_4_12 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_24 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_4_29 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_13 ();
 sky130_fd_sc_hd__fill_1 FILLER_0_5_17 ();
 sky130_fd_sc_hd__decap_4 FILLER_0_5_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_12 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_13 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_14 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_15 ();
 sky130_fd_sc_hd__or2b_1 _06_ (.A(net1),
    .B_N(net2),
    .X(_00_));
 sky130_fd_sc_hd__clkbuf_1 _07_ (.A(_00_),
    .X(net9));
 sky130_fd_sc_hd__or2b_1 _08_ (.A(net2),
    .B_N(net1),
    .X(_01_));
 sky130_fd_sc_hd__clkbuf_1 _09_ (.A(_01_),
    .X(net8));
 sky130_fd_sc_hd__nand2_1 _10_ (.A(net1),
    .B(net2),
    .Y(net10));
 sky130_fd_sc_hd__or2_1 _11_ (.A(net1),
    .B(net2),
    .X(_02_));
 sky130_fd_sc_hd__clkbuf_1 _12_ (.A(_02_),
    .X(net7));
 sky130_fd_sc_hd__and2b_1 _13_ (.A_N(net1),
    .B(net2),
    .X(_03_));
 sky130_fd_sc_hd__clkbuf_1 _14_ (.A(_03_),
    .X(net5));
 sky130_fd_sc_hd__and2b_1 _15_ (.A_N(net2),
    .B(net1),
    .X(_04_));
 sky130_fd_sc_hd__clkbuf_1 _16_ (.A(_04_),
    .X(net4));
 sky130_fd_sc_hd__nor2_1 _17_ (.A(net1),
    .B(net2),
    .Y(net3));
 sky130_fd_sc_hd__and2_1 _18_ (.A(net1),
    .B(net2),
    .X(_05_));
 sky130_fd_sc_hd__clkbuf_1 _19_ (.A(_05_),
    .X(net6));
 sky130_fd_sc_hd__dlymetal6s2s_1 input1 (.A(select[0]),
    .X(net1));
 sky130_fd_sc_hd__dlymetal6s2s_1 input2 (.A(select[1]),
    .X(net2));
 sky130_fd_sc_hd__buf_1 output10 (.A(net10),
    .X(gpo3));
 sky130_fd_sc_hd__buf_1 output3 (.A(net3),
    .X(gno0));
 sky130_fd_sc_hd__buf_1 output4 (.A(net4),
    .X(gno1));
 sky130_fd_sc_hd__buf_1 output5 (.A(net5),
    .X(gno2));
 sky130_fd_sc_hd__buf_1 output6 (.A(net6),
    .X(gno3));
 sky130_fd_sc_hd__buf_1 output7 (.A(net7),
    .X(gpo0));
 sky130_fd_sc_hd__buf_1 output8 (.A(net8),
    .X(gpo1));
 sky130_fd_sc_hd__buf_1 output9 (.A(net9),
    .X(gpo2));
endmodule

