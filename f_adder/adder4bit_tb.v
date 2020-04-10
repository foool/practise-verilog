module test;
    reg clk;
    reg [10:0] vmem [0:2];
    reg [3:0] a;
    reg [3:0] b;
    reg cin;
    reg [2:0] counter;
    
    wire cout;
    wire [3:0] sum;

    adder4bit dut(a, b, cin, sum, cout);

    initial begin
        $readmemb ("test.dat", vmem);
        for(counter=0; counter<2'b11; counter=counter+1) begin
            {a, b, cin} = vmem[counter];
            #5;
        end 
    end

    initial begin
        $dumpfile("./test.vcd");
        $dumpvars(-1, test);
        $dumpon();
        #32
        $dumpoff();
        $finish;
    end


    always #1 begin
        clk = ~clk;
        $display("%t:   cout=%h %h %h %h %h",
            $time, a, b, cin, sum, cout);
    end
endmodule
