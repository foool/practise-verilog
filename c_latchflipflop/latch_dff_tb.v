module test;
    wire out0, out1;

    reg in0, in1;
    reg sel;
    reg en;
    reg rst, clk;

    latch dut(.data(in0), .enable(en), .q(out0));
    dff dee(.clk(clk), .rst(rst), .d(in0), .q(out1));

    initial begin
        in0 = 1'b0;
        in1 = 1'b1;
        rst = 1'b0;
        clk = 1'b0;
        en = 1'b0;
        sel = 1'b0;
        #0 en = 1'b1;
        #2 sel = 1'b1;
        #2 en = 1'b1;
        #0 in0 = 1'b1;
        #2 rst = 1'b1;
        #2 rst = 1'b0;
        #0 en = 1'b0;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #10
        $dumpoff();
        $finish;
    end

    always #1
    begin
        $display("%t:    cout= %b %h %h %h %h %b",  
            $time, clk, out0, out1, in0, in1, sel);
        clk = ~clk; 
    end

endmodule
