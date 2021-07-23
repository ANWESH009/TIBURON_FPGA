`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2021 16:37:46
// Design Name: 
// Module Name: task2
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



module beerus(clk,ignition,cut,u,S,v);
    
    input clk,ignition,cut;
    input [4:0] u;
    output[4:0] S,v;
    reg [2:0] a;
    reg [2:0] t;
    reg [8:0] s1,s2,s3;
    //reg [8:0] s4;
	reg [5:0] v1,v2,v3,v4;
	//reg [] s2;
	//reg [] v2;
	//reg [] s3;
	//reg [] v3;
    reg [1:0] state;
    reg input_stage;
    parameter stage_1 = 2'd0,
    stage_2 = 2'd1,
    stage_3 = 2'd2;


//cut <= 1'b1;
//ignition <= 1'b1;




    always@(posedge clk)
    begin
    case(state)
        stage_1:
        begin

        input_stage<= 1'd0;
        t <= 3'd1;
        //u <= 5'b0;
        a <= 3'd3;
        s1 <= u*t+a*(t*t);
        v1 <= u + a*t;

        
        input_stage<=cut;
        if(input_stage && ignition)
        begin
            state <= stage_2;
        end
        end

        stage_2:
        begin
        v1 <= v1 + 6'd1;
		t <= 3'd2;
//t <= 3'd2;
        a <= 3'd2;
        s2 <= s1 + v1*t + a*(t*t);
        v2 <= v1 + a*t;

        
        if(cut)
        begin
            state <=stage_3;
        end
        end



        stage_3:
        begin
        v2 <= v2+6'd2;
        a <= 3'd1;
		t <= 3'd2;
        s3 <= s2 + v2*t + a*(t*t);
        v3 <= v2 + a*t;
        end
    endcase
   end

    //assign s4 = s1 + s2+ s3;
	assign S = s3;
    assign v=v1;

  endmodule
  