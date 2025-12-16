module adc_selector (
    input wire clk,
    input wire rst_l,
    input wire sync,
    output wire adc_1_en,
    output wire adc_2_en,
    output wire adc_3_en,
    output wire adc_4_en,
    output wire adc_5_en,
    output wire adc_6_en,
);
    
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        sync_cnt <= 3'd0;
    end
    else begin
        if (sync_cnt == 3'd6)
            sync_cnt <= 3'd0;
        else if (sync) begin
            sync_cnt <= sync_cnt + 1'd1;
        end
    end 
end

always @(*) begin
    case (sync_cnt)
        3'd0: adc_1_en = 1'b1;
        3'd1: adc_2_en = 1'b1;
        3'd2: adc_2_en = 1'b1;
        3'd3: adc_4_en = 1'b1;
        3'd4: adc_5_en = 1'b1;
        3'd5: adc_6_en = 1'b1;
        default: begin
            adc_1_en = 1'b0;
            adc_2_en = 1'b0;
            adc_3_en = 1'b0;
            adc_4_en = 1'b0;
            adc_5_en = 1'b0;
            adc_6_en = 1'b0;
        end
    endcase
end

endmodule