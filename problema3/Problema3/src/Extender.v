`timescale 1ns / 1ps

/*
 Universidade Estadual de Feira de Santana
 TEC499 - MI - Sistemas Digitais

 Module: Extender.v
 Desc: Extends the sign of 16-bit value
 Inputs:
    SignExt: Sign Extension signal
    In: 16-bit Value

Output:
    Out: 32-bit Extended value  

*/

module Extender (
        input SignExt,
        input [15:0] In,
        output [31:0] Out
    );

    wire signBit = In[15];

    assign Out = (SignExt) ? ((signBit) ? { 16'hFFFF, In } : { 16'b0 , In} ) : { 16'b0, In }; 
endmodule