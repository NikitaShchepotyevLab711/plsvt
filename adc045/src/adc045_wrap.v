module adc045_wrap #(
    parameter integer CLK_FREQ_HZ  = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 300
) (
    input  wire        clk,
    input  wire        rst_l,

    // Interface to one 5400TR045A-025 ADC.
    input  wire        DRDY,
    input  wire        DOUT,
    output wire        CS,
    output wire        DIN,
    output wire        SCLK,
    output wire        nRST,
    output wire        START,

    // Captured ADC data.
    output wire [23:0] DATA_OUT,
    output wire        RD_EN
);

// Both differential input channels are sampled in single-conversion mode.
// adc045 accepts 2'b00 and 2'b11 as "both channels"; 2'b01 selects channel 1
// and 2'b10 selects channel 2.
wire [1:0] channel_choice;
assign channel_choice = 2'b11;

// Configuration register R[13:0]. A_MUX (R[15:14]) is supplied by adc045.
wire        cfg_pol;
wire [2:0]  cfg_gain;
wire        cfg_ref;
wire        cfg_mode;
wire [1:0]  cfg_data_rate;
wire [1:0]  cfg_tech_hi;
wire        cfg_scale;
wire        cfg_buf_dis;
wire [1:0]  cfg_tech_lo;
wire [13:0] wreg_command;

assign cfg_pol       = 1'b0;   // Non-inverted differential inputs.
assign cfg_gain      = 3'b000; // PGA bypassed, gain = 1.
assign cfg_ref       = 1'b0;   // Internal 2.5 V reference.
assign cfg_mode      = 1'b1;   // Single-conversion mode.
assign cfg_data_rate = 2'b00;  // 1 ksample/s digital-filter setting.
assign cfg_tech_hi   = 2'b00;  // Reserved: must be zero.
assign cfg_scale     = 1'b0;   // 100% full scale.
assign cfg_buf_dis   = 1'b0;   // Reference buffer enabled.
assign cfg_tech_lo   = 2'b00;  // Reserved: must be zero.

assign wreg_command = {
    cfg_pol,
    cfg_gain,
    cfg_ref,
    cfg_mode,
    cfg_data_rate,
    cfg_tech_hi,
    cfg_scale,
    cfg_buf_dis,
    cfg_tech_lo
};

wire sync_pulse;
wire sync_extended;
wire adc_busy;
wire adc_busy_done;
wire adc_delay_active;
wire adc_enable;
wire adc_channel;
reg  work_frame;

// Free-running request pulse used by the stand-alone ADC test project.
sync_strobe #(
    .CLK_FREQ_HZ   (CLK_FREQ_HZ),
    .STROBE_FREQ_HZ(SYNC_FREQ_HZ)
) sync_strobe_inst (
    .clk   (clk),
    .rst_l (rst_l),
    .strobe(sync_pulse)
);

// Preserve the pulse-extension used by the multi-ADC version. It also gives
// the local run-enable latch time to open before the controller samples SYNC.
pulse_extender pulse_extender_inst (
    .clk           (clk),
    .rst_l         (rst_l),
    .pulse         (sync_pulse),
    .extended_pulse(sync_extended)
);

// Convert the falling edge of adc_busy into a one-clk completion pulse for
// the local run-enable latch.
sync2_toggle_to_pulse busy_fall_detector_inst (
    .clk       (clk),
    .rst       (rst_l),
    .toggle    (adc_busy),
    .pulse     (adc_busy_done),
    .out_toggle()
);

// Keep the controller enabled for the complete pair of conversions. Physical
// SCLK is generated only inside the 24-bit write and read states.
always @(posedge clk or negedge rst_l) begin
    if (!rst_l)
        work_frame <= 1'b0;
    else if (adc_busy_done)
        work_frame <= 1'b0;
    else if (sync_pulse)
        work_frame <= 1'b1;
end

assign adc_enable = adc_delay_active | work_frame;

adc045 #(
    .CLK_FREQ_HZ(CLK_FREQ_HZ)
) adc_inst (
    .clk           (clk),
    .rst_l         (rst_l),

    .DRDY          (DRDY),
    .DOUT          (DOUT),
    .CS            (CS),
    .DIN           (DIN),
    .SCLK          (SCLK),
    .nRST          (nRST),
    .START         (START),

    .enable        (adc_enable),
    .sync          (sync_extended),
    .wreg_command  (wreg_command),
    .channel_choice(channel_choice),
    .busy          (adc_busy),
    .data_o        (DATA_OUT),
    .ch_num        (adc_channel),
    .rd_en         (RD_EN),
    .dly           (adc_delay_active)
);

endmodule
