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
  output logic [DW-1:0] b_q,

  input  logic [AW-1:0] c_addr,
  input  logic          c_ce,
  input  logic          c_we,
  input  logic [DW-1:0] c_d,
  output logic [DW-1:0] c_q
);
  logic [DW-1:0] mem [0:DEPTH-1];
 always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
        a_q <= '0;
    end else if (a_ce) begin
        if (a_we)
            mem[a_addr] <= a_d;
        else
            a_q <= mem[a_addr];
    end
end

always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
        b_q <= '0;
    end else if (b_ce) begin
        if (b_we)
            mem[b_addr] <= b_d;
        else
            b_q <= mem[b_addr];
    end
end

always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
        c_q <= '0;
    end else if (c_ce) begin
        if (c_we)
            mem[c_addr] <= c_d;
        else
            c_q <= mem[c_addr];
    end
end

endmodule