/*
* frequency division
*/

module clk4d (preclk, rst, clk4d);
    input preclk, rst;
    output clk4d;

    reg clk4d;
    reg [1:0] counter;

    always @(posedge preclk or posedge rst) begin
        if(rst) begin
            counter <= 2'b00;
            clk4d <= 1'b0;
        end
        else if(counter >= 2'b01) begin
            clk4d = ~clk4d;
            counter <= 2'b00;
        end
        else
            counter <= counter+2'b01;
    end
endmodule


module clk2d (preclk, rst, clk2d);
    input preclk, rst;
    output clk2d;

    reg clk2d;

    always @(posedge preclk or posedge rst) begin
        if (rst) 
            clk2d <= 1'b0;
        else
            clk2d = ~clk2d;
    end

endmodule
