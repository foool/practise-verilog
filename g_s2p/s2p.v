/*
* serial input, parallel output
*/
module s2p (rst, clk, s2p_en, data_in, data_out, data_out_valid);
    input rst, clk;
    input s2p_en;
    input data_in;
    output data_out_valid;
    output [3:0] data_out;

    reg [3:0] data_out;
    reg data_out_valid;
    reg [1:0] counter;

    always@(posedge clk or negedge rst) begin
        if(!rst)
            counter<=2'b00;
        else if(counter==2'b11)
            counter<=2'b00;
        else
            counter<=counter+2'b1;
    end

    always@(posedge clk or negedge rst) begin
        if(!rst)
            data_out<=4'b0000;
        else if(s2p_en) 
            data_out<={data_out[2:0], data_in};
        else
            data_out<=4'b0000;
    end

    always@(posedge clk or negedge rst) begin
        if(!rst)
            data_out_valid<=1'b0;
        else if((counter==2'b11)&&(s2p_en))
            data_out_valid<=1'b1;
        else
            data_out_valid<=1'b0;
    end

endmodule
