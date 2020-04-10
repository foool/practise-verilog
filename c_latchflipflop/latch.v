module latch (data, enable, q);
input data, enable;
output q;
reg q;

always @(enable or data)
    if (enable)
        q <= data;
endmodule
