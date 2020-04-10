/*
* 4-bit adder
* cin: carry bit from the low order
* cout: carry bit to the high oder
*/

module adder4bit (a, b, cin, sum, cout);
    input [3:0] a;
    input [3:0] b;
    input cin;
    output [3:0] sum;
    output cout;

    //reg [3:0] cin_t;
    wire [3:0] cout_t;
    
    adder1bit a0(a[0], b[0], cin, sum[0], cout_t[0]);
    adder1bit a1(a[1], b[1], cout_t[0], sum[1], cout_t[1]);
    adder1bit a2(a[2], b[2], cout_t[1], sum[2], cout_t[2]);
    adder1bit a3(a[3], b[3], cout_t[2], sum[3], cout_t[3]);
    
    assign cout = cout_t[3];

endmodule
