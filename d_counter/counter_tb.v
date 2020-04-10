module test;

    reg [3:0] ivalue;
    reg rst, clk;
    wire [3:0] out;

    counter dut(.count(out), .clk(clk), .rst(rst), .initial_value(ivalue));

    initial begin
        ivalue = 4'b0100;
        rst = 1'b0;
        clk = 1'b0;
        rst <= #0 1'b1;
        rst <= #1 1'b0;
        rst <= #10 1'b1;
        rst <= #11 1'b0;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #32
        $dumpoff();
        $finish;
    end

    always #1
    begin
        $display("%t:    cout= %b %h %h %b%b%b%b",  
            $time, clk, ivalue, rst, out[3], out[2], out[1], out[0]);
        clk = ~clk; 
    end

endmodule
