/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_wallento_4bit_toycpu (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  logic we;

  cpu u_cpu(
    .clk (ui_in[0]),
    .rst (ui_in[1]),
    .scan_clk (ui_in[2]),
    .scan_en (ui_in[3]),
    .scan_out (uo_out[5]),
    .addr (uo_out[3:0]),
    .data_out (uio_out),
    .data_in (uio_in),
    .we (we)
  );

  assign uio_oe = {8{we & ui_in[4]}};
  assign uo_out[4] = we;

  wire [7:0] unused;
  assign unused = { ena, clk, rst_n, ui_in[7:3] };
  assign uo_out[7:6] = 2'b0;

endmodule
