`timescale 1ns / 1ps

/*
    Banco de registradores.
    32 registradores de 32 bits cada.
    Não se pode escrever na posição 0.
*/

module RegisterFile(
    input Clock,
    input Reset,
    input [4:0] ReadRg1, ReadRg2, WriteRg,
    input RegWrite,
    input [31:0] WriteData,
    output [31:0] ReadData1, ReadData2 
    );

    // 32 registradores, sendo a posição 0 combinatorial
    // que retorna só 0
    reg [31:0] registers [0:31];
    //reg [31:0] rg1,rg2;

    // Inicialização do Banco
    
    integer i;
    initial begin
      
      for (i = 0; i < 32; i=i+1) begin
        registers[i] <= 0;
      end
      registers[29] <= 65536;
      registers[30] <= 65536;
      
    end
    

    /*
    always @(*) begin
        ReadData1 = (ReadRg1 == 0) ? 32'b0 : registers[ReadRg1];
        ReadData2 = (ReadRg2 == 0) ? 32'b0 : registers[ReadRg2];
    end
    */
    // Escrita sequencial ao descer do clock
    always @(posedge Clock) begin
        if (Reset) begin
            for (i=0; i<32; i=i+1) begin
                if (i == 29 || i == 30) 
                    registers[i] <= 65536;
                else
                    registers[i] <= 0;
            end
        end
        else begin
            if (WriteRg != 0) 
                registers[WriteRg] <= RegWrite ? WriteData : registers[WriteRg];
            //rg1 <= ReadRg1;
            //rg2 <= ReadRg2;
        end
    end

    // Leitura combinacional
    assign ReadData1 = registers[ReadRg1];
    assign ReadData2 = registers[ReadRg2];

endmodule