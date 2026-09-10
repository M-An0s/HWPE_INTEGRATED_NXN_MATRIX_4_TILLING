// Standard synchronous FIFO for master->slave forwarding.
// Write side  = master's fwd_out  (wr_data/wr_en/full_n)
// Read side   = slave's  fwd_in   (rd_data/empty_n/rd_en)

module stream_fifo #(
  parameter int DW    = 32,
  parameter int DEPTH = 16,
  parameter int AW    = 4          // $clog2(DEPTH)
)(
  input  logic          clk_i,
  input  logic          rst_ni,
  // ---- write side (from master fwd_out) ----
  input  logic [DW-1:0] wr_data,
  input  logic          wr_en,     // master's _write
  output logic          full_n,    // -> master's _full_n
  // ---- read side (to slave fwd_in) ----
  output logic [DW-1:0] rd_data,   // -> slave's _dout
  output logic          empty_n,   // -> slave's _empty_n
  input  logic          rd_en      // slave's _read
);

  logic [DW-1:0] mem [0:DEPTH-1];
  logic [AW-1:0] wr_ptr, rd_ptr;
  logic [AW:0]   count;            // 0..DEPTH

  assign full_n  = (count != DEPTH);
  assign empty_n = (count != 0);
  assign rd_data = mem[rd_ptr];

  wire do_wr = wr_en && full_n;
  wire do_rd = rd_en && empty_n;

  always_ff @(posedge clk_i) begin
    if (!rst_ni) begin
      wr_ptr <= '0;
      rd_ptr <= '0;
      count  <= '0;
    end else begin
      if (do_wr) begin
        mem[wr_ptr] <= wr_data;
        wr_ptr <= wr_ptr + 1'b1;
      end
      if (do_rd) begin
        rd_ptr <= rd_ptr + 1'b1;
      end
      if      (do_wr && !do_rd) count <= count + 1'b1;
      else if (!do_wr && do_rd) count <= count - 1'b1;
      // both or neither: count unchanged
    end
  end

endmodule