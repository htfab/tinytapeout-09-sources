`resetall
`default_nettype none
`timescale 1ns / 1ps

// verilator timing_off

/**
 * udp_dff$NSR: Negative edge triggered D flip-flop (Q output UDP)
 *              with both active high reset and set (set dominate).
 */
module sky130_fd_sc_hd__udp_dff$NSR #(parameter UNIT_DELAY=0) (
    Q    ,
    SET  ,
    RESET,
    CLK_N,
    D
);

    output reg Q    ;
    input  wire SET  ;
    input  wire RESET;
    input  wire CLK_N;
    input  wire D    ;

    always @(posedge CLK_N or posedge SET or posedge RESET) begin
        if (SET)
            Q <= #UNIT_DELAY 1;
        else if (RESET)
            Q <= #UNIT_DELAY 0;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     // SET RESET CLK_N  D  :  Qt : Qt+1
         0    1     ?    ?  :  ?  :  0    ; // Asserting reset
         0    *     ?    ?  :  0  :  0    ; // Changing reset
         1    ?     ?    ?  :  ?  :  1    ; // Asserting set (dominates reset)
         *    0     ?    ?  :  1  :  1    ; // Changing set
         0    ?    (01)  0  :  ?  :  0    ; // rising clock
         ?    0    (01)  1  :  ?  :  1    ; // rising clock
         0    ?     p    0  :  0  :  0    ; // potential rising clock
         ?    0     p    1  :  1  :  1    ; // potential rising clock
         0    0     n    ?  :  ?  :  -    ; // Clock falling register output does not change
         0    0     ?    *  :  ?  :  -    ; // Changing Data
    endtable
`endif

endmodule


/**
 * udp_dff$NSR_pp$PG$N: Negative edge triggered D flip-flop
 *                      (Q output UDP) with both active high reset and
 *                      set (set dominate). Includes VPWR and VGND
 *                      power pins and notifier pin.
 */
module sky130_fd_sc_hd__udp_dff$NSR_pp$PG$N #(parameter UNIT_DELAY=0) (
    Q       ,
    SET     ,
    RESET   ,
    CLK_N   ,
    D       ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire SET     ;
    input  wire RESET   ;
    input  wire CLK_N   ;
    input  wire D       ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always @(posedge CLK_N or posedge SET or posedge RESET) begin
        if (SET)
            Q <= #UNIT_DELAY 1;
        else if (RESET)
            Q <= #UNIT_DELAY 0;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //         SET          RESET CLK_N  D  NOTIFIER VPWR VGND :  Qt : Qt+1
                 0             1     b    ?     ?      1    0   :  ?  :  0    ; // Asserting reset
                 0             *     ?    ?     ?      1    0   :  0  :  0    ; // Changing reset
                 1             ?     b    ?     ?      1    0   :  ?  :  1    ; // Asserting set  (dominates reset)
                 *             0     ?    ?     ?      1    0   :  1  :  1    ; // Changing set
                 1             ?     n    ?     ?      1    0   :  1  :  1    ;
                 ?             1     n    ?     ?      1    0   :  0  :  0    ;
                 x             ?     n    ?     ?      1    0   :  1  :  1    ;
                 ?             x     n    ?     ?      1    0   :  0  :  0    ;
                 0             ?    (01)  0     ?      1    0   :  ?  :  0    ; // rising clock
                 ?             0    (01)  1     ?      1    0   :  ?  :  1    ; // rising clock
                 0             ?     p    0     ?      1    0   :  0  :  0    ; // potential rising clock
                 ?             0     p    1     ?      1    0   :  1  :  1    ; // potential rising clock
                 0             ?     x    0     ?      1    0   :  1  :  x    ;
                 ?             0     x    1     ?      1    0   :  0  :  x    ;
                 0             0     n    ?     ?      1    0   :  ?  :  -    ; // Clock falling register output does not change
                 0             0     ?    *     ?      1    0   :  ?  :  -    ; // Changing Data
        // ['IfDef(functional)', '']                 ?             ?     ?    ?     *      1    0   :  ?  :  -    ; // go to - on notify
        // ['Else', '']                 ?             ?     ?    ?     *      1    0   :  ?  :  X    ; // go to X on notify
        // ['EndIfDef(functional)', '']                 ?             ?     ?    ?     ?      *    0   :  ?  :  X    ; // any change on vpwr
                 ?             ?     ?    ?     ?      ?    *   :  ?  :  X    ; // any change on vgnd
    endtable
