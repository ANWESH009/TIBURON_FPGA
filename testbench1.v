`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2020 11:40:20
// Design Name: 
// Module Name: testbench1
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


module testbench1;
     
      //inputs
      reg [2:0] a;
      //outputs
      wire [0:7] y;
      
      //instantiton
      
      Decoder3to8 uut(
            .Y1(y),
            .A(a)
            );
            
       always begin
              
                a=3'b000;
            #50 a=3'b001;
            #50 a=3'b010;
            #50 a=3'b011;
            
            #50 a=3'b100;
            #50 a=3'b101;
            #50 a=3'b110;
            #50 a=3'b111;
            
            #100 $finish; 
        
        end
            
            
endmodule
