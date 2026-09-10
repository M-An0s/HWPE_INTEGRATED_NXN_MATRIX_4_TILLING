module slave_res_Mem #(parameter DEPTH=16, AW=4, DW=32)(
  input logic clk_i,
  input logic [AW-1:0] addr,
  input logic ce, we,
  input logic [DW-1:0] d,
  output logic [DW-1:0] q
);
  logic [DW-1:0] mem [0:DEPTH-1];
  always_ff @(posedge clk_i) begin
    if (ce) begin
      if (we) mem[addr] <= d;
      else    q <= mem[addr];
    end
  end
endmodule