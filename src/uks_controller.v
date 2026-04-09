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

wire valid_toggle_mb1;
wire valid_toggle_mb2;
wire valid_toggle_mb3;
wire valid_toggle_mb4;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        MB1_UKS      <= 32'h0;
        MB2_UKS      <= 32'h0;
        MB3_UKS      <= 32'h0;
        MB4_UKS      <= 32'h0;
        vsi_gen_en   <= 1'b1;
        MB1_req      <= 1'b1;
        MB2_req      <= 1'b1;
        MB3_req      <= 1'b1;
        MB4_req      <= 1'b1;
        DSS_req      <= 1'b1;
        DAC_mode     <= 6'b111111;
        DAC1_value   <= 16'hffff;
        DAC2_value   <= 16'hffff;
        DAC3_value   <= 16'hffff;
        DAC4_value   <= 16'hffff;
        DAC5_value   <= 16'hffff;
        DAC6_value   <= 16'hffff;
        DAC_limit    <= 16'hffff;
        DAC_step_mux <= 16'h1;
        MB_READY1    <= 1'b0;
        MB_READY2    <= 1'b0;
        MB_READY3    <= 1'b0;
        MB_READY4    <= 1'b0;
    end
    else begin
       case (marker)

        8'ha0: begin
            case (addr)
                8'h1: begin
                    vsi_gen_en <= data[0];
                    MB1_req    <= data[1];
                    MB2_req    <= data[2];
                    MB3_req    <= data[3];
                    MB4_req    <= data[4];
                    DSS_req    <= data[5];
                end 

                8'h2: DAC_mode     <= data[5:0];

                8'h3: DAC1_value   <= data;
            
                8'h4: DAC2_value   <= data;

                8'h5: DAC3_value   <= data;

                8'h6: DAC4_value   <= data;

                8'h7: DAC5_value   <= data;

                8'h8: DAC6_value   <= data;

                8'h9: DAC_limit    <= data;

                8'hb: DAC_step_mux <= data;

                default: begin
                    vsi_gen_en   <= 1'b1;
                    MB1_req      <= 1'b1;
                    MB2_req      <= 1'b1;
                    MB3_req      <= 1'b1;
                    MB4_req      <= 1'b1;
                    DSS_req      <= 1'b1;
                    DAC_mode     <= 6'b111111;
                    DAC1_value   <= 16'hffff;
                    DAC2_value   <= 16'hffff;
                    DAC3_value   <= 16'hffff;
                    DAC4_value   <= 16'hffff;
                    DAC5_value   <= 16'hffff;
                    DAC6_value   <= 16'hffff;
                    DAC_limit    <= 16'hffff;
                    DAC_step_mux <= 16'h1;
                end
            endcase
        end

        8'ha1: begin
            MB1_UKS   <= whole_uks;
            MB_READY1 <= valid_toggle_mb1;
        end 

        8'ha2: begin
            MB2_UKS   <= whole_uks;
            MB_READY2 <= valid_toggle_mb2;
        end 

        8'ha3: begin
            MB3_UKS   <= whole_uks;
            MB_READY3 <= valid_toggle_mb3;
        end 

        8'ha4: begin
            MB4_UKS   <= whole_uks;
            MB_READY3 <= valid_toggle_mb4;
        end 

        default: begin
            MB1_UKS <= 8'h0;
            MB2_UKS <= 8'h0;
            MB3_UKS <= 8'h0;
            MB4_UKS <= 8'h0;
        end 

       endcase 
    end
end

wire pulse_mb1 = (valid)&&(marker == 8'ha1);
wire pulse_mb2 = (valid)&&(marker == 8'ha2);
wire pulse_mb3 = (valid)&&(marker == 8'ha3);
wire pulse_mb4 = (valid)&&(marker == 8'ha4);

wire reset_toggle_mb1 = (rd_ready)&&(cpu_addr == 16'h2);
wire reset_toggle_mb2 = (rd_ready)&&(cpu_addr == 16'h3);
wire reset_toggle_mb3 = (rd_ready)&&(cpu_addr == 16'h4);
wire reset_toggle_mb4 = (rd_ready)&&(cpu_addr == 16'h5);

pulse_to_toggle pulse_to_toggle_inst1 (
    .clk(clk),
    .rst(rst_l),
    .pulse(pulse_mb1),
    .reset_toggle(reset_toggle_mb1),
    .toggle(valid_toggle_mb1)
);

pulse_to_toggle pulse_to_toggle_inst2 (
    .clk(clk),
    .rst(rst_l),
    .pulse(pulse_mb2),
    .reset_toggle(reset_toggle_mb2),
    .toggle(valid_toggle_mb2)
);

pulse_to_toggle pulse_to_toggle_inst3 (
    .clk(clk),
    .rst(rst_l),
    .pulse(pulse_mb3),
    .reset_toggle(reset_toggle_mb3),
    .toggle(valid_toggle_mb3)
);

pulse_to_toggle pulse_to_toggle_inst4 (
    .clk(clk),
    .rst(rst_l),
    .pulse(pulse_mb4),
    .reset_toggle(reset_toggle_mb4),
    .toggle(valid_toggle_mb4)
);
 
endmodule

