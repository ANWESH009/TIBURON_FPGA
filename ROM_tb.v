`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2020 23:25:06
// Design Name: 
// Module Name: ROM_tb
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


module ROM_tb();

    reg [3:0]address;
    wire [9:0] data;
    
      
    integer i; 
    
    rom uut(
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
