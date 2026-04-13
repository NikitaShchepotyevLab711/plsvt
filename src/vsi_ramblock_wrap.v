module vsi_ramblock_wrap (
    input  wire       clk,
    input  wire       rst_l,

	input  wire [7:0] din_1_cup,
    input  wire [7:0] din_2_cup,
	input  wire [7:0] raddr_1_cup,
	input  wire [7:0] waddr_1_cup,
	input  wire [7:0] raddr_2_cup,
	input  wire [7:0] waddr_2_cup,
	input  wire       RDB_1_cup,
	input  wire       WRB_1_cup,
	input  wire       RDB_2_cup,
	input  wire       WRB_2_cup,
    input  wire       cup1_enable,
    input  wire       cup2_enable,
	input  wire [2:0] memblock_sel1,
    input  wire [2:0] memblock_sel2,
	output reg  [7:0] dout1,   
    output reg  [7:0] dout2  
);

reg [7:0]  data_to_ram0;
reg [7:0]  data_to_ram1;
reg [7:0]  data_to_ram2;
reg [7:0]  data_to_ram3;

reg [7:0]  waddr0;
reg [7:0]  waddr1;
reg [7:0]  waddr2;
reg [7:0]  waddr3;

reg [7:0]  raddr0;
reg [7:0]  raddr1;
reg [7:0]  raddr2;
reg [7:0]  raddr3;

reg        dc_in0_0;
reg        dc_in1_0;
reg        dc_in0_1;
reg        dc_in1_1;
reg        dc_in0_2;
reg        dc_in1_2;
reg        dc_in0_3;
reg        dc_in1_3;

reg        WRB0, WRB1, WRB2, WRB3;
wire [8:0] DOut0;
wire [8:0] DOut1;
wire [8:0] DOut2;
wire [8:0] DOut3;

reg        RDB0;
reg        RDB1;
reg        RDB2;
reg        RDB3;

