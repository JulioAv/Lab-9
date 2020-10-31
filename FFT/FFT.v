module FFD1 (input wire D1, enabled, clk, reset, output reg Q);
always @(posedge clk or posedge enabled or posedge reset) begin

  if (reset)
    Q<=0;
  else if (enabled)
    Q<=D1;
  end
endmodule

module FFT (input wire clk, enabled, reset, output wire Q);
  wire D1;
  not (D1, Q);

FFD1 F1 (D1, enabled, clk, reset, Q);


endmodule
