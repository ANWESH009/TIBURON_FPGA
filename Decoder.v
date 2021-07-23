`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2020 11:25:21
// Design Name: 
// Module Name: Decoder
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

//verilog code for the 2to4Decoder
module Decoder2to4(output reg [0:3]Y, input En, input [1:0]X   );
    
    always @(X,En) 
    begin 
        if(En==0)
            Y=4'b0000;
        else
            case(X) 
                0:Y=4'b1000;
                1:Y=4'b0100;
                2:Y=4'b0010;
                3:Y=4'b0001;
            endcase
     
     end 
endmodule
    
 //instantiating 2to4Decoder in 3to8Decoder   
  
module Decoder3to8(output [0:7]Y1, input [2:0]A);
    
    Decoder2to4 f1( Y1[0:3] , ~A[2] , A[1:0] );
    Decoder2to4 f2( Y1[4:7] , A[2] , A[1:0] );
 
 endmodule   
    
