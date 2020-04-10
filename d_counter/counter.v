module counter (count, clk, rst, initial_value);

    input clk, rst;
    input [3:0] initial_value;
    output [3:0] count;
    reg [3:0] count;
    
    always @ (posedge clk or posedge rst)
        if (rst)
            count <= initial_value;
        else if( count == 4'b1111)
            count <= 4'b0000;
        else
            count <= count + 4'b0001;

endmodule
