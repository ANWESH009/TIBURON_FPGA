module RAM_reset_test;
reg [9:0] address;
wire [9:0] data_out;
reg [9:0] data_in;
reg write, chip_select,clk_reset,reset;
integer k,i;
ram_reset RAM (data_out, data_in,clk_reset, address, write, chip_select,reset);
initial begin
    clk_reset=0;
    reset=0;
end
initial begin
	$dumpfile("ram.vcd");
	$dumpvars(0, RAM_reset_test);
end

always #5 clk_reset = ~clk_reset;
initial begin
    #10
    for (k=0; k<=1023; k=k+1) begin
        address = k;reset=0;
        data_in = k;  write = 1; chip_select = 1;
        #10 write = 0; chip_select = 0;
    end
    // reset=1;
    // #1000
    for (k=1; k<=1000; k=k+1) begin
        address = k;reset=0;
        write = 0; chip_select = 1;
        $display ("Address: %5d, Data: %4d", address,data_out);
        #5 chip_select = 0;
    end
    $finish;
end
endmodule