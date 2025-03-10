/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_secA_group5_array_multiplier (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

  // All output pins must be assigned. If not used, assign to 0.

  wire [3:0] m = ui_in[7:4];
  wire [3:0] q = ui_in[3:0];
  wire [7:0] p;
  
  wire [16:0] internal_wire;
  assign p[0] = m[0] & q[0];
  full_adder fa00(.a(m[1] & q[0]), .b(m[0] & q[1]), .carry_in(1'b0), .sum(p[1]), .carry_out(internal_wire[0]));
  full_adder fa01(.a(m[2] & q[0]), .b(m[1] & q[1]), .carry_in(internal_wire[0]), .sum(internal_wire[1]), .carry_out(internal_wire[2]));
  full_adder fa02(.a(m[3] & q[0]), .b(m[2] & q[1]), .carry_in(internal_wire[2]), .sum(internal_wire[3]), .carry_out(internal_wire[4]));
  full_adder fa03(.a(1'b0), .b(m[3] & q[1]), .carry_in(internal_wire[4]), .sum(internal_wire[5]), .carry_out(internal_wire[6]));
  full_adder fa10(.a(m[0] & q[2]), .b(internal_wire[1]), .carry_in(1'b0), .sum(p[2]), .carry_out(internal_wire[7]));
  full_adder fa11(.a(m[1] & q[2]), .b(internal_wire[3]), .carry_in(internal_wire[7]), .sum(internal_wire[8]), .carry_out(internal_wire[9]));
  full_adder fa12(.a(m[2] & q[2]), .b(internal_wire[5]), .carry_in(internal_wire[9]), .sum(internal_wire[10]), .carry_out(internal_wire[11]));
  full_adder fa13(.a(m[3] & q[2]), .b(internal_wire[6]), .carry_in(internal_wire[11]), .sum(internal_wire[12]), .carry_out(internal_wire[13]));
  full_adder fa20(.a(m[0] & q[3]), .b(internal_wire[8]), .carry_in(1'b0), .sum(p[3]), .carry_out(internal_wire[14]));
  full_adder fa21(.a(m[1] & q[3]), .b(internal_wire[14]), .carry_in(internal_wire[10]), .sum(p[4]), .carry_out(internal_wire[15]));
  full_adder fa22(.a(m[2] & q[3]), .b(internal_wire[15]), .carry_in(internal_wire[12]), .sum(p[5]), .carry_out(internal_wire[16]));
  full_adder fa23(.a(m[3] & q[3]), .b(internal_wire[16]), .carry_in(internal_wire[13]), .sum(p[6]), .carry_out(p[7]));

  assign uo_out = p;
  assign uio_out = 0;
  assign uio_oe  = 0;

  // List all unused inputs to prevent warnings
  wire _unused = &{ena, clk, rst_n, uio_in, 1'b0};

endmodule

module full_adder(
    input a,
    input b,
    input carry_in,
    output sum,
    output carry_out
    );
        
    assign sum = a ^ b ^ carry_in;
    assign carry_out = (a & b) | (b & carry_in) | (carry_in & a);
     
endmodule