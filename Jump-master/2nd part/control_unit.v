module control_unit(inst,RegDst,Jump,Branch,MemRead,MemtoReg,ALUop,MemWrite,ALUSrc,RegWrite);
input [0:31]inst;
output [0:1]ALUop;
output RegDst,Jump,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;
reg [0:1]ALUop;
reg RegDst,Jump,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite;
always@(inst)
       
       case({inst[31],inst[30],inst[29],inst[28],inst[27],inst[26]})
                6'b000000: begin RegDst=1'b1; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b10; MemWrite=1'b0; ALUSrc=1'b0; RegWrite=1'b1; end 
                6'b001000: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b001010: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b001011: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b001100: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b001101: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b001110: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b100011: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b1; MemtoReg=1'b1; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b1; RegWrite=1'b1; end
                6'b101011: begin RegDst=1'b0; Jump=1'b0; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b1; ALUSrc=1'b1; RegWrite=1'b0; end
                6'b000100: begin RegDst=1'b0; Jump=1'b0; Branch=1'b1; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b01; MemWrite=1'b0; ALUSrc=1'b0; RegWrite=1'b0; end
                6'b000101: begin RegDst=1'b0; Jump=1'b0; Branch=1'b1; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b01; MemWrite=1'b0; ALUSrc=1'b0; RegWrite=1'b0; end
                6'b000010: begin RegDst=1'b0; Jump=1'b1; Branch=1'b0; MemRead=1'b0; MemtoReg=1'b0; ALUop=2'b00; MemWrite=1'b0; ALUSrc=1'b0; RegWrite=1'b0; end
       endcase
endmodule 