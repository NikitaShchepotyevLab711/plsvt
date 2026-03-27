module vsi_packs_ram (
    input  wire       clk,
    input  wire       rst_l,

	input  wire       data_valid,
	input  wire       rd_request,
	input  wire       rd_flag,     // запрос на запись данных
    input  wire [7:0] data_i,
	input  wire       rd_rdy,	   // маркер передан по ВСИ, нужно выдавать данные

    output reg  [7:0] data_o,
	output wire  	  wr_flag,
	output wire       ready_pack,
	output wire    	  data_o_rdy
);

assign full = 0;

reg [2:0] state1;
localparam IDLE_1 		       = 0;
localparam READ_1st_BLOCK_1    = 1;
localparam READ_1st_BLOCK_2    = 2;
localparam WRITE_1st_BLOCK     = 3;
localparam WRITE_1st_BLOCK_RDY = 4;

wire [7:0] DOut1;
reg  	   RDB1;
reg  	   WRB1;
reg  [7:0] waddr1;
reg  [7:0] waddr1_reg;
reg  [7:0] raddr1;
reg  [7:0] raddr1_reg;
reg  [7:0] data_to_ram1;
reg  [7:0] wr_word_counter1;
reg  [7:0] wr_word_counter1_reg;

reg  [7:0] rd_word_counter1;
reg  [7:0] rd_word_counter1_reg;

reg  [2:0] memblock_sel1;
reg        write_to_1st_block;
reg        ramblock1_full;
reg        rd_rdy_reg1;
reg  	   cup1_enable; 
reg  [1:0] data_load_counter1;
reg  [7:0] data_o1;

reg  [2:0] state2;
localparam IDLE_2 		       = 0;
localparam READ_2nd_BLOCK_1    = 1;
localparam READ_2nd_BLOCK_2    = 2;
localparam WRITE_2nd_BLOCK     = 3;
localparam WRITE_2nd_BLOCK_RDY = 4;

wire [7:0] DOut2;
reg 	   RDB2;
reg 	   WRB2;
reg  [7:0] waddr2;
reg  [7:0] waddr2_reg;
reg  [7:0] raddr2;
reg  [7:0] raddr2_reg;
reg  [7:0] data_to_ram2;

reg  [7:0] wr_word_counter2;
reg  [7:0] wr_word_counter2_reg;
reg  [7:0] rd_word_counter2;
reg  [7:0] rd_word_counter2_reg;

reg  [2:0] memblock_sel2;
reg        write_to_2nd_block;
reg        ramblock2_full;
reg        rd_rdy_reg2;
reg  [1:0] data_load_counter2;
wire 	   rd_rdy_pulse;
reg  	   cup2_enable; 
reg  [7:0] data_o2;

assign wr_flag = write_to_1st_block || write_to_2nd_block;
assign ready_pack = ramblock1_full || ramblock2_full;
assign data_o_rdy = ((state1 == READ_1st_BLOCK_2)||(state2 == READ_2nd_BLOCK_2));

always @(*) begin
	if (cup1_enable)
		data_o = data_o1;
	else if (cup2_enable)
		data_o = data_o2;
		else 
			data_o = 8'b0;
end

