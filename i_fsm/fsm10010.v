/*
* Finite State Machine
* Detecting string '10010'.
* 
* a store input bit 
* z and cstate are output, 
* when z=1, we find a sequence of '10010'
*/

module fsm10010 (clk, rst, a, z, cstate);
    input clk, rst;
    input a;
    output z;
    output [2:0] cstate;

    reg [2:0] cstate;   // current state
    reg z;

    parameter s0 = 3'b000;
    parameter s1 = 3'b001;
    parameter s2 = 3'b010;
    parameter s3 = 3'b011;
    parameter s4 = 3'b100;
    parameter s5 = 3'b101;

    always @(posedge clk or posedge rst)
        if(rst) begin
            cstate <= s0;
            z <= 0;
        end
        else if(a == 0)
            case(cstate)
                s0: cstate <= s0;
                s1: cstate <= s2;
                s2: cstate <= s3;
                s3: cstate <= s0;
                s4: cstate <= s5;
                s5: cstate <= s3;
                default: cstate <= s0;
            endcase
        else    //if(a==1)
            case(cstate)
                s0: cstate <= s1;
                s1: cstate <= s1;
                s2: cstate <= s1;
                s3: cstate <= s4;
                s4: cstate <= s1;
                s5: cstate <= s1;
                default: cstate <= s0;
            endcase

    always @(posedge clk or posedge rst)
        if(rst) begin
            cstate <= s0;
            z <= 0;
        end
        else if (a==0)
            case(cstate)
                s0: z <= 0;
                s1: z <= 0;
                s2: z <= 0;
                s3: z <= 0;
                s4: z <= 1;
                s5: z <= 0;
                default: z=0;
            endcase
        else
            z <= 0;

endmodule
