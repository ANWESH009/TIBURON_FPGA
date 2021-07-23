`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2021 10:39:05
// Design Name: 
// Module Name: tesbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tesbench;
reg clk, rst;
reg [31:0] input_a;
reg input_a_stb;
reg [31:0] input_b;
reg input_b_stb;
reg output_z_ack;
//reg s_input_a_ack,s_input_b_ack;

wire input_a_ack;
wire input_b_ack;
wire [31:0] output_z;
wire output_z_stb;

floating_divider uut(

.input_a(input_a),
.input_b(input_b),
.input_a_stb(input_a_stb),
.input_b_stb(input_b_stb),
//.s_input_a_ack(s_input_a_ack),
//.s_input_b_ack(s_input_b_ack),
.output_z_ack(output_z_ack),
.clk(clk),
.rst(rst),

.output_z(output_z),
.output_z_stb(output_z_stb),
.input_a_ack(input_a_ack),
.input_b_ack(input_b_ack)
);
always #1 clk=~clk;

initial begin

     clk= 1'b0;
   
    end
initial
begin

rst=1'b1;
input_a_stb=1'b1;
input_b_stb=1'b1;
output_z_ack=1'b0;
//s_input_a_ack=1'b1;
//s_input_b_ack=1'b1;

#5 rst=1'b0;
#2 input_a=32'b00111111011011100000000000000000;

#1 input_b=32'b00111100011001000000000000000000;
//#2 s_input_a_ack=1'b1;

//#5 s_input_b_ack=1'b0;
//#2000 $finish;
end
initial
begin
$monitor("time=",$time,"input_a =%b,input_b=%b,output_z=%b",input_a,input_b,output_z);
end

endmodule