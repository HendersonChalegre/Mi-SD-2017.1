`timescale 1ns / 1ps

/*
    Multiplexador de 4 entradas
*/

module Mux4 #(parameter SIZE = 32)(
    input [1:0] Sel,
    input [(SIZE-1):0] In00 , In01, In10, In11,
    output reg [(SIZE-1):0] Out
    );

    always @(*) begin
      case (Sel)
        2'b00: Out <= In00;
        2'b01: Out <= In01;
        2'b10: Out <= In10;
        2'b11: Out <= In11;
      endcase
    end
endmodule