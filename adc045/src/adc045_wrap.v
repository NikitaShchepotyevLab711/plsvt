module adc045_wrap (

    input  wire        clk,
    input  wire        rst_l,

    // interface to adc//
    input  wire        DRDY,           
    input  wire        DOUT,    
    output wire        CS,       
    output wire        DIN,           
    output wire        SCLK,
    output wire        nRST,
    output wire        START,
    
    // signals from above //
    input  wire        sync,

    // signals up //
    output wire        ready_sample,
    output wire [23:0] adc045_data    
);

reg [1:0] A_MUX;
reg [5:0] mode_switch_counter;
reg [2:0] state;
localparam IDLE  = 3'd0;
localparam WREG1 = 3'd1;
localparam CH1   = 3'd2;
localparam WREG2 = 3'd3;
localparam CH2   = 3'd4;

reg hard_wreg;
reg start_capture, start_command;
wire strb;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        mode_switch_counter <= 6'h0;
        hard_wreg <= 1'b0;
        A_MUX <= 2'b0;
        state <= IDLE;
        start_command <= 1'b0;
        start_capture <= 1'b0;    
    end
    else begin
        if (strb) begin
        case (state)
            IDLE: begin
                if (sync) begin
                    mode_switch_counter <= 6'h0;

                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b0;
                    state <= WREG1;
                end
            end

            WREG1: begin
                if (mode_switch_counter == 6'd23) begin
                    state <= CH1;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= WREG1;
                    mode_switch_counter <= mode_switch_counter + 1'b1;                    
                end  

                hard_wreg <= 1'b1;
                A_MUX <= 2'b0;
            end

            CH1: begin
                if (mode_switch_counter == 6'd47) begin
                    state <= WREG2;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= CH1;
                    mode_switch_counter <= mode_switch_counter + 1'b1;    
                    if (mode_switch_counter > 6'd23)  begin
                        start_command <= 1'b0;
                        start_capture <= 1'b1;     
                    end 
                    else begin
                        start_command <= 1'b1;
                        start_capture <= 1'b0;                              
                    end       
                end  

                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b0;
                end
            
            WREG2: begin
                if (mode_switch_counter == 6'd23) begin
                    state <= CH2;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= WREG2;
                    mode_switch_counter <= mode_switch_counter + 1'b1;                    
                end  

                hard_wreg <= 1'b1;
                A_MUX <= 2'b1;
            end

            CH2: begin
                if (mode_switch_counter == 6'd47) begin
                    state <= WREG2;
                    mode_switch_counter <= 6'd0;
                end
                else  begin
                    state <= CH1;
                    mode_switch_counter <= mode_switch_counter + 1'b1;    
                    if (mode_switch_counter > 6'd23)  begin
                        start_command <= 1'b0;
                        start_capture <= 1'b1;     
                    end 
                    else begin
                        start_command <= 1'b1;
                        start_capture <= 1'b0;                              
                    end       
                end  

                    hard_wreg <= 1'b0;
                    A_MUX <= 2'b1;
                end

            default: begin

                hard_wreg <= 1'b1;
                A_MUX <= 2'b1;
                state <= WREG1;   
            end
        endcase
        end
    end
end

wire POL = 0; // non inverted input channels
//reg POL = 1; // inverted input channels

wire [2:0] GAIN = 3'b000; // no gain
//wire [2:0] GAIN = 3'b100; // x2 gain
//wire [2:0] GAIN = 3'b101; // x4 gain
//wire [2:0] GAIN = 3'b110; // x8 gain
//wire [2:0] GAIN = 3'b111; // x16 gain

wire REF = 0; //internal reference voltage;
//wire REF = 1; //external reference voltage;

wire MODE = 0; //continuous conversion
//wire MODE = 1; //single conversion

wire [1:0] DR = 2'b00; // 1 kHz dig filter sampling
//wire [1:0] DR = 2'b01; // 250 Hz dig filter sampling
//wire [1:0] DR = 2'b10; // 62,5 Hz dig filter sampling
//wire [1:0] DR = 2'b11; // 15,6 Hz dig filter sampling

wire [1:0] Tech1 = 0; // technical bits

wire SCALE = 0; //full scale ADC
//wire SCALE = 1; // 80% scale ADC

wire BUF_DIS = 0; // reference voltage buffer on
//wire BUF_DIS = 1; // reference voltage buffer off

wire [1:0] Tech2 = 2'b00; // technical bits

wire [15:0] wreg_command;
assign wreg_command =  {A_MUX, POL, GAIN, REF, MODE, DR, Tech1, SCALE, BUF_DIS, Tech2};

clk_divider3 clkdiv_inst (
    .clk_i(clk),
    .clk_o(SCLK),
    .rst_l(rst_l),
    .strb(strb),
    .enable(1)    
);

adc_reader adc_rd (
    .clk(clk),
    .rst_l(rst_l),
    .drdy(DRDY),           
    .dout(DOUT),           
    .din(DIN),    
    .cs(CS),       
    .sclk(SCLK),
    .nrst(nRST),
    .ch1_data(adc045_data),
    .start_capture(start_capture),
    .start_command(start_command),
    .hard_wreg(hard_wreg),
    .wreg_command(wreg_command),
    .ready(ready_sample)
);
    
endmodule