always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        dc_in0_0     <= 1'b0;
        dc_in1_0     <= 1'b0;
        dc_in0_1     <= 1'b0;
        dc_in1_1     <= 1'b0;
        WRB0         <= 1'b1;
        WRB1         <= 1'b1;
        RDB0         <= 1'b1;
        RDB1         <= 1'b1;
        raddr0       <= 8'b0;
        raddr1       <= 8'b0;
        dout1        <= 8'b0;
        data_to_ram0 <= 8'b0;
        data_to_ram1 <= 8'b0;
        waddr0       <= 8'b0;
        waddr1       <= 8'b0;
        dc_in0_2     <= 1'b0;
        dc_in1_2     <= 1'b0;
        dc_in0_3     <= 1'b0;
        dc_in1_3     <= 1'b0;
        WRB2         <= 1'b1;
        WRB3         <= 1'b1;
        RDB2         <= 1'b1;
        RDB3         <= 1'b1;
        raddr2       <= 8'b0;
        raddr3       <= 8'b0;
        dout2        <= 8'b0;
        data_to_ram2 <= 8'b0;
        data_to_ram3 <= 8'b0;
        waddr2       <= 8'b0;
        waddr3       <= 8'b0;
    end
    else begin
        if (cup1_enable) begin
            case (memblock_sel1)
                0: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= WRB_1_cup;
                    WRB1         <= 1'b1;

                    RDB0         <= RDB_1_cup;
                    RDB1         <= 1'b1;
                    raddr0       <= raddr_1_cup;

                    dout1        <= DOut0[7:0];
                    data_to_ram0 <= din_1_cup;
                    waddr0       <= waddr_1_cup;
                end 

                1: begin
                    dc_in0_0     <= 1'b1;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= WRB_1_cup;
                    WRB1         <= 1'b1;

                    RDB0         <= RDB_1_cup;
                    RDB1         <= 1'b1;
                    raddr0       <= raddr_1_cup;

                    dout1        <= DOut0[7:0];
                    data_to_ram0 <= din_1_cup;
                    waddr0       <= waddr_1_cup;
                end 

                2: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b1;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= WRB_1_cup;
                    WRB1         <= 1'b1;

                    RDB0         <= RDB_1_cup;
                    RDB1         <= 1'b1;
                    raddr0       <= raddr_1_cup;

                    dout1        <= DOut0[7:0];
                    data_to_ram0 <= din_1_cup;
                    waddr0       <= waddr_1_cup;
                end 

                3: begin
                    dc_in0_0     <= 1'b1;
                    dc_in1_0     <= 1'b1;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= WRB_1_cup;
                    WRB1         <= 1'b1;

                    RDB0         <= RDB_1_cup;
                    RDB1         <= 1'b1;
                    raddr0       <= raddr_1_cup;
                    dout1        <= DOut0[7:0];

                    data_to_ram0 <= din_1_cup;
                    waddr0       <= waddr_1_cup;
                end 

                4: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= 1'b1;
                    WRB1         <= WRB_1_cup;

                    RDB0         <= 1'b1;
                    RDB1         <= RDB_1_cup;
                    raddr1       <= raddr_1_cup;
                    dout1        <= DOut1[7:0];

                    data_to_ram1 <= din_1_cup;
                    waddr1       <= waddr_1_cup;
                end 

                5: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b1;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= 1'b1;
                    WRB1         <= WRB_1_cup;

                    RDB0         <= 1'b1;
                    RDB1         <= RDB_1_cup;
                    raddr1       <= raddr_1_cup;
                    dout1        <= DOut1[7:0];

                    data_to_ram1 <= din_1_cup;
                    waddr1       <= waddr_1_cup;
                end 

                6: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b1;
                    WRB0         <= 1'b1;
                    WRB1         <= WRB_1_cup;

                    RDB0         <= 1'b1;
                    RDB1         <= RDB_1_cup;
                    raddr1       <= raddr_1_cup;
                    dout1        <= DOut1[7:0];

                    data_to_ram1 <= din_1_cup;
                    waddr1       <= waddr_1_cup;
                end 

                7: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b1;
                    dc_in1_1     <= 1'b1;
                    WRB0         <= 1'b1;
                    WRB1         <= WRB_1_cup;

                    RDB0         <= 1'b1;
                    RDB1         <= RDB_1_cup;
                    raddr1       <= raddr_1_cup;
                    dout1        <= DOut1[7:0];

                    data_to_ram1 <= din_1_cup;
                    waddr1       <= waddr_1_cup;
                end 

                default: begin
                    dc_in0_0     <= 1'b0;
                    dc_in1_0     <= 1'b0;
                    dc_in0_1     <= 1'b0;
                    dc_in1_1     <= 1'b0;
                    WRB0         <= 1'b1;
                    WRB1         <= 1'b1;
                    RDB0         <= 1'b1;
                    RDB1         <= 1'b1;
                    raddr0       <= 8'b0;
                    raddr1       <= 8'b0;
                    dout1        <= 8'b0;
                    data_to_ram0 <= 8'b0;
                    data_to_ram1 <= 8'b0;
                    waddr0       <= 8'b0;
                    waddr1       <= 8'b0;
                end

                endcase
        end
        else if (cup2_enable) begin
            case (memblock_sel2)
            0: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= WRB_2_cup;
                WRB3         <= 1'b1;

                RDB2         <= RDB_2_cup;
                RDB3         <= 1'b1;
                raddr2       <= raddr_2_cup;

                dout2        <= DOut2[7:0];
                data_to_ram2 <= din_2_cup;
                waddr2       <= waddr_2_cup;
            end 

            1: begin
                dc_in0_2     <= 1'b1;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= WRB_2_cup;
                WRB3         <= 1'b1;

                RDB2         <= RDB_2_cup;
                RDB3         <= 1'b1;
                raddr2       <= raddr_2_cup;

                dout2        <= DOut2[7:0];
                data_to_ram2 <= din_2_cup;
                waddr2       <= waddr_2_cup;
            end 

            2: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b1;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= WRB_2_cup;
                WRB3         <= 1'b1;

                RDB2         <= RDB_2_cup;
                RDB3         <= 1'b1;
                raddr2       <= raddr_2_cup;

                dout2        <= DOut2[7:0];
                data_to_ram2 <= din_2_cup;
                waddr2       <= waddr_2_cup;
            end 

            3: begin
                dc_in0_2     <= 1'b1;
                dc_in1_2     <= 1'b1;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= WRB_2_cup;
                WRB3         <= 1'b1;

                RDB2         <= RDB_2_cup;
                RDB3         <= 1'b1;
                raddr2       <= raddr_2_cup;
                dout2        <= DOut2[7:0];

                data_to_ram2 <= din_2_cup;
                waddr2       <= waddr_2_cup;
            end 

            4: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= 1'b1;
                WRB3         <= WRB_2_cup;

                RDB2         <= 1'b1;
                RDB3         <= RDB_2_cup;
                raddr3       <= raddr_2_cup;
                dout2        <= DOut3[7:0];

                data_to_ram3 <= din_2_cup;
                waddr3       <= waddr_2_cup;
            end 

            5: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b1;
                dc_in1_3     <= 1'b0;
                WRB2         <= 1'b1;
                WRB3         <= WRB_2_cup;

                RDB2         <= 1'b1;
                RDB3         <= RDB_2_cup;
                raddr3       <= raddr_2_cup;
                dout2        <= DOut3[7:0];

                data_to_ram3 <= din_2_cup;
                waddr3       <= waddr_2_cup;
            end 

            6: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b1;
                WRB2         <= 1'b1;
                WRB3         <= WRB_2_cup;

                RDB2         <= 1'b1;
                RDB3         <= RDB_2_cup;
                raddr3       <= raddr_2_cup;
                dout2        <= DOut3[7:0];

                data_to_ram3 <= din_2_cup;
                waddr3       <= waddr_2_cup;
            end 

            7: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b1;
                dc_in1_3     <= 1'b1;
                WRB2         <= 1'b1;
                WRB3         <= WRB_2_cup;

                RDB2         <= 1'b1;
                RDB3         <= RDB_2_cup;
                raddr3       <= raddr_2_cup;
                dout2        <= DOut3[7:0];

                data_to_ram3 <= din_2_cup;
                waddr3       <= waddr_2_cup;
            end 

            default: begin
                dc_in0_2     <= 1'b0;
                dc_in1_2     <= 1'b0;
                dc_in0_3     <= 1'b0;
                dc_in1_3     <= 1'b0;
                WRB2         <= 1'b1;
                WRB3         <= 1'b1;
                RDB2         <= 1'b1;
                RDB2         <= 1'b1;
                raddr2       <= 8'b0;
                raddr3       <= 8'b0;
                dout2        <= 8'b0;
                data_to_ram2 <= 8'b0;
                data_to_ram3 <= 8'b0;
                waddr2       <= 8'b0;
                waddr3       <= 8'b0;
            end
                
            endcase
        end
        else begin
            dc_in0_0     <= 1'b0;
            dc_in1_0     <= 1'b0;
            dc_in0_1     <= 1'b0;
            dc_in1_1     <= 1'b0;
            WRB0         <= 1'b1;
            WRB1         <= 1'b1;
            RDB0         <= 1'b1;
            RDB1         <= 1'b1;
            raddr0       <= 8'b0;
            raddr1       <= 8'b0;
            dout1        <= 8'b0;
            data_to_ram0 <= 8'b0;
            data_to_ram1 <= 8'b0;
            waddr0       <= 8'b0;
            waddr1       <= 8'b0;
            dc_in0_2     <= 1'b0;
            dc_in1_2     <= 1'b0;
            dc_in0_3     <= 1'b0;
            dc_in1_3     <= 1'b0;
            WRB2         <= 1'b1;
            WRB3         <= 1'b1;
            RDB2         <= 1'b1;
            RDB3         <= 1'b1;
            raddr2       <= 8'b0;
            raddr3       <= 8'b0;
            dout2        <= 8'b0;
            data_to_ram2 <= 8'b0;
            data_to_ram3 <= 8'b0;
            waddr2       <= 8'b0;
            waddr3       <= 8'b0;
        end
    end
