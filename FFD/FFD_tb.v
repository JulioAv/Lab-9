module testbench ();
reg D1, enabled, clk, reset;
reg [1:0] D2;
wire [1:0] Q2;
reg [3:0] D3;
wire [3:0] Q3;
wire Q1;

FFD1 F1(D1, enabled, clk, reset, Q1);
FFD2 F2(D2, enabled, clk, reset, Q2);
FFD3 F3(D3, enabled, clk, reset, Q3);

always
#1 clk=~clk;

initial begin
  #1
  $display("FFD de un bit");
  $display("clk D Reset Enabled Q");
  $display("-------------");
  $monitor("%b  %b  %b   %b   %b", clk, D1, reset, enabled, Q1);

  #1 reset=1; clk=0; enabled=1; D1=0;
  #1 reset=0;
  #5 D1=1;
  #5 enabled=0; D1=0;
  #5 enabled=1;
end

initial begin
#18
$display("FFD de dos bits");
$display("clk D Reset Enabled Q");
$display("-------------");
$monitor("%b  %b  %b   %b   %b", clk, D2, reset, enabled, Q2);

  #1 reset=1; clk=0; enabled=1; D2=0;
  #1 reset=0;
  #5 D2=1;
  #5 enabled=0; D2=0;
  #5 enabled=1;
end

initial begin
#36
$display("FFD de dos bits");
$display("clk D Reset Enabled Q");
$display("-------------");
$monitor("%b  %b  %b   %b   %b", clk, D3, reset, enabled, Q3);

  #1 reset=1; clk=0; enabled=1; D3=0;
  #1 reset=0;
  #5 D3=1;
  #5 enabled=0; D3=0;
  #5 enabled=1;
end

initial
  #54 $finish;
initial begin
  $dumpfile("FFD_tb.vcd");
  $dumpvars(0, testbench);
end



endmodule