`endif

endmodule


/**
 * udp_dff$P: Positive edge triggered D flip-flop (Q output UDP).
 *
 */
module sky130_fd_sc_hd__udp_dff$P #(parameter UNIT_DELAY=0) (
    Q  ,
    D  ,
    CLK
);

    output reg Q  ;
    input  wire D  ;
    input  wire CLK;

    always @(posedge CLK) begin
        Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //  D  CLK  :  Qt : Qt+1
         1  (01) :  ?  :  1    ; // clocked data
         0  (01) :  ?  :  0    ;
         1  (x1) :  1  :  1    ; // reducing pessimism
         0  (x1) :  0  :  0    ;
         1  (0x) :  1  :  1    ;
         0  (0x) :  0  :  0    ;
         ?  (1x) :  ?  :  -    ; // no change on falling edge
         ?  (?0) :  ?  :  -    ;
         *   ?   :  ?  :  -    ; // ignore edges on data
    endtable
`endif

endmodule


/**
 * udp_dff$P_pp$PG$N: Positive edge triggered D flip-flop
 *                    (Q output UDP).
 */

module sky130_fd_sc_hd__udp_dff$P_pp$PG$N #(parameter UNIT_DELAY=0) (
    Q       ,
    D       ,
    CLK     ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire CLK     ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always @(posedge CLK) begin
        Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //          D           CLK  NOTIFIER VPWR VGND :  Qt : Qt+1
                 1           (01)    ?      1    0   :  ?  :  1    ; // clocked data
                 0           (01)    ?      1    0   :  ?  :  0    ;
                 1           (x1)    ?      1    0   :  1  :  1    ; // reducing pessimism
                 0           (x1)    ?      1    0   :  0  :  0    ;
                 1           (0x)    ?      1    0   :  1  :  1    ;
                 0           (0x)    ?      1    0   :  0  :  0    ;
                 0            x      ?      1    0   :  0  :  0    ; // Hold when CLK=X and D=Q
                 1            x      ?      1    0   :  1  :  1    ; // Hold when CLK=X and D=Q
                 ?           (?0)    ?      1    0   :  ?  :  -    ;
                 *            b      ?      1    0   :  ?  :  -    ; // ignore edges on data
        // ['IfDef(functional)', '']                 ?            ?      *      1    0   :  ?  :  -    ;
        // ['Else', '']                 ?            ?      *      1    0   :  ?  :  x    ;
        // ['EndIfDef(functional)', '']                 ?            ?      ?      *    ?   :  ?  :  x    ; // any change on vpwr
                 ?            ?      ?      ?    *   :  ?  :  x    ; // any change on vgnd
    endtable
`endif

endmodule


/**
 * udp_dff$PR: Positive edge triggered D flip-flop with active high
 */
module sky130_fd_sc_hd__udp_dff$PR #(parameter UNIT_DELAY=0) (
    Q    ,
    D    ,
    CLK  ,
    RESET
);

    output reg Q    ;
    input  wire D    ;
    input  wire CLK  ;
    input  wire RESET;

    always @(posedge CLK or posedge RESET) begin
        if (RESET)
            Q <= #UNIT_DELAY 0;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //  D  CLK  RESET :  Qt : Qt+1
         *   b     0   :  ?  :  -    ; // data event, hold unless CP==x
         ?  (?0)   0   :  ?  :  -    ; // CP => 0, hold
         ?   b    (?0) :  ?  :  -    ; // R => 0, hold unless CP==x
         ?   ?     1   :  ?  :  0    ; // async reset
         0   r     ?   :  ?  :  0    ; // clock data on CP
         1   r     0   :  ?  :  1    ; // clock data on CP
         0  (x1)   ?   :  0  :  0    ; // possible CP, hold when D==Q==0
         1  (x1)   0   :  1  :  1    ; // possible CP, hold when D==Q==1
         0   x     ?   :  0  :  0    ; // unkown CP, hold when D==Q==0
         1   x     0   :  1  :  1    ; // unkown CP, hold when D==Q==1
         ?   b    (?x) :  0  :  0    ; // R=>x, hold when Q==0 unless CP==x
    endtable
`endif

