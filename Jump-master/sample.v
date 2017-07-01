module sample (a,b,s0,s1,f);
	output f;
	input a,b,s0,s1;
	wire w1,w2,w3,w4;
	and(w1,a,b);
	or(w2,a,b);
	xor(w3,a,b);
	not(w4,a);
mux4_to_1 mux(f,w1,w2,w3,w4,s0,s1);
endmodule
module mux4_to_1 (myout,in0,in1,in2,in3,s0,s1);
	output myout;
	input in0,in1,in2,in3,s0,s1;
	wire w1,w2;
	mux2_to_1 mymux1(w1,in0,in1,s0);
	mux2_to_1 mymux2(w2,in2,in3,s0);
	mux2_to_1 mymux3(myout,w1,w2,s1);
endmodule

module mux2_to_1(out,i0,i1,s);
	output out;
	input i0,i1;
	input s;
	wire w0,w1;
	wire sbar;
	not(sbar,s);
	and(w0,i0,sbar);
	and(w1,i1,s);
	or(out,w0,w1);
endmodule
