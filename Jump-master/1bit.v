module onebitfulladder(s,co,a,b,c);
output s,co;
input a,b,c;
wire p,q,r,t;
xor x1(p,a,b);
xor x2(s,p,c);
and a1(q,a,b);
and a2(r,a,c);
and a3(t,b,c);
or o1(co,q,r,t);
endmodule