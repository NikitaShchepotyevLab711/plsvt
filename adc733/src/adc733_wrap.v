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

reg [2:0] state;
reg [2:0] cnt;

localparam IDLE      = 3'd0;
localparam CRA_LOAD  = 3'd1;
localparam CRB_LOAD  = 3'd2;
localparam CRC_LOAD  = 3'd3;
localparam CRD_LOAD  = 3'd4;
localparam CRE_LOAD  = 3'd5;
localparam CRF_LOAD  = 3'd6;
localparam CRG_LOAD  = 3'd7;
localparam CRH_LOAD  = 3'd8;

assign CRA = {resetn, 6'b0, op_mode};
assign CRB = {1'b0, sclk_divide, decimation_rate};
assign CRC = 8'b1;
assign CRD = 8'b0;
assign CRE = 8'b0;
assign CRF = 8'b0;
assign CRG = 8'b0;// узнать про режим
assign CRH = 8'b0; 


assign control_word = {1'b1, 1'b1, 3'b000, state, register_data};

always @(posedge SCLK or negedge rst_l) begin
    if (!rst_l) begin
        state <= 3'd0;
        cnt   <= 3'd0;
    end
    else begin
        case (state)
            IDLE: begin
                cnt <= 4'd0;
                state <= CRA_LOAD;
                register_data <= 8'd0;
            end 

            CRA_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRB_LOAD;
                    cnt <= 4'd0; 
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRA;
                end
            end

            CRB_LOAD: begin
                if (cnt == 16) begin
                    state <= CRC_LOAD;
                    cnt <= 4'd0;
                end 
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRB;
                end
            end

            CRC_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRD_LOAD;
                    cnt <= 4'd0; 
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRC;
                end
            end

            CRD_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRE_LOAD; 
                    cnt <= 4'd0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRD;
                end
            end

            CRE_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRF_LOAD; 
                    cnt <= 4'd0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRE;
                end
            end

            CRF_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRG_LOAD; 
                    cnt <= 4'd0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRF;
                end
            end

            CRG_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= CRH_LOAD; 
                    cnt <= 4'd0;
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRG;
                end
            end

            CRH_LOAD: begin
                if (cnt == 4'd15) begin
                    state <= IDLE;
                    cnt <= 4'd0; 
                end
                else begin
                    cnt <= cnt + 1'b1;
                    register_data <= CRH;
                end
            end

            default: 
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
    .control_word(control_word)
    .channel(channel),
    .busy(busy),
    .rd_en(rd_en)
);

endmodule