always @(posedge clk or negedge rst_l) begin // автомат для 1 блока памяти
	if (!rst_l) begin
		state1			     <= IDLE_1;
		write_to_2nd_block   <= 1'b0;
		WRB1   			     <= 1'b1;
		waddr1 			     <= 8'b0;
		waddr1_reg 		     <= 8'b0;
		data_to_ram1 	     <= 8'b0;
		ramblock1_full 	     <= 1'b0;
		wr_word_counter1 	 <= 8'b0;
		wr_word_counter1_reg <= 8'b0;
		rd_word_counter1 	 <= 8'b0;
		rd_word_counter1_reg <= 8'b0;
		memblock_sel1 	     <= 3'b0;
		write_to_1st_block   <= 1'b0;
		write_to_2nd_block   <= 1'b0;
		raddr1 			     <= 8'b0;
		raddr1_reg 		     <= 8'b0;
		data_o1				 <= 8'b0;
		data_load_counter1	 <= 2'd0;
		RDB1 				 <= 1'b1;	
		cup1_enable 		 <= 1'b0;
	end	
	else begin
		case (state1)
			IDLE_1: begin
				if (rd_request) begin // по запросу от ВСИ, если нет данных в приоритетом на чтение 2 блоке, смотрим данные в 1 блоке
					if (!ramblock2_full) begin
						if (ramblock1_full && rd_rdy_pulse)
							state1 <= READ_1st_BLOCK_1;
						
					end
				end
				else begin
					if (!ramblock1_full) begin 
						write_to_1st_block <= 1'b1;
						if (rd_flag)
							state1 <= WRITE_1st_BLOCK;
					end
				end

				cup1_enable    <= 1'b0;

			end

			READ_1st_BLOCK_1: begin
				data_o1 		   <= DOut1;
				data_load_counter1  <= data_load_counter1 + 1'b1;
				raddr1 			   <= raddr1_reg;
				cup1_enable 	   <= 1'b1;
				if (data_load_counter1 == 2'd3)
					state1 <= READ_1st_BLOCK_2;
				else if (data_load_counter1 == 2'd0) begin
					RDB1   	   <= 1'b0;		
					raddr1_reg <= raddr1_reg + 1'b1;
				end		
					else
						RDB1 <= 1'b1;	
			end

			READ_1st_BLOCK_2: begin // пока идет выдача данных из 1 блока, просим писать во 2
				write_to_2nd_block <= 1'b1;
				data_o1 		   <= DOut1;
				raddr1 			   <= raddr1_reg;
				cup1_enable 	   <= 1'b1;
				if (rd_rdy) begin
					RDB1 				 <= 1'b0;
					raddr1_reg 			 <= raddr1_reg + 1'b1;
					rd_word_counter1_reg <= rd_word_counter1_reg + 1'b1;
				end
				else begin
					RDB1 <= 1'b1;
				end

				if (memblock_sel1 == 3'd7) begin
					if (rd_word_counter1 == 8'hed) begin
						state1 		     <= IDLE_1; // блок заполнен, ждем запроса от ВСИ на чтение
						ramblock1_full   <= 1'b0;
						memblock_sel1    <= 3'd0;
						rd_word_counter1 <= 8'd0;
					end
					else 
						rd_word_counter1   <= rd_word_counter1_reg;

				end
				else begin
					if ((rd_rdy) && (rd_word_counter1 == 8'hff)) begin
						memblock_sel1 <= memblock_sel1 + 1'b1;
					end
					rd_word_counter1   <= rd_word_counter1_reg;
				end

			end

			WRITE_1st_BLOCK: begin
				cup1_enable 	   <= 1'b1;
				if (data_valid) begin
					WRB1   <= 1'b0;
					waddr1_reg <= waddr1_reg + 1'b1;
					waddr1 <= waddr1_reg;
					data_to_ram1 <= data_i;
					wr_word_counter1 <= wr_word_counter1_reg;
					
					if (wr_word_counter1_reg == 8'hff) begin
						wr_word_counter1_reg <= 8'b0;
					end
					else begin
						wr_word_counter1_reg <= wr_word_counter1_reg + 1'b1;
					end
				end
				else begin
					WRB1 <= 1'b1;
				end

				if (memblock_sel1 == 3'd7) begin
					if (wr_word_counter1 == 8'hed) begin
						state1 		   <= WRITE_1st_BLOCK_RDY; // блок заполнен, ждем запроса от ВСИ на чтение
					end
					else
						ramblock1_full <= 1'b0;
				end
				else begin
					if ((data_valid) && (wr_word_counter1 == 8'hff)) begin
						memblock_sel1 <= memblock_sel1 + 1'b1;
					end
				end
			end

			WRITE_1st_BLOCK_RDY: begin
				cup1_enable    <= 1'b1;
				ramblock1_full <= 1'b1;
				memblock_sel1  <= 3'd0;
				state1 		   <= IDLE_1;
			end

			default: begin
				
			end
		endcase
	end
end

always @(posedge clk or negedge rst_l) begin // автомат для 1 блока памяти
	if (!rst_l) begin
		state2			     <= IDLE_1;
		write_to_2nd_block   <= 1'b0;
		WRB2   			     <= 1'b1;
		waddr2 			     <= 8'b0;
		waddr2_reg 		     <= 8'b0;
		data_to_ram2 	     <= 8'b0;
		ramblock2_full 	     <= 1'b0;
		wr_word_counter2 	 <= 8'b0;
		wr_word_counter2_reg <= 8'b0;
		rd_word_counter2 	 <= 8'b0;
		rd_word_counter2_reg <= 8'b0;
		memblock_sel2 	     <= 3'b0;
		raddr2 			     <= 8'b0;
		raddr2_reg 		     <= 8'b0;
		data_o2				 <= 8'b0;
		data_load_counter2	 <= 2'd0;
		RDB2 				 <= 1'b1;	
		cup2_enable 	     <= 1'b1;
	end	
	else begin
		case (state2)
			IDLE_2: begin
				if (rd_request) begin 
					if (ramblock2_full) begin
						state2 <= READ_2nd_BLOCK_1;
					end
				end
				else if ((rd_flag) && (ramblock1_full))
					state2 <= WRITE_2nd_BLOCK;

				cup2_enable <= 1'b0;

			end

			READ_2nd_BLOCK_1: begin
				data_o2 		   <= DOut2;
				data_load_counter2 <= data_load_counter2 + 1'b1;
				raddr2 			   <= raddr2_reg;
				cup2_enable 	   <= 1'b1;
				if (data_load_counter2 == 2'd3)
					state2 <= READ_2nd_BLOCK_2;
				else if (data_load_counter2 == 2'd0) begin
					RDB2   	   <= 1'b0;		
					raddr2_reg <= raddr2_reg + 1'b1;
				end		
					else
						RDB2 <= 1'b1;	
			end

			READ_2nd_BLOCK_2: begin // пока идет выдача данных из 1 блока, просим писать во 2
				write_to_2nd_block <= 1'b1;
				data_o2 		   <= DOut2;
				raddr2 			   <= raddr2_reg;
				cup2_enable 	   <= 1'b1;
				if (rd_rdy) begin
					RDB2 				 <= 1'b0;
					raddr2_reg 			 <= raddr2_reg + 1'b1;
					rd_word_counter2_reg <= rd_word_counter2_reg + 1'b1;
				end
				else begin
					RDB2 <= 1'b1;
				end

				if (memblock_sel2 == 3'd7) begin
					if (rd_word_counter2 == 8'hed) begin
						state2 		     <= IDLE_2; // блок заполнен, ждем запроса от ВСИ на чтение
						ramblock2_full   <= 1'b0;
						memblock_sel2    <= 3'd0;
						rd_word_counter2 <= 8'd0;
					end
					else 
						rd_word_counter2   <= rd_word_counter2_reg;

				end
				else begin
					if ((rd_rdy) && (rd_word_counter2 == 8'hff)) begin
						memblock_sel2 <= memblock_sel2 + 1'b1;
					end
					rd_word_counter2   <= rd_word_counter2_reg;
				end

			end

			WRITE_2nd_BLOCK: begin
				cup2_enable 	   <= 1'b1;
				if (data_valid) begin
					WRB2   <= 1'b0;
					waddr2_reg <= waddr2_reg + 1'b1;
					waddr2 <= waddr2_reg;
					data_to_ram2 <= data_i;
					wr_word_counter2 <= wr_word_counter2_reg;
					
					if (wr_word_counter2_reg == 8'hff) begin
						wr_word_counter2_reg <= 8'b0;
					end
					else begin
						wr_word_counter2_reg <= wr_word_counter2_reg + 1'b1;
					end
				end
				else begin
					WRB2 <= 1'b1;
				end

				if (memblock_sel2 == 3'd7) begin
					if (wr_word_counter2 == 8'hed) begin
						state2 		   <= WRITE_2nd_BLOCK_RDY; // блок заполнен, ждем запроса от ВСИ на чтение
					end
					else
						ramblock2_full <= 1'b0;
				end
				else begin
					if ((data_valid) && (wr_word_counter2 == 8'hff)) begin
						memblock_sel2 <= memblock_sel2 + 1'b1;
					end
				end
			end

			WRITE_2nd_BLOCK_RDY: begin
				ramblock2_full <= 1'b1;
				memblock_sel2  <= 3'd0;
				state2 		   <= IDLE_2;
				cup2_enable    <= 1'b1;
			end

			default: begin
				
			end
		endcase
	end
end

front_detector front_detector_inst   (clk, rst_l, rd_rdy, rd_rdy_pulse); // строб о готовности пакета

vsi_ramblock_wrap vsi_ramblock_wrap_inst (
	.clk   		   (clk),
	.rst_l 		   (rst_l),
	.din_1_cup     (data_to_ram1),
	.din_2_cup     (data_to_ram2),
	.raddr_1_cup   (raddr1),
	.waddr_1_cup   (waddr1),
	.raddr_2_cup   (raddr2),
	.waddr_2_cup   (waddr2),
	.RDB_1_cup     (RDB1),
	.WRB_1_cup     (WRB1),
	.RDB_2_cup	   (RDB2),
	.WRB_2_cup	   (WRB2),
	.cup1_enable   (cup1_enable),
	.cup2_enable   (cup2_enable),
	.memblock_sel1 (memblock_sel1),
	.memblock_sel2 (memblock_sel2),
	.dout1		   (DOut1),
	.dout2		   (DOut2)
);
    
endmodule