endmodule


/**
 * udp_dff$PR_pp$PG$N: Positive edge triggered D flip-flop with active
 *                     high
 */
module sky130_fd_sc_hd__udp_dff$PR_pp$PG$N #(parameter UNIT_DELAY=0) (
    Q       ,
    D       ,
    CLK     ,
    RESET   ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire CLK     ;
    input  wire RESET   ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always @(posedge CLK or posedge RESET) begin
        if (RESET)
            Q <= #UNIT_DELAY 0;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //          D           CLK  RESET NOTIFIER VPWR VGND :  Qt : Qt+1
                 *            b     0      ?      1    0   :  ?  :  -    ; // data event, hold unless CP==x
                 ?           (?0)   0      ?      1    0   :  ?  :  -    ; // CP => 0, hold
                 ?            b    (?0)    ?      1    0   :  ?  :  -    ; // R => 0, hold unless CP==x
                 ?            ?     1      ?      1    0   :  ?  :  0    ; // async reset
                 0            r     ?      ?      1    0   :  ?  :  0    ; // clock data on CP
                 1            r     0      ?      1    0   :  ?  :  1    ; // clock data on CP
                 0           (x1)   ?      ?      1    0   :  0  :  0    ; // possible CP, hold when D==Q==0
                 1           (x1)   0      ?      1    0   :  1  :  1    ; // possible CP, hold when D==Q==1
                 0            x     ?      ?      1    0   :  0  :  0    ; // unkown CP, hold when D==Q==0
                 1            x     0      ?      1    0   :  1  :  1    ; // unkown CP, hold when D==Q==1
                 ?            b    (?x)    ?      1    0   :  0  :  0    ; // R=>x, hold when Q==0 unless CP==x
                 ?           (?0)   x      ?      1    0   :  0  :  0    ;
        // ['IfDef(functional)', '']                 ?            ?     ?      *      1    0   :  ?  :  -    ; // Q => - on any change on notifier
        // ['Else', '']                 ?            ?     ?      *      1    0   :  ?  :  x    ; // Q => X on any change on notifier
        // ['EndIfDef(functional)', '']                 ?            ?     ?      ?      *    ?   :  ?  :  x    ; // Q => X on any change on vpwr
                 ?            ?     ?      ?      ?    *   :  ?  :  x    ; // Q => X on any change on vgnd
    endtable
`endif

endmodule


/**
 * udp_dff$PS: Positive edge triggered D flip-flop with active high
 */
module sky130_fd_sc_hd__udp_dff$PS #(parameter UNIT_DELAY=0) (
    Q  ,
    D  ,
    CLK,
    SET
);

    output reg Q  ;
    input  wire D  ;
    input  wire CLK;
    input  wire SET;

    always @(posedge CLK or posedge SET) begin
        if (SET)
            Q <= #UNIT_DELAY 1;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //  D  CLK  SET  :  Qt : Qt+1
         *   b    0   :  ?  :  -    ; // data event, hold unless CP==x
         ?  (?0)  0   :  ?  :  -    ; // CP => 0, hold
         ?   b   (?0) :  ?  :  -    ; // S => 0, hold unless CP==x
         ?   ?    1   :  ?  :  1    ; // async set
         0   r    0   :  ?  :  0    ; // clock data on CP
         1   r    ?   :  ?  :  1    ; // clock data on CP
         0  (x1)  0   :  0  :  0    ; // possible CP, hold when D==Q==0
         1  (x1)  ?   :  1  :  1    ; // possible CP, hold when D==Q==1
         0   x    0   :  0  :  0    ; // unkown CP, hold when D==Q==0
         1   x    ?   :  1  :  1    ; // unkown CP, hold when D==Q==1
         ?   b   (?x) :  1  :  1    ; // S=>x, hold when Q==1 unless CP==x
    endtable
`endif

endmodule


/**
 * udp_dff$PS_pp$PG$N: Positive edge triggered D flip-flop with active
 *                     high
 */
module sky130_fd_sc_hd__udp_dff$PS_pp$PG$N #(parameter UNIT_DELAY=0) (
    Q       ,
    D       ,
    CLK     ,
    SET     ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire CLK     ;
    input  wire SET     ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always @(posedge CLK or posedge SET) begin
        if (SET)
            Q <= #UNIT_DELAY 1;
        else
            Q <= #UNIT_DELAY D;
    end

`ifdef nope
    table
     //          D           CLK  SET  NOTIFIER VPWR VGND :  Qt : Qt+1
                 *            b    0      ?      1    0   :  ?  :  -    ; // data event, hold unless CP==x
                 ?           (?0)  0      ?      1    0   :  ?  :  -    ; // CP => 0, hold
                 ?            b   (?0)    ?      1    0   :  ?  :  -    ; // S => 0, hold unless CP==x
                 ?            ?    1      ?      1    0   :  ?  :  1    ; // async set
                 0            r    0      ?      1    0   :  ?  :  0    ; // clock data on CP
                 1            r    ?      ?      1    0   :  ?  :  1    ; // clock data on CP
                 0           (x1)  0      ?      1    0   :  0  :  0    ; // possible CP, hold when D==Q==0
                 1           (x1)  ?      ?      1    0   :  1  :  1    ; // possible CP, hold when D==Q==1
                 0            x    0      ?      1    0   :  0  :  0    ; // unkown CP, hold when D==Q==0
                 1            x    ?      ?      1    0   :  1  :  1    ; // unkown CP, hold when D==Q==1
                 ?            b   (?x)    ?      1    0   :  1  :  1    ; // S=>x, hold when Q==1 unless CP==x
                 ?           (?0)  x      ?      1    0   :  1  :  1    ;
        // ['IfDef(functional)', '']                 ?            ?    ?      *      1    0   :  ?  :  -    ; // Q => - on any change on notifier
        // ['Else', '']                 ?            ?    ?      *      1    0   :  ?  :  x    ; // Q => X on any change on notifier
        // ['EndIfDef(functional)', '']                 ?            ?    ?      ?      *    ?   :  ?  :  x    ; // Q => X on any change on vpwr
                 ?            ?    ?      ?      ?    *   :  ?  :  x    ; // Q => X on any change on vgnd
    endtable
`endif

endmodule


