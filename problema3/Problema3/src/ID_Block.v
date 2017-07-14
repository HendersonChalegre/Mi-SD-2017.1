`timescale 1ns / 1ps

module ID_Block (
    input Clock,
    input Reset,
    input [31:0] ID_Instruction, ID_PCplus4, WB_WriteData, MEM_ALUOut,
    input [1:0] ForBranchA, ForBranchB,
    input HazZero, WB_RegWrite,
    input [4:0] WB_DestReg,

    output [31:0] ID_BranchAddr, ID_JumpAddr, ID_JrRsData,
    output [1:0] ID_PCSrc,
    output IF_Flush, Branch,
    output [31:0] EX_PCplus4, EX_RsData, EX_RtData, EX_Immediate,
    output [4:0] EX_RsReg, EX_RtReg, EX_RdReg,
    output EX_RegWrite, EX_MemtoReg, EX_MemRead, EX_MemWrite, EX_ALUSrc,
    output [2:0] EX_ALUCtrl,
    output EX_RegDst, EX_NoDest,
    output [31:0] EX_Instruction,
    output [4:0] ID_RsReg, ID_RtReg,
    output MemWrite
    );

    wire [5:0] ID_Opcode     = ID_Instruction[31:26];
    wire [4:0] ID_Rs         = ID_Instruction[25:21];
    wire [4:0] ID_Rt         = ID_Instruction[20:16];
    wire [4:0] ID_Rd         = ID_Instruction[15:11];
    wire [5:0] ID_Funct      = ID_Instruction[5:0];
    wire [15:0] ID_Immediate  = ID_Instruction[15:0];

    wire SignExt;
    wire [31:0] ID_ExtImmediate;
    wire [31:0] ID_RsData, ID_RtData, ID_RsDataEnd, ID_RtDataEnd;
    wire ID_NoDest;
    wire [2:0] ID_ALUCtrl;
    wire ID_ALUSrc, ID_RegDst, ID_MemWrite, ID_MemRead; 
    wire ID_RegWrite, ID_MemtoReg;

    wire [9:0] pipelineSignals = {ID_NoDest,ID_ALUCtrl,ID_ALUSrc,ID_RegDst,ID_MemWrite,ID_MemRead,ID_MemtoReg,ID_RegWrite};
    wire [9:0] pipelineSignalsEnd;

    wire ID_NoDestEnd   = pipelineSignalsEnd[9];
    wire [2:0] ID_ALUCtrlEnd  = pipelineSignalsEnd[8:6];
    wire ID_ALUSrcEnd   = pipelineSignalsEnd[5];
    wire ID_RegDstEnd   = pipelineSignalsEnd[4];
    wire ID_MemWriteEnd = pipelineSignalsEnd[3];
    wire ID_MemReadEnd  = pipelineSignalsEnd[2];
    wire ID_MemtoRegEnd = pipelineSignalsEnd[1];
    wire ID_RegWriteEnd = pipelineSignalsEnd[0];

    assign ID_JrRsData = ID_RsDataEnd;
    assign ID_JumpAddr = {4'b0000, ID_Instruction[25:0], 2'b00};
    assign ID_RsReg = ID_Rs;
    assign ID_RtReg = ID_Rt;
    assign MemWrite = ID_MemWrite;
    wire Cmp_RsRt = (ID_RsDataEnd == ID_RtDataEnd);
    
    
    ADD branchAdd (
        .A(ID_PCplus4),
        .B({ID_ExtImmediate[29:0],2'b00}),
        .C(ID_BranchAddr)
    );


    ControlUnit ctrlu (
        .Opcode(ID_Opcode),
        .Funct(ID_Funct),
        .Cmp_RsRt(Cmp_RsRt),

        .IF_Flush(IF_Flush),
        .SignExt(SignExt),
        .PCSrc(ID_PCSrc),
        .NoDest(ID_NoDest),
        .ALUCtrl(ID_ALUCtrl),
        .ALUSrc(ID_ALUSrc),
        .RegDst(ID_RegDst),
        .MemWrite(ID_MemWrite),
        .MemRead(ID_MemRead),
        .RegWrite(ID_RegWrite),
        .Branch(Branch),
        .MemtoReg(ID_MemtoReg)
    );

    Mux2 #(.SIZE(10)) stall_mux (
        .Sel(HazZero),
        .In0(pipelineSignals),
        .In1(10'b0),

        .Out(pipelineSignalsEnd)
    );

    Mux4 #(.SIZE(32)) forBranchA_Mux(
        .Sel(ForBranchA),
        .In00(ID_RsData),
        .In01(WB_WriteData),
        .In10(MEM_ALUOut),
        .In11(32'bx),

        .Out(ID_RsDataEnd)
    );

    Mux4 #(.SIZE(32)) forBranchB_Mux(
        .Sel(ForBranchB),
        .In00(ID_RtData),
        .In01(WB_WriteData),
        .In10(MEM_ALUOut),
        .In11(32'bx),

        .Out(ID_RtDataEnd)
    );
    

    RegisterFile registerFile(
        .Clock(Clock),
        .Reset(Reset),
        .ReadRg1(ID_Rs),
        .ReadRg2(ID_Rt),
        .WriteRg(WB_DestReg),
        .RegWrite(WB_RegWrite),
        .WriteData(WB_WriteData),

        .ReadData1(ID_RsData),
        .ReadData2(ID_RtData)
    );

    Extender ext (
        .SignExt(SignExt),
        .In(ID_Immediate),

        .Out(ID_ExtImmediate)
    );

    ID_EX_Stage IdEx(
        .Clock(Clock),
        .Reset(Reset),
        .IDEXWrite(1'b1),
        .ID_Flush(1'b0),
        .ID_RegWrite(ID_RegWriteEnd),
        .ID_MemtoReg(ID_MemtoRegEnd),
        .ID_MemRead(ID_MemReadEnd),
        .ID_MemWrite(ID_MemWriteEnd),
        .ID_ALUSrc(ID_ALUSrcEnd),
        .ID_ALUCtrl(ID_ALUCtrlEnd),
        .ID_RegDst(ID_RegDstEnd),
        .ID_NoDest(ID_NoDestEnd),
        .ID_PCplus4(ID_PCplus4),
        .ID_RsData(ID_RsDataEnd),
        .ID_RtData(ID_RtDataEnd),
        .ID_Immediate(ID_ExtImmediate),
        .ID_RsReg(ID_Rs),
        .ID_RtReg(ID_Rt),
        .ID_RdReg(ID_Rd),
        .ID_Instruction(ID_Instruction),
        
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
        .EX_Instruction(EX_Instruction)
    );


endmodule