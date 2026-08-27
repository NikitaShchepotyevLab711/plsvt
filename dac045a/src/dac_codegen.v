module dac_codegen (
    input  wire        clk,
    input  wire        rst_l,
    input  wire [15:0] limit,
    input  wire        enable,          
    input  wire        start,
    input  wire [2:0]  step_coefficent, 
    output reg  [15:0] data
);

wire [15:0] min_step;
wire [18:0] step;

assign min_step = 16'd73;

multiplier_16x3 multiplier_inst(
    // XPlace requires a named signal of the exact port width here.
    .a(min_step),
    .b(step_coefficent),
    .product(step) 
);

// Расширяем состояния FSM (теперь их 7, используем 3 бита)
localparam IDLE    = 3'd0;
localparam ADD0    = 3'd1;
localparam ADD1    = 3'd2;
localparam ADD2    = 3'd3;
localparam ADD3    = 3'd4;
localparam CMP     = 3'd5;
localparam UPDATE  = 3'd6;

reg [2:0]  state;
reg [15:0] increment;
reg [15:0] sum_reg;
reg        reached_limit;
reg [18:0] step_reg;

// Регистр для хранения переноса между кусками сумматора
reg        carry;
reg        sum_carry;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        state         <= IDLE;
        increment     <= 16'd0;
        sum_reg       <= 16'd0;
        reached_limit <= 1'b0;
        step_reg      <= 19'd0;
        data          <= 16'd0;
        carry         <= 1'b0;
        sum_carry     <= 1'b0;
    end else begin
        if (!enable) begin
            increment <= 16'd0;
            sum_reg   <= 16'd0;
            reached_limit <= 1'b0;
            step_reg  <= 19'd0;
            data      <= 16'd0;
            carry     <= 1'b0;
            sum_carry <= 1'b0;
            state     <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        step_reg <= step; 
                        state    <= ADD0;
                    end
                end
                
                // Шаг 1: Складываем биты [3:0]
                ADD0: begin
                    {carry, sum_reg[3:0]} <= increment[3:0] + step_reg[3:0];
                    state                 <= ADD1;
                end
                
                // Шаг 2: Складываем биты [7:4] с учетом переноса
                ADD1: begin
                    {carry, sum_reg[7:4]} <= increment[7:4] + step_reg[7:4] + carry;
                    state                 <= ADD2;
                end
                
                // Шаг 3: Складываем биты [11:8] с учетом переноса
                ADD2: begin
                    {carry, sum_reg[11:8]} <= increment[11:8] + step_reg[11:8] + carry;
                    state                  <= ADD3;
                end
                
                // Шаг 4: Складываем биты [15:12] с учетом переноса
                ADD3: begin
                    {sum_carry, sum_reg[15:12]} <= increment[15:12] + step_reg[15:12] + carry;
                    state          <= CMP;
                end
                
                CMP: begin
                    reached_limit <= sum_carry || (sum_reg >= limit);
                    state         <= UPDATE;
                end
                
                UPDATE: begin
                    if (reached_limit) begin
                        increment <= 16'd0;
                        data      <= 16'd0;
                    end else begin
                        increment <= sum_reg;
                        data      <= sum_reg;
                    end
                    state <= IDLE;
                end
                
                default: state <= IDLE;
            endcase
        end
    end
end

endmodule
