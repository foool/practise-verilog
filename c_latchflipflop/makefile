IV=iverilog

main:
	$(IV) -o v.out dflipflop.v latch.v latch_dff_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
