module dac_codegen #(
    parameter DATA_WIDTH = 16
) (
    input  wire                  clk,
    input  wire                  rst_l,
    input  wire [DATA_WIDTH-1:0] limit,
    input  wire                  enable,
    input  wire                  start,
    output reg  [DATA_WIDTH-1:0] data
);

reg [DATA_WIDTH-1:0] increment;
reg [DATA_WIDTH-1:0] sum_stage1;
reg [DATA_WIDTH-1:0] sum_stage2;

wire reached_limit = (sum_stage1 >= limit); 

reg reached_limit_reg;

reg start_stage1, start_stage2;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        increment      <= {DATA_WIDTH{1'b0}};
        sum_stage1     <= {DATA_WIDTH{1'b0}};
        sum_stage2     <= {DATA_WIDTH{1'b0}};
        start_stage1   <= 1'b0;
        start_stage2   <= 1'b0;
        reached_limit_reg <= 1'b0;
        data           <= {DATA_WIDTH{1'b0}};
    end else begin
		// 1st pipeline stage //
        start_stage1  <= start;
        sum_stage1    <= increment + 16'd73;
        reached_limit_reg <= reached_limit;
        
        // 2nd pipeline stage //
        start_stage2  <= start_stage1;
        sum_stage2    <= sum_stage1;
        
        // 3rd pipeline stage //
        if (start_stage2) begin
            if (reached_limit_reg) begin
                increment <= {DATA_WIDTH{1'b0}};
                data      <= {DATA_WIDTH{1'b0}};
            end else begin
                increment <= sum_stage2;
                data      <= sum_stage2;
            end
        end else if (!enable) begin
            increment <= {DATA_WIDTH{1'b0}};
            data      <= {DATA_WIDTH{1'b0}};
        end
    end
end

endmodule