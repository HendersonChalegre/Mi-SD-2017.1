module TopLevel(
    input clock_50MHz,
    input [3:0] Switch,
    input UART_Rx,

    output UART_Tx
);

reg clock_25MHz = 0;
reg clock_12_5MHz = 0;

always @(posedge clock_50MHz)
    clock_25MHz = ~clock_25MHz;

always @(posedge clock_25MHz)
    clock_12_5MHz = ~clock_12_5MHz;


wire [31:0] Address;
wire [31:0] CPU_Dout, CPU_Din;
wire CPU_WriteEnable, Mem_WriteEnable, Ctrl_WriteEnable;

wire uart_busy, Tx_Start, rdy;
wire [7:0] Tx_Data, Rx_Data;

wire Reset = Switch[0];
wire ctrl_access = Address[16];
wire [13:0] RAM_Address = Address[15:2];

wire last_addr = (Address == 32'h3ffc);

reg res = 0;

always @(posedge clock_12_5MHz) begin
    if (Reset)
        res <= 0;
    else
    if (last_addr || res)
        res <= 1;
end

Processor cpu(
    .Clock(clock_12_5MHz),
    .Reset(res | Reset),
    .Mem_DataIn(CPU_Din),
    
    .Mem_Address(Address),
    .Mem_WriteEnable(CPU_WriteEnable),
    .Mem_DataOut(CPU_Dout)
);

Dmux2 #(.SIZE(1)) dmux(
    .Sel(ctrl_access),
    .In(CPU_WriteEnable),

    .Out0(Mem_WriteEnable),
    .Out1(Ctrl_WriteEnable)
);

RAM ram(
    .Clock(clock_12_5MHz),
    .Address(RAM_Address),
    .MemWrite(Mem_WriteEnable),
    .WriteData(CPU_Dout),

    .ReadData(CPU_Din)
);

Controller ctrl(
    .Clock(clock_12_5MHz),
    .Reset(Reset),
    .Tx_Busy(uart_busy),
    .WriteEnable(Ctrl_WriteEnable),
    .Data_In(CPU_Dout),

    .Tx_Start(Tx_Start),
    .Tx_Data(Tx_Data)
);

uart ut (
    .din(Tx_Data),
    .Clock(clock_12_5MHz),
    .enable(Tx_Start),
    .rx(UART_Rx),
    .rdy_clr(1'b1),
    
    .tx(UART_Tx),
    .tx_busy(uart_busy),
    .rdy(rdy),
    .dout(Rx_Data)
);

endmodule