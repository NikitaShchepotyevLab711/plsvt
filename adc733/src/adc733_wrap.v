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

    input  wire        sync  
);

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

reg [3:0] state;
reg [3:0] cnt;
reg       op_mode; // 0 = programm, 1 = data_mode
wire      word_sent;

localparam IDLE      = 4'd0;
localparam CRA_LOAD  = 4'd1;
localparam CRB_LOAD  = 4'd2;
localparam CRC_LOAD  = 4'd3;
localparam CRD_LOAD  = 4'd4;
localparam CRE_LOAD  = 4'd5;
localparam CRF_LOAD  = 4'd6;
localparam CRG_LOAD  = 4'd7;
localparam CRH_LOAD  = 4'd8;
localparam DATMOD_LD = 4'd9;
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

assign control_word = {op_mode, 1'b1, 4'b000, register_data};

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state         <= 3'd0;
        cnt           <= 3'd0;
        op_mode       <= 1'b0;
        register_data <= 8'd0;
    end
    else begin
        case (state)
            IDLE: begin
                cnt           <= 4'd0;
                state         <= CRA_LOAD;
                op_mode       <= 1'b0;
                register_data <= 8'd0;
            end 

            CRA_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRB_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRA_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRA;
                end
            end

            CRB_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRC_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRB_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRB;
                end
            end

            CRC_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRD_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRC_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRC;
                end
            end

            CRD_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRE_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRD_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRD;
                end
            end

            CRE_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRF_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRE_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRE;
                end
            end

            CRF_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRG_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRF_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRF;
                end
            end

            CRG_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= CRH_LOAD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRG_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRG;
                end
            end

            CRH_LOAD: begin
                op_mode <= 1'b0;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= DATMOD_LD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRH_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRH;
                end
            end

            DATMOD_LD: begin
                op_mode <= 1'b1;
                if (cnt == 4'd15) begin
                    if (word_sent) begin
                        state <= DATMOD_LD;
                        cnt <= 4'd0; 
                    end
                    else 
                        state <= CRH_LOAD;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= DATAMODE_SET;
                end
            end

            default: begin
                state         <= 3'd0;
                cnt           <= 3'd0;
                op_mode       <= 1'b0;
                register_data <= 8'd0;
            end      
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
    .word_sent(word_sent)
);

endmodule