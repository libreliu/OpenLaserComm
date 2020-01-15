`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2020 16:31:43
// Design Name: 
// Module Name: FIFO
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


module FIFO
#(parameter integer DEPTH = 7, parameter integer WIDTH = 8)
(input clk, in, out,rstn, input [WIDTH-1:0] din, output empty, full,output [WIDTH-1:0] dout);

function integer clogb2 (input integer bit_depth);                                   
	  begin
	    bit_depth=bit_depth+1;
	    for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                                      
	      bit_depth = bit_depth >> 1;                                                    
	  end                                                                                
endfunction

reg [WIDTH-1:0] fifo [DEPTH-1:0];
reg [clogb2(DEPTH)-1:0] cnt;

assign 
empty=cnt==0,
full=cnt==DEPTH,
dout=fifo[0];

always @(posedge clk)
if(!rstn) cnt<=0;
else case({in,out})
2'b00:
    cnt<=cnt;
2'b01:
    cnt<=empty?cnt:cnt-1;
2'b10:
    cnt<=full?cnt:cnt+1;
2'b11:
    cnt<=cnt-(empty?4'h0:4'h1)+(full?4'h0:4'h1);
endcase

genvar i;
generate
for(i=0;i<DEPTH;i=i+1)
begin:blabla
always @(posedge clk)
if(!rstn) fifo[i]<=0;
else case({in,out})
2'b00:
    fifo[i]<=fifo[i];
2'b01:
    if(i!=DEPTH-1)
        fifo[i]<=fifo[i+1];
    else
        fifo[i]<=0;
2'b10:
    if(cnt==i)
        fifo[i]<=din;
    else
        fifo[i]<=fifo[i];
2'b11:
    if(cnt==i+1)
        fifo[i]<=din;
    else if(i!=DEPTH-1)
        fifo[i]<=fifo[i+1];
    else
        fifo[i]<=0;
endcase
end
endgenerate

endmodule

