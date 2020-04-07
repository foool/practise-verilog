module mux2to1( a, b, sel, out);
    input a, b;
    input sel;
    output out;
    wire out;

    always @(sel or a or b)
        out = (sel) ? b:a;
    // always equals to the following assign sentence
    // assign out = (sel) ? b:a;
endmodule
