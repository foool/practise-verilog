IV=iverilog

main:
	$(IV) -o v.out weekcounter.v weekcounter_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
