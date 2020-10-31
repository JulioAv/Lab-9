module testbench();
reg [6:0]D;
wire[12:0]Q;

ROM r1(D, Q);

initial begin
#1
$display("ROM Microcode");
$display("D          Q");
$display("------------");
$monitor("%b         %b", D, Q);
end

initial begin
#1 D=7'b1111110;
#1 D=7'b0000101;
#1 D=7'b0000001;
#1 D=7'b0001101;
#1 D=7'b0001001;
#1 D=7'b0010111;
#1 D=7'b0011101;
#1 D=7'b0100011;
#1 D=7'b0101001;
#1 D=7'b0110011;
#1 D=7'b0111101;
#1 D=7'b1000011;
#1 D=7'b1000101;
#1 D=7'b1001011;
#1 D=7'b1001101;
#1 D=7'b1010101;
#1 D=7'b1011011;
#1 D=7'b1100001;
#1 D=7'b1101101;
#1 D=7'b1110001;
#1 D=7'b1111101;
#1 D=7'b0010111;
#1 D=7'b0001101;
#1 D=7'b0100101;
#1 D=7'b0000101;
#1 D=7'b1001011;
end

initial
#25 $finish;
initial begin
$dumpfile("ROM_tb.vcd");
$dumpvars(0, testbench);
end

endmodule
