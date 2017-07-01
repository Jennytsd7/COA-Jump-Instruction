module samplebehav(a,b,s0,s1,f);
input a,b,s0,s1;
output f;
reg f;
always@(a or b or s0 or s1)
case({s0,s1})
2'b00: begin f=a&b; end
2'b01: begin f=a|b; end
2'b10: begin f=(a&(-b))|((-a)&b); end
2'b11: begin f=(-a); end
endcase
endmodule

