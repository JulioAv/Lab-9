module testbench();
reg [3:0]D;
reg B;
wire [3:0]Q;

buffer b1(D, B, Q);

initial begin
  #1
  $display("Buffer Tri-Estado");
  $display("  D   B Q");
  $display("---------");
  $monitor("  %b   %b %b", D, B, Q);
end

initial begin
#1 D=10; B=0;
#10 B=1;
#5 D=15;
#5 B=0;
#5 D=5;
end

initial
#35 $finish;
initial begin
$dumpfile("buffer_tb.vcd");
$dumpvars(0, testbench);
end 
endmodule
