`timescale 1 ns/1ns
module test;
    reg rst1,clk1;
    reg s2p_en1;
    reg data_in1;
    wire [3:0]data_out1;
    wire data_out_valid1;
    
    s2p serial2parallel (.rst(rst1),.clk(clk1),.s2p_en(s2p_en1),
    .data_in(data_in1),.data_out(data_out1),.data_out_valid(data_out_valid1));
    
    initial begin
        rst1=1;
        clk1=0;
        #5 rst1=0;
        #3 rst1=1;
        #5 s2p_en1=1'b1;
    end
    
    initial begin
        #40 data_in1=1;
        #100 data_in1=0;
        #100 data_in1=1;
        #100 data_in1=1;
        #100 data_in1=0;
        #100 data_in1=0;
        #100 data_in1=1;
        #100 data_in1=0;
        #100 data_in1=1;
        #100 data_in1=1;
        #100 data_in1=1;
        #100 data_in1=1;
        #100 data_in1=0;
        #100 data_in1=1;
        #100 data_in1=0;
        #100 data_in1=1;
    end
    
    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #2000
        $dumpoff();
        $finish;
    end
    
    always #50 clk1=~clk1;
    
endmodule
