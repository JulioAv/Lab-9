module FFD1 (input wire D1, enabled, clk, reset, output reg Q1);
always @(posedge clk or posedge enabled or posedge reset) begin

  if (reset)
    Q1<=0;
  else if (enabled)
    Q1<=D1;
  end
endmodule

module FFD2 (input wire [1:0]D2, input wire enabled, clk, reset, output wire [1:0]Q2);

FFD1 M1 (D2[0], enabled, clk, reset, Q2[0]);
FFD1 M2 (D2[1], enabled, clk, reset, Q2[1]);

endmodule

module FFD3 (input wire [3:0]D3, input wire enabled, clk, reset, output wire [3:0]Q3);

FFD1 M3 (D3[0], enabled, clk, reset, Q3[0]);
FFD1 M4 (D3[1], enabled, clk, reset, Q3[1]);
FFD1 M5 (D3[2], enabled, clk, reset, Q3[2]);
FFD1 M6 (D3[3], enabled, clk, reset, Q3[3]);

endmodule
