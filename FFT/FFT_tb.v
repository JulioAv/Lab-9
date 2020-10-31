module testbench();
reg clk, T, enabled, reset;
wire Q;

FFT F1(clk, enabled, reset, Q);
always
#1 clk=~clk;

initial begin
#1
$display("Flip Flop tipo T");
$display("clk  Enabled Reset Q");
$display("---------------------");
$monitor("%b   %b   %b   %b", clk, enabled, reset, Q);
end
initial begin
#1 clk=0; reset=1; enabled=1;
#1 reset=0;
end

initial
  #15 $finish;
initial begin
  $dumpfile("FFT_tb.vcd");
  $dumpvars(0, testbench);
end


endmodule
