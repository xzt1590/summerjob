`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/31 23:30:37
// Design Name: 
// Module Name: testbench
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

module testbench();
reg clk=0;
reg [31:0]f_p_number_A=32'b0_10000000_01011001100110011001101;
reg [31:0]f_p_number_B=32'b0_10000000_01011001100110011001101;
wire [31:0]result;
wire m_axis_result_tvalid;

always #5 clk<=~clk;

f_calculation test_1(
   .clk(clk),
   .f_p_number_A(f_p_number_A),
   .f_p_number_B(f_p_number_B),
   .result(result)
   );
endmodule

