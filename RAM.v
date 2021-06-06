module ram (data_out, data_in,clk, address, write, chip_select);
 
 parameter ADDRESS_SIZE = 10, DATA_SIZE = 10, MEMORY_SIZE = 1024;
 input [ADDRESS_SIZE-1:0] address;
 input [DATA_SIZE-1:0] data_in;
 input write, chip_select,clk;
 output [DATA_SIZE-1:0] data_out;
 reg [DATA_SIZE-1:0] memory[MEMORY_SIZE-1:0];
 integer i;
 
 //read
 assign data_out = memory[address];
 
 //write
 always @(posedge clk) begin
    if (write) memory[address] = data_in; 
 end
 
endmodule

module ram_reset(data_out, data_in,clk_reset, address, write, chip_select,reset);

    parameter ADDRESS_SIZE = 10, DATA_SIZE = 10, MEMORY_SIZE = 1024;
    input [ADDRESS_SIZE-1:0] address;
    input [DATA_SIZE-1:0] data_in;
    wire [DATA_SIZE-1:0] data_o;
    wire [DATA_SIZE-1:0] data_i;
    input write, chip_select;
    input reset,clk_reset;
    output [DATA_SIZE-1:0] dgata_out;
    wire [ADDRESS_SIZE-1:0] addr;
    wire w,select;
    reg [ADDRESS_SIZE-1:0] counter=0;
	
    ram RAM(data_out, data_i,clk_reset, addr, w, select);
    
    always @(posedge clk_reset) begin
        if(reset) begin
            counter=counter+1;
        end
        else begin
            counter=0;
        end
    end

    assign addr =  0 ? counter: address;
    assign w = reset ? 1 : write;
    assign select = reset ? 1 : chip_select;
    assign data_i = reset ? 0 : data_in;

endmodule
