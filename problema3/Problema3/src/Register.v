`timescale 1ns / 1ps

/*
    Um registrador de 32 bits com valor inicial 0
*/

module Register (
    input Clock,
    input Reset,
    input Enable,
    input [31:0] In,
    output reg [31:0] Out
    );

    initial Out = 0;

    always @(posedge Clock) begin
      Out <= (Reset) ? 0 : ((Enable) ? In : Out);
    end
endmodule