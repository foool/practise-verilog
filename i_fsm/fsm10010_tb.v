
module test;

    reg clk, rst;
    reg a;
    wire z;
    wire [2:0] cstate;

    //reg [2:0] cstate;

    fsm10010 dut(clk, rst, a, z, cstate);

    initial begin
        clk = 1;
        rst = 0;
        #1 rst=1;
        #1 rst=0;
        #2 a=1;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=1;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=0;
        #2 a=0;
        #2 a=1;
        #2 a=0;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #100
        $dumpoff();
        $finish;
    end

    always #1 clk=~clk;

endmodule
