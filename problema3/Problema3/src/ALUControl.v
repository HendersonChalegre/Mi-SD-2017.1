`timescale 1ns / 1ps

`include "ALU_Parameters.vh"
`include "Opcodes_Functs_Parameters.vh"
// Skip to content
// This repository
// Search
// Pull requests
// Issues
// Marketplace
// Gist
//  @Pdr0Mota
//  Sign out
//  Unwatch 5
//   Star 1
//  Fork 0 HendersonChalegre/Mi-SD-2017.1
//  Code  Issues 0  Pull requests 0  Projects 1  Wiki Insights 
// Branch: master Find file Copy pathMi-SD-2017.1/Laboratorios/lab03/src/ALUdec.v
// 51feb76  5 days ago
// @Pdr0Mota Pdr0Mota pasta src lab3
// 1 contributor
// RawBlameHistory     
// 93 lines (68 sloc)  1.6 KB
// Universidade Estadual de Feira de Santana 
// TEC499 - MI - Sistemas Digitais
// Lab 3, 2016.1
//
// Module: ALUdecoder
// Desc:   Sets the ALU operation
// Inputs: 
//  opcode: the top 6 bits of the instruction
//    funct: the funct, in the case of r-type instructions
// Outputs: 
//  ALUop: Selects the ALU's operation

module ALUControl(
  input [5:0] funct, opcode,
  output reg [3:0] ALUop
);

always @(*) 
begin
    // Caso seja R-Type
    if (opcode == `RTYPE)
        begin
            if (funct == `SLL)
                ALUop = `ALU_SLL;

            else if (funct == `SRL)
                ALUop = `ALU_SRL;
            
            else if (funct == `SRA)
                ALUop = `ALU_SRA;
            
            else if (funct == `SLLV)
                ALUop = `ALU_SLL;
            
            else if (funct == `SRLV)
                ALUop = `ALU_SRL;
            
            else if (funct == `SRAV)
                ALUop = `ALU_SRA;
            
            else if (funct == `ADDU)
                ALUop = `ALU_ADDU;
            
            else if (funct == `SUBU)
                ALUop = `ALU_SUBU;
            
            else if (funct == `AND)
                ALUop = `ALU_AND;
            
            else if (funct == `OR)
                ALUop = `ALU_OR;
            
            else if (funct == `XOR)
                ALUop = `ALU_XOR;
            
            else if (funct == `NOR)
                ALUop = `ALU_NOR;
            
            else if (funct == `SLT)
                ALUop = `ALU_SLT;
            
            else if (funct == `SLTU)
                ALUop = `ALU_SLTU;
        end
        // Caso não seja R-Type
    else if (opcode == `ADDIU)
        ALUop = `ALU_ADDU;

    else if (opcode == `SLTI)
        ALUop = `ALU_SLT;

    else if (opcode == `SLTIU)
        ALUop = `ALU_SLTU;
    
    else if (opcode == `ANDI)
        ALUop = `ALU_AND;
    
    else if (opcode == `ORI)
        ALUop = `ALU_OR;
    
    else if (opcode == `XORI)
        ALUop = `ALU_XOR;

    else if (opcode == `LUI)
        ALUop = `ALU_LUI;

end

endmodule
// Contact GitHub API Training Shop Blog About
// © 2017 GitHub, Inc. Terms Privacy Security Status Help