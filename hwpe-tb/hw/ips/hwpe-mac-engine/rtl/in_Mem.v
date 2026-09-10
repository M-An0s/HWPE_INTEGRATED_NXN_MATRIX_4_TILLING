module in_Mem #(parameter int DEPTH=8, AW=3, DW=64)(
  input logic clk_i, rst_ni,
  // port A -- read/write
  input  logic [AW-1:0] a_addr,
  input  logic          a_ce,
  input  logic          a_we,
  input  logic [DW-1:0] a_d,
  output logic [DW-1:0] a_q,
  // port B -- read/write
  input  logic [AW-1:0] b_addr,
  input  logic          b_ce,
  input  logic          b_we,
  input  logic [DW-1:0] b_d,
  output logic [DW-1:0] b_q
);
  logic [DW-1:0] mem [0:DEPTH-1];
  always_ff @(posedge clk_i) begin
    if (a_ce) begin
      if (a_we) mem[a_addr] <= a_d;
      else      a_q <= mem[a_addr];
    end
  end
  always_ff @(posedge clk_i) begin
    if (b_ce) begin
      if (b_we) mem[b_addr] <= b_d;
      else      b_q <= mem[b_addr];
    end
  end
endmodule