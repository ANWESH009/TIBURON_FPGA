`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2020 21:20:57
// Design Name: 
// Module Name: Alu_4_bit
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


module Alu_4_bit(d,a,b,cin,f);
    
    //inputs
    input cin;
    input [3:0]a,b;
    input [3:0]f;//selector
    
    //outputs
    output [7:0]d;
    reg [7:0]d;
    
    //design by behaivoural modelling
    always@(f,a,b,cin)//always is used to contain all the procedural statements
    begin
        case(f)
           
            4'b0000://0 not
                     d=!a;
            4'b0001://1 subtraction 
                    d=a-b-cin;
            4'b0010://2 addition 
                    d=a+b+cin;
            4'b0011://3 and 
                    d=a&&b;
            4'b0100://4 or 
                    d=a||b;
            4'b0101://5 xor 
                    d=a^b;
            4'b0110: //6 xnor
                    d=!(a^b);
            4'b0111://7 multipication
                     d=a*b;
            4'b1000://8 division
                    d=a/b;
            4'b1001://9 left shift
                    d=a<<1;
            4'b1010://10 right shift
                     d=a>>1;
            4'b1011://11 increament
                     d=a+1;
            4'b1100://12 decreament
                     d=a-1;
        
        
        endcase
    end
    
endmodule


