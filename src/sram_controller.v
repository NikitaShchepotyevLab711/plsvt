module sram_controller (
    input  wire        rst_l,
    input  wire        clk,

    // RAM IS61/64WV204816BLL ports //
    output wire [20:0] A,  // адреса
    inout  wire [15:0] IO, // порты данных (направление меняется в зависимости от WE)
    output wire        CS, // 0 = активный режим
    output reg         OE, // 0 = позволяет читать данные из памяти, 1 = чтение невозможно
    output reg         WE, // 0 = запись, 1 = чтение
    output wire        LB, // 0 = можно читать/писать из битов 0-7, 1 = нельзя
    output wire        UB, // 0 = можно читать/писать из битов 8-15, 1 = нельзя

    input  wire [15:0] data_i,
    output reg  [15:0] data_o,
    input  wire        wr_req,      // запрос на запись
    input  wire        rd_req,      // запрос на чтение
    output wire        irq_current, // показывает текущий процесс (1 = чтение, 0 = запись)
    output reg         ram_wr_rdy,  // строб о том, что слово записано
    output reg         ram_rd_rdy   // строб о том, что слово прочитано
);

assign LB = 1'b0;
assign UB = 1'b0;
assign CS = 1'b0;

reg [20:0] wr_addr;
reg [20:0] rd_addr;
reg [20:0] addr;
reg        data_wr_en;

reg [2:0] state;

localparam IDLE            = 0;
localparam WR_ADDR_CHANGE  = 1;
localparam WE_LOW          = 2;
localparam WR_DATA         = 3;
localparam RD_ADDR_CHANGE  = 4;
localparam RD_DATA         = 5;
localparam RD_WAIT         = 6;

reg [15:0] output_datareg;

assign IO = data_wr_en ? data_i : 16'hz;
assign A = addr;

// по умолчанию - чтение //
always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        wr_addr    <= 21'b0;
        rd_addr    <= 21'b0;
        data_wr_en <= 1'b0;
        state      <= IDLE;
        WE         <= 1'b0;
        OE         <= 1'b0;
        addr       <= 21'b0;
        ram_wr_rdy <= 1'b0;
        ram_rd_rdy <= 1'b0;
        data_o     <= 16'b0;
    end
    else begin
        case (state)
            IDLE: begin

                data_wr_en <= 1'b0;
                WE         <= 1'b1;
                OE         <= 1'b0;
                ram_wr_rdy <= 1'b0;
                ram_rd_rdy <= 1'b0;
                
                if (wr_req)
                    state <= WR_ADDR_CHANGE;
                else if (rd_req)
                    state <= RD_ADDR_CHANGE;

            end 

            WR_ADDR_CHANGE: begin
                wr_addr    <= wr_addr + 1'b1;
                addr       <= wr_addr;
                WE         <= 1'b1;
                OE         <= 1'b0;
                data_wr_en <= 1'b0;
                ram_wr_rdy <= 1'b0;
                ram_rd_rdy <= 1'b0;
                state      <= WE_LOW;

            end

            WE_LOW: begin
               WE         <= 1'b0;
               OE         <= 1'b1;
               data_wr_en <= 1'b0;
               ram_wr_rdy <= 1'b0;
               ram_rd_rdy <= 1'b0;
               state      <= WR_DATA; 
            end

            WR_DATA: begin
                WE         <= 1'b0;
                OE         <= 1'b1;
                data_wr_en <= 1'b1;
                ram_wr_rdy <= 1'b1;
                ram_rd_rdy <= 1'b0;
                state      <= IDLE;
            end

            RD_ADDR_CHANGE: begin
                rd_addr    <= rd_addr + 1'b1;
                addr       <= rd_addr;
                OE         <= 1'b0;
                WE         <= 1'b1;
                data_wr_en <= 1'b0;
                ram_rd_rdy <= 1'b1;
                state      <= RD_DATA;                
            end

            RD_DATA: begin
                addr       <= rd_addr;
                OE         <= 1'b0;
                WE         <= 1'b1;
                data_wr_en <= 1'b0;
                ram_rd_rdy <= 1'b0;
                data_o     <= IO;
                state      <= RD_WAIT;
            end

            RD_WAIT: begin
                addr       <= rd_addr;
                OE         <= 1'b0;
                WE         <= 1'b1;
                data_wr_en <= 1'b0;
                ram_rd_rdy <= 1'b0;
                state      <= IDLE;                
            end

            default: begin
                wr_addr    <= 21'b0;
                rd_addr    <= 21'b0;
                OE         <= 1'b0;
                WE         <= 1'b0;
                data_o     <= 16'b0;
                ram_rd_rdy <= 1'b0;
                state      <= IDLE;
            end
        endcase
        
    end
end
    
endmodule