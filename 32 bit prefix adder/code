module PrefixAdder (    
input [31:0] a, b,  
input cin,   
output [31:0] sum,     
output cout );   
wire [31:0] p, g, c;     
assign p = a ^ b;    
assign g = a & b;    
assign c[0] = cin;     
genvar i;     generate     
for (i = 1; i < 32; i = i + 1) begin          
assign c[i] = g[i-1] | (p[i-1] & c[i-1]);       
end    
endgenerate  
assign sum = p ^ c;    
assign cout = g[31] | (p[31] & c[31]);
endmodule
