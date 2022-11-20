`timescale 1ns / 1ps
`define CYCLE 10
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 04:15:43 PM
// Design Name: 
// Module Name: test1
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


module test1;
// Inputs
reg clk,reset;
// Outputs
wire [15:0] out1,out2,out3,check,outa,outb;
wire [12:0] ctr,ad1,ad2;
wire [4:0] tile_counter;
wire [2:0] state;
wire [1:0] layer;
wire valid,wgt_loaded;

main_module uut (
.ce1_out(out1),
.ce2_out(out2),
.ce3_out(out3),
.outa(outa),
.outb(outb),
.ifm_tile_ck(check),
.state(state),
.layer(layer),
.counter(ctr),
.addra_reg(ad1),
.addrb_reg(ad2),
.tile_counter(tile_counter),
.valid_data(valid),
.wgt_loaded(wgt_loaded),
.clock(clk),
.reset(reset)
);

initial
clk = 1'b0;

always
#(`CYCLE) clk = ~clk;

initial begin
reset = 1'b0;
#(`CYCLE*2);
reset = 1'b1;
#(`CYCLE*60000);
$finish;
end
endmodule
