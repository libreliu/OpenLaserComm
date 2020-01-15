`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/18 19:16:22
// Design Name: 
// Module Name: counter10
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


module counter10(
    input clk_in,
    output reg clk_out
    );
    
    reg [7:0] count;
    
    always @ (posedge clk_in) begin
        if (count >= 8'd10) begin
            count <= 0;
            clk_out <= ~clk_out;
        end else begin 
            count <= count + 1;
        end
    end
    
    
    
    
endmodule
