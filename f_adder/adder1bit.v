/*
* 1-bit adder
* ci: carry bit from the low order
* cout : carry bit transferred to the high order
*/

module adder1bit (a, b, ci, sum, cout);
    input a, b, ci;
    output sum, cout;
    
    assign sum = a^b^ci;
    assign cout = (a&b)|(b&ci)|(a&ci);
endmodule
