module dff (clk, rst, d, q);
    input clk, rst, d;
    output q;
    reg q;

    always @(clk or rst or d)
        if(rst)
            q = 1'b0;
        else
            q = d;
endmodule
