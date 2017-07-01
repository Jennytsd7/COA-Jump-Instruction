module joper3(ret,clk,intialpc,instr,jump,pc,jal);
input clk;
input[31:0] instr;
input[31:0] intialpc;
input jump;
input ret;
input jal;
wire[31:0] pcinc;
wire[31:0] jumpadd;
wire[31:0] pcshift;
output[31:0] pc;
reg[31:0] pc;
reg[31:0] npc;
reg[31:0] retpc;
assign pcinc = intialpc + 4;
assign pcshift = ((pcinc>>28)<<28);
assign jumpadd = pcshift+(instr[25:0]<<2);
always@(jump or jumpadd or pcinc)
begin
if(jump==1)
npc=jumpadd;
else
npc=pcinc;
end
always@(jal or pcinc)
begin
if(jal==1)
retpc = pcinc;
end
always@(clk or ret)
begin
if( ret == 1)
pc = retpc;
else
pc = npc;
end
assign intialpc = pc;
endmodule


