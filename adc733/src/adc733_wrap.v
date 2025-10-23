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

    input  wire        SYNC,
    output reg  [15:0] DATA_O, 
    output wire        RD_EN,
    output wire        OP_MODE,
    output reg  [2:0]  CHANNEL
);

// регистры и провода для конфигурирования АЦП //
wire [15:0] control_word;
reg  [7:0]  register_data;
wire [7:0] CRA;
wire [7:0] CRB;
wire [7:0] CRC;
wire [7:0] CRD;
wire [7:0] CRE;
wire [7:0] CRF;
wire [7:0] CRG;
wire [7:0] CRH;
wire [7:0] DATAMODE_SET;

assign CRA          = 8'h0;
assign CRB          = 8'h1; //деление внешней MCLK на 2 и получение SCLK = 16.384/2 = 8.192 МГц
assign CRC          = 8'h2;
assign CRD          = 8'h3;
assign CRE          = 8'h4;
assign CRF          = 8'h5;
assign CRG          = 8'h6;// узнать про режим
assign CRH          = 8'h7; 
assign DATAMODE_SET = 8'h8;

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

// регистры и провода для захвата данных и контроля работы модуля adc733 //
reg         op_mode; // 0 = programm, 1 = data_mode
wire        word_sent;
wire [15:0] captured_data;
wire        adc_rd_en;
wire        adc_operation_mode;
wire        adc_busy;
wire [2:0]  adc_channel;
reg         sync;

reg  [3:0]  state;
localparam IDLE          = 2'd0;
localparam SEND_WORD     = 2'd1;
localparam SEND_DATAMODE = 2'd2;
localparam DATAMODE      = 2'd3;

reg [3:0] reg_counter;
reg adc_rd_en_r;

wire sync_toggle;
wire sync_pulse;

assign control_word = {op_mode, 1'b1, 6'b000, register_data};

pulse_to_toggle pulse_to_toggle_inst (
    .clk(clk),
    .rst(rst_l),
    .pulse(SYNC),
    .toggle(sync_toggle)
);

sync2_toggle_to_pulse toggle_to_pulse_inst (
    .clk(SCLK),
    .rst(rst_l),
    .toggle(sync_toggle),
    .pulse(sync_pulse)
);

front_detector front_detector_rden   (clk, rst_l, adc_rd_en_r, RD_EN);
sync2 i_sync2_opmode (clk, rst_l, adc_operation_mode, OP_MODE);

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        DATA_O      <= 16'd0;
        CHANNEL     <= 3'b0;
    end
    else if (RD_EN) begin
        DATA_O  <= captured_data;
        CHANNEL <= adc_channel;
    end
end

always @(posedge SCLK or negedge rst_l) adc_rd_en_r <= !rst_l ? 1'b0 : adc_rd_en; 

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
                    if (reg_counter == 4'd7) begin
                        state <= SEND_DATAMODE;
                        op_mode <= 1'b1;
                    end else begin
                        reg_counter <= reg_counter + 1;
                        op_mode <= 1'b0;
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
    .clk           (clk               ),
    .rst_l         (rst_l             ),

    // serial port //
    .SCLK          (SCLK              ),
    .SDOFS         (SDOFS             ),
    .SDO           (SDO               ),
    .SDIFS         (SDIFS             ),
    .SDI           (SDI               ),
    .SE            (SE                ),

    // internal signals //
    .sync          (sync_pulse        ),
    .control_word  (control_word      ),
    .word_sent     (word_sent         ),
    .captured_data (captured_data     ),

    // output signals //
    .channel       (adc_channel       ),
    .busy          (adc_busy          ),
    .rd_en         (adc_rd_en         ),
    .operation_mode(adc_operation_mode)
);

endmodule