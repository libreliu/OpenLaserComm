`timescale 1 ns / 1 ps
module sender_receiver_sim();
reg clk,rst,valid,keep,last;
reg [7:0] data;
wire ready,sigout,sigin;
reg ready2;
wire valid2,keep2,last2;
wire [7:0] data2;
reg err,connect;
wire receiver_state;
laser_sender_0 sender(sigout,data,keep,last,valid,ready,clk,rst);
laser_receiver_0 receiver(sigin,receiver_state,data2,keep2,last2,valid2,ready2,clk,rst);
assign sigin=(sigout^err)&&connect;

initial clk<=0;
always #1 clk<=~clk;

initial begin data<=0; valid<=0; keep<=1; last<=0; ready2<=0; err<=0; connect<=1; end
initial #20 valid<=1;
initial begin rst=0; #2 rst=1; end
//initial begin #50 err<=1; #2 err<=0; end
//always #50 valid<=~valid;
initial begin #300 ready2<=1; end
initial #50 connect<=0;

always @ (posedge clk) if(ready&valid) data<=data+1;

endmodule