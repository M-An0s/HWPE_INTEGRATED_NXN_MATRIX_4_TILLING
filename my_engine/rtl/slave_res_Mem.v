// identical to res_Mem MAYBE SHOULD BE THE SAME 

module slave_res_Mem #(parameter DEPTH=16, AW=4, DW=32)(
  input  logic          clk_i,
  input  logic          rst_ni,
  // port A -- cont FIFO read (pop results)
  input  logic          a_ce,
  output logic [DW-1:0] a_q,
  output logic          a_q_valid,
  // port B -- compute write
  input  logic [AW-1:0] b_addr,
  input  logic          b_ce,
  input  logic          b_we,
  input  logic [DW-1:0] b_d
);
  logic [AW-1:0] rd_ptr = '0;
  logic [DW-1:0] mem [0:DEPTH-1];

  // port A: FIFO pop
  assign a_q       = mem[rd_ptr];
  assign a_q_valid = 1'b1;

  always_ff @(posedge clk_i) begin
    if (!rst_ni)      rd_ptr <= '0;
    else if (a_ce)    rd_ptr <= rd_ptr + 1'b1;   // advance on read
  end

  // port B: compute writes
  always_ff @(posedge clk_i) begin
    if (b_ce && b_we) mem[b_addr] <= b_d;
  end
endmodule