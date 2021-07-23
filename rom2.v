`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2020 00:05:51
// Design Name: 
// Module Name: rom2
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


module rom2(address,data,cs);
    
    input cs;
    input  [3:0]address;
    output [9:0]data;
    reg [9:0] m[9:0];
    reg [9:0]data;
    
    initial 
        begin
          
          $readmemh("input1.txt",m);
          
        end
    
    always @(address)
        begin
         case(address)
         
             4'b0000: data=m[0];
             4'b0001: data=m[1];
             4'b0010: data=m[2];
             4'b0011: data=m[3];
             4'b0100: data=m[4];
             4'b0101: data=m[5];
             4'b0110: data=m[6];
             4'b0111: data=m[7];
             4'b1000: data=m[8];
             4'b1001: data=m[9];
         
         endcase
         
        end
            
    
endmodule

