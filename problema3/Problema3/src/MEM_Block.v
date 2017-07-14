`timescale 1ns / 1ps

module MEM_Block (
    input Clock,
    input Reset,
    input [31:0] MEM_ALUOut, MEM_RtData, MEM_Instruction,
    input [4:0] MEM_DestReg,
    input MEM_RegWrite, MEM_MemtoReg, 
    input MEM_MemRead, MEM_MemWrite, 
    input [31:0] Mem_ReadData,

    output [31:0] WB_MemData, WB_ALUOut, WB_Instruction,
    output [4:0] WB_DestReg,
    output WB_RegWrite, WB_MemtoReg
    );


    MEM_WB_Stage MemWb (
        .Clock(Clock),
        .Reset(Reset),
        .MEMWBWrite(1'b1),
        .MEM_Flush(1'b0),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_MemData(Mem_ReadData),
        .MEM_ALUOut(MEM_ALUOut),
        .MEM_RdReg(MEM_DestReg),
        .MEM_Instruction(MEM_Instruction),

        .WB_MemData(WB_MemData),
        .WB_ALUOut(WB_ALUOut),
        .WB_RdReg(WB_DestReg),
        .WB_RegWrite(WB_RegWrite),
        .WB_MemtoReg(WB_MemtoReg),
        .WB_Instruction(WB_Instruction)
    );

endmodule