`timescale 1ns / 1ps

/*
    Registradores de pipeline entre as fases ID (Instruction Decode)
    e EX (Execution).

    Quando IDEXWrite está em 0, os registradores de ID não recebem os dados de IF.
    Quando ID_Flush está em 1, os registradores de ID são zerados (informação perdida).
*/

module ID_EX_Stage (
    input Clock,
    input Reset,
    input IDEXWrite,
    input ID_Flush,
    //Sinais de Controle WB
    input ID_RegWrite,
    input ID_MemtoReg,
    //Sinais de Controle MEM
    input ID_MemRead,
    input ID_MemWrite,
    //Sinais de Controle EX
    input ID_ALUSrc,
    input [2:0] ID_ALUCtrl,
    input ID_RegDst,
    input ID_NoDest,
    //Sinais de Dados
    input [31:0] ID_PCplus4,
    input [31:0] ID_RsData,
    input [31:0] ID_RtData,
    input [31:0] ID_Immediate,
    input [4:0] ID_RsReg,
    input [4:0] ID_RtReg,
    input [4:0] ID_RdReg,
    //Debug
    input [31:0] ID_Instruction,

    output reg[31:0] EX_PCplus4,
    output reg[31:0] EX_RsData,
    output reg[31:0] EX_RtData,
    output reg[31:0] EX_Immediate,
    output reg[4:0] EX_RsReg,
    output reg[4:0] EX_RtReg,
    output reg[4:0] EX_RdReg,

    output reg EX_RegWrite,
    output reg EX_MemtoReg,
    output reg EX_MemRead,
    output reg EX_MemWrite,
    output reg EX_ALUSrc,
    output reg[2:0] EX_ALUCtrl,
    output reg EX_RegDst,
    output reg EX_NoDest,
    //Debug
    output reg [31:0] EX_Instruction
    );

    always@(posedge Clock) begin
        EX_PCplus4    <= (Reset) ? 32'd0 : ((!IDEXWrite) ? EX_PCplus4   : ((ID_Flush) ? 32'd0 : ID_PCplus4  )); 
        EX_RsData     <= (Reset) ? 32'd0 : ((!IDEXWrite) ? EX_RsData    : ((ID_Flush) ? 32'd0 : ID_RsData   )); 
        EX_RtData     <= (Reset) ? 32'd0 : ((!IDEXWrite) ? EX_RtData    : ((ID_Flush) ? 32'd0 : ID_RtData   )); 
        EX_Immediate  <= (Reset) ? 32'd0 : ((!IDEXWrite) ? EX_Immediate : ((ID_Flush) ? 32'd0 : ID_Immediate)); 
        EX_RsReg      <= (Reset) ? 5'd0  : ((!IDEXWrite) ? EX_RsReg     : ((ID_Flush) ?  5'd0 : ID_RsReg    )); 
        EX_RtReg      <= (Reset) ? 5'd0  : ((!IDEXWrite) ? EX_RtReg     : ((ID_Flush) ?  5'd0 : ID_RtReg    )); 
        EX_RdReg      <= (Reset) ? 5'd0  : ((!IDEXWrite) ? EX_RdReg     : ((ID_Flush) ?  5'd0 : ID_RdReg    )); 
       
        EX_RegWrite   <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_RegWrite  : ((ID_Flush) ?  1'd0 : ID_RegWrite )); 
        EX_MemtoReg   <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_MemtoReg  : ((ID_Flush) ?  1'd0 : ID_MemtoReg )); 
        EX_MemRead    <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_MemRead   : ((ID_Flush) ?  1'd0 : ID_MemRead )); 
        EX_MemWrite   <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_MemWrite  : ((ID_Flush) ?  1'd0 : ID_MemWrite )); 
        EX_ALUSrc     <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_ALUSrc    : ((ID_Flush) ?  1'd0 : ID_ALUSrc )); 
        EX_ALUCtrl    <= (Reset) ? 3'd0  : ((!IDEXWrite) ? EX_ALUCtrl   : ((ID_Flush) ?  3'd0 : ID_ALUCtrl )); 
        EX_RegDst     <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_RegDst    : ((ID_Flush) ?  1'd0 : ID_RegDst )); 
        EX_NoDest     <= (Reset) ? 1'd0  : ((!IDEXWrite) ? EX_NoDest    : ((ID_Flush) ?  1'd0 : ID_NoDest )); 
        EX_Instruction <= (Reset) ? 32'd0  : ((!IDEXWrite) ? EX_Instruction    : ((ID_Flush) ?  32'd0 : ID_Instruction )); 
    end
endmodule