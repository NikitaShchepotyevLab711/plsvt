module lvds_wrapper #(
    parameter BIT_RATE     = 9600,
    parameter CLK_HZ       = 12_000_000,
    parameter PAYLOAD_BITS = 8,
    parameter STOP_BITS    = 1
) (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        sync,
    
    input  wire        RO,  // линия приема данных по uart от ДСС
    output wire        RE,  // сигнал активности приема
    output wire        DI,  // линия отправки команды в виде 1 для ДСС
    output wire        DE,  // сигнал активности отправки
    
    output wire [11:0] data12b,  // принимаемые после каждого sync три 12битные значения
    output wire [1:0]  word_num, // номер (0 1 или 2) принимаемых от ДСС значений
    output wire        data_rdy  // строб после каждого принятого значения
);

wire [2:0] val_num;
wire       byte_received;
wire       byte_sent;
wire [7:0] uart_data;

reg [7:0]  byte0_reg;
reg [7:0]  byte1_reg;
reg [7:0]  byte2_reg;
reg [7:0]  byte3_reg;
reg [7:0]  byte4_reg;

reg [2:0]  state;
reg [11:0] data12b_reg;
reg [1:0]  word_num_reg;
reg        data_valid_reg;

localparam BYTE1         = 3'd0;
localparam BYTE2         = 3'd1;
localparam BYTE3         = 3'd2;
localparam SAVE_1ST_WORD = 3'd3;
localparam BYTE4         = 3'd4;
localparam SAVE_2ND_WORD = 3'd5;
localparam BYTE5         = 3'd6;
localparam SAVE_3RD_WORD = 3'd7;

always @(posedge clk or negedge rst_l) begin : fsm_8_to_12_bytes
    if (!rst_l) begin
        state           <= 3'b0;
        byte0_reg       <= 8'b0;
        byte1_reg       <= 8'b0;
        byte2_reg       <= 8'b0;
        byte3_reg       <= 8'b0;
        byte4_reg       <= 8'b0;
        data12b_reg     <= 12'b0;
        word_num_reg    <= 2'b0;
        data_valid_reg  <= 1'b0;
    end
    else begin
        data_valid_reg <= 1'b0;

        case (state)
            BYTE1: begin
                if (byte_received) begin
                    byte0_reg <= uart_data;
                    state <= BYTE2;
                end
            end
            
            BYTE2: begin
                if (byte_received) begin
                    byte1_reg <= uart_data;
                    state <= BYTE3;
                end
            end
            
            BYTE3: begin
                if (byte_received) begin
                    byte2_reg <= uart_data;
                    state <= SAVE_1ST_WORD;
                end
            end
            
            SAVE_1ST_WORD: begin
                data12b_reg <= {byte1_reg[3:0], byte0_reg}; 
                word_num_reg <= 2'd0;
                data_valid_reg <= 1'b1;
                state <= BYTE4;
            end
            
            BYTE4: begin
                if (byte_received) begin
                    byte3_reg <= uart_data;
                    state <= SAVE_2ND_WORD;
                end
            end
            
            SAVE_2ND_WORD: begin
                data12b_reg <= {byte2_reg, byte1_reg[7:4]};
                word_num_reg <= 2'd1;
                data_valid_reg <= 1'b1;
                state <= BYTE5;
            end
            
            BYTE5: begin
                if (byte_received) begin
                    byte4_reg <= uart_data;
                    state <= SAVE_3RD_WORD;
                end
            end
            
            SAVE_3RD_WORD: begin
                data12b_reg <= {byte4_reg[3:0], byte3_reg};
                word_num_reg <= 2'd2;
                data_valid_reg <= 1'b1;
                state <= BYTE1;
            end
            
            default: begin
                state <= BYTE1;
            end
        endcase
    end
end

assign data12b   = data12b_reg;
assign word_num  = word_num_reg;
assign data_rdy = data_valid_reg;

lvds_dss #(
    .BIT_RATE     (BIT_RATE),
    .CLK_HZ       (CLK_HZ),
    .PAYLOAD_BITS (PAYLOAD_BITS),
    .STOP_BITS    (STOP_BITS)
) lvds_dss_inst (
    .clk          (clk),
    .rst_l        (rst_l),
    .sync         (sync),
    .RO           (RO),
    .RE           (RE),
    .DI           (DI),
    .DE           (DE),
    .data_o       (uart_data),
    .val_num      (val_num),
    .byte_received(byte_received),
    .byte_sent    (byte_sent )
);

endmodule