/**
 * udp_dlatch$lP: D-latch, gated standard drive / active high
 *                (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$lP (
    Q   ,
    D   ,
    GATE
);

    output reg Q   ;
    input  wire D   ;
    input  wire GATE;

    always_latch begin
        if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //  D  GATE :  Qt : Qt+1
         ?   0   :  ?  :  -    ; // hold
         0   1   :  ?  :  0    ; // pass 0
         1   1   :  ?  :  1    ; // pass 1
         0   x   :  0  :  0    ; // reduce pessimism
         1   x   :  1  :  1    ; // reduce pessimism
    endtable
`endif

endmodule


/**
 * udp_dlatch$lP_pp$PG$N: D-latch, gated standard drive / active high
 *                        (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$lP_pp$PG$N (
    Q       ,
    D       ,
    GATE    ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire GATE    ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always_latch begin
        if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //          D           GATE NOTIFIER VPWR VGND : Qtn : Qtn+1
                 *            0      ?      1    0   :  ?  :   -    ;
                 ?           (?0)    ?      1    0   :  ?  :   -    ;
                 ?           (1x)    ?      1    0   :  ?  :   -    ;
                 0           (0x)    ?      1    0   :  0  :   0    ;
                 1           (0x)    ?      1    0   :  1  :   1    ;
                 0           (x1)    ?      1    0   :  ?  :   0    ;
                 1           (x1)    ?      1    0   :  ?  :   1    ;
                (?0)          1      ?      1    0   :  ?  :   0    ;
                (?1)          1      ?      1    0   :  ?  :   1    ;
                 0           (01)    ?      1    0   :  ?  :   0    ;
                 1           (01)    ?      1    0   :  ?  :   1    ;
                (?1)          x      ?      1    0   :  1  :   1    ; // Reducing pessimism.
                (?0)          x      ?      1    0   :  0  :   0    ;
        // ['IfDef(functional)', '']                 ?            ?      *      1    0   :  ?  :   -    ;
        // ['Else', '']                 ?            ?      *      1    0   :  ?  :   x    ;
        // ['EndIfDef(functional)', '']                 ?            ?      ?      *    ?   :  ?  :   x    ; // any change on vpwr
                 ?            ?      ?      ?    *   :  ?  :   x    ; // any change on vgnd
    endtable
`endif

endmodule


/**
 * udp_dlatch$P: D-latch, gated standard drive / active high
 *               (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$P (
    Q   ,
    D   ,
    GATE
);

    output reg Q   ;
    input  wire D   ;
    input  wire GATE;

    always_latch begin
        if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //  D  GATE :  Qt : Qt+1
         ?   0   :  ?  :  -    ; // hold
         0   1   :  ?  :  0    ; // pass 0
         1   1   :  ?  :  1    ; // pass 1
         0   x   :  0  :  0    ; // reduce pessimism
         1   x   :  1  :  1    ; // reduce pessimism
    endtable
`endif
endmodule


/**
 * udp_dlatch$P_pp$PG$N: D-latch, gated standard drive / active high
 *                       (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$P_pp$PG$N (
    Q       ,
    D       ,
    GATE    ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire GATE    ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always_latch begin
        if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //          D           GATE NOTIFIER VPWR VGND : Qtn : Qtn+1
                 *            0      ?      1    0   :  ?  :   -    ;
                 ?           (?0)    ?      1    0   :  ?  :   -    ;
                 ?           (1x)    ?      1    0   :  ?  :   -    ;
                 0           (0x)    ?      1    0   :  0  :   0    ;
                 1           (0x)    ?      1    0   :  1  :   1    ;
                 0           (x1)    ?      1    0   :  ?  :   0    ;
                 1           (x1)    ?      1    0   :  ?  :   1    ;
                (?0)          1      ?      1    0   :  ?  :   0    ;
                (?1)          1      ?      1    0   :  ?  :   1    ;
                 0           (01)    ?      1    0   :  ?  :   0    ;
                 1           (01)    ?      1    0   :  ?  :   1    ;
                (?1)          x      ?      1    0   :  1  :   1    ; // Reducing pessimism.
                (?0)          x      ?      1    0   :  0  :   0    ;
        // ['IfDef(functional)', '']                 ?            ?      *      1    0   :  ?  :   -    ;
        // ['Else', '']                 ?            ?      *      1    0   :  ?  :   x    ;
        // ['EndIfDef(functional)', '']                 0            1      ?     (?1)  0   :  ?  :   0    ;
                 1            1      ?     (?1)  0   :  ?  :   1    ;
                 0            1      ?      1   (?0) :  ?  :   0    ;
                 1            1      ?      1   (?0) :  ?  :   1    ;
    endtable
`endif

endmodule


/**
 * udp_dlatch$PR: D-latch, gated clear direct / gate active high
 *                (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$PR (
    Q    ,
    D    ,
    GATE ,
    RESET
);

    output reg Q    ;
    input  wire D    ;
    input  wire GATE ;
    input  wire RESET;

    always_latch begin
        if (RESET)
            Q = 0;
        else if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //  D  GATE RESET :  Qt : Qt+1
         ?   0     0   :  ?  :  -    ; // hold
         0   1     0   :  ?  :  0    ; // pass 0
         1   1     0   :  ?  :  1    ; // pass 1
         ?   ?     1   :  ?  :  0    ; // async reset
         0   1     ?   :  ?  :  0    ; // reduce pessimism
         0   x     0   :  0  :  0    ; // reduce pessimism
         1   x     0   :  1  :  1    ; // reduce pessimism
         ?   0     x   :  0  :  0    ; // reduce pessimism
         0   x     x   :  0  :  0    ; // reduce pessimism
    endtable
`endif
endmodule


/**
 * udp_dlatch$PR_pp$PG$N: D-latch, gated clear direct / gate active
 *                        high (Q output UDP)
 */
