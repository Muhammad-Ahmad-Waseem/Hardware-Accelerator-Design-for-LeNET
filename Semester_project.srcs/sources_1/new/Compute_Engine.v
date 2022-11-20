`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 04:29:40 PM
// Design Name: 
// Module Name: Compute_Engine
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


module Compute_Engine(
output[15:0] out,
input [15:0] Img00,Img01,Img02,Img03,Img04,Img05,
Img10,Img11,Img12,Img13,Img14,Img15,
Img20,Img21,Img22,Img23,Img24,Img25,
Img30,Img31,Img32,Img33,Img34,Img35,
Img40,Img41,Img42,Img43,Img44,Img45,
Img50,Img51,Img52,Img53,Img54,Img55,
wgt00,wgt01,wgt02,wgt03,wgt04,
wgt10,wgt11,wgt12,wgt13,wgt14,
wgt20,wgt21,wgt22,wgt23,wgt24,
wgt30,wgt31,wgt32,wgt33,wgt34,
wgt40,wgt41,wgt42,wgt43,wgt44,
input clock,reset,enable);

wire[31:0] outs[0:99];
wire[31:0] full_out,pout0,pout1,pout2,pout3,hout0,hout1,hout2,hout3;
wire c0,c1,c2,c3;

assign out = ({full_out[31:16]}>>1);
assign {full_out} = (({hout0}>>2)+({hout1}>>2)+({hout2}>>2)+({hout3}>>2));

assign hout0 = (c0)?32'b00000000000000000000000000000000:pout0;
assign hout1 = (c1)?32'b00000000000000000000000000000000:pout1;
assign hout2 = (c2)?32'b00000000000000000000000000000000:pout2;
assign hout3 = (c3)?32'b00000000000000000000000000000000:pout3;
 
assign {c0,pout0} = 
{outs[0][31],outs[0]}+{outs[1][31],outs[1]}+{outs[2][31],outs[2]}+{outs[3][31],outs[3]}+{outs[4][31],outs[4]}+
{outs[5][31],outs[5]}+{outs[6][31],outs[6]}+{outs[7][31],outs[7]}+{outs[8][31],outs[8]}+{outs[9][31],outs[9]}+
{outs[10][31],outs[10]}+{outs[11][31],outs[11]}+{outs[12][31],outs[12]}+{outs[13][31],outs[13]}+{outs[14][31],outs[14]}+
{outs[15][31],outs[15]}+{outs[16][31],outs[16]}+{outs[17][31],outs[17]}+{outs[18][31],outs[18]}+{outs[19][31],outs[19]}+
{outs[20][31],outs[20]}+{outs[21][31],outs[21]}+{outs[22][31],outs[22]}+{outs[23][31],outs[23]}+{outs[24][31],outs[24]};

assign {c1,pout1} = 
{outs[25][31],outs[25]}+{outs[26][31],outs[26]}+{outs[27][31],outs[27]}+{outs[28][31],outs[28]}+{outs[29][31],outs[29]}+
{outs[30][31],outs[30]}+{outs[31][31],outs[31]}+{outs[32][31],outs[32]}+{outs[33][31],outs[33]}+{outs[34][31],outs[34]}+
{outs[35][31],outs[35]}+{outs[36][31],outs[36]}+{outs[37][31],outs[37]}+{outs[38][31],outs[38]}+{outs[39][31],outs[39]}+
{outs[40][31],outs[40]}+{outs[41][31],outs[41]}+{outs[42][31],outs[42]}+{outs[43][31],outs[43]}+{outs[44][31],outs[44]}+
{outs[45][31],outs[45]}+{outs[46][31],outs[46]}+{outs[47][31],outs[47]}+{outs[48][31],outs[48]}+{outs[49][31],outs[49]};

assign {c2,pout2} = 
{outs[50][31],outs[50]}+{outs[51][31],outs[51]}+{outs[52][31],outs[52]}+{outs[53][31],outs[53]}+{outs[54][31],outs[54]}+
{outs[55][31],outs[55]}+{outs[56][31],outs[56]}+{outs[57][31],outs[57]}+{outs[58][31],outs[58]}+{outs[59][31],outs[59]}+
{outs[60][31],outs[60]}+{outs[61][31],outs[61]}+{outs[62][31],outs[62]}+{outs[63][31],outs[63]}+{outs[64][31],outs[64]}+
{outs[65][31],outs[65]}+{outs[66][31],outs[66]}+{outs[67][31],outs[67]}+{outs[68][31],outs[68]}+{outs[69][31],outs[69]}+
{outs[70][31],outs[70]}+{outs[71][31],outs[71]}+{outs[72][31],outs[72]}+{outs[73][31],outs[73]}+{outs[74][31],outs[74]};

assign {c3,pout3} = 
{outs[75][31],outs[75]}+{outs[76][31],outs[76]}+{outs[77][31],outs[77]}+{outs[78][31],outs[78]}+{outs[79][31],outs[79]}+
{outs[80][31],outs[80]}+{outs[81][31],outs[81]}+{outs[82][31],outs[82]}+{outs[83][31],outs[83]}+{outs[84][31],outs[84]}+
{outs[85][31],outs[85]}+{outs[86][31],outs[86]}+{outs[87][31],outs[87]}+{outs[88][31],outs[88]}+{outs[89][31],outs[89]}+
{outs[90][31],outs[90]}+{outs[91][31],outs[91]}+{outs[92][31],outs[92]}+{outs[93][31],outs[93]}+{outs[94][31],outs[94]}+
{outs[95][31],outs[95]}+{outs[96][31],outs[96]}+{outs[97][31],outs[97]}+{outs[98][31],outs[98]}+{outs[99][31],outs[99]};


MUL M00(clock,Img00,wgt00,outs[0]);
MUL M01(clock,Img01,wgt01,outs[1]);
MUL M02(clock,Img02,wgt02,outs[2]);
MUL M03(clock,Img03,wgt03,outs[3]);
MUL M04(clock,Img04,wgt04,outs[4]);
MUL M05(clock,Img10,wgt10,outs[5]);
MUL M06(clock,Img11,wgt11,outs[6]);
MUL M07(clock,Img12,wgt12,outs[7]);
MUL M08(clock,Img13,wgt13,outs[8]);
MUL M09(clock,Img14,wgt14,outs[9]);
MUL M10(clock,Img20,wgt20,outs[10]);
MUL M11(clock,Img21,wgt21,outs[11]);
MUL M12(clock,Img22,wgt22,outs[12]);
MUL M13(clock,Img23,wgt23,outs[13]);
MUL M14(clock,Img24,wgt24,outs[14]);
MUL M15(clock,Img30,wgt30,outs[15]);
MUL M16(clock,Img31,wgt31,outs[16]);
MUL M17(clock,Img32,wgt32,outs[17]);
MUL M18(clock,Img33,wgt33,outs[18]);
MUL M19(clock,Img34,wgt34,outs[19]);
MUL M20(clock,Img40,wgt40,outs[20]);
MUL M21(clock,Img41,wgt41,outs[21]);
MUL M22(clock,Img42,wgt42,outs[22]);
MUL M23(clock,Img43,wgt43,outs[23]);
MUL M24(clock,Img44,wgt44,outs[24]);
MUL M25(clock,Img01,wgt00,outs[25]);
MUL M26(clock,Img02,wgt01,outs[26]);
MUL M27(clock,Img03,wgt02,outs[27]);
MUL M28(clock,Img04,wgt03,outs[28]);
MUL M29(clock,Img05,wgt04,outs[29]);
MUL M30(clock,Img11,wgt10,outs[30]);
MUL M31(clock,Img12,wgt11,outs[31]);
MUL M32(clock,Img13,wgt12,outs[32]);
MUL M33(clock,Img14,wgt13,outs[33]);
MUL M34(clock,Img15,wgt14,outs[34]);
MUL M35(clock,Img21,wgt20,outs[35]);
MUL M36(clock,Img22,wgt21,outs[36]);
MUL M37(clock,Img23,wgt22,outs[37]);
MUL M38(clock,Img24,wgt23,outs[38]);
MUL M39(clock,Img25,wgt24,outs[39]);
MUL M40(clock,Img31,wgt30,outs[40]);
MUL M41(clock,Img32,wgt31,outs[41]);
MUL M42(clock,Img33,wgt32,outs[42]);
MUL M43(clock,Img34,wgt33,outs[43]);
MUL M44(clock,Img35,wgt34,outs[44]);
MUL M45(clock,Img41,wgt40,outs[45]);
MUL M46(clock,Img42,wgt41,outs[46]);
MUL M47(clock,Img43,wgt42,outs[47]);
MUL M48(clock,Img44,wgt43,outs[48]);
MUL M49(clock,Img45,wgt44,outs[49]);
MUL M50(clock,Img10,wgt00,outs[50]);
MUL M51(clock,Img11,wgt01,outs[51]);
MUL M52(clock,Img12,wgt02,outs[52]);
MUL M53(clock,Img13,wgt03,outs[53]);
MUL M54(clock,Img14,wgt04,outs[54]);
MUL M55(clock,Img20,wgt10,outs[55]);
MUL M56(clock,Img21,wgt11,outs[56]);
MUL M57(clock,Img22,wgt12,outs[57]);
MUL M58(clock,Img23,wgt13,outs[58]);
MUL M59(clock,Img24,wgt14,outs[59]);
MUL M60(clock,Img30,wgt20,outs[60]);
MUL M61(clock,Img31,wgt21,outs[61]);
MUL M62(clock,Img32,wgt22,outs[62]);
MUL M63(clock,Img33,wgt23,outs[63]);
MUL M64(clock,Img34,wgt24,outs[64]);
MUL M65(clock,Img40,wgt30,outs[65]);
MUL M66(clock,Img41,wgt31,outs[66]);
MUL M67(clock,Img42,wgt32,outs[67]);
MUL M68(clock,Img43,wgt33,outs[68]);
MUL M69(clock,Img44,wgt34,outs[69]);
MUL M70(clock,Img50,wgt40,outs[70]);
MUL M71(clock,Img51,wgt41,outs[71]);
MUL M72(clock,Img52,wgt42,outs[72]);
MUL M73(clock,Img53,wgt43,outs[73]);
MUL M74(clock,Img54,wgt44,outs[74]);
MUL M75(clock,Img11,wgt00,outs[75]);
MUL M76(clock,Img12,wgt01,outs[76]);
MUL M77(clock,Img13,wgt02,outs[77]);
MUL M78(clock,Img14,wgt03,outs[78]);
MUL M79(clock,Img15,wgt04,outs[79]);
MUL M80(clock,Img21,wgt10,outs[80]);
MUL M81(clock,Img22,wgt11,outs[81]);
MUL M82(clock,Img23,wgt12,outs[82]);
MUL M83(clock,Img24,wgt13,outs[83]);
MUL M84(clock,Img25,wgt14,outs[84]);
MUL M85(clock,Img31,wgt20,outs[85]);
MUL M86(clock,Img32,wgt21,outs[86]);
MUL M87(clock,Img33,wgt22,outs[87]);
MUL M88(clock,Img34,wgt23,outs[88]);
MUL M89(clock,Img35,wgt24,outs[89]);
MUL M90(clock,Img41,wgt30,outs[90]);
MUL M91(clock,Img42,wgt31,outs[91]);
MUL M92(clock,Img43,wgt32,outs[92]);
MUL M93(clock,Img44,wgt33,outs[93]);
MUL M94(clock,Img45,wgt34,outs[94]);
MUL M95(clock,Img51,wgt40,outs[95]);
MUL M96(clock,Img52,wgt41,outs[96]);
MUL M97(clock,Img53,wgt42,outs[97]);
MUL M98(clock,Img54,wgt43,outs[98]);
MUL M99(clock,Img55,wgt44,outs[99]);


endmodule
