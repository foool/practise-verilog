module test();

    wire out;
    reg in0, in1;
    reg sel;

    mux2to1 dut(.b(in1), .a(in0),  .sel(sel), .out(out));

    initial begin
        in0 = 2'b00;
        in1 = 2'b01;
        #1 sel = 1'b0;
        #1 sel = 1'b1;
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #6
        $dumpoff();
        $finish;
    end

    always #1
    $display("%t:    cout=%b %h %h %b", $time, out, in0, in1, sel);

endmodule