end

wire clk_b;
xci2_buf clk_buf1 (
	.a(clk),
	.y(clk_b)
);

/*
psevdo_ram_block vsi_ram0 (
    .rst_l(rst_l),
    .DIn({1'b0,data_to_ram0}),
    .RADDR(raddr0),
    .WADDR(waddr0),
    .RDB(RDB0),
    .WRB(WRB0),
    .RCLKS(clk),
    .WCLKS(clk),
    .DC_in0(dc_in0_0),
    .DC_in1(dc_in1_0),
    .DC_in2(1'b0),
    .DO1(DOut0),
    .DO2()
);

psevdo_ram_block vsi_ram1 (
    .rst_l(rst_l),
    .DIn({1'b0,data_to_ram1}),      
    .RADDR(raddr1),
    .WADDR(waddr1),
    .RDB(RDB1),
    .WRB(WRB1),
    .RCLKS(clk),
    .WCLKS(clk),
    .DC_in0(dc_in0_1),
    .DC_in1(dc_in1_1),
    .DC_in2(1'b0),
    .DO1(DOut1),
    .DO2()
);

psevdo_ram_block vsi_ram2 (
    .rst_l(rst_l),
    .DIn({1'b0,data_to_ram2}),
    .RADDR(raddr2),
    .WADDR(waddr2),
    .RDB(RDB2),
    .WRB(WRB2),
    .RCLKS(clk),
    .WCLKS(clk),
    .DC_in0(dc_in0_2),
    .DC_in1(dc_in1_2),
    .DC_in2(1'b0),
    .DO1(DOut2),
    .DO2()
);

psevdo_ram_block vsi_ram3 (
    .rst_l(rst_l),
    .DIn({1'b0,data_to_ram3}),
    .RADDR(raddr3),
    .WADDR(waddr3),
    .RDB(RDB3),
    .WRB(WRB3),
    .RCLKS(clk),
    .WCLKS(clk),
    .DC_in0(dc_in0_3),
    .DC_in1(dc_in1_3),
    .DC_in2(1'b0),
    .DO1(DOut3),
    .DO2()
);
*/

ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance1 (
    .DIn({1'b0,data_to_ram0}),
    .RADDR(raddr0),
    .WADDR(waddr0),
    .RDB(RDB0),
    .WRB(WRB0),
    .RCLKS(clk_b),
    .WCLKS(clk_b),
    .DC_in0(dc_in0_0),
    .DC_in1(dc_in1_0),
    .DC_in2(1'b0),
    .DO1(DOut0),
    .DO2()
);

ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance2 (
    .DIn({1'b0,data_to_ram1}),
    .RADDR(raddr1),
    .WADDR(waddr1),
    .RDB(RDB1),
    .WRB(WRB1),
    .RCLKS(clk_b),
    .WCLKS(clk_b),
    .DC_in0(dc_in0_1),
    .DC_in1(dc_in1_1),
    .DC_in2(1'b0),
    .DO1(DOut1),
    .DO2()
);

ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance3 (
    .DIn({1'b0,data_to_ram2}),
    .RADDR(raddr2),
    .WADDR(waddr2),
    .RDB(RDB2),
    .WRB(WRB2),
    .RCLKS(clk_b),
    .WCLKS(clk_b),
    .DC_in0(dc_in0_2),
    .DC_in1(dc_in1_2),
    .DC_in2(1'b0),
    .DO1(DOut2),
    .DO2()
);

ramblock_4x_swrite_sread ramblock_4x_swrite_sread_instance4 (
    .DIn({1'b0,data_to_ram3}),
    .RADDR(raddr3),
    .WADDR(waddr3),
    .RDB(RDB3),
    .WRB(WRB3),
    .RCLKS(clk_b),
    .WCLKS(clk_b),
    .DC_in0(dc_in0_3),
    .DC_in1(dc_in1_3),
    .DC_in2(1'b0),
    .DO1(DOut3),
    .DO2()
);

endmodule