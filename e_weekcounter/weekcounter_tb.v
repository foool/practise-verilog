`timescale 1s/1s

module test;
    reg rst, clk;
    wire [5:0] s;
    wire [5:0] m;
    wire [4:0] h;
    wire [4:0] d;
    wire [2:0] w;


    weekcounter dut(clk, rst, s, m, h, d, w);

    initial begin
        rst = 1'b0;
        clk = 1'b0;
        #1 rst = 1'b1;
        #1 rst = 1'b0;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #2000000
        $dumpoff();
        $finish;
    end

    always #1
        clk = ~clk; 
    always #(3600*24)
    begin
        $display("%t:    cout= %b %b %h %h %h %h %h",  
            $time, clk, rst, s, m, h, d, w);
    end

endmodule
