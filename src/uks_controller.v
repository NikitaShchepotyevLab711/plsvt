module uks_controller (
    input  wire        clk,
    input  wire        rst_l,

    input wire [7:0]  marker,       
    input wire [7:0]  addr,
    input wire [15:0] data,
    input wire [31:0] whole_uks,
    input wire        valid,        // поступающие данные валидны
    input wire        rd_ready,     // выходные данные успешно получены другим модулем
    input wire [15:0] cpu_addr,

    // регистры интерфейса ПЛИС - процессор //
    output reg        vsi_gen_en,    
    output reg        MB1_req,
    output reg        MB2_req,
    output reg        MB3_req,
    output reg        MB4_req,
    output reg        DSS_req,

    output reg [5:0]  DAC_mode,

    output reg [15:0] DAC1_value,
    output reg [15:0] DAC2_value,
    output reg [15:0] DAC3_value,
    output reg [15:0] DAC4_value,
    output reg [15:0] DAC5_value,
    output reg [15:0] DAC6_value,

    output reg [31:0] MB1_UKS,
    output reg [31:0] MB2_UKS,
    output reg [31:0] MB3_UKS,
    output reg [31:0] MB4_UKS,

    output reg        MB_READY1,
    output reg        MB_READY2,
    output reg        MB_READY3,
    output reg        MB_READY4,

    output reg [15:0] DAC_limit,
    output reg [15:0] DAC_step_mux
);

//-----------------------------------------------------------------
// Входной регистровый барьер (выравнивание сигналов по фронту clk)
//-----------------------------------------------------------------
reg [7:0]  marker_r;
reg [7:0]  addr_r;
reg [15:0] data_r;
reg        valid_r;
reg [31:0] whole_uks_r;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        marker_r    <= 8'h0;
        addr_r      <= 8'h0;
        data_r      <= 16'h0;
        valid_r     <= 1'b0;
        whole_uks_r <= 32'h0;
    end else begin
        marker_r    <= marker;
        addr_r      <= addr;
        data_r      <= data;
        valid_r     <= valid;
        whole_uks_r <= whole_uks;
    end
end

//-----------------------------------------------------------------
// Комбинаторные стробы декодирования маркеров (Уплощение логики)
//-----------------------------------------------------------------
wire valid_toggle_mb1;
wire valid_toggle_mb2;
wire valid_toggle_mb3;
wire valid_toggle_mb4;

wire write_en_a0 = (marker_r == 8'ha0);

// Флаг дефолтного состояния (когда маркер не принадлежит ни одной известной ветви)
wire is_unknown_marker = (marker_r != 8'ha0) && (marker_r != 8'ha1) && 
                         (marker_r != 8'ha2) && (marker_r != 8'ha3) && 
                         (marker_r != 8'ha4);

//-----------------------------------------------------------------
// Изолированные блоки триггеров конфигурации и ЦАП
//-----------------------------------------------------------------

// Регистры системных запросов (Адрес 8'h1)
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        vsi_gen_en <= 1'b1;
        MB1_req    <= 1'b1;
        MB2_req    <= 1'b1;
        MB3_req    <= 1'b1;
        MB4_req    <= 1'b1;
        DSS_req    <= 1'b1;
    end else if (write_en_a0 && (addr_r == 8'h1)) begin
        vsi_gen_en <= data_r[0];
        MB1_req    <= data_r[1];
        MB2_req    <= data_r[2];
        MB3_req    <= data_r[3];
        MB4_req    <= data_r[4];
        DSS_req    <= data_r[5];
    end
end

// Индивидуальные always-блоки убирают тяжелые мультиплексоры перед D-входами
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC_mode <= 6'b111111;
    else if (write_en_a0 && (addr_r == 8'h2)) DAC_mode <= data_r[5:0];
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC1_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h3)) DAC1_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC2_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h4)) DAC2_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC3_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h5)) DAC3_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC4_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h6)) DAC4_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC5_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h7)) DAC5_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC6_value <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h8)) DAC6_value <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC_limit <= 16'hffff;
    else if (write_en_a0 && (addr_r == 8'h9)) DAC_limit <= data_r;
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) DAC_step_mux <= 16'h1;
    else if (write_en_a0 && (addr_r == 8'hb)) DAC_step_mux <= data_r;
end

//-----------------------------------------------------------------
// Изолированная логика каналов УКC и флагов READY
//-----------------------------------------------------------------

// Точное сохранение исходной логики: сброс в 0 только при неизвестном маркере
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        MB1_UKS   <= 32'h0;
        MB_READY1 <= 1'b0;
    end else begin
        if (marker_r == 8'ha1) begin
            MB1_UKS   <= whole_uks_r;
            MB_READY1 <= valid_toggle_mb1;
        end else if (is_unknown_marker) begin
            MB1_UKS   <= 32'h0;
        end
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        MB2_UKS   <= 32'h0;
        MB_READY2 <= 1'b0;
    end else begin
        if (marker_r == 8'ha2) begin
            MB2_UKS   <= whole_uks_r;
            MB_READY2 <= valid_toggle_mb2;
        end else if (is_unknown_marker) begin
            MB2_UKS   <= 32'h0;
        end
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        MB3_UKS   <= 32'h0;
        MB_READY3 <= 1'b0;
    end else begin
        if (marker_r == 8'ha3) begin
            MB3_UKS   <= whole_uks_r;
            MB_READY3 <= valid_toggle_mb3;
        end else if (is_unknown_marker) begin
            MB3_UKS   <= 32'h0;
        end
    end
end

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        MB4_UKS   <= 32'h0;
        MB_READY4 <= 1'b0;
    end else begin
        if (marker_r == 8'ha4) begin
            MB4_UKS   <= whole_uks_r;
            MB_READY4 <= valid_toggle_mb4;
        end else if (is_unknown_marker) begin
            MB4_UKS   <= 32'h0;
        end
    end
end

//-----------------------------------------------------------------
// Импульсная логика взаимодействия
//-----------------------------------------------------------------
wire pulse_mb1 = (valid_r) && (marker_r == 8'ha1);
wire pulse_mb2 = (valid_r) && (marker_r == 8'ha2);
wire pulse_mb3 = (valid_r) && (marker_r == 8'ha3);
wire pulse_mb4 = (valid_r) && (marker_r == 8'ha4);

wire reset_toggle_mb1 = (rd_ready) && (cpu_addr == 16'h2);
wire reset_toggle_mb2 = (rd_ready) && (cpu_addr == 16'h3);
wire reset_toggle_mb3 = (rd_ready) && (cpu_addr == 16'h4);
wire reset_toggle_mb4 = (rd_ready) && (cpu_addr == 16'h5);

pulse_to_toggle pulse_to_toggle_inst1 (
    .clk(clk), .rst(rst_l), .pulse(pulse_mb1), .reset_toggle(reset_toggle_mb1), .toggle(valid_toggle_mb1)
);

pulse_to_toggle pulse_to_toggle_inst2 (
    .clk(clk), .rst(rst_l), .pulse(pulse_mb2), .reset_toggle(reset_toggle_mb2), .toggle(valid_toggle_mb2)
);

pulse_to_toggle pulse_to_toggle_inst3 (
    .clk(clk), .rst(rst_l), .pulse(pulse_mb3), .reset_toggle(reset_toggle_mb3), .toggle(valid_toggle_mb3)
);

pulse_to_toggle pulse_to_toggle_inst4 (
    .clk(clk), .rst(rst_l), .pulse(pulse_mb4), .reset_toggle(reset_toggle_mb4), .toggle(valid_toggle_mb4)
);
 
endmodule