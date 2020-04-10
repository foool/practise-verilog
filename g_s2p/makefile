IV=iverilog

main:
	$(IV) -o v.out s2p.v s2p_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
