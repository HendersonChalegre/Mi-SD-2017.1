`timescale 1ns / 1ps

module HazardDetectionUnit(
    
    input IDEX_MemRead,
    input IDEX_RegWrite,
    input EXMEM_MemWrite,
    input EXMEM_MemRead,
    input MemWrite,
    input Branch,
    input [4:0] IDEX_DestReg,
    input [4:0] IFID_RegRs,
    input [4:0] IFID_RegRt,
    input [4:0] EXMEM_RegRd,

    output IFID_Write,
    output PCWrite,
    output HazZero
);
    
    // checa se If/Id_Rs == Id/Ex_DestReg
    wire IFID_EQ_IDEX_Rs = (IFID_RegRs == IDEX_DestReg);
    
    // checa se If/Id_Rt == Id/Ex_DestReg
    wire IFID_EQ_IDEX_Rt = (IFID_RegRt == IDEX_DestReg);

    // checa se If/Id_Rs == Ex/Mem_Rd
    wire IFID_EQ_EXMEM_Rs = (IFID_RegRs == EXMEM_RegRd);

    // checa se If/Id_Rt == Ex/Mem_Rd
    wire IFID_EQ_EXMEM_Rt = (IFID_RegRt == EXMEM_RegRd);
    
    wire Hazard_A = (IDEX_MemRead & IDEX_DestReg != 0 & (IFID_EQ_IDEX_Rs | (IFID_EQ_IDEX_Rt & !MemWrite)));

    wire Hazard_B = (Branch & IDEX_DestReg != 0 & (IDEX_RegWrite & (IFID_EQ_IDEX_Rs | IFID_EQ_IDEX_Rt)));

    wire Hazard_C = (Branch & EXMEM_RegRd != 0 & (EXMEM_MemRead & (IFID_EQ_EXMEM_Rs | IFID_EQ_EXMEM_Rt)));

    // checa se a memoria esta sendo usada para leitura ou escrita
    wire EXMEM_MemUsage = (EXMEM_MemWrite || EXMEM_MemRead);

    
    assign IFID_Write = (Hazard_A) ? 1'b0 : ( (Hazard_B) ? 1'b0 : ( (Hazard_C) ? 1'b0 : ( (EXMEM_MemUsage) ? 1'b0 : 1'b1)));
    assign PCWrite = (Hazard_A) ? 1'b0 : ( (Hazard_B) ? 1'b0 : ( (Hazard_C) ? 1'b0 : ( (EXMEM_MemUsage) ? 1'b0 : 1'b1)));
    assign HazZero = (Hazard_A) ? 1'b1 : ( (Hazard_B) ? 1'b1 : ( (Hazard_C) ? 1'b1 : ( (EXMEM_MemUsage) ? 1'b1 : 1'b0)));

endmodule