module sky130_fd_sc_hd__udp_dlatch$PR_pp$PG$N (
    Q       ,
    D       ,
    GATE    ,
    RESET   ,
    NOTIFIER,
    VPWR    ,
    VGND
);

    output reg Q       ;
    input  wire D       ;
    input  wire GATE    ;
    input  wire RESET   ;
    input  wire NOTIFIER;
    input  wire VPWR    ;
    input  wire VGND    ;

    always_latch begin
        if (RESET)
            Q = 0;
        else if (GATE)
            Q = D;
    end

`ifdef nope
    table
     //          D           GATE RESET NOTIFIER VPWR VGND :  Qt : Qt+1
                 *            0     0      ?      1    0   :  ?  :  -    ;
                 ?            ?     1      ?      1    0   :  ?  :  0    ; // asynchro clear
                 ?           (?0)   0      ?      1    0   :  ?  :  -    ; // Changed R=? to R=0 ; jek 08/14/06/
                 ?           (1x)   0      ?      1    0   :  ?  :  -    ; // Changed R=? to R=0 ; jek 08/14/06
                 0           (0x)   0      ?      1    0   :  0  :  0    ;
                 1           (0x)   0      ?      1    0   :  1  :  1    ;
                 0           (x1)   0      ?      1    0   :  ?  :  0    ;
                 1           (x1)   0      ?      1    0   :  ?  :  1    ;
                (?0)          1     0      ?      1    0   :  ?  :  0    ;
                (?1)          1     0      ?      1    0   :  ?  :  1    ;
                 0           (01)   0      ?      1    0   :  ?  :  0    ;
                 1           (01)   0      ?      1    0   :  ?  :  1    ;
                 ?            0    (?x)    ?      1    0   :  0  :  0    ; // Reducing pessimism.//AB
                 *            0     x      ?      1    0   :  0  :  0    ; // Reducing pessimism//AB
                 0           (?1)   x      ?      1    0   :  ?  :  0    ; // Reducing pessimism.
                (?0)          1     x      ?      1    0   :  ?  :  0    ; // Reducing pessimism.
                 0            1    (?x)    ?      1    0   :  ?  :  0    ; // Reducing pessimism.//AB
                 ?            0    (?0)    ?      1    0   :  ?  :  -    ; // ignore edge on clear
                 0            1    (?0)    ?      1    0   :  ?  :  0    ; // pessimism .
                 1            1    (?0)    ?      1    0   :  ?  :  1    ;
                (?1)          x     0      ?      1    0   :  1  :  1    ; // Reducing pessimism.
                (?0)          x     0      ?      1    0   :  0  :  0    ; // Reducing pessimism.
        // ['IfDef(functional)', '']                 ?            ?     ?      *      1    0   :  ?  :  -    ;
        // ['Else', '']                 ?            ?     ?      *      1    0   :  ?  :  x    ;
        // ['EndIfDef(functional)', '']                 0            1     0      ?     (?1)  0   :  ?  :  0    ;
                 1            1     0      ?     (?1)  0   :  ?  :  1    ;
                 0            1     0      ?      1   (?0) :  ?  :  0    ;
                 1            1     0      ?      1   (?0) :  ?  :  1    ;
    endtable
`endif

endmodule


