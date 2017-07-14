`timescale 1ns / 1ps

module Processor (
    input Clock,
    input Reset,
    input [31:0] Mem_DataIn,
    output [31:0] Mem_Address,
    output Mem_WriteEnable,
    output [31:0] Mem_DataOut
    );

    // Memória
    wire [31:0] Mem_ReadData = Mem_DataIn;
    

    // Hazard
    wire HazZero, Branch;

    // IF
    wire IF_ForC, IF_Write, IF_PCWrite, IF_Flush;
    
    // ID
    wire [1:0] ID_PCSrc, ID_ForBranchA, ID_ForBranchB;
    wire [31:0] ID_JumpAddr, ID_BranchAddr, ID_JrRsData;
    wire [31:0] ID_Instruction, ID_PCplus4;
    wire [4:0] ID_RsReg, ID_RtReg;
    wire ID_MemWrite;

    // EX
    wire [31:0] EX_PCplus4, EX_Immediate, EX_Instruction;
    wire [31:0] EX_RsData, EX_RtData;
    wire [4:0] EX_RsReg, EX_RtReg, EX_RdReg, EX_DestReg;
    wire EX_RegWrite, EX_ALUSrc, EX_MemRead, EX_MemWrite, EX_MemtoReg;
    wire EX_NoDest, EX_RegDst;
    wire [2:0] EX_ALUCtrl;
    wire [1:0] EX_ForA, EX_ForB;

    // MEM
    wire MEM_MemRead, MEM_MemWrite, MEM_RegWrite, MEM_MemtoReg;
    wire [31:0] MEM_ALUOut, MEM_RtData, MEM_Instruction;
    wire [4:0] MEM_DestReg;

    // WB
    wire [31:0] WB_WriteData, WB_ALUOut, WB_Instruction, WB_MemData;
    wire WB_RegWrite, WB_MemtoReg;
    wire [4:0] WB_DestReg;

    //Flags
    wire ZERO, NEGATIVE, OVERFLOW, CARRY, UNDERFLOW;

    assign Mem_WriteEnable = MEM_MemWrite;

    IF_Block ifblock(
        .Clock(Clock),
        .Reset(Reset),
        .ID_PCSrc(ID_PCSrc),
        .ID_JumpAddr(ID_JumpAddr),
        .ID_BranchAddr(ID_BranchAddr),
        .ID_JrRsData(ID_JrRsData),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .MEM_ALUOut(MEM_ALUOut),
        .MEM_RtData(MEM_RtData),
        .WB_WriteData(WB_WriteData),
        .Mem_ReadData(Mem_ReadData),
        .IF_ForC(IF_ForC),
        .IF_Write(IF_Write),
        .IF_PCWrite(IF_PCWrite),
        .IF_Flush(IF_Flush),

        .Mem_Address(Mem_Address),
        .Mem_WriteData(Mem_DataOut),
        .ID_Instruction(ID_Instruction),
        .ID_PCplus4(ID_PCplus4)
    );

    ID_Block idblock(
        .Clock(Clock),
        .Reset(Reset),
        .ID_Instruction(ID_Instruction),
        .ID_PCplus4(ID_PCplus4),
        .WB_WriteData(WB_WriteData),
        .MEM_ALUOut(MEM_ALUOut),
        .ForBranchA(ID_ForBranchA),
        .ForBranchB(ID_ForBranchB),
        .HazZero(HazZero),
        .WB_RegWrite(WB_RegWrite),
        .WB_DestReg(WB_DestReg),
        
        .ID_BranchAddr(ID_BranchAddr),
        .ID_JumpAddr(ID_JumpAddr),
        .ID_JrRsData(ID_JrRsData),
        .ID_PCSrc(ID_PCSrc),
        .IF_Flush(IF_Flush),
        .Branch(Branch),
        .EX_PCplus4(EX_PCplus4),
        .EX_RsData(EX_RsData),
        .EX_RtData(EX_RtData),
        .EX_Immediate(EX_Immediate),
        .EX_RsReg(EX_RsReg),
        .EX_RtReg(EX_RtReg),
        .EX_RdReg(EX_RdReg),
        .EX_RegWrite(EX_RegWrite),
        .EX_MemtoReg(EX_MemtoReg),
        .EX_MemRead(EX_MemRead),
        .EX_MemWrite(EX_MemWrite),
        .EX_ALUSrc(EX_ALUSrc),
        .EX_ALUCtrl(EX_ALUCtrl),
        .EX_RegDst(EX_RegDst),
        .EX_NoDest(EX_NoDest),
        .EX_Instruction(EX_Instruction),
        .ID_RsReg(ID_RsReg),
        .ID_RtReg(ID_RtReg),
        .MemWrite(ID_MemWrite)
    );
    
    EX_Block exblock(
        .Clock(Clock),
        .Reset(Reset),
        .EX_PCplus4(EX_PCplus4),
        .EX_RsData(EX_RsData),
        .EX_RtData(EX_RtData),
        .EX_Immediate(EX_Immediate),
        .EX_Instruction(EX_Instruction),
        .EX_RtReg(EX_RtReg),
        .EX_RdReg(EX_RdReg),
        .EX_RegWrite(EX_RegWrite),
        .EX_MemtoReg(EX_MemtoReg),
        .EX_MemRead(EX_MemRead),
        .EX_MemWrite(EX_MemWrite),
        .EX_ALUCtrl(EX_ALUCtrl),
        .EX_ALUSrc(EX_ALUSrc),
        .EX_RegDst(EX_RegDst),
        .EX_NoDest(EX_NoDest),
        .ForA(EX_ForA),
        .ForB(EX_ForB),
        .WB_WriteData(WB_WriteData),
        
        .MEM_ALUOut(MEM_ALUOut),
        .MEM_RtData(MEM_RtData),
        .MEM_Instruction(MEM_Instruction),
        .MEM_DestReg(MEM_DestReg),
        .EX_DestReg(EX_DestReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        //Flags
        .ZERO(ZERO),
        .NEGATIVE(NEGATIVE),
        .OVERFLOW(OVERFLOW),
        .UNDERFLOW(UNDERFLOW),
        .CARRY(CARRY)
    );

    MEM_Block memblock(
        .Clock(Clock),
        .Reset(Reset),
        .MEM_ALUOut(MEM_ALUOut),
        .MEM_RtData(MEM_RtData),
        .MEM_Instruction(MEM_Instruction),
        .MEM_DestReg(MEM_DestReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .Mem_ReadData(Mem_ReadData),

        .WB_MemData(WB_MemData),
        .WB_ALUOut(WB_ALUOut),
        .WB_Instruction(WB_Instruction),
        .WB_DestReg(WB_DestReg),
        .WB_RegWrite(WB_RegWrite),
        .WB_MemtoReg(WB_MemtoReg)
    );

    WB_Block wbblock(
        .WB_MemData(WB_MemData),
        .WB_ALUOut(WB_ALUOut),
        .WB_MemtoReg(WB_MemtoReg),
        
        .WB_WriteData(WB_WriteData)
    );

    ForwardingUnit fu(
        .MEMWB_MemToReg(WB_MemtoReg),
        .MEMWB_RegWrite(WB_RegWrite),
        .EXMEM_RegWrite(MEM_RegWrite),
        .EXMEM_MemWrite(MEM_MemWrite),
        .IDEX_RegRs(EX_RsReg),
        .IDEX_RegRt(EX_RtReg),
        .EXMEM_RegRd(MEM_DestReg),
        .MEMWB_RegRd(WB_DestReg),

        .ForA(EX_ForA),
        .ForB(EX_ForB),
        .ForC(IF_ForC)
    );

    BranchForwardUnit bfu (
        .EXMEM_RegWrite(MEM_RegWrite),
        .MEMWB_RegWrite(WB_RegWrite),
        .IFID_RegRs(ID_RsReg),
        .IFID_RegRt(ID_RtReg),
        .EXMEM_RegRd(MEM_DestReg),
        .MEMWB_RegRd(WB_DestReg),
        
        .ForBranchA(ID_ForBranchA),
        .ForBranchB(ID_ForBranchB)
    );

    HazardDetectionUnit hdu (
        .IDEX_MemRead(EX_MemRead),
        .IDEX_RegWrite(EX_RegWrite),
        .EXMEM_MemWrite(MEM_MemWrite),
        .EXMEM_MemRead(MEM_MemRead),
        .MemWrite(ID_MemWrite),
        .Branch(Branch),
        .IDEX_DestReg(EX_DestReg),
        .IFID_RegRs(ID_RsReg),
        .IFID_RegRt(ID_RtReg),
        .EXMEM_RegRd(MEM_DestReg),
        
        .IFID_Write(IF_Write),
        .PCWrite(IF_PCWrite),
        .HazZero(HazZero)
    );

endmodule