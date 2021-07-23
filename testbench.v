`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.10.2020 13:15:24
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg a;
    reg b;
    reg bin;
    wire d;
    wire bout;
    
    fullsubtractor1 uut(
        .a(a),
        .b(b),
        .bin(bin),
        .d(d),
        .bout(bout)
         );
         
     initial 
     begin

        a=0;b=0;bin=0;
        #50 a=0;b=0;bin=1;
        #50 a=0;b=1;bin=0;
        #50 a=0;b=1;bin=1;
        #50 a=1;b=0;bin=0;
        #50 a=1;b=0;bin=1;
        #50 a=1;b=1;bin=0;
        #50 a=1;b=1;bin=1;
        
        #100;
      
        #10 $finish;
      end
endmodule
