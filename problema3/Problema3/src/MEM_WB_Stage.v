`timescale 1ns / 1ps

/*
    Registradores de pipeline entre as fases MEM (Memory Access)
    e WB (Write Back).

    Quando MEMWBWrite está em 0, os registradores de ID não recebem os dados de IF.
    Quando MEM_Flush está em 1, os registradores de ID são zerados (informação perdida).
*/

module MEM_WB_Stage (
    input Clock,
    input Reset,
    input MEMWBWrite,
    input MEM_Flush,
    //Sinais de Controle WB
    input MEM_RegWrite,
    input MEM_MemtoReg,
    //Sinais de Dados
    input [31:0] MEM_MemData,
    input [31:0] MEM_ALUOut,
    input [4:0] MEM_RdReg,
    //Debug
    input [31:0] MEM_Instruction,

    output reg[31:0] WB_MemData,
    output reg[31:0] WB_ALUOut,
    output reg[4:0] WB_RdReg,

    output reg WB_RegWrite,
    output reg WB_MemtoReg,
    //Debug
    output reg[31:0] WB_Instruction
    );

    always@(posedge Clock) begin
        WB_MemData    <= (Reset) ? 32'd0 : ((!MEMWBWrite) ? WB_MemData   : ((MEM_Flush) ? 32'd0 : MEM_MemData  )); 
        WB_ALUOut     <= (Reset) ? 32'd0 : ((!MEMWBWrite) ? WB_ALUOut    : ((MEM_Flush) ? 32'd0 : MEM_ALUOut  )); 
        WB_RdReg      <= (Reset) ?  5'd0 : ((!MEMWBWrite) ? WB_RdReg     : ((MEM_Flush) ?  5'd0 : MEM_RdReg   )); 
        
        WB_RegWrite   <= (Reset) ?  1'd0 : ((!MEMWBWrite) ? WB_RegWrite  : ((MEM_Flush) ?  1'd0 : MEM_RegWrite   )); 
        WB_MemtoReg   <= (Reset) ?  1'd0 : ((!MEMWBWrite) ? WB_MemtoReg  : ((MEM_Flush) ?  1'd0 : MEM_MemtoReg   )); 

        WB_Instruction   <= (Reset) ?  32'd0 : ((!MEMWBWrite) ? WB_Instruction  : ((MEM_Flush) ?  32'd0 : MEM_Instruction   )); 
    end
endmodule