`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2020 21:22:27
// Design Name: 
// Module Name: testbench1_ALU
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


module testbench1_ALU;

//input 
     reg [3:0]a;
     reg [3:0]b;
     reg [3:0]f;//selector
     reg cin;
    
    //output 
     wire [7:0]d;
    
    //unit under test 
     Alu_4_bit uut(
               .d(d),
               .a(a),
               .b(b),
               .cin(cin),
               .f(f)
               );
               
      initial begin
      
                //1 not 
                a=1; b=0; cin=0;  f=4'b0000;
           
            //2 subtract
            #20 a=1; b=1; cin=0;  f=4'b0001;
           
            //3 add
            #20 a=7; b=1; cin=1;  f=4'b0010;
           
            //4 and
            #20 a=0; b=1; cin=0;  f=4'b0011;
           
            //5 or
            #20 a=0; b=1; cin=0;  f=4'b0100;
           
            //6 xor
            #20 a=1; b=1; cin=0;  f=4'b0101;
           
            //7 xnor
            #20 a=1; b=0; cin=0;  f=4'b0110;
           
            //8 multiply
            #20 a=6; b=5; cin=0;  f=4'b0111;
           
            //9 division
            #20 a=10; b=5; cin=0;  f=4'b1000;
           
            //10 left shift
            #20 a=6; b=1; cin=0;  f=4'b1001;
           
            //11 right shift
            #20 a=5; b=1; cin=0;  f=4'b1010;
           
            //12 increament
            #20 a=8; b=0; cin=0;  f=4'b1011;
           
            //13 decreament
            #20 a=3; b=0; cin=0;  f=4'b1100;
           
            #20 $finish;
                  
           #100;
           
      end  
         
  endmodule
