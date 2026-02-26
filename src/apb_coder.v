module apb_coder (
    input  wire        rst_l,
    input  wire        clk,

    // AMBA APB3 //
    input  wire        psel,
    input  wire        penable,
    input  wire [15:0] paddr,
    input  wire [31:0] pwdata,
    output reg         pready,
    output reg  [31:0] prdata,

    input  wire        DATA_READY,
    input  wire        UKS0_READY,
    input  wire        UKS1_READY,
    input  wire        UKS2_READY,
    input  wire        UKS3_READY,
    input  wire [31:0] TIME,

    output wire        read_transaction,
    input  wire        valid,
    input  wire [31:0] data_i,
    output reg  [31:0] data_o,
    input  wire        package_start,

    output reg         vsi_package_rcvd,
    output reg         vsi_word_rcvd
);

wire data_tx_frame; // 1 = идет передача пакета

// стробы о начале и конце передачи //
wire data_tx_begin_pulse; 
wire data_tx_end_pulse;

assign read_transaction =  psel && penable;

always @(*) begin
    pready = data_tx_frame ? valid : 1'b1;    
end 


always @(posedge clk or negedge rst_l) begin
    if (!rst_l) begin
        prdata           <= 32'h0;
        data_o           <= 32'h0;
        vsi_package_rcvd <= 1'b0;
        vsi_word_rcvd    <= 1'b0;
    end
    else begin
        if (paddr == 16'h0)
            prdata <= {DATA_READY, UKS0_READY, UKS1_READY, UKS2_READY, UKS3_READY};

        if (paddr == 16'h1)
            prdata <= TIME;

        if ((paddr > 16'h99)&&(paddr < 16'h200))
            prdata <= data_i;

        if (paddr > 16'h200) begin
            data_o        <= pwdata;
            vsi_word_rcvd <= psel && penable;
        end
        else 
            vsi_word_rcvd <= 1'b0;

        if (paddr == 16'h336)
            vsi_package_rcvd <= 1'b1;
        else 
            vsi_package_rcvd <= 1'b0;
    end
end


front_detector front_detector_inst   (clk, rst_l, DATA_READY, data_tx_begin_pulse); // строб о готовности пакета

front_detector_by_negedge front_detector_negedge_inst   (clk, rst_l, package_start, data_tx_end_pulse); // строб о конце формирования пакета

pulse_to_toggle pulse_to_toggle_inst (  // 1 = фаза передачи пакета
    .clk(clk),
    .rst(rst_l),
    .pulse(data_tx_begin_pulse),
    .reset_toggle(data_tx_end_pulse),
    .toggle(data_tx_frame)
);

endmodule