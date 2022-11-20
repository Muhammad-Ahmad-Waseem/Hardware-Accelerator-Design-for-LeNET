`timescale 1ns / 1ps
`define CYCLE 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 07:42:47 PM
// Design Name: 
// Module Name: test_mul
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


module test_mul;
// Inputs
reg clk;
reg[15:0] in1,in2;

// Outputs
wire [63:0] out;

MUL uut(
.CLK(clk),
.A(in1),
.B(in2),
.P(out)
);

initial
clk = 1'b0;

always
#(`CYCLE) clk = ~clk;

initial begin
in1 = 16'b1111001001101110;
in2 = 16'b0001100111110110;
#(`CYCLE*20);
$finish;
end
endmodule
