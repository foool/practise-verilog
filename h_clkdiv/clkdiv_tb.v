
module test;
    wire clk2d;

    reg preclk;
    reg rst;

    clk2d dut(preclk, rst, clk2d);

    initial begin
    preclk <= 1'b0;
    #0 rst <= 1'b1;
    #1 rst <= 1'b0;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #200
        $dumpoff();
        $finish;
    end

    always #5 preclk=~preclk;

    

endmodule
