`timescale 1 ns / 1 ps
module async_sim();
    reg sclk,svld;
    reg rclk,rrdy;
    reg rst;
    reg [7:0] clk_8;
    reg [7:0] datain;
    wire [7:0] dataout;
    wire rvld,srdy;
    async_sim_sys async_sim_sys_i
       (.clk_8(clk_8),
        .receiver_axi_tdata(dataout),
        .receiver_axi_tkeep(),
        .receiver_axi_tlast(),
        .receiver_axi_tready(rrdy),
        .receiver_axi_tvalid(rvld),
        .receiver_clk(rclk),
        .receiver_rst(rst),
        .sender_axi_tdata(datain),
        .sender_axi_tkeep(1),
        .sender_axi_tlast(0),
        .sender_axi_tready(srdy),
        .sender_axi_tvalid(svld),
        .sender_clk(sclk),
        .sender_rst(rst));
    
    initial {rclk,sclk,clk_8}<=15;
    initial #1 fork
        forever #2 clk_8<={clk_8[6:0],clk_8[7]};
        #1 forever #8 rclk<=~rclk;
        #5 forever #8 sclk<=~sclk;
    join
    
    initial rst<=0;
    initial #16 rst<=1;
    
    initial {rrdy}<=-1;
    
    initial svld<=0;
    initial #64 svld<=1;
    
    initial datain<=0;
    always @ (posedge sclk) if(srdy&svld) datain<=datain+1;
    
endmodule