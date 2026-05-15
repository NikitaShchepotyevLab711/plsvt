module dac_codegen (
    input  wire        clk,
    input  wire        rst_l,
    input  wire [15:0] limit,
    input  wire        enable,          // 1 - модуль активен, 0 - модуль неактивен
    input  wire        start,           // по этому стробу происходит изменение значения
    input  wire        period,          // задача периода сигнала
    input  wire [2:0]  step_coefficent, // коэффициент, на который умножается шаг увеличения сигнала
    output reg  [15:0] data
);

reg [15:0] increment;
reg [15:0] sum_stage1;
reg [15:0] sum_stage2;

reg reached_limit; 

reg start_stage1, start_stage2;

reg  [15:0] min_step = 16'd73;
wire [18:0] step;

reg [18:0] step_reg;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        increment      <= {16{1'b0}};
        sum_stage1     <= {16{1'b0}};
        sum_stage2     <= {16{1'b0}};
        start_stage1   <= 1'b0;
        start_stage2   <= 1'b0;
        reached_limit <= 1'b0;
        data           <= {16{1'b0}};
    end else begin

        step_reg      <= step;
		// 1st pipeline stage //
        start_stage1  <= start;
        sum_stage1    <= increment + step_reg;
        
        // 2nd pipeline stage //
        reached_limit <= (sum_stage1 >= limit);
        start_stage2  <= start_stage1;
        sum_stage2    <= sum_stage1;
        
        // 3rd pipeline stage //
        if (start_stage2) begin
            if (reached_limit) begin
                increment <= {16{1'b0}};
                data      <= {16{1'b0}};
            end else begin
                increment <= sum_stage2;
                data      <= increment;
            end
        end else if (!enable) begin
            increment <= {16{1'b0}};
            data      <= {16{1'b0}};
        end
    end
end

multiplier_16x3 multiplier_inst(
    .a(min_step), // 16 bit
    .b(step_coefficent), // 3 bit
    .product(step) 
);

endmodule