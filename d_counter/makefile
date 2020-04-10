IV=iverilog

main:
	$(IV) -o v.out counter.v counter_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
