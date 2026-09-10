module Mem #(
  parameter int DEPTH = 20,
  parameter int AW    = 5,     // $clog2(20) = 5
  parameter int DW    = 64
)(
  input  logic          clk_i,
  input  logic          rst_ni,
  // port A -- POP-like reads for efficiently outputting results (FIFO style)
  input  logic          a_ce,
  output logic [DW-1:0] a_q,
  output logic          a_q_valid,   // high the cycle a_q holds valid data
  // port B -- compute (read/write side)
  input  logic [AW-1:0] b_addr,
  input  logic          b_ce,
  input  logic          b_we,
  input  logic [DW-1:0] b_d,
  output logic [DW-1:0] b_q
);

  logic [AW-1:0] rd_ptr = '0;
  logic [DW-1:0] mem [0:DEPTH-1];

  // port A: FIFO pop
  assign a_q       = mem[rd_ptr];
  assign a_q_valid = 1'b1;

  always_ff @(posedge clk_i) begin
    if (!rst_ni)   rd_ptr <= '0;
    else if (a_ce) rd_ptr <= rd_ptr + 1'b1;
  end

  // port B: compute read/write (single port)
  always_ff @(posedge clk_i) begin
    if (b_ce) begin
      if (b_we) mem[b_addr] <= b_d;
      else      b_q <= mem[b_addr];
    end
  end

endmodule