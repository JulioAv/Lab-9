module buffer(input wire [3:0]D, input wire B, output reg [3:0]Q);
always @(*) begin
if (B)
  Q<=D;
else
  Q<=4'bz;
end 
endmodule
