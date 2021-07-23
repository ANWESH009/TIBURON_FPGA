`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.10.2020 15:46:44
// Design Name: 
// Module Name: testbench2
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


module testbench2;
    reg A;
    reg B;
    reg Bin;
    
    wire D;
    wire Bout;
    
    FullSubtractor2 uut(
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
        );
        
     initial 
     begin
        
        $monitor ("%t, A = %d| B = %d| Bin = %d| B = %d| D = %d", $time, A, B, Bin, Bout, D);
       
        A=0; B=0; Bin=0;
        #50 Bin=1;
        #50 B=1; Bin=0;
        #50 B=1; Bin=1;
        #50 A=1; B=0; Bin=0;
        #50 Bin=1;
        #50 B=1; Bin=0;
        #50 Bin=1;

        #100;
     
     end
    

    
endmodule
