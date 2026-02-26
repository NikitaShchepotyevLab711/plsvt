module ram_controller (
    input  wire        rst_l,
    input  wire        clk,

    // RAM IS61/64WV204816BLL ports //
    output wire [20:0] A,  // адреса
    inout  wire [15:0] IO, // порты данных (направление меняется в зависимости от WE)
    output wire        CS, // 0 = активный режим
    output wire        OE, // 0 = позволяет читать данные из памяти, 1 = чтение невозможно
    output reg         WE, // 0 = запись, 1 = чтение
    output wire        LB, // 0 = можно читать/писать из битов 0-7, 1 = нельзя
    output wire        UB, // 0 = можно читать/писать из битов 8-15, 1 = нельзя

    input  wire        wr_req,      // запрос на запись
    input  wire        rd_req,      // запрос на чтение
    output wire        irq_current, // показывает текущий процесс (1 = чтение, 0 = запись)
);

reg [20:0] wr_addr;
reg [20:0] rd_addr;
reg [20:0] addr;

reg [2:0] state;

localparam IDLE            = 0;
localparam WR_ADDR_CHANGE  = 1;
localparam WR_LOW          = 2;
localparam WR_DATA         = 3;
localparam RD_ADDR_CHANGE  = 4;
localparam WE_HIGH         = 5;
localparam RD_DATA         = 6;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        wr_addr <= 21'b0;
        rd_addr <= 21'b0;
        state   <= IDLE;
    end
    else begin
        case (state)
            IDLE: begin
                
                if (irq_req)
                    state <= WR_ADDR_CHANGE;
                else if (rd_req)
                    state <= ;

            end 

            WR_ADDR_CHANGE: begin
                wr_addr <= wr_addr + 1'b1;
                addr    <= wr_addr;
                WE      <= 1'b1;
                state   <= WE_LOW;

            end

            WE_LOW: begin
               WE    <= 1'b0;
               state <= WR_DATA; 
            end

            WR_DATA: begin
                WE    <= 1'b1;
                IO    <= data_i;
                state <= IDLE;
            end

            RD_ADDR_CHANGE: begin
                rd_addr <= rd_addr + 1'b1;
                addr    <= rd_addr;
                WE      <= 1'b0;
                state   <= WE_HIGH;                
            end

            WE_HIGH: begin
                WE    <= 1'b1;
                state <= WR_DATA; 
            end

            RD_DATA: begin
                WE     <= 1'b1;
                data_o <= IO;
                state  <= IDLE;
            end

            default: begin
                wr_addr <= 21'b0;
                rd_addr <= 21'b0;
                state   <= IDLE;
            end
        endcase
        
    end
end
    
endmodule