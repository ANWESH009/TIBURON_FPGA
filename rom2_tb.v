`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.11.2020 00:07:43
// Design Name: 
// Module Name: rom2_tb
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


module rom2_tb;
    
    reg [3:0]address;
    wire [9:0] data;
    
      
    integer i; 
    
    rom2 uut(
            .address(address),
            .data(data)
            );
    
    
    initial 
        begin
        
            for(i=0 ; i<10 ; i=i+1)
          
            begin
            address=i;
          
            #50;
          
            $display("%h",data);
         
            end
          
        end
          
endmodule
