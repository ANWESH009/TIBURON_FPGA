`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 21:19:49
// Design Name: 
// Module Name: fullsubtractor3
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

module fullsubtractor3( d,bout,a,b,bin);
    
    output d,bout;
    input a,b,bin;
    wire p,q,r;
    
    xor(d,a,b,bin);
    and(p,~a,b);
    and(q,b,bin);
    and(r,~a,bin);
    or(bout,p,q,r);
    
 endmodule  