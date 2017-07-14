`timescale 1ns / 1ps

/*
 Universidade Estadual de Feira de Santana
 TEC499 - MI - Sistemas Digitais

 Module: EX_MEM_Stage.v
 Desc: EX/MEM Pipeline Registers. Everything is written on clock's positive edge.
 Inputs:
    Clock: Processor input clock
    Reset: Reset processor registers
    EXMEMWrite: Activates Write on regiters
    EX_Flush: Flush Registers
    EX_RegWrite: Datapath signal RegWrite from EX Stage
    EX_MemtoReg: Datapath signal MemtoReg from EX Stage
    EX_MemRead: Datapath signal MemRead from EX Stage
    EX_MemWrite: Datapath signal MemWrite from EX Stage
    EX_ALUOut: 32-bit ALU Out value from EX Stage
    EX_RtData: 32-bit Rt Data value from EX Stage
    EX_RdReg: 5-bit Rd Register value from EX Stage
    EX_Instruction: (Debug) 32-bit Instruction value from EX Stage

Output:
    MEM_ALUOut: 32-bit ALU Out value for MEM Stage    
    MEM_RtData: 32-bit Rt Data value for MEM Stage    
    MEM_RdReg: 5-bit Rd Register value for MEM Stage    
    MEM_RegWrite: Datapath signal RegWrite for MEM Stage    
    MEM_MemtoReg: Datapath signal MemtoReg for MEM Stage    
    MEM_MemRead: Datapath signal MemRead for MEM Stage    
    MEM_MemWrite: Datapath signal MemWrite for MEM Stage    
    MEM_Instruction: (Debug) 32-bit Instruction value for MEM Stage    

*/

module EX_MEM_Stage (
    input Clock,
    input Reset,
    input EXMEMWrite,
    input EX_Flush,
    //Sinais de Controle WB
    input EX_RegWrite,
    input EX_MemtoReg,
    //Sinais de Controle MEM
    input EX_MemRead,
    input EX_MemWrite,
    //Sinais de Dados
    input [31:0] EX_ALUOut,
    input [31:0] EX_RtData,
    input [4:0] EX_RdReg,
    //Debug
    input [31:0] EX_Instruction,

    output reg[31:0] MEM_ALUOut,
    output reg[31:0] MEM_RtData,
    output reg[4:0] MEM_RdReg,

    output reg MEM_RegWrite,
    output reg MEM_MemtoReg,
    output reg MEM_MemRead,
    output reg MEM_MemWrite,
    //Debug
    output reg [31:0] MEM_Instruction
    );

    always@(posedge Clock) begin
        MEM_ALUOut    <= (Reset) ? 32'd0 : ((!EXMEMWrite) ? MEM_ALUOut   : ((EX_Flush) ? 32'd0 : EX_ALUOut  )); 
        MEM_RtData    <= (Reset) ? 32'd0 : ((!EXMEMWrite) ? MEM_RtData   : ((EX_Flush) ? 32'd0 : EX_RtData  )); 
        MEM_RdReg     <= (Reset) ?  5'd0 : ((!EXMEMWrite) ? MEM_RdReg    : ((EX_Flush) ?  5'd0 : EX_RdReg   )); 
        
        MEM_RegWrite  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_RegWrite : ((EX_Flush) ?  1'd0 : EX_RegWrite   )); 
        MEM_MemtoReg  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemtoReg : ((EX_Flush) ?  1'd0 : EX_MemtoReg   )); 
        MEM_MemRead   <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemRead  : ((EX_Flush) ?  1'd0 : EX_MemRead   )); 
        MEM_MemWrite  <= (Reset) ?  1'd0 : ((!EXMEMWrite) ? MEM_MemWrite : ((EX_Flush) ?  1'd0 : EX_MemWrite   )); 

        MEM_Instruction  <= (Reset) ?  32'd0 : ((!EXMEMWrite) ? MEM_Instruction : ((EX_Flush) ?  32'd0 : EX_Instruction   )); 
    end
endmodule