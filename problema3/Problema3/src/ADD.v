`timescale 1ns / 1ps

/*
 Universidade Estadual de Feira de Santana
 TEC499 - MI - Sistemas Digitais

 Module: ADD.v
 Desc: 32-bit ADD for the ANTARES-R2 Processor
 Inputs:
    A: 32-bit value
    B: 32-bit value

Outputs:
    C: The sum of A and B
*/
module ADD (
    input [31:0] A,
    input [31:0] B,
    output[31:0] C
    );

    assign C = (A + B);
endmodule