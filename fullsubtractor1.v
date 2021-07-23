`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2020 13:10:42
// Design Name: 
// Module Name: fullsubtractor1
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


module fullsubtractor1(a,b,bin,d,bout );
    input a;
    input b;
    input bin;
    output d; 
    output bout;
    
    assign d=a^b^bin;
    assign bout= ~a&b | b&bin | bin&~a;
       
endmodule
