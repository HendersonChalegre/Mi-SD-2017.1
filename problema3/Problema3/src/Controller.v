module Controller (
    input Clock,
    input Reset,
    input Tx_Busy,
    input WriteEnable,
    input [31:0] Data_In,

    output reg Tx_Start = 0,
    output reg [7:0] Tx_Data = 0
);

reg [31:0] temp_reg = 0;
reg sending = 0;

wire queue_full, queue_v_o;
wire [31:0] queue_dout;

localparam IDLE = 2'b00;
localparam COMM = 2'b01;
localparam WAIT = 2'b10;
localparam END  = 2'b11;

reg [1:0] state = IDLE;
reg [2:0] counter = 0;

Queue queue (
    .Clock(Clock),
    .Reset(Reset),
    .Data_In(Data_In),
    .InputValid(WriteEnable),
    .ConsumerBusy(sending),

    .IsFull(queue_full),
    .Data_Out(queue_dout),
    .OutputValid(queue_v_o)
);


always @(posedge Clock) begin

    case (state)
        IDLE: 
            if (queue_v_o) begin
                temp_reg <= queue_dout;
                sending <= 1;
                state <= COMM;
                counter <= 0;
            end
        
        COMM:
            if (~Tx_Busy) begin
                if (counter < 4) begin
                    case (counter)
                        3'b000: Tx_Data  <=  temp_reg[31:24];
                        3'b001: Tx_Data  <=  temp_reg[23:16];
                        3'b010: Tx_Data  <=  temp_reg[15:8];
                        3'b011: Tx_Data  <=  temp_reg[7:0];
                    endcase
                    Tx_Start <= 1;
                    state <= WAIT;
                    counter <= counter + 1;
                end
                else begin
                    counter <= 0;
                    state <= END;
                end
            end
            else
                state <= WAIT;
        WAIT: begin
            if (~Tx_Busy) state <= COMM;
            Tx_Start <= 0;
            end
        END: begin
                state <= IDLE;
                sending <= 0;
            end
    endcase
end



endmodule