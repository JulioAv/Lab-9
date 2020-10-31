module FFD1 (input wire D1, enabled, clk, reset, output reg Q);
always @(posedge clk or posedge enabled or posedge reset) begin

  if (reset)
    Q<=0;
  else if (enabled)
    Q<=D;
  end
endmodule

module FFJK (input wire clk, enabled, J, K, reset, output reg Q);
always @(posedge clk or posedge enabled or posedge reset) begin


end

endmodule
