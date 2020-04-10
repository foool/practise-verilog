IV=iverilog

main:
	$(IV) -o v.out adder4bit.v adder4bit_tb.v adder1bit.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