/**
 * udp_mux_2to1: Two to one multiplexer
 */
module sky130_fd_sc_hd__udp_mux_2to1 (
    X ,
    A0,
    A1,
    S
);

    output wire X ;
    input  wire A0;
    input  wire A1;
    input  wire S ;

    assign X = S ? A1 : A0;

`ifdef nope
    table
     //  A0  A1  S  :  X
         0   0   ?  :  0   ;
         1   1   ?  :  1   ;
         0   ?   0  :  0   ;
         1   ?   0  :  1   ;
         ?   0   1  :  0   ;
         ?   1   1  :  1   ;
    endtable
`endif

endmodule


/**
 * udp_mux_2to1_N: Two to one multiplexer with inverting output
 */
module sky130_fd_sc_hd__udp_mux_2to1_N (
    Y ,
    A0,
    A1,
    S
);

    output wire Y ;
    input  wire A0;
    input  wire A1;
    input  wire S ;

    assign Y = !(S ? A1 : A0);

`ifdef nope
    table
     //  A0  A1  S  :  Y
         0   ?   0  :  1   ;
         1   ?   0  :  0   ;
         ?   0   1  :  1   ;
         ?   1   1  :  0   ;
         0   0   ?  :  1   ;
         1   1   ?  :  0   ;
    endtable
`endif

endmodule


/**
 * udp_mux_4to2: Four to one multiplexer with 2 select controls
 *
 */
module sky130_fd_sc_hd__udp_mux_4to2 (
    X ,
    A0,
    A1,
    A2,
    A3,
    S0,
    S1
);

    output wire X ;
    input  wire A0;
    input  wire A1;
    input  wire A2;
    input  wire A3;
    input  wire S0;
    input  wire S1;

    assign X = S1 ? (S0 ? A3 : A2) : (S0 ? A1 : A0);

`ifdef nope
    table
     //  A0  A1  A2  A3  S0  S1 :  X
         0   ?   ?   ?   0   0  :  0   ;
         1   ?   ?   ?   0   0  :  1   ;
         ?   0   ?   ?   1   0  :  0   ;
         ?   1   ?   ?   1   0  :  1   ;
         ?   ?   0   ?   0   1  :  0   ;
         ?   ?   1   ?   0   1  :  1   ;
         ?   ?   ?   0   1   1  :  0   ;
         ?   ?   ?   1   1   1  :  1   ;
         0   0   0   0   ?   ?  :  0   ;
         1   1   1   1   ?   ?  :  1   ;
         0   0   ?   ?   ?   0  :  0   ;
         1   1   ?   ?   ?   0  :  1   ;
         ?   ?   0   0   ?   1  :  0   ;
         ?   ?   1   1   ?   1  :  1   ;
         0   ?   0   ?   0   ?  :  0   ;
         1   ?   1   ?   0   ?  :  1   ;
         ?   0   ?   0   1   ?  :  0   ;
         ?   1   ?   1   1   ?  :  1   ;
    endtable
`endif
endmodule


/**
 *   UDP_OUT :=x when VGND!=0
 *   UDP_OUT :=UDP_IN when VGND==0
 *
 */
