`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 23:15:33
// Design Name: 
// Module Name: testbench3
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


module testbench3;
    reg a;
    reg b;
    reg bin;
    wire d;
    wire bout;
    
    //unit under test
    
    fullsubtractor3 uut(
    .a(a),
    .b(b),
    .bin(bin),
    .d(d),
    .bout(bout)
    
    );
    
    initial
    begin
        
      a=0;b=0;bin=0;
      #100 a=0;b=0;bin=1;
      #100 a=0;b=1;bin=0;
      #100 a=0;b=1;bin=1;
      #100 a=1;b=0;bin=0;
      #100 a=1;b=0;bin=1;
      #100 a=1;b=1;bin=0;
      #100 a=1;b=1;bin=1;
      
      
       #500;
       
     end;
       
endmodule
