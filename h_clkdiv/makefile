IV=iverilog

main:
	$(IV) -o v.out clkdiv.v clkdiv_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
