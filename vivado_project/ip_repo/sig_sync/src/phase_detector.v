`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/12 21:29:12
// Design Name: 
// Module Name: phase_detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sig_sync
#(parameter CLK_NUM=8)
(input [CLK_NUM-1:0] clk, input sig,resyncn, input AXI_clk, output reg sig_out);

reg [CLK_NUM-1:0] r,sel;
reg resync;
reg [3:0] resynccnt;
reg [CLK_NUM-1:0] sync_sel,sync_r;

wire new_sel_available;
wire [CLK_NUM-1:0] new_sel;
assign
new_sel = sel&~sync_sel,
new_sel_available = sync_sel^sel!=0 && new_sel!=0 && resync;

generate
genvar i;
for(i=0; i<CLK_NUM; i=i+1)
begin:blabla
    always@(posedge clk[i])
    begin
        if(r[i]!=sig)
            if((~|r)|(&r))
                sel[i]=1;
            else
                sel[i]=0;
        r[i]=sig;
    end
end
endgenerate

always @(posedge AXI_clk) sync_r<=r;


always @(posedge AXI_clk)
begin
    if(~resync)
        if(~resyncn&&resynccnt==0)
        begin
            resync<=1;
        end
        else resync<=0;
    else
        if(new_sel_available)
            resync<=0;
        else
            resync<=1;
end

always @(posedge AXI_clk)
begin
    if(new_sel_available) sync_sel<=new_sel;
    else sync_sel<=sync_sel;
end

always @(posedge AXI_clk)
begin
    if(resynccnt!=0) resynccnt<=resynccnt-1;
    else if(~resyncn) resynccnt<=resynccnt-1;//resynccnt<=-1;
    else resynccnt<=0;
end

always @(posedge AXI_clk) sig_out = |(sync_r & {sync_sel[CLK_NUM/2 - 1:0], sync_sel[CLK_NUM - 1:CLK_NUM/2]} );

endmodule
