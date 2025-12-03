//###########################################################
//##                                                         
//##   Created       X-CAD v2.76.0                               
//##   Date/Time     14.03.2025 / 15:30:32                                 
//##   Language      Verilog                                      
//##                                                         
//###########################################################

module uart_rx #(
	parameter BIT_RATE = 9600,
	parameter CLK_HZ  = 12_000_000,
	parameter PAYLOAD_BITS    = 12,
	parameter STOP_BITS       = 1
	)(
	input  wire       clk          , // Системный тактовый сигнал
	input  wire       resetn       , // Асинхронный глобальный сброс (активный уровень 0)
	input  wire       uart_rxd     , // Пин принимаемых UART значений
	output wire       uart_rx_ready, // Получены и доступны достоверные данные
    output reg 	   [PAYLOAD_BITS-1:0] uart_rx_data   // Принятые данные
	
);

// Скорость передачи данных UART
localparam  BIT_P  = 1_000_000_000 * 1/BIT_RATE; // nanoseconds

// Частота тактового сигнала в Гц
localparam  CLK_P = 1_000_000_000 * 1/CLK_HZ; // period in nanoseconds


// Количество циклов тактового сигнала на один принимаемый бит
localparam       CYCLES_PER_BIT     = BIT_P / CLK_P;

// Размер регистров, хранящих количество выборок и длительность битов
localparam       COUNT_REG_LEN      = 1+$clog2(CYCLES_PER_BIT);

// Регистр, через который осуществляется синхронизация принимаемых извне значений (два триггера)
reg [1:0] rxd_reg;

// Регистр, хранящий принятые последовательные данные
reg [PAYLOAD_BITS-1:0] recieved_data;

// Счётчик количества циклов тактового сигнала в пакетном бите
reg [COUNT_REG_LEN-1:0] cycle_counter;

// Счётчик количества принятый в пакете бит
reg [$clog2(COUNT_REG_LEN):0] bit_counter;

// Захват и хранение поступающих данных, в момент чтения середины фрейма входного бита
reg bit_sample;

parameter FSM_IDLE = 2'b00;
parameter FSM_START = 2'b01;
parameter FSM_RECV = 2'b10;
parameter FSM_STOP = 2'b11;

// Объявление переменных для текущего и следующего состояния
reg [1:0] fsm_state;
reg [1:0] n_fsm_state;

assign uart_rx_ready = ((fsm_state == FSM_STOP) && (n_fsm_state == FSM_IDLE));

always @(posedge clk) begin
    if (!resetn) begin
        uart_rx_data  <= {PAYLOAD_BITS{1'b0}};
    end else if (fsm_state == FSM_STOP) begin
        uart_rx_data  <= recieved_data;
    end
end

wire next_bit;
wire payload_done; 

assign next_bit = ((cycle_counter == CYCLES_PER_BIT) ||
                    (fsm_state       == FSM_STOP) && 
                    (cycle_counter   == CYCLES_PER_BIT/2));
assign payload_done = (bit_counter   == PAYLOAD_BITS)  ;

// Логика выбора следующего состояния
always @(*) begin
    case (fsm_state)
        FSM_IDLE : n_fsm_state = (rxd_reg == 2'b10 ? FSM_START : FSM_IDLE );
        FSM_START: n_fsm_state = (next_bit         ? FSM_RECV  : FSM_START);
        FSM_RECV : n_fsm_state = (payload_done     ? FSM_STOP  : FSM_RECV );
        FSM_STOP : n_fsm_state = (next_bit         ? FSM_IDLE  : FSM_STOP );
        default  : n_fsm_state = FSM_IDLE;
    endcase
end

// Работа сдвигового регистра, принимающего поступающие данные
always @(posedge clk) begin : p_recieved_data
	integer i;
    if (!resetn) begin
        recieved_data <= {PAYLOAD_BITS{1'b0}};
    end else if (fsm_state == FSM_IDLE             ) begin
        recieved_data <= {PAYLOAD_BITS{1'b0}};
    end else if (fsm_state == FSM_RECV && next_bit ) begin
        recieved_data[PAYLOAD_BITS-1] <= bit_sample;
        for (i = PAYLOAD_BITS-2; i >= 0; i = i - 1) begin
            recieved_data[i] <= recieved_data[i+1];
        end
    end
end

// Увеличение значения счётчика поступивших бит данных
always @(posedge clk) begin : p_bit_counter
    if (!resetn) begin
        bit_counter <= {COUNT_REG_LEN{1'b0}};
    end else if (fsm_state != FSM_RECV) begin
        bit_counter <= {COUNT_REG_LEN{1'b0}};
    end else if (fsm_state == FSM_RECV && next_bit) begin
        bit_counter <= bit_counter + 1'b1;
    end
end

// Захват принятого бита, когда находимся по центру фрейма данного бита
always @(posedge clk) begin : p_bit_sample
    if (!resetn) begin
        bit_sample <= 1'b0;
    end else if (cycle_counter == CYCLES_PER_BIT/2) begin
        bit_sample <= rxd_reg[0];
    end
end

// Работа счётчика циклов тактового сигнала в течение поступившего одного бита данных
always @(posedge clk) begin : p_cycle_counter
    if (!resetn) begin
        cycle_counter <= {COUNT_REG_LEN{1'b0}};
    end else if (next_bit) begin
        cycle_counter <= {COUNT_REG_LEN{1'b0}};
    end else if (fsm_state == FSM_START || 
                 fsm_state == FSM_RECV  || 
                 fsm_state == FSM_STOP   ) begin
        cycle_counter <= cycle_counter + 1'b1;
    end
end

// Условие переключения в следующее состояние
always @(posedge clk) begin : p_fsm_state
    if (!resetn) begin
        fsm_state <= FSM_IDLE;
    end else begin
        fsm_state <= n_fsm_state;
    end
end

// Синхронизация данных, принятых извне через два регистра
always @(posedge clk) begin : p_rxd_reg
    if (!resetn) begin
        rxd_reg <= 2'b11;
    end else begin
        rxd_reg <= {rxd_reg[0], uart_rxd};
    end
end

endmodule