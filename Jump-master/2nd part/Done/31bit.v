module onebitfulladder_behav(a,b,c,s,co);
input a,b,c;
output s,co;
reg s,co;
always@(a or b or c)
case({a,b,c})
3'b000: begin s=1'b0; co=1'b0; end
3'b001: begin s=1'b1; co=1'b0; end
3'b010: begin s=1'b1; co=1'b0; end
3'b011: begin s=1'b0; co=1'b1; end
3'b100: begin s=1'b1; co=1'b0; end
3'b101: begin s=1'b0; co=1'b1; end
3'b110: begin s=1'b0; co=1'b1; end
3'b111: begin s=1'b1; co=1'b1; end
endcase
endmodule
module fulladder(coa,si,v,u,ci); 
input v[31:0];
input u[31:0];
input ci;
output coa;
output si[31:0];
wire coo[31:0];

onebitfulladder_behav w1(v[0],u[0],ci,coo[0],si[0]);
onebitfulladder_behav w2(v[1],u[1],coo[0],coo[1],si[1]);
onebitfulladder_behav w3(v[2],u[2],coo[1],coo[2],si[2]);
onebitfulladder_behav w4(v[3],u[3],coo[2],coo[3],si[3]);
onebitfulladder_behav w5(v[4],u[4],coo[3],coo[4],si[4]);
onebitfulladder_behav w6(v[5],u[5],coo[4],coo[5],si[5]);
onebitfulladder_behav w7(v[6],u[6],coo[5],coo[6],si[6]);
onebitfulladder_behav w8(v[7],u[7],coo[6],coo[7],si[7]);
onebitfulladder_behav w9(v[8],u[8],coo[7],coo[8],si[8]);
onebitfulladder_behav w10(v[9],u[9],coo[8],coo[9],si[9]);
onebitfulladder_behav w11(v[10],u[10],coo[9],coo[10],si[10]);
onebitfulladder_behav w12(v[11],u[11],coo[10],coo[11],si[11]);
onebitfulladder_behav w13(v[12],u[12],coo[11],coo[12],si[12]);
onebitfulladder_behav w14(v[13],u[13],coo[12],coo[13],si[13]);
onebitfulladder_behav w15(v[14],u[14],coo[13],coo[14],si[14]);
onebitfulladder_behav w16(v[15],u[15],coo[14],coo[15],si[15]);
onebitfulladder_behav w17(v[16],u[16],coo[15],coo[16],si[16]);
onebitfulladder_behav w18(v[17],u[17],coo[16],coo[17],si[17]);
onebitfulladder_behav w19(v[18],u[18],coo[17],coo[18],si[18]);
onebitfulladder_behav w20(v[19],u[19],coo[18],coo[19],si[19]);
onebitfulladder_behav w21(v[20],u[20],coo[19],coo[20],si[20]);
onebitfulladder_behav w22(v[21],u[21],coo[20],coo[21],si[21]);
onebitfulladder_behav w23(v[22],u[22],coo[21],coo[22],si[22]);
onebitfulladder_behav w24(v[23],u[23],coo[22],coo[23],si[23]);
onebitfulladder_behav w25(v[24],u[24],coo[23],coo[24],si[24]);
onebitfulladder_behav w26(v[25],u[25],coo[24],coo[25],si[25]);
onebitfulladder_behav w27(v[26],u[26],coo[25],coo[26],si[26]);
onebitfulladder_behav w28(v[27],u[27],coo[26],coo[27],si[27]);
onebitfulladder_behav w29(v[28],u[28],coo[27],coo[28],si[28]);
onebitfulladder_behav w30(v[29],u[29],coo[28],coo[29],si[29]);
onebitfulladder_behav w31(v[30],u[30],coo[29],coo[30],si[30]);
onebitfulladder_behav w32(v[31],u[31],coo[30],coa,si[31]);
endmodule
