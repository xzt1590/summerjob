`timescale 1ns / 1ps
//要改变减加乘除的算法，直接改变IP核中Add/Subtract/Divide/Multiply来编译生成bit文件
module f_calculation(
clk,
f_p_number_A,
f_p_number_B,
result
    );
input clk;
input [31:0]f_p_number_A;
input [31:0]f_p_number_B;
output reg [31:0]result;
reg [31:0]add_a=0;
reg [31:0]add_b=0;
reg s_axis_a_tvalid;
reg s_axis_b_tvalid=1;
wire [31:0]m_axis_result_tdata;
wire m_axis_result_tvalid;
always@(posedge clk)
begin
add_a<=f_p_number_A;
add_b<=f_p_number_B;
result<=m_axis_result_tdata;
end

floating_point_0 test (
.aclk(clk),
.s_axis_a_tdata(add_a),
.s_axis_a_tvalid(1'b1),
.s_axis_b_tdata(add_b),
.s_axis_b_tvalid(1'b1),
.m_axis_result_tdata(m_axis_result_tdata),
.m_axis_result_tvalid(m_axis_result_tvalid)
);

endmodule
