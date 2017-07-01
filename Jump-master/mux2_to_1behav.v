module mux_2to_1behav(out,i0,i1,s);
	output out;
	input i0,i1;
	input s;
	reg out;
	always@(i0 or i1 or s)
	begin
	if(s==0)
		out=i0;
	else 
		out=i1;
	end
endmodule
