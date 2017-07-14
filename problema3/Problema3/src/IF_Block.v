`timescale 1ns / 1ps

module IF_Block (
    input Clock,
    input Reset,
    input [1:0] ID_PCSrc,
    input [31:0] ID_JumpAddr, ID_BranchAddr, ID_JrRsData,
    input MEM_MemRead, MEM_MemWrite,
    input [31:0] MEM_ALUOut, MEM_RtData, WB_WriteData,
    input [31:0] Mem_ReadData,
    input IF_ForC, IF_Write, IF_PCWrite, IF_Flush,
    output [31:0] Mem_Address,
    output [31:0] Mem_WriteData,
    output [31:0] ID_Instruction,
    output [31:0] ID_PCplus4
    );

    //IF Wires
    wire [31:0] IF_PCIn, IF_PCOut, IF_PCplus4;
    wire IF_IorD = (MEM_MemRead | MEM_MemWrite);


    // Program Counter
    Register PC (
        .Clock(Clock),
        .Reset(Reset),
        .Enable(IF_PCWrite),
        .In(IF_PCIn),
        .Out(IF_PCOut)
    );

    ADD Add_PC_4 (
        .A(IF_PCOut),
        .B(32'h00000004),
        .C(IF_PCplus4)
    );

    Mux4 #(.SIZE(32)) PCSrc_Mux (
        .Sel(ID_PCSrc),
        .In00(IF_PCplus4),
        .In01(ID_JumpAddr),
        .In10(ID_BranchAddr),
        .In11(ID_JrRsData),
        .Out(IF_PCIn)
    );

    Mux2 #(.SIZE(32)) IorD_Mux (
        .Sel(IF_IorD),
        .In0(IF_PCOut),
        .In1(MEM_ALUOut),
        .Out(Mem_Address)
    );

    Mux2 #(.SIZE(32)) ForwardC_Mux (
        .Sel(IF_ForC),
        .In0(MEM_RtData),
        .In1(WB_WriteData),
        .Out(Mem_WriteData)
    );

    IF_ID_Stage IfId (
        .Clock(Clock),
        .Reset(Reset),
        .IF_PCplus4(IF_PCplus4),
        .IF_Instruction(Mem_ReadData),
        .IFDWrite(IF_Write),
        .IF_Flush(IF_Flush),
        .ID_Instruction(ID_Instruction),
        .ID_PCplus4(ID_PCplus4)
    );

endmodule