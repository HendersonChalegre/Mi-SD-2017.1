`timescale 1ns / 1ps

/*
 Universidade Estadual de Feira de Santana
 TEC499 - MI - Sistemas Digitais

 Module: EX_Block.v
 Desc: Encapsulates EX stage unique logic in one module
 Inputs:
    Clock: Processor input clock
    Reset: Reset processor registers
    EX_PCplus4: 32-bit PC+4 value from ID/EX Pipeline Register
    EX_RsData: 32-bit RsData value from ID/EX Pipeline Register
    EX_RtData: 32-bit RtData value from ID/EX Pipeline Register
    EX_Immediate: 32-bit Immediate value from ID/EX Pipeline Register
    EX_Instruction: (Debug) 32-bit Instruction value from ID/EX Pipeline Register
    EX_RtReg: 5-bit Rt Register value from ID/EX Pipeline Register
    EX_RdReg: 5-bit Rd Register value from ID/EX Pipeline Register
    EX_RegWrite: Datapath signal RegWrite from ID/EX Pipeline Register
    EX_MemtoReg: Datapath signal MemtoReg from ID/EX Pipeline Register
    EX_MemRead: Datapath signal MemRead from ID/EX Pipeline Register
    EX_MemWrite: Datapath signal MemWrite from ID/EX Pipeline Register
    EX_ALUCtrl: 3-bit Datapath signal ALUCtrl from ID/EX Pipeline Register
    EX_ALUSrc: Datapath signal ALUSrc from ID/EX Pipeline Register
    EX_RegDst: Datapath signal RegDst from ID/EX Pipeline Register
    EX_NoDest: Datapath signal NoDest from ID/EX Pipeline Register
    ForA: Select data to be bypassed Rs in EX
    ForB: Select data to be bypassed Rt in EX
    WB_WriteData: 32-bit WB data to be written in memory/register file

Output:
    MEM_ALUOut: 32-bit ALUOut value from EX/MEM Pipeline Register
    MEM_RtData: 32-bit RtData value from EX/MEM Pipeline Register
    MEM_Instruction: (Debug) 32-bit Instruction value from EX/MEM Pipeline Register
    MEM_DestReg: 5-bit Destination Register value from EX/MEM Pipeline Register
    MEM_RegWrite: Datapath signal RegWrite from EX/MEM Pipeline Register
    MEM_MemtoReg: Datapath signal MemtoReg from EX/MEM Pipeline Register
    MEM_MemRead: Datapath signal MemRead from EX/MEM Pipeline Register
    MEM_MemWrite: Datapath signal MemWrite from EX/MEM Pipeline Register
    ZERO: Zero flag from ALU
    NEGATIVE: Negative flag from ALU
    OVERFLOW: Overflow flag from ALU
    UNDERFLOW: Underflow flag from ALU
    CARRY: Carry flag from ALU
    EX_DestReg: 5-bit Destination Register chosen in EX stage

*/

module EX_Block (
    input Clock,
    input Reset,
    input [31:0] EX_PCplus4, EX_RsData, EX_RtData, EX_Immediate, EX_Instruction,
    input [4:0] EX_RtReg, EX_RdReg,
    //WB signals
    input  EX_RegWrite, EX_MemtoReg,
    //MEM signals
    input EX_MemRead, EX_MemWrite,
    //EX signals
    input [2:0] EX_ALUCtrl,
    input EX_ALUSrc, EX_RegDst, EX_NoDest,
    //Forward
    input [1:0] ForA, ForB,
    input [31:0] WB_WriteData,

    output [31:0] MEM_ALUOut, MEM_RtData, MEM_Instruction,
    output [4:0] MEM_DestReg,
    output [4:0] EX_DestReg,
    output MEM_RegWrite, MEM_MemtoReg, MEM_MemRead, MEM_MemWrite,
    output ZERO, NEGATIVE, OVERFLOW, CARRY, UNDERFLOW
    );

    wire [31:0] ALU_InA, ALU_InB_End, ALU_InB;
    wire [4:0] Shamt = EX_Immediate[10:6];
    wire [5:0] Funct = EX_Immediate[5:0];
    wire [3:0] ALUOp;
    wire [31:0] ALUOut, ALUOut_End;
    wire [4:0] DestReg, DestReg_End, LinkReg;
    wire [31:0] MEM_ALUOut_For;

    assign EX_DestReg = DestReg_End;
    assign MEM_ALUOut = MEM_ALUOut_For;

    Mux4 forA_Mux(
        .Sel(ForA),
        .In00(EX_RsData),
        .In01(WB_WriteData),
        .In10(MEM_ALUOut_For),
        .In11(32'bx),
        
        .Out(ALU_InA)
    );

    Mux4 forB_Mux(
        .Sel(ForB),
        .In00(EX_RtData),
        .In01(WB_WriteData),
        .In10(MEM_ALUOut_For),
        .In11(32'bx),
        
        .Out(ALU_InB)
    );

    Mux2 AluSrc_Mux(
        .Sel(EX_ALUSrc),
        .In0(ALU_InB),
        .In1(EX_Immediate),
        
        .Out(ALU_InB_End)
    );

    Mux2 aluOut_Mux(
        .Sel(EX_NoDest),
        .In0(ALUOut),
        .In1(EX_PCplus4),
        
        .Out(ALUOut_End)
    );


    Mux2 #(.SIZE(5)) RtRd_Mux (
        .Sel(EX_RegDst),
        .In0(EX_RtReg),
        .In1(EX_RdReg),
        
        .Out(DestReg)
    );

    Mux2 #(.SIZE(5)) link_Mux(
        .Sel(EX_RegWrite),
        .In0(5'b00000),
        .In1(5'b11111),
        
        .Out(LinkReg)
    );

    Mux2 #(.SIZE(5)) destReg_Mux (
        .Sel(EX_NoDest),
        .In0(DestReg),
        .In1(LinkReg),
        
        .Out(DestReg_End)
    );

    ALUControl aluCtrl(
        .Funct(Funct),
        .ALUCtrl(EX_ALUCtrl),

        .ALUOp(ALUOp)
    );

    ALU alu (
        .Clock(Clock),
        .Reset(Reset),
        .A(ALU_InA),
        .B(ALU_InB_End),
        .Shamt(Shamt),
        .ALUOp(ALUOp),

        .ALUOut(ALUOut),
        .ZERO(ZERO),
        .NEGATIVE(NEGATIVE),
        .CARRY(CARRY),
        .OVERFLOW(OVERFLOW),
        .UNDERFLOW(UNDERFLOW)
    );


    
    EX_MEM_Stage ExMem (
        .Clock(Clock),
        .Reset(Reset),
        .EXMEMWrite(1'b1),
        .EX_Flush(1'b0),
        .EX_RegWrite(EX_RegWrite),
        .EX_MemtoReg(EX_MemtoReg),
        .EX_MemRead(EX_MemRead),
        .EX_MemWrite(EX_MemWrite),
        .EX_ALUOut(ALUOut_End),
        .EX_RtData(ALU_InB),
        .EX_RdReg(DestReg_End),
        .EX_Instruction(EX_Instruction),

        .MEM_ALUOut(MEM_ALUOut_For),
        .MEM_RtData(MEM_RtData),
        .MEM_RdReg(MEM_DestReg),
        .MEM_RegWrite(MEM_RegWrite),
        .MEM_MemtoReg(MEM_MemtoReg),
        .MEM_MemRead(MEM_MemRead),
        .MEM_MemWrite(MEM_MemWrite),
        .MEM_Instruction(MEM_Instruction)
    );


endmodule