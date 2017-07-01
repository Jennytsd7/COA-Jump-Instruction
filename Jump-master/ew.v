module datta(a,b,sel,out);

	input a,b;
	input sel;
	output out;
	wire sel_a,sel_b,sel_n;
	not(sel_n,sel);
	and(sel_a,a,sel_n);
	and(sel_b,b,sel);
	or(out,sel_a,sel_b);

endmodule 