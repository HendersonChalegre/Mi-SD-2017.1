`timescale 1ns / 1ps



module ForwardingUnit(

    input MEMWB_MemToReg,
    input MEMWB_RegWrite,
    input EXMEM_RegWrite,
    input EXMEM_MemWrite,
    input [4:0] IDEX_RegRs,
    input [4:0] IDEX_RegRt,
    input [4:0] EXMEM_RegRd,
    input [4:0] MEMWB_RegRd,

    output [1:0] ForA,
    output [1:0] ForB,
    output ForC
);				

    wire IDEX_EQ_EXMEM_Rs = (IDEX_RegRs == EXMEM_RegRd);

    wire IDEX_EQ_EXMEM_Rt = (IDEX_RegRt == EXMEM_RegRd);

    wire IDEX_EQ_MEMWB_Rs = (IDEX_RegRs == MEMWB_RegRd);

    wire IDEX_EQ_MEMWB_Rt = (IDEX_RegRt == MEMWB_RegRd);

    wire EXMEM_EQ_MEMWB_Rd = (EXMEM_RegRd == MEMWB_RegRd);

    wire MEM_ForwardA = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IDEX_EQ_EXMEM_Rs);

    wire MEM_ForwardB = (EXMEM_RegWrite & EXMEM_RegRd != 0 & IDEX_EQ_EXMEM_Rt);

    wire WB_ForwardA = (MEMWB_RegWrite & MEMWB_RegRd != 0 & !(MEM_ForwardA) & IDEX_EQ_MEMWB_Rs);

    wire WB_ForwardB = (MEMWB_RegWrite & MEMWB_RegRd != 0 & !(MEM_ForwardB) & IDEX_EQ_MEMWB_Rt);

    wire WB_ForwardC = (MEMWB_MemToReg & EXMEM_MemWrite & EXMEM_EQ_MEMWB_Rd);

    assign ForA = (MEM_ForwardA) ? 2'b10 : ( (WB_ForwardA) ? 2'b01 : 2'b00);
    assign ForB = (MEM_ForwardB) ? 2'b10 : ( (WB_ForwardB) ? 2'b01 : 2'b00);
    assign ForC = (WB_ForwardC) ? 1'b1 : 1'b0;

endmodule
