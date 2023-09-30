/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input rst_n,
    input usb_rx,
    input [2:0] io_button,
    input custom_start_button,
    input ls_1,
    input ls_2,
    input ls_3,
    input ls_4,
    output reg usb_tx,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    output reg [7:0] io_seg2,
    output reg [3:0] io_sel2,
    output reg [15:0] score
  );
  
  
  
  reg rst;
  
  reg constant1;
  
  reg constant2;
  
  wire [7-1:0] M_seg_seg;
  wire [4-1:0] M_seg_sel;
  reg [16-1:0] M_seg_values;
  multi_seven_seg_1 seg (
    .clk(clk),
    .rst(rst),
    .values(M_seg_values),
    .seg(M_seg_seg),
    .sel(M_seg_sel)
  );
  wire [7-1:0] M_seg2_seg;
  wire [4-1:0] M_seg2_sel;
  reg [16-1:0] M_seg2_values;
  multi_seven_seg_1 seg2 (
    .clk(clk),
    .rst(rst),
    .values(M_seg2_values),
    .seg(M_seg2_seg),
    .sel(M_seg2_sel)
  );
  wire [16-1:0] M_gameMachine_timer_out;
  wire [16-1:0] M_gameMachine_score_out;
  wire [16-1:0] M_gameMachine_ball_count;
  wire [1-1:0] M_gameMachine_debug_slowclock;
  reg [1-1:0] M_gameMachine_custom_start_button;
  reg [1-1:0] M_gameMachine_ls_1;
  reg [1-1:0] M_gameMachine_ls_1F;
  reg [1-1:0] M_gameMachine_ls_2;
  reg [1-1:0] M_gameMachine_ls_2F;
  reg [1-1:0] M_gameMachine_ls_3;
  reg [1-1:0] M_gameMachine_ls_3F;
  reg [1-1:0] M_gameMachine_ls_4;
  reg [1-1:0] M_gameMachine_ls_4F;
  game_miniBeta_2 gameMachine (
    .clk(clk),
    .rst(rst),
    .custom_start_button(M_gameMachine_custom_start_button),
    .ls_1(M_gameMachine_ls_1),
    .ls_1F(M_gameMachine_ls_1F),
    .ls_2(M_gameMachine_ls_2),
    .ls_2F(M_gameMachine_ls_2F),
    .ls_3(M_gameMachine_ls_3),
    .ls_3F(M_gameMachine_ls_3F),
    .ls_4(M_gameMachine_ls_4),
    .ls_4F(M_gameMachine_ls_4F),
    .timer_out(M_gameMachine_timer_out),
    .score_out(M_gameMachine_score_out),
    .ball_count(M_gameMachine_ball_count),
    .debug_slowclock(M_gameMachine_debug_slowclock)
  );
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_3 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_edge_dt_custom_start_button_out;
  reg [1-1:0] M_edge_dt_custom_start_button_in;
  edge_detector_4 edge_dt_custom_start_button (
    .clk(clk),
    .in(M_edge_dt_custom_start_button_in),
    .out(M_edge_dt_custom_start_button_out)
  );
  wire [1-1:0] M_edge_dt_ls_1_out;
  reg [1-1:0] M_edge_dt_ls_1_in;
  edge_detector_4 edge_dt_ls_1 (
    .clk(clk),
    .in(M_edge_dt_ls_1_in),
    .out(M_edge_dt_ls_1_out)
  );
  wire [1-1:0] M_edge_dt_ls_1F_out;
  reg [1-1:0] M_edge_dt_ls_1F_in;
  edge_detector_5 edge_dt_ls_1F (
    .clk(clk),
    .in(M_edge_dt_ls_1F_in),
    .out(M_edge_dt_ls_1F_out)
  );
  wire [1-1:0] M_edge_dt_ls_2_out;
  reg [1-1:0] M_edge_dt_ls_2_in;
  edge_detector_4 edge_dt_ls_2 (
    .clk(clk),
    .in(M_edge_dt_ls_2_in),
    .out(M_edge_dt_ls_2_out)
  );
  wire [1-1:0] M_edge_dt_ls_2F_out;
  reg [1-1:0] M_edge_dt_ls_2F_in;
  edge_detector_5 edge_dt_ls_2F (
    .clk(clk),
    .in(M_edge_dt_ls_2F_in),
    .out(M_edge_dt_ls_2F_out)
  );
  wire [1-1:0] M_edge_dt_ls_3_out;
  reg [1-1:0] M_edge_dt_ls_3_in;
  edge_detector_4 edge_dt_ls_3 (
    .clk(clk),
    .in(M_edge_dt_ls_3_in),
    .out(M_edge_dt_ls_3_out)
  );
  wire [1-1:0] M_edge_dt_ls_3F_out;
  reg [1-1:0] M_edge_dt_ls_3F_in;
  edge_detector_5 edge_dt_ls_3F (
    .clk(clk),
    .in(M_edge_dt_ls_3F_in),
    .out(M_edge_dt_ls_3F_out)
  );
  wire [1-1:0] M_edge_dt_ls_4_out;
  reg [1-1:0] M_edge_dt_ls_4_in;
  edge_detector_4 edge_dt_ls_4 (
    .clk(clk),
    .in(M_edge_dt_ls_4_in),
    .out(M_edge_dt_ls_4_out)
  );
  wire [1-1:0] M_edge_dt_ls_4F_out;
  reg [1-1:0] M_edge_dt_ls_4F_in;
  edge_detector_5 edge_dt_ls_4F (
    .clk(clk),
    .in(M_edge_dt_ls_4F_in),
    .out(M_edge_dt_ls_4F_out)
  );
  wire [1-1:0] M_btn_cond_start_out;
  reg [1-1:0] M_btn_cond_start_in;
  button_conditioner_6 btn_cond_start (
    .clk(clk),
    .in(M_btn_cond_start_in),
    .out(M_btn_cond_start_out)
  );
  wire [1-1:0] M_ls_cond_1_out;
  reg [1-1:0] M_ls_cond_1_in;
  button_conditioner_6 ls_cond_1 (
    .clk(clk),
    .in(M_ls_cond_1_in),
    .out(M_ls_cond_1_out)
  );
  wire [1-1:0] M_ls_cond_1F_out;
  reg [1-1:0] M_ls_cond_1F_in;
  button_conditioner_6 ls_cond_1F (
    .clk(clk),
    .in(M_ls_cond_1F_in),
    .out(M_ls_cond_1F_out)
  );
  wire [1-1:0] M_ls_cond_2_out;
  reg [1-1:0] M_ls_cond_2_in;
  button_conditioner_6 ls_cond_2 (
    .clk(clk),
    .in(M_ls_cond_2_in),
    .out(M_ls_cond_2_out)
  );
  wire [1-1:0] M_ls_cond_2F_out;
  reg [1-1:0] M_ls_cond_2F_in;
  button_conditioner_6 ls_cond_2F (
    .clk(clk),
    .in(M_ls_cond_2F_in),
    .out(M_ls_cond_2F_out)
  );
  wire [1-1:0] M_ls_cond_3_out;
  reg [1-1:0] M_ls_cond_3_in;
  button_conditioner_6 ls_cond_3 (
    .clk(clk),
    .in(M_ls_cond_3_in),
    .out(M_ls_cond_3_out)
  );
  wire [1-1:0] M_ls_cond_3F_out;
  reg [1-1:0] M_ls_cond_3F_in;
  button_conditioner_6 ls_cond_3F (
    .clk(clk),
    .in(M_ls_cond_3F_in),
    .out(M_ls_cond_3F_out)
  );
  wire [1-1:0] M_ls_cond_4_out;
  reg [1-1:0] M_ls_cond_4_in;
  button_conditioner_6 ls_cond_4 (
    .clk(clk),
    .in(M_ls_cond_4_in),
    .out(M_ls_cond_4_out)
  );
  wire [1-1:0] M_ls_cond_4F_out;
  reg [1-1:0] M_ls_cond_4F_in;
  button_conditioner_6 ls_cond_4F (
    .clk(clk),
    .in(M_ls_cond_4F_in),
    .out(M_ls_cond_4F_out)
  );
  
  wire [16-1:0] M_btd_digits;
  reg [14-1:0] M_btd_value;
  bin_to_dec_7 btd (
    .value(M_btd_value),
    .digits(M_btd_digits)
  );
  
  always @* begin
    constant1 = 4'hf;
    constant2 = 4'ha;
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    usb_tx = usb_rx;
    io_seg = 8'hff;
    io_sel = 4'hf;
    io_seg2 = 8'hff;
    io_sel2 = 4'hf;
    M_ls_cond_1_in = ls_1;
    M_ls_cond_1F_in = ls_1;
    M_ls_cond_2_in = ls_2;
    M_ls_cond_2F_in = ls_2;
    M_ls_cond_3_in = ls_3;
    M_ls_cond_3F_in = ls_3;
    M_ls_cond_4_in = ls_4;
    M_ls_cond_4F_in = ls_4;
    M_btn_cond_start_in = custom_start_button;
    M_edge_dt_ls_1_in = M_ls_cond_1_out;
    M_edge_dt_ls_1F_in = M_ls_cond_1F_out;
    M_edge_dt_ls_2_in = M_ls_cond_2_out;
    M_edge_dt_ls_2F_in = M_ls_cond_2F_out;
    M_edge_dt_ls_3_in = M_ls_cond_3_out;
    M_edge_dt_ls_3F_in = M_ls_cond_3F_out;
    M_edge_dt_ls_4_in = M_ls_cond_4_out;
    M_edge_dt_ls_4F_in = M_ls_cond_4F_out;
    M_edge_dt_custom_start_button_in = M_btn_cond_start_out;
    
    case (M_gameMachine_timer_out)
      8'h3c: begin
        M_seg_values = 16'h0060;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h3b: begin
        M_seg_values = 16'h0059;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h3a: begin
        M_seg_values = 16'h0058;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h39: begin
        M_seg_values = 16'h0057;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h38: begin
        M_seg_values = 16'h0056;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h37: begin
        M_seg_values = 16'h0055;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h36: begin
        M_seg_values = 16'h0054;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h35: begin
        M_seg_values = 16'h0053;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h34: begin
        M_seg_values = 16'h0052;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h33: begin
        M_seg_values = 16'h0051;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h32: begin
        M_seg_values = 16'h0050;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h31: begin
        M_seg_values = 16'h0049;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h30: begin
        M_seg_values = 16'h0048;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2f: begin
        M_seg_values = 16'h0047;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2e: begin
        M_seg_values = 16'h0046;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2d: begin
        M_seg_values = 16'h0045;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2c: begin
        M_seg_values = 16'h0044;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2b: begin
        M_seg_values = 16'h0043;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h2a: begin
        M_seg_values = 16'h0042;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h29: begin
        M_seg_values = 16'h0041;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h28: begin
        M_seg_values = 16'h0040;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h27: begin
        M_seg_values = 16'h0039;
        io_seg = ~M_seg_seg;
        io_sel[0+1-:2] = ~M_seg_sel;
      end
      8'h26: begin
        M_seg_values = 16'h0038;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h25: begin
        M_seg_values = 16'h0037;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h24: begin
        M_seg_values = 16'h0036;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h23: begin
        M_seg_values = 16'h0035;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h22: begin
        M_seg_values = 16'h0034;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h21: begin
        M_seg_values = 16'h0033;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h20: begin
        M_seg_values = 16'h0032;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1f: begin
        M_seg_values = 16'h0031;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1e: begin
        M_seg_values = 16'h0030;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1d: begin
        M_seg_values = 16'h0029;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1c: begin
        M_seg_values = 16'h0028;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1b: begin
        M_seg_values = 16'h0027;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h1a: begin
        M_seg_values = 16'h0026;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h19: begin
        M_seg_values = 16'h0025;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h18: begin
        M_seg_values = 16'h0024;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h17: begin
        M_seg_values = 16'h0023;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h16: begin
        M_seg_values = 16'h0022;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h15: begin
        M_seg_values = 16'h0021;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h14: begin
        M_seg_values = 16'h0020;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h13: begin
        M_seg_values = 16'h0019;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h12: begin
        M_seg_values = 16'h0018;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h11: begin
        M_seg_values = 16'h0017;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h10: begin
        M_seg_values = 16'h0016;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0f: begin
        M_seg_values = 16'h0015;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0e: begin
        M_seg_values = 16'h0014;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0d: begin
        M_seg_values = 16'h0013;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0c: begin
        M_seg_values = 16'h0012;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0b: begin
        M_seg_values = 16'h0011;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h0a: begin
        M_seg_values = 16'h0010;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h09: begin
        M_seg_values = 16'h0009;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h08: begin
        M_seg_values = 16'h0008;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h07: begin
        M_seg_values = 16'h0007;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h06: begin
        M_seg_values = 16'h0006;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h05: begin
        M_seg_values = 16'h0005;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h04: begin
        M_seg_values = 16'h0004;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h03: begin
        M_seg_values = 16'h0003;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h02: begin
        M_seg_values = 16'h0002;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h01: begin
        M_seg_values = 16'h0001;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      8'h00: begin
        M_seg_values = 16'h0000;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
      end
      default: begin
        M_seg_values = 16'h0060;
        M_seg2_values = 16'h0060;
        io_seg = ~M_seg_seg;
        io_sel = ~M_seg_sel;
        io_seg2 = ~M_seg_seg;
        io_sel2 = ~M_seg_sel;
      end
    endcase
    M_gameMachine_ls_1 = M_edge_dt_ls_1_out;
    M_gameMachine_ls_1F = M_edge_dt_ls_1F_out;
    M_gameMachine_ls_2 = M_edge_dt_ls_2_out;
    M_gameMachine_ls_2F = M_edge_dt_ls_2F_out;
    M_gameMachine_ls_3 = M_edge_dt_ls_3_out;
    M_gameMachine_ls_3F = M_edge_dt_ls_3F_out;
    M_gameMachine_ls_4 = M_edge_dt_ls_4_out;
    M_gameMachine_ls_4F = M_edge_dt_ls_4F_out;
    M_gameMachine_custom_start_button = M_edge_dt_custom_start_button_out;
    score = M_gameMachine_score_out;
    M_btd_value = M_gameMachine_score_out;
    M_seg_values = M_btd_digits;
    M_seg2_values = M_btd_digits;
    io_seg = ~M_seg_seg;
    io_sel = ~M_seg_sel;
  end
endmodule
