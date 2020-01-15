`timescale 1 ns / 1 ps
module sender_sim();
reg clk,rst,valid,keep,last;
reg [7:0] data;
wire ready,sig;
laser_sender_v1_0 sender(sig,clk,rst,ready,data,keep,last,valid);

initial clk<=0;
always #1 clk<=~clk;

initial begin data<=0; valid<=1; keep<=1; last<=0; end
initial begin rst=0; #2 rst=1; end
always #20 valid<=~valid;

always @ (posedge clk) if(ready&valid) data<=data+1;

endmodule