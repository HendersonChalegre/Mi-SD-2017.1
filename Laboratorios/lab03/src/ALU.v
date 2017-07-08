// Universidade Estadual de Feira de Santana 
// TEC499 - MI - Sistemas Digitais
// Lab 3, 2016.1
//
// Module: ALU.v
// Desc:   32-bit ALU for the MIPS150 Processor
// Inputs: 
// 	A: 32-bit value
// 	B: 32-bit value
// 	ALUop: Selects the ALU's operation 
// 						
// Outputs:
// 	Out: The chosen function mapped to A and B.

`include "Opcode.vh"
`include "ALUop.vh"

module ALU(
    input signed [31:0] A,B,
    input [3:0] ALUop,
    output reg [31:0] Out
    // output reg O,
    // output reg C,
    // output reg Z,
    // output reg S

);

localparam zero = 32'd0;
localparam one = 32'd1;

// wire signed [31:0] A;
// wire signed [31:0] B;

reg [31:0] auxA;
reg [31:0] auxB;

always @(*) begin
	case (ALUop)
	`ALU_SLL: 
	begin // SLL
		Out = B << A;
	end
	`ALU_SRL: 
	begin // SRL
		Out = B >> A;
		// Out = (unsigned) A >> (unsigned) B;
	end
	`ALU_SRA: 
	begin // SRA
		Out = B >>> A;
	end

	`ALU_ADDU: 
	begin // ADDU
		if (A < 0) 
			auxA = -A;
		else
			auxA = A;

		if (B < 0) 
			auxB = -B;
		else
			auxB = B;

		Out = auxA + auxB;
	end

	`ALU_SUBU: 
	begin // SUBU
		if (A < 0) 
			auxA = -A;
		else
			auxA = A;

		if (B < 0) 
			auxB = -B;
		else
			auxB = B;

		Out = auxA - auxB;
	end
	`ALU_AND: 
	begin // AND
		Out = A & B;
	end
	`ALU_OR: 
	begin // OR
		Out = A | B;
	end
	`ALU_XOR: 
	begin // XOR
		Out = A ^ B;
	end
	`ALU_NOR: 
	begin // NOR
		Out = ~(A | B);
	end
	`ALU_SLT: 
	begin // SLT if A is less than B, Out is set to one. It gets zero otherwise
		if (A < B)
			Out = one;
		else
			Out = zero;
	end
	`ALU_SLTU: 
	begin // SLTU
		if (A < 0) 
			auxA = -A;
		else
			auxA = A;

		if (B < 0) 
			auxB = -B;
		else
			auxB = B;

		if (auxA < auxB)
			Out = one;
		else
			Out = zero;
	end
	`ALU_LUI:
	 begin
			Out = B << 32'd16;
		end
	default : Out = 1'dx;
	endcase
	// end
end

endmodule
