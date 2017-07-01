module onebitfulladder_behav(a,b,c,s,co);
intput a,b,c;
output s,co
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