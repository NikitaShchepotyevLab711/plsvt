module dac045a #(
    parameter integer CLK_FREQ_HZ  = 8_000_000,
    parameter integer SYNC_FREQ_HZ = 32
) (
    input  wire        clk,
    input  wire        rst_l,
    input  wire        cfg_data,
    input  wire        cfg_frame,
    input  wire        sync_i,

//    output wire [15:0] dac_value,
//    output wire        dac_rdy,
//    output wire        dac_value_valid,
//    output reg         clk_out,

    // Serial interface of 5400TR045A-022.
    input  wire        SDO,
    output wire        SDI,
    output wire        SCK,
    output wire        CLRn,
    output wire        LDAc,
    output wire        CSn
);

wire [15:0] generated_code;
wire        step_coeff;
wire [15:0] dac_limit;
wire [1:0]  wave_mode;
wire [2:0]  fall_rate;
wire        update_mode;
wire        dac_rdy;
wire        dac_value_valid;

// Static mode bypasses the ramp and holds its state at the start of a period.
// A level change is sent on the next SYNC, independent of STEP_COEFF/FALL_RATE.
wire        dynamic_enable = (wave_mode != 2'd0);
wire        wave_triangle = (wave_mode == 2'd2);
wire [15:0] dac_code = dynamic_enable ? generated_code : dac_limit;

// Generate additional, evenly spaced DAC update events between SYNC pulses.
// The external SYNC is always the first event and re-aligns the local phase.
localparam integer SYNC_PERIOD_CYCLES = CLK_FREQ_HZ / SYNC_FREQ_HZ;
localparam integer UPDATE_INTERVAL_10X = SYNC_PERIOD_CYCLES / 10;
localparam integer UPDATE_COUNTER_WIDTH = $clog2(SYNC_PERIOD_CYCLES);
reg [UPDATE_COUNTER_WIDTH-1:0] update_counter;
reg [3:0]  extra_update_count;

wire extra_update = dynamic_enable && update_mode && (extra_update_count != 4'd9) &&
                    (update_counter == UPDATE_INTERVAL_10X - 1'b1);
wire dac_update = sync_i | extra_update;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        update_counter <= {UPDATE_COUNTER_WIDTH{1'b0}};
        extra_update_count <= 4'd0;
    end else if (sync_i) begin
        update_counter <= {UPDATE_COUNTER_WIDTH{1'b0}};
        extra_update_count <= 4'd0;
    end else if (!dynamic_enable || !update_mode) begin
        update_counter <= {UPDATE_COUNTER_WIDTH{1'b0}};
        extra_update_count <= 4'd0;
    end else if (extra_update) begin
        update_counter <= {UPDATE_COUNTER_WIDTH{1'b0}};
        extra_update_count <= extra_update_count + 1'b1;
    end else begin
        update_counter <= update_counter + 1'b1;
    end
end

// декодирование 24-битного слова от мезокиа для конфигурации ЦАП
dac_config_rx dac_config_rx_inst (
    .clk       (clk),
    .rst_l     (rst_l),
    .cfg_data  (cfg_data),
    .cfg_frame (cfg_frame),
    .step_coeff(step_coeff),
    .dac_limit (dac_limit),
    .wave_mode (wave_mode),
    .fall_rate (fall_rate)
);

dac_codegen dac_codegen_inst (
    .clk             (clk),
    .rst_l           (rst_l),
    // XPlace requires named signals of the exact port width here.
    .limit           (dac_limit),
    .enable          (dynamic_enable),
    .start           (dac_update),
    .step_coefficent (step_coeff),
    .wave_triangle   (wave_triangle),
    .fall_rate       (fall_rate),
    .data            (generated_code),
    .update_mode     (update_mode)
);

spi_controller spi_inst (
    .clk     (clk),
    .rst_l   (rst_l),
    .data_i  (dac_code),
    .dac_en  (1'b1),
    .renew   (dac_update),
    .rdy     (dac_rdy),
    .valid   (dac_value_valid),

    .SDO     (SDO),
    .SDI     (SDI),
    .SCK     (SCK),
    .CLRn    (CLRn),
    .LDAc    (LDAc),
    .CSn     (CSn)
);

endmodule
