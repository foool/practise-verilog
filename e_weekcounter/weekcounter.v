
module weekcounter (clk, rst, s, m, h, d, w);
    input clk,rst;
    output [5:0] s,m;
    output[4:0] h;
    output[4:0] d;
    output [2:0] w;
    reg [5:0]s,m;
    reg [4:0] h;
    reg [4:0] d;
    reg [2:0] w;


    always@(posedge clk or negedge rst)
        if(rst) begin
            s<=6'b000000;
            m<=6'b000000;
            h<=5'b00000;
            d<=5'b00000;
            w<=3'b001;
        end
        else if(s==6'b111011) begin
            s<=6'b000000;
            if(m==6'b111011) begin
                m<=6'b000000;
                if(h==5'b10111) begin
                    h<=5'b00000;
                    if(d==4'b0111) begin
                        d<=4'b0000;
                        if(w==3'b111)
                            w<=3'b000;
                    else
                        w<=w+1;
                    end
                    else
                        d<=d+1;
                end
                else
                    h<=h+1;
            end
            else
                m<=m+1;
        end
        else
            s<=s+1;

endmodule


