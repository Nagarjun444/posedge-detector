`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2022 19:58:25
// Design Name: 
// Module Name: posedge_detector
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


module posedge_detector(clk,data_in1,data_in2,data_out);
input clk;
input data_in1;
input data_in2;
output reg data_out;

always@(posedge clk)
begin
  case({data_in1,data_in2})
    2'b00:data_out=1'b0;
    2'b01:data_out=1'b0;
    2'b10:data_out=1'b1;
    2'b11:data_out=1'b0;
    default:data_out=1'b0;
  
  endcase
end

endmodule
