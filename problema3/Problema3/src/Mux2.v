`timescale 1ns / 1ps

/*
    Multiplexador de 2 entradas
*/

module Mux2 #(parameter SIZE = 32)(
    input Sel,
    input [(SIZE-1):0] In0 , In1,
    output [(SIZE-1):0] Out
    );

    assign Out = (Sel) ? In1 : In0;
endmodule