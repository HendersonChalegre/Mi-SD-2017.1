`timescale 1ns / 1ps

/*
    Registradores de pipeline entre as fases IF (instruction fetch)
    e ID (Instruction Decode).

    Quando IFDWrite está em 0, os registradores de ID não recebem os dados de IF.
    Quando IF_Flush está em 1, os registradores de ID são zerados (informação perdida).
*/

module IF_ID_Stage (
    input Clock,
    input Reset,
    input [31:0] IF_PCplus4,
    input [31:0] IF_Instruction,
    input IFDWrite,
    input IF_Flush,

    output reg[31:0] ID_Instruction,
    output reg[31:0] ID_PCplus4
    );

    always@(posedge Clock) begin
        ID_Instruction <= (Reset) ? 32'd0 : ((!IFDWrite) ? ID_Instruction : ((IF_Flush) ? 32'd0 : IF_Instruction)); 
        ID_PCplus4     <= (Reset) ? 32'd0 : ((!IFDWrite) ? ID_PCplus4     : ((IF_Flush) ? 32'd0 : IF_PCplus4    )); 
    end
endmodule