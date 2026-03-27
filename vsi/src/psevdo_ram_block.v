module psevdo_ram_block (
    input rst_l,
    input [8:0] DIn,          
    input [7:0] RADDR,        
    input [7:0] WADDR,       
    input RDB,               
    input WRB,                
    input RCLKS,              
    input WCLKS,              
    input DC_in0,             
    input DC_in1,             
    input DC_in2,            
    output wire [8:0] DO1,    
    output wire [8:0] DO2      
);

reg [8:0] memory_block0 [0:255];
reg [8:0] memory_block1 [0:255];
reg [8:0] memory_block2 [0:255];
reg [8:0] memory_block3 [0:255];

reg [8:0] read_data01;
reg [8:0] read_data23;
wire [1:0] underblock = {DC_in1, DC_in0};

always @(posedge WCLKS or negedge rst_l) begin
    if (!rst_l) begin
        memory_block0[WADDR] <= 0;
    end
    if (!WRB) begin
        case (underblock)
            2'd0: begin
                memory_block0[WADDR] <= DIn;
            end

            2'd1: begin
                memory_block1[WADDR] <= DIn;
            end

            2'd2: begin
                memory_block2[WADDR] <= DIn;
            end

            2'd3: begin
                memory_block3[WADDR] <= DIn;
            end
            default: begin
                memory_block0[WADDR] <= 9'b0;
                memory_block1[WADDR] <= 9'b0;
                memory_block2[WADDR] <= 9'b0;
                memory_block3[WADDR] <= 9'b0;
            end
        endcase
    end
end

always @(posedge RCLKS or negedge rst_l) begin
    if (!rst_l) begin
//        read_data01 <= 0;
    end
    if (!RDB) begin
		read_data23 <= '0;
        case (underblock)
            2'd0: begin
                read_data01 <= memory_block0[RADDR];
            end

            2'd1: begin
                read_data01 <= memory_block1[RADDR];
            end

            2'd2: begin
                read_data01 <= memory_block2[RADDR];
            end

            2'd3: begin
                read_data01 <= memory_block3[RADDR];
            end
            default: begin
                read_data01 <= 9'b0;
            end
        endcase
	end
end

assign DO1 = read_data01;  
assign DO2 = read_data23;

endmodule