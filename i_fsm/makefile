IV=iverilog

main:
	$(IV) -o v.out fsm10010.v fsm10010_tb.v
	vvp v.out
	gtkwave test.vcd

clean:
	rm -f *.out *.vcd