module sky130_fd_sc_hd__udp_pwrgood$l_pp$G (
    UDP_OUT,
    UDP_IN ,
    VGND
);

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VGND   ;

    assign UDP_OUT = (VGND == 1'b0) ? UDP_IN : 1'bx;

`ifdef nope
    table
     // UDP_IN VGND : out
          0     0   :  0   ;
          1     0   :  1   ;
          x     0   :  x   ;
          ?     1   :  x   ;
          ?     x   :  x   ;
    endtable
`endif
endmodule


/**
 *   UDP_OUT :=x when VPWR!=1 or VGND!=0
 *   UDP_OUT :=UDP_IN when VPWR==1 and VGND==0
 *
 */
module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG (
    UDP_OUT,
    UDP_IN ,
    VPWR   ,
    VGND
);

    assign UDP_OUT = (VPWR == 1'b1 && VGND == 1'b0) ? UDP_IN : 1'bx;

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VPWR   ;
    input  wire VGND   ;

`ifdef nope
    table
     // UDP_IN VPWR VGND : out
          0     1    0   :  0   ;
          1     1    0   :  1   ;
          x     1    0   :  x   ;
          ?     0    0   :  x   ;
          ?     1    1   :  x   ;
          ?     x    0   :  x   ;
          ?     1    x   :  x   ;
    endtable
`endif
endmodule


/**
 *   UDP_OUT :=x when VPWR!=1 or VGND!=0
 *   UDP_OUT :=UDP_IN when VPWR==1 and VGND==0
 *
 */
module sky130_fd_sc_hd__udp_pwrgood$l_pp$PG$S (
    UDP_OUT,
    UDP_IN ,
    VPWR   ,
    VGND   ,
    SLEEP
);

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VPWR   ;
    input  wire VGND   ;
    input  wire SLEEP  ;

    assign UDP_OUT = (VPWR == 1'b1 && VGND == 1'b0 && SLEEP == 1'b0) ? UDP_IN :
                     (VGND == 1'b0 && SLEEP == 1'b1) ? 1'b0 : 'bx;

`ifdef nope
    table
     // UDP_IN VPWR VGND SLEEP : out
          0     1    0     ?   :  0   ;
          1     1    0     0   :  1   ;
          x     1    0     0   :  x   ;
          ?     0    0     0   :  x   ;
          ?     1    1     0   :  x   ;
          ?     x    0     0   :  x   ;
          ?     1    x     0   :  x   ;
          ?     ?    0     1   :  0   ;
          ?     ?    1     1   :  x   ;
          ?     ?    x     1   :  x   ;
    endtable
`endif
endmodule


/**
 *   UDP_OUT :=x when VPWR!=1
 *   UDP_OUT :=UDP_IN when VPWR==1
 *
 */
module sky130_fd_sc_hd__udp_pwrgood_pp$G (
    UDP_OUT,
    UDP_IN ,
    VGND
);

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VGND   ;

    assign UDP_OUT = (VGND == 1'b0) ? UDP_IN : 1'bx;

`ifdef nope
    table
     // UDP_IN VPWR : UDP_OUT
          0     0   :    0     ;
          1     0   :    1     ;
          ?     1   :    x     ;
          ?     x   :    x     ;
    endtable
`endif
endmodule

/**
 *   UDP_OUT :=x when VPWR!=1
 *   UDP_OUT :=UDP_IN when VPWR==1
 *
 */
module sky130_fd_sc_hd__udp_pwrgood_pp$P (
    UDP_OUT,
    UDP_IN ,
    VPWR
);

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VPWR   ;

    assign UDP_OUT = (VPWR == 1'b1) ? UDP_IN : 1'bx;

`ifdef nope
    table
     // UDP_IN VPWR : UDP_OUT
          0     1   :    0     ;
          1     1   :    1     ;
          ?     0   :    x     ;
          ?     x   :    x     ;
    endtable
`endif
endmodule


/**
 *   UDP_OUT :=x when VPWR!=1 or VGND!=0
 *   UDP_OUT :=UDP_IN when VPWR==1 and VGND==0
 *
 */
module sky130_fd_sc_hd__udp_pwrgood_pp$PG (
    UDP_OUT,
    UDP_IN ,
    VPWR   ,
    VGND
);

    output wire UDP_OUT;
    input  wire UDP_IN ;
    input  wire VPWR   ;
    input  wire VGND   ;

    assign UDP_OUT = (VPWR == 1'b1 && VGND == 1'b0) ? UDP_IN : 1'bx;

`ifdef nope
    table
     // UDP_IN VPWR VGND : out
          0     1    0   :  0   ;
          1     1    0   :  1   ;
          x     1    0   :  x   ;
          ?     0    0   :  x   ;
          ?     1    1   :  x   ;
          ?     x    0   :  x   ;
          ?     1    x   :  x   ;
    endtable
`endif
endmodule
`resetall
