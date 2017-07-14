`timescale 1ns / 1ps

/*
 Universidade Estadual de Feira de Santana
 TEC499 - MI - Sistemas Digitais

 Module: BranchForwardUnit.v
 Desc: Bypasses values from later stages in pipeline (MEM and WB) to ID
 Inputs:
    EXMEM_RegWrite: Datapath signal RegWrite from MEM stage
    MEMWB_RegWrite: Datapath signal RegWrite from WB stage
    IFID_RegRs: Rs field from instruction in ID
    IFID_RegRt: Rt field from instruction in ID
    EXMEM_RegRd: Rd field from instruction in MEM
    MEMWB_RegRd: Rd field from instruction in WB

Output:
    ForBranchA: 2-bit for the mux that selects from which stage RsData comes
    ForBranchB: 2-bit for the mux that selects from which stage RtData comes

*/

module BranchForwardUnit(

    input EXMEM_RegWrite,
    input MEMWB_RegWrite,
    input [4:0] IFID_RegRs,
    input [4:0] IFID_RegRt,
    input [4:0] EXMEM_RegRd,
    input [4:0] MEMWB_RegRd,
    output [1:0] ForBranchA,
    output [1:0] ForBranchB
    );

    // check if IF/ID.Rs == EX/MEM.Rd 
    wire IFID_EQ_EXMEM_Rs = (IFID_RegRs == EXMEM_RegRd);
    // check if IF/ID.Rt == EX/MEM.Rd
    wire IFID_EQ_EXMEM_Rt = (IFID_RegRt == EXMEM_RegRd);

    // check if IF/ID.Rs == MEM/WB.Rd
    wire IFID_EQ_MEMWB_Rs = (IFID_RegRs == MEMWB_RegRd);
    // check if IF/ID.Rt == MEM/WB.Rd
    wire IFID_EQ_MEMWB_Rt = (IFID_RegRt == MEMWB_RegRd);
    
    wire MEM_ForwardA = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IFID_EQ_EXMEM_Rs);
    wire MEM_ForwardB = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IFID_EQ_EXMEM_Rt);

    wire WB_ForwardA = (MEMWB_RegWrite & MEMWB_RegRd != 0 & IFID_EQ_MEMWB_Rs);
    wire WB_ForwardB = (MEMWB_RegWrite & MEMWB_RegRd != 0 & IFID_EQ_MEMWB_Rt);

    assign ForBranchA = (MEM_ForwardA) ? 2'b10 : ((WB_ForwardA) ? 2'b01 : 2'b00 );
    assign ForBranchB = (MEM_ForwardB) ? 2'b10 : ((WB_ForwardB) ? 2'b01 : 2'b00 );

endmodule
