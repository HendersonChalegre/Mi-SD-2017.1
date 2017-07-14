`timescale 1ns / 1ps

module WB_Block (
    input [31:0] WB_MemData, WB_ALUOut,
    input WB_MemtoReg,

    output [31:0] WB_WriteData
    );


    Mux2 MemtoReg_Mux(
        .Sel(WB_MemtoReg),
        .In0(WB_ALUOut),
        .In1(WB_MemData),

        .Out(WB_WriteData)
    );

endmodule