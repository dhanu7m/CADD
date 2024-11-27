module PrefixAdder_tb;
reg [31:0] a, b; 
reg cin; 
wire [31:0] sum; 
wire cout; 

PrefixAdder uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
initial begin
$display("Starting Prefix Adder Testbench");
a = 32'h00000001;
b = 32'h00000001; 
cin = 0;
#10;
$display("a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
a = 32'hFFFFFFFF; 
b = 32'h00000001; 
cin = 0;
#10;
$display("a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
a = 32'h00000001; 
b = 32'h00000001; 
cin = 1;
#10;
$display("a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
a = 32'h80000000; 
b = 32'h7FFFFFFF; 
cin = 0;
#10;
$display("a = %h, b = %h, cin = %b, sum = %h, cout = %b", a, b, cin, sum, cout);
$finish;
end
endmodule
