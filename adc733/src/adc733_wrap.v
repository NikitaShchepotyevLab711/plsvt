module adc733_wrap (
    input wire         clk,
    input wire         rst_l,

    // serial port //
    input  wire        SCLK,
    input  wire        SDOFS,
    input  wire        SDO,
    output wire        SDIFS,
    output wire        SDI,
    output wire        SE,  

    input  wire        sync,
    output reg  [15:0] data_o 
);

wire [15:0] control_word;
reg  [7:0]  register_data;
wire [2:0] channel;
wire [7:0] CRA;
wire [7:0] CRB;
wire [7:0] CRC;
wire [7:0] CRD;
wire [7:0] CRE;
wire [7:0] CRF;
wire [7:0] CRG;
wire [7:0] CRH;
wire [7:0] DATAMODE_SET;

reg  [3:0]  state;
reg  [3:0]  cnt;
reg         op_mode; // 0 = programm, 1 = data_mode
wire        word_sent;
wire [15:0] captured_data;

localparam IDLE          = 2'd0;
localparam SEND_WORD     = 2'd1;
localparam SEND_DATAMODE = 2'd2;
localparam DATAMODE      = 2'd3;

/*
assign CRA          = 8'b0;
assign CRB          = 8'h8; //деление внешней MCLK на 2 и получение SCLK = 16.384/2 = 8.192 МГц
assign CRC          = 8'b1;
assign CRD          = 8'b0;
assign CRE          = 8'b0;
assign CRF          = 8'b0;
assign CRG          = 8'b0;// узнать про режим
assign CRH          = 8'b0; 
assign DATAMODE_SET = 8'b1;
*/

assign CRA          = 8'h0;
assign CRB          = 8'h1; //деление внешней MCLK на 2 и получение SCLK = 16.384/2 = 8.192 МГц
assign CRC          = 8'h2;
assign CRD          = 8'h3;
assign CRE          = 8'h4;
assign CRF          = 8'h5;
assign CRG          = 8'h6;// узнать про режим
assign CRH          = 8'h7; 
assign DATAMODE_SET = 8'h8;

assign control_word = {op_mode, 1'b1, 6'b000, register_data};
reg [3:0] reg_counter;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        data_o <= 4'd0;
    else
        data_o <= captured_data;
end

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state       <= IDLE;
        reg_counter <= 4'd0;
        op_mode     <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                reg_counter <= 4'd0;
                op_mode     <= 1'b0;
                state       <= SEND_WORD;
            end
            
            SEND_WORD: begin
                if (word_sent) begin
                    if (reg_counter == 4'd8) begin
                        state <= SEND_DATAMODE;
                    end else begin
                        reg_counter <= reg_counter + 1;
                    end
                end
            end
            
            SEND_DATAMODE: begin
                op_mode <= 1'b1;
                if (word_sent && SDOFS) begin
                    state <= DATAMODE;
                end
            end
            
            DATAMODE: begin

            end
            
            default: state <= IDLE;
        endcase
    end
end

// Выбор данных регистра
always @(*) begin
    if (state == SEND_DATAMODE) begin
        register_data = DATAMODE_SET;
    end else begin
        case (reg_counter)
            4'd0: register_data = CRA;
            4'd1: register_data = CRB;
            4'd2: register_data = CRC;
            4'd3: register_data = CRD;
            4'd4: register_data = CRE;
            4'd5: register_data = CRF;
            4'd6: register_data = CRG;
            4'd7: register_data = CRH;
            default: register_data = 8'd0;
        endcase
    end
end

adc733 adc_inst (
    .clk(clk),
    .rst_l(rst_l),

    // serial port //
    .SCLK(SCLK),
    .SDOFS(SDOFS),
    .SDO(SDO),
    .SDIFS(SDIFS),
    .SDI(SDI),
    .SE(SE),
    .sync(sync),
    .control_word(control_word),
    .channel(channel),
    .busy(busy),
    .rd_en(rd_en),
    .word_sent(word_sent),
    .captured_data(captured_data)
);

endmodule