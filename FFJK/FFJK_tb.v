module testbench();
reg clk, enabled, J, K, reset, D1;
wire Q;

FFJK F1 (clk, enabled, J, K, reset, Q);

always
#1 clk=~clk;

initial begin
#1
$display("Flip Flop JK");
$display("J  K  reset  enabled  Q");
$display("-----------------------");
$monitor("%b  %b  %b  %b  %b", J, K, reset, enabled, Q);

#1 J=1; K=0; reset=1; enabled=1; clk=0;
#1 reset=0;
#5 J=0;
#5 J=1; K=1;
#5 J=0;
end

initial
#20 $finish;
initial begin
$dumpfile("FFJK_tb.vcd");
$dumpvars(0, testbench);
end


endmodule
