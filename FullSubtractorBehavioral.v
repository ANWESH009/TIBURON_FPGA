`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 15:17:00
// Design Name: 
// Module Name: FullSubtractor2
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


module FullSubtractor2(input A,
    input B,
    input Bin,
    output D,
    output Bout
    );
    reg D,Bout;
    always @(A,B,Bin)
    begin
        D=A^B^Bin;
        Bout=(B&Bin) | ((~A)&Bin) | ((~A)&B);
    end
endmodule
