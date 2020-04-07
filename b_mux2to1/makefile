IV=iverilog

main:
	$(IV) -o v.out mux2to1.v mux2to1_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm *.out *.vcd
