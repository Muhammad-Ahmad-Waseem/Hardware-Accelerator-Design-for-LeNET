`timescale 1ns / 1ps
//offsets in addresses
`define IMG_OFFSET 0
`define W1_OFFSET 784
`define W2_OFFSET 934
`define W3_OFFSET 2734
`define OUT1_OFFSET 4654
`define OUT2_OFFSET 5518
`define OUT3_OFFSET 5710

//states of FSM
`define INIT 0
`define LOAD_WGT 1
`define LOAD_IMG 2
`define PROCESS_TILE 3
`define SAVE_TILE 4

//cycles for each stage
`define IMGLD_CYCS_L1 84
`define WGTLD_CYCS_L1 13
`define PRCSS_CYCS_L1 12
`define SAVTL_CYCS_L1 6
`define IMGLD_CYCS_L2 36
`define WGTLD_CYCS_L2 13
`define PRCSS_CYCS_L2 4
`define SAVTL_CYCS_L2 2
`define IMGLD_CYCS_L3 96
`define WGTLD_CYCS_L3 96
`define PRCSS_CYCS_L3 10
`define SAVTL_CYCS_L3 5

//layer related values
`define TILES_INPL1 12
`define WGTS_INPL1 6
`define L1_DEPTH 1
`define L1_INP_SIZE 28 //28 by 28
`define L1_WGT_SIZE 25 // 5*5
`define L1_OUT_SIZE 12 //12 by 12
`define TILES_INPL2 4
`define WGTS_INPL2 12
`define L2_DEPTH 6
`define L2_INP_SIZE 12 //12 by 12
`define L2_WGT_SIZE 25 // 5*5
`define L2_OUT_SIZE 4 //4 by 4
`define TILES_INPL3 1
`define WGTS_INPL3 1
`define L3_DEPTH 10
`define L3_INP_SIZE 4 //4 by 4
`define L3_WGT_SIZE 192 // 1*192
`define L3_OUT_SIZE 10 // 1 by 10

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/25/2022 03:45:44 PM
// Design Name: 
// Module Name: main_module
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


module main_module(
output [15:0] ce1_out,ce2_out,ce3_out,outa,outb,
output [15:0] ifm_tile_ck,
output reg [2:0] state,
output reg [1:0] layer,
output reg [13:0] counter,addra_reg, addrb_reg,
output reg [4:0] tile_counter,
output reg valid_data,wgt_loaded,
input clock,reset
    );
wire ena,enb,wea,web;
wire [13:0] addra, addrb;
wire [15:0] inpa,inpb;//;,ce_out;

//flags
reg img_loaded,/*wgt_loaded,*/tile_processed,save_done,tiles_complete,wgts_complete,lyr_complete,/*valid_data,*/enable_ram,rw,wt;

//state of FSM
//reg [2:0] state;

//busses
//reg [12:0] addra_reg, addrb_reg;//, counter;
//reg [4:0]tile_counter;
reg [13:0] inp_add_offset,wgt_add_offset,out_add_offset;
reg [4:0] inp_lyr_size;
reg [3:0] out_lyr_size,wgts_counter,depth_counter,img_depth,wgt_depth;
reg [6:0] inp_cycs,wgt_cycs,prcs_cycs,save_cycs,inp_tiles,lyr_wgts;
reg [7:0] wgt_size;

//On Chip Memory
reg [15:0] ifm_tile [0:5][0:191];
reg [15:0] wgt_tile [0:9][0:191];
reg [15:0] out_tile [0:11];

assign addra = addra_reg;
assign addrb = addrb_reg;
assign ena = enable_ram;
assign enb = enable_ram;
assign wea = rw;
assign web = rw;
assign ifm_tile_ck = ifm_tile[1][143];
//assign ce_out = (layer==0)?ce1_out:((layer==1)?ce2_out:((layer==2)?ce3_out:16'h0000));

always@(posedge clock)
begin
if (!reset)
    begin
    state = `INIT;
    layer <= 2'b00;
    counter <= 12'b000000000000;
    tile_counter <= 5'b00000;
    wgts_counter <= 4'b0000;
    depth_counter <= 4'b0000;
    {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000000;
    valid_data <= 1'b0;
    wt <= 1'b0;
    enable_ram = 1'b0;
    end
else
    begin
    //Control lines for each state
    case(state)
    `INIT:
        case(layer)
        2'b00://first layer
            begin
            inp_add_offset <= `IMG_OFFSET;
            wgt_add_offset <= `W1_OFFSET;
            out_add_offset <= `OUT1_OFFSET;
            inp_cycs  <= `IMGLD_CYCS_L1+1;
            wgt_cycs  <= `WGTLD_CYCS_L1+1;
            prcs_cycs <= `PRCSS_CYCS_L1; 
            save_cycs <= `SAVTL_CYCS_L1; 
            inp_tiles <= `TILES_INPL1; 
            lyr_wgts  <= `WGTS_INPL1;
            img_depth <= `L1_DEPTH;
            wgt_depth <= `L1_DEPTH;
            inp_lyr_size <= `L1_INP_SIZE;
            wgt_size <= `L1_WGT_SIZE;
            out_lyr_size <= `L1_OUT_SIZE;
            end
        2'b01://second layer
            begin
            inp_add_offset <= `OUT1_OFFSET; 
            wgt_add_offset <= `W2_OFFSET;  
            out_add_offset <= `OUT2_OFFSET;
            inp_cycs  <= `IMGLD_CYCS_L2+1;   
            wgt_cycs  <= `WGTLD_CYCS_L2+1;   
            prcs_cycs <= `PRCSS_CYCS_L2;   
            save_cycs <= `SAVTL_CYCS_L2;   
            inp_tiles <= `TILES_INPL2;     
            lyr_wgts  <= `WGTS_INPL2;
            img_depth <= `L2_DEPTH;
            wgt_depth <= `L2_DEPTH;
            inp_lyr_size <= `L2_INP_SIZE;
            wgt_size <= `L2_WGT_SIZE;
            out_lyr_size <= `L2_OUT_SIZE;     
            end
        2'b10://third or dense layer
            begin
            inp_add_offset <= `OUT2_OFFSET;
            wgt_add_offset <= `W3_OFFSET;
            out_add_offset <= `OUT3_OFFSET;
            inp_cycs  <= `IMGLD_CYCS_L3+1;
            wgt_cycs  <= `WGTLD_CYCS_L3+1;
            prcs_cycs <= `PRCSS_CYCS_L3; 
            save_cycs <= `SAVTL_CYCS_L3; 
            inp_tiles <= `TILES_INPL3; 
            lyr_wgts  <= `WGTS_INPL3;
            img_depth <= 1'b1;
            wgt_depth <= `L3_DEPTH;
            inp_lyr_size <= `L3_INP_SIZE;
            wgt_size <= `L3_WGT_SIZE;
            out_lyr_size <= `L3_OUT_SIZE;
            end
        endcase
    `LOAD_WGT:
            begin
            if(valid_data)
                if(counter >= wgt_cycs)
                    wgt_tile[depth_counter][2*(counter-2)] <= outa;
                else
                    begin
                    wgt_tile[depth_counter][2*(counter-2)] <= outa;
                    wgt_tile[depth_counter][2*(counter-2)+1] <= outb;
                    counter <= counter+1;
                    addra_reg <= addra_reg + 2;
                    addrb_reg <= addrb_reg + 2;
                    end
            else
                if(wt)
                    begin
                    addra_reg <= wgt_add_offset+(depth_counter*wgt_size)+(wgts_counter*wgt_depth*wgt_size);
                    addrb_reg <= wgt_add_offset+(depth_counter*wgt_size)+(wgts_counter*wgt_depth*wgt_size)+1;
                    valid_data <= 1'b1;
                    end
                else
                    wt <= wt+1;
            enable_ram = 1'b1;
            rw = 1'b0;
            {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000000;
            if(counter >= wgt_cycs)
                begin
                counter <= 0;
                valid_data <= 1'b0;
                wt <= 1'b0;
                rw = 1'b0;
                enable_ram = 1'b1;
                if(depth_counter >= wgt_depth-1)
                    begin
                    {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b010000;
                    depth_counter <= 0;
                    end
                else
                    depth_counter <= depth_counter+1;
                end
            end
     `LOAD_IMG:
            begin
            if(valid_data)
                begin
                ifm_tile[depth_counter][2*(counter-2)] <= outa;
                ifm_tile[depth_counter][2*(counter-2)+1] <= outb;
                counter <= counter+1;
                addra_reg <= addra_reg + 2;
                addrb_reg <= addrb_reg + 2;
                end
            else
                if(wt)
                    begin
                    valid_data <= 1'b1;
                    addra_reg <= inp_add_offset + (inp_lyr_size*inp_lyr_size*depth_counter)+(2*inp_lyr_size*tile_counter);
                    addrb_reg <= inp_add_offset + (inp_lyr_size*inp_lyr_size*depth_counter)+(2*inp_lyr_size*tile_counter)+1;
                    end
                else
                    wt <= wt+1;
            enable_ram = 1'b1;
            rw = 1'b0;
            {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000000;
            if(counter >= inp_cycs)
                begin
                valid_data <= 1'b0;
                counter <= 0;
                wt <= 1'b0;
                enable_ram = 1'b0;
                if(depth_counter >= img_depth-1)
                    begin
                    {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b100000;
                    depth_counter <= 0;
                   end             
                else
                    depth_counter = depth_counter+1;
                end
            end
    `PROCESS_TILE:
            begin
            if(valid_data)
                begin
                case(layer)
                    2'b00://layer 1
                        out_tile[(counter-1)] <= ce1_out;
                    2'b01://layer 2
                        out_tile[(counter-1)] <= ce2_out;
                    2'b10://layer 3
                        out_tile[(counter-1)] <= ce3_out;
                    default:
                        out_tile[(counter-1)] <= 16'h0000;
                endcase
                counter <= counter+1;
                end
            else
                 if(wt)
                    valid_data <= 1'b1;
                else
                    wt <= wt+1;
            {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000000;
            enable_ram = 1'b0;
            if(counter >= prcs_cycs)
                begin
                {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b001000;
                valid_data = 1'b0;
                wt <= 1'b0;
                counter <= 0;
                end
            end
    `SAVE_TILE:
            begin
            if(valid_data)
                begin
                counter <= counter+1;
                addra_reg <= addra_reg + 2;
                addrb_reg <= addrb_reg + 2;
                end
            else
                if(wt)
                   begin
                   valid_data <= 1'b1;
                   enable_ram = 1'b1;
                   rw = 1'b1;
                   addra_reg <= out_add_offset+(out_lyr_size*out_lyr_size*wgts_counter)+(out_lyr_size*tile_counter);  
                   addrb_reg <= out_add_offset+(out_lyr_size*out_lyr_size*wgts_counter)+(out_lyr_size*tile_counter)+1;
                   end
               else
                   wt <= wt+1;
            {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000000;
            if(counter >= save_cycs-1)
                begin
                if(tile_counter >= inp_tiles -1)
                    begin
                    tile_counter <= 0;
                    if(wgts_counter >= lyr_wgts -1)
                        begin
                        wgts_counter <= 3'b000;
                        {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000111;
                        layer <= layer + 1;
                        end
                    else
                        begin
                        {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000110;
                        wgts_counter <= wgts_counter +1;
                        end
                    end
                else
                    begin
                    {img_loaded,wgt_loaded,tile_processed,save_done,tiles_complete,wgts_complete} = 6'b000100;
                    tile_counter <= tile_counter + 1;
                    end
                valid_data = 1'b0;
                wt <= 1'b0;
                counter <= 0;
                enable_ram = 1'b1;
                rw = 1'b0;
                end
            end
     default:
            state = 0;
    endcase
    
    //next state jump
    case(state)
    `INIT:
            state = `LOAD_WGT;
            
    `LOAD_WGT:
            if(wgt_loaded)
                state = `LOAD_IMG;
     `LOAD_IMG:
            if(img_loaded)
                state = `PROCESS_TILE;
    `PROCESS_TILE:
            if(tile_processed)
                state = `SAVE_TILE;
    `SAVE_TILE:
            if(save_done)
                if(tiles_complete)
                    if(wgts_complete)
                        state = `INIT;
                    else
                        state = `LOAD_WGT;
                else
                    state = `LOAD_IMG;
     default:
            state = 5;
    endcase
        
    end
end


RAM myRam(clock,ena,wea,addra,out_tile[2*counter],outa,clock,enb,web,addrb,out_tile[2*counter+1],outb);

Compute_Engine CE_L1(ce1_out,
ifm_tile[0][2*counter],ifm_tile[0][2*counter+1],ifm_tile[0][2*counter+2],ifm_tile[0][2*counter+3],ifm_tile[0][2*counter+4],ifm_tile[0][2*counter+5],
ifm_tile[0][2*counter+28],ifm_tile[0][2*counter+29],ifm_tile[0][2*counter+30],ifm_tile[0][2*counter+31],ifm_tile[0][2*counter+32],ifm_tile[0][2*counter+33],
ifm_tile[0][2*counter+56],ifm_tile[0][2*counter+57],ifm_tile[0][2*counter+58],ifm_tile[0][2*counter+59],ifm_tile[0][2*counter+60],ifm_tile[0][2*counter+61],
ifm_tile[0][2*counter+84],ifm_tile[0][2*counter+85],ifm_tile[0][2*counter+86],ifm_tile[0][2*counter+87],ifm_tile[0][2*counter+88],ifm_tile[0][2*counter+89],
ifm_tile[0][2*counter+112],ifm_tile[0][2*counter+113],ifm_tile[0][2*counter+114],ifm_tile[0][2*counter+115],ifm_tile[0][2*counter+116],ifm_tile[0][2*counter+117],
ifm_tile[0][2*counter+140],ifm_tile[0][2*counter+141],ifm_tile[0][2*counter+142],ifm_tile[0][2*counter+143],ifm_tile[0][2*counter+144],ifm_tile[0][2*counter+145],
wgt_tile[0][0],wgt_tile[0][1],wgt_tile[0][2],wgt_tile[0][3],wgt_tile[0][4],
wgt_tile[0][5],wgt_tile[0][6],wgt_tile[0][7],wgt_tile[0][8],wgt_tile[0][9],
wgt_tile[0][10],wgt_tile[0][11],wgt_tile[0][12],wgt_tile[0][13],wgt_tile[0][14],
wgt_tile[0][15],wgt_tile[0][16],wgt_tile[0][17],wgt_tile[0][18],wgt_tile[0][19],
wgt_tile[0][20],wgt_tile[0][21],wgt_tile[0][22],wgt_tile[0][23],wgt_tile[0][24],
clock,reset,1'b1);

Compute_Engine2 CE_L2(ce2_out,
ifm_tile[0][2*counter],ifm_tile[0][2*counter+1],ifm_tile[0][2*counter+2],ifm_tile[0][2*counter+3],ifm_tile[0][2*counter+4],ifm_tile[0][2*counter+5],
ifm_tile[0][2*counter+12],ifm_tile[0][2*counter+13],ifm_tile[0][2*counter+14],ifm_tile[0][2*counter+15],ifm_tile[0][2*counter+16],ifm_tile[0][2*counter+17],
ifm_tile[0][2*counter+24],ifm_tile[0][2*counter+25],ifm_tile[0][2*counter+26],ifm_tile[0][2*counter+27],ifm_tile[0][2*counter+28],ifm_tile[0][2*counter+29],
ifm_tile[0][2*counter+36],ifm_tile[0][2*counter+37],ifm_tile[0][2*counter+38],ifm_tile[0][2*counter+39],ifm_tile[0][2*counter+40],ifm_tile[0][2*counter+41],
ifm_tile[0][2*counter+48],ifm_tile[0][2*counter+49],ifm_tile[0][2*counter+50],ifm_tile[0][2*counter+51],ifm_tile[0][2*counter+52],ifm_tile[0][2*counter+53],
ifm_tile[0][2*counter+60],ifm_tile[0][2*counter+61],ifm_tile[0][2*counter+62],ifm_tile[0][2*counter+63],ifm_tile[0][2*counter+64],ifm_tile[0][2*counter+65],
ifm_tile[1][2*counter],ifm_tile[1][2*counter+1],ifm_tile[1][2*counter+2],ifm_tile[1][2*counter+3],ifm_tile[1][2*counter+4],ifm_tile[1][2*counter+5],
ifm_tile[1][2*counter+12],ifm_tile[1][2*counter+13],ifm_tile[1][2*counter+14],ifm_tile[1][2*counter+15],ifm_tile[1][2*counter+16],ifm_tile[1][2*counter+17],
ifm_tile[1][2*counter+24],ifm_tile[1][2*counter+25],ifm_tile[1][2*counter+26],ifm_tile[1][2*counter+27],ifm_tile[1][2*counter+28],ifm_tile[1][2*counter+29],
ifm_tile[1][2*counter+36],ifm_tile[1][2*counter+37],ifm_tile[1][2*counter+38],ifm_tile[1][2*counter+39],ifm_tile[1][2*counter+40],ifm_tile[1][2*counter+41],
ifm_tile[1][2*counter+48],ifm_tile[1][2*counter+49],ifm_tile[1][2*counter+50],ifm_tile[1][2*counter+51],ifm_tile[1][2*counter+52],ifm_tile[1][2*counter+53],
ifm_tile[1][2*counter+60],ifm_tile[1][2*counter+61],ifm_tile[1][2*counter+62],ifm_tile[1][2*counter+63],ifm_tile[1][2*counter+64],ifm_tile[1][2*counter+65],
ifm_tile[2][2*counter],ifm_tile[2][2*counter+1],ifm_tile[2][2*counter+2],ifm_tile[2][2*counter+3],ifm_tile[2][2*counter+4],ifm_tile[2][2*counter+5],
ifm_tile[2][2*counter+12],ifm_tile[2][2*counter+13],ifm_tile[2][2*counter+14],ifm_tile[2][2*counter+15],ifm_tile[2][2*counter+16],ifm_tile[2][2*counter+17],
ifm_tile[2][2*counter+24],ifm_tile[2][2*counter+25],ifm_tile[2][2*counter+26],ifm_tile[2][2*counter+27],ifm_tile[2][2*counter+28],ifm_tile[2][2*counter+29],
ifm_tile[2][2*counter+36],ifm_tile[2][2*counter+37],ifm_tile[2][2*counter+38],ifm_tile[2][2*counter+39],ifm_tile[2][2*counter+40],ifm_tile[2][2*counter+41],
ifm_tile[2][2*counter+48],ifm_tile[2][2*counter+49],ifm_tile[2][2*counter+50],ifm_tile[2][2*counter+51],ifm_tile[2][2*counter+52],ifm_tile[2][2*counter+53],
ifm_tile[2][2*counter+60],ifm_tile[2][2*counter+61],ifm_tile[2][2*counter+62],ifm_tile[2][2*counter+63],ifm_tile[2][2*counter+64],ifm_tile[2][2*counter+65],
ifm_tile[3][2*counter],ifm_tile[3][2*counter+1],ifm_tile[3][2*counter+2],ifm_tile[3][2*counter+3],ifm_tile[3][2*counter+4],ifm_tile[3][2*counter+5],
ifm_tile[3][2*counter+12],ifm_tile[3][2*counter+13],ifm_tile[3][2*counter+14],ifm_tile[3][2*counter+15],ifm_tile[3][2*counter+16],ifm_tile[3][2*counter+17],
ifm_tile[3][2*counter+24],ifm_tile[3][2*counter+25],ifm_tile[3][2*counter+26],ifm_tile[3][2*counter+27],ifm_tile[3][2*counter+28],ifm_tile[3][2*counter+29],
ifm_tile[3][2*counter+36],ifm_tile[3][2*counter+37],ifm_tile[3][2*counter+38],ifm_tile[3][2*counter+39],ifm_tile[3][2*counter+40],ifm_tile[3][2*counter+41],
ifm_tile[3][2*counter+48],ifm_tile[3][2*counter+49],ifm_tile[3][2*counter+50],ifm_tile[3][2*counter+51],ifm_tile[3][2*counter+52],ifm_tile[3][2*counter+53],
ifm_tile[3][2*counter+60],ifm_tile[3][2*counter+61],ifm_tile[3][2*counter+62],ifm_tile[3][2*counter+63],ifm_tile[3][2*counter+64],ifm_tile[3][2*counter+65],
ifm_tile[4][2*counter],ifm_tile[4][2*counter+1],ifm_tile[4][2*counter+2],ifm_tile[4][2*counter+3],ifm_tile[4][2*counter+4],ifm_tile[4][2*counter+5],
ifm_tile[4][2*counter+12],ifm_tile[4][2*counter+13],ifm_tile[4][2*counter+14],ifm_tile[4][2*counter+15],ifm_tile[4][2*counter+16],ifm_tile[4][2*counter+17],
ifm_tile[4][2*counter+24],ifm_tile[4][2*counter+25],ifm_tile[4][2*counter+26],ifm_tile[4][2*counter+27],ifm_tile[4][2*counter+28],ifm_tile[4][2*counter+29],
ifm_tile[4][2*counter+36],ifm_tile[4][2*counter+37],ifm_tile[4][2*counter+38],ifm_tile[4][2*counter+39],ifm_tile[4][2*counter+40],ifm_tile[4][2*counter+41],
ifm_tile[4][2*counter+48],ifm_tile[4][2*counter+49],ifm_tile[4][2*counter+50],ifm_tile[4][2*counter+51],ifm_tile[4][2*counter+52],ifm_tile[4][2*counter+53],
ifm_tile[4][2*counter+60],ifm_tile[4][2*counter+61],ifm_tile[4][2*counter+62],ifm_tile[4][2*counter+63],ifm_tile[4][2*counter+64],ifm_tile[4][2*counter+65],
ifm_tile[5][2*counter],ifm_tile[5][2*counter+1],ifm_tile[5][2*counter+2],ifm_tile[5][2*counter+3],ifm_tile[5][2*counter+4],ifm_tile[5][2*counter+5],
ifm_tile[5][2*counter+12],ifm_tile[5][2*counter+13],ifm_tile[5][2*counter+14],ifm_tile[5][2*counter+15],ifm_tile[5][2*counter+16],ifm_tile[5][2*counter+17],
ifm_tile[5][2*counter+24],ifm_tile[5][2*counter+25],ifm_tile[5][2*counter+26],ifm_tile[5][2*counter+27],ifm_tile[5][2*counter+28],ifm_tile[5][2*counter+29],
ifm_tile[5][2*counter+36],ifm_tile[5][2*counter+37],ifm_tile[5][2*counter+38],ifm_tile[5][2*counter+39],ifm_tile[5][2*counter+40],ifm_tile[5][2*counter+41],
ifm_tile[5][2*counter+48],ifm_tile[5][2*counter+49],ifm_tile[5][2*counter+50],ifm_tile[5][2*counter+51],ifm_tile[5][2*counter+52],ifm_tile[5][2*counter+53],
ifm_tile[5][2*counter+60],ifm_tile[5][2*counter+61],ifm_tile[5][2*counter+62],ifm_tile[5][2*counter+63],ifm_tile[5][2*counter+64],ifm_tile[5][2*counter+65],
wgt_tile[0][0],wgt_tile[0][1],wgt_tile[0][2],wgt_tile[0][3],wgt_tile[0][4],     
wgt_tile[0][5],wgt_tile[0][6],wgt_tile[0][7],wgt_tile[0][8],wgt_tile[0][9],     
wgt_tile[0][10],wgt_tile[0][11],wgt_tile[0][12],wgt_tile[0][13],wgt_tile[0][14],
wgt_tile[0][15],wgt_tile[0][16],wgt_tile[0][17],wgt_tile[0][18],wgt_tile[0][19],
wgt_tile[0][20],wgt_tile[0][21],wgt_tile[0][22],wgt_tile[0][23],wgt_tile[0][24],
wgt_tile[1][0],wgt_tile[1][1],wgt_tile[1][2],wgt_tile[1][3],wgt_tile[1][4],     
wgt_tile[1][5],wgt_tile[1][6],wgt_tile[1][7],wgt_tile[1][8],wgt_tile[1][9],     
wgt_tile[1][10],wgt_tile[1][11],wgt_tile[1][12],wgt_tile[1][13],wgt_tile[1][14],
wgt_tile[1][15],wgt_tile[1][16],wgt_tile[1][17],wgt_tile[1][18],wgt_tile[1][19],
wgt_tile[1][20],wgt_tile[1][21],wgt_tile[1][22],wgt_tile[1][23],wgt_tile[1][24],
wgt_tile[2][0],wgt_tile[2][1],wgt_tile[2][2],wgt_tile[2][3],wgt_tile[2][4],     
wgt_tile[2][5],wgt_tile[2][6],wgt_tile[2][7],wgt_tile[2][8],wgt_tile[2][9],     
wgt_tile[2][10],wgt_tile[2][11],wgt_tile[2][12],wgt_tile[2][13],wgt_tile[2][14],
wgt_tile[2][15],wgt_tile[2][16],wgt_tile[2][17],wgt_tile[2][18],wgt_tile[2][19],
wgt_tile[2][20],wgt_tile[0][21],wgt_tile[2][22],wgt_tile[2][23],wgt_tile[2][24],
wgt_tile[3][0],wgt_tile[3][1],wgt_tile[3][2],wgt_tile[3][3],wgt_tile[3][4],     
wgt_tile[3][5],wgt_tile[3][6],wgt_tile[3][7],wgt_tile[3][8],wgt_tile[3][9],     
wgt_tile[3][10],wgt_tile[3][11],wgt_tile[3][12],wgt_tile[3][13],wgt_tile[3][14],
wgt_tile[3][15],wgt_tile[3][16],wgt_tile[3][17],wgt_tile[3][18],wgt_tile[3][19],
wgt_tile[3][20],wgt_tile[3][21],wgt_tile[3][22],wgt_tile[3][23],wgt_tile[3][24],
wgt_tile[4][0],wgt_tile[4][1],wgt_tile[4][2],wgt_tile[4][3],wgt_tile[4][4],     
wgt_tile[4][5],wgt_tile[4][6],wgt_tile[4][7],wgt_tile[4][8],wgt_tile[4][9],     
wgt_tile[4][10],wgt_tile[4][11],wgt_tile[4][12],wgt_tile[4][13],wgt_tile[4][14],
wgt_tile[4][15],wgt_tile[4][16],wgt_tile[4][17],wgt_tile[4][18],wgt_tile[4][19],
wgt_tile[4][20],wgt_tile[4][21],wgt_tile[4][22],wgt_tile[4][23],wgt_tile[4][24],
wgt_tile[5][0],wgt_tile[5][1],wgt_tile[5][2],wgt_tile[5][3],wgt_tile[5][4],     
wgt_tile[5][5],wgt_tile[5][6],wgt_tile[5][7],wgt_tile[5][8],wgt_tile[5][9],     
wgt_tile[5][10],wgt_tile[5][11],wgt_tile[5][12],wgt_tile[5][13],wgt_tile[5][14],
wgt_tile[5][15],wgt_tile[5][16],wgt_tile[5][17],wgt_tile[5][18],wgt_tile[5][19],
wgt_tile[5][20],wgt_tile[5][21],wgt_tile[5][22],wgt_tile[5][23],wgt_tile[5][24],
clock,reset,1'b1);

Dense_Engine CE_L3(
ce3_out,
ifm_tile[0][0],ifm_tile[0][1],ifm_tile[0][2],ifm_tile[0][3],ifm_tile[0][4],ifm_tile[0][5],ifm_tile[0][6],ifm_tile[0][7],ifm_tile[0][8],ifm_tile[0][9],
ifm_tile[0][10],ifm_tile[0][11],ifm_tile[0][12],ifm_tile[0][13],ifm_tile[0][14],ifm_tile[0][15],ifm_tile[0][16],ifm_tile[0][17],ifm_tile[0][18],ifm_tile[0][19],
ifm_tile[0][20],ifm_tile[0][21],ifm_tile[0][22],ifm_tile[0][23],ifm_tile[0][24],ifm_tile[0][25],ifm_tile[0][26],ifm_tile[0][27],ifm_tile[0][28],ifm_tile[0][29],
ifm_tile[0][30],ifm_tile[0][31],ifm_tile[0][32],ifm_tile[0][33],ifm_tile[0][34],ifm_tile[0][35],ifm_tile[0][36],ifm_tile[0][37],ifm_tile[0][38],ifm_tile[0][39],
ifm_tile[0][40],ifm_tile[0][41],ifm_tile[0][42],ifm_tile[0][43],ifm_tile[0][44],ifm_tile[0][45],ifm_tile[0][46],ifm_tile[0][47],ifm_tile[0][48],ifm_tile[0][49],
ifm_tile[0][50],ifm_tile[0][51],ifm_tile[0][52],ifm_tile[0][53],ifm_tile[0][54],ifm_tile[0][55],ifm_tile[0][56],ifm_tile[0][57],ifm_tile[0][58],ifm_tile[0][59],
ifm_tile[0][60],ifm_tile[0][61],ifm_tile[0][62],ifm_tile[0][63],ifm_tile[0][64],ifm_tile[0][65],ifm_tile[0][66],ifm_tile[0][67],ifm_tile[0][68],ifm_tile[0][69],
ifm_tile[0][70],ifm_tile[0][71],ifm_tile[0][72],ifm_tile[0][73],ifm_tile[0][74],ifm_tile[0][75],ifm_tile[0][76],ifm_tile[0][77],ifm_tile[0][78],ifm_tile[0][79],
ifm_tile[0][80],ifm_tile[0][81],ifm_tile[0][82],ifm_tile[0][83],ifm_tile[0][84],ifm_tile[0][85],ifm_tile[0][86],ifm_tile[0][87],ifm_tile[0][88],ifm_tile[0][89],
ifm_tile[0][90],ifm_tile[0][91],ifm_tile[0][92],ifm_tile[0][93],ifm_tile[0][94],ifm_tile[0][95],ifm_tile[0][96],ifm_tile[0][97],ifm_tile[0][98],ifm_tile[0][99],
ifm_tile[0][100],ifm_tile[0][101],ifm_tile[0][102],ifm_tile[0][103],ifm_tile[0][104],ifm_tile[0][105],ifm_tile[0][106],ifm_tile[0][107],ifm_tile[0][108],ifm_tile[0][109],
ifm_tile[0][110],ifm_tile[0][111],ifm_tile[0][112],ifm_tile[0][113],ifm_tile[0][114],ifm_tile[0][115],ifm_tile[0][116],ifm_tile[0][117],ifm_tile[0][118],ifm_tile[0][119],
ifm_tile[0][120],ifm_tile[0][121],ifm_tile[0][122],ifm_tile[0][123],ifm_tile[0][124],ifm_tile[0][125],ifm_tile[0][126],ifm_tile[0][127],ifm_tile[0][128],ifm_tile[0][129],
ifm_tile[0][130],ifm_tile[0][131],ifm_tile[0][132],ifm_tile[0][133],ifm_tile[0][134],ifm_tile[0][135],ifm_tile[0][136],ifm_tile[0][137],ifm_tile[0][138],ifm_tile[0][139],
ifm_tile[0][140],ifm_tile[0][141],ifm_tile[0][142],ifm_tile[0][143],ifm_tile[0][144],ifm_tile[0][145],ifm_tile[0][146],ifm_tile[0][147],ifm_tile[0][148],ifm_tile[0][149],
ifm_tile[0][150],ifm_tile[0][151],ifm_tile[0][152],ifm_tile[0][153],ifm_tile[0][154],ifm_tile[0][155],ifm_tile[0][156],ifm_tile[0][157],ifm_tile[0][158],ifm_tile[0][159],
ifm_tile[0][160],ifm_tile[0][161],ifm_tile[0][162],ifm_tile[0][163],ifm_tile[0][164],ifm_tile[0][165],ifm_tile[0][166],ifm_tile[0][167],ifm_tile[0][168],ifm_tile[0][169],
ifm_tile[0][170],ifm_tile[0][171],ifm_tile[0][172],ifm_tile[0][173],ifm_tile[0][174],ifm_tile[0][175],ifm_tile[0][176],ifm_tile[0][177],ifm_tile[0][178],ifm_tile[0][179],
ifm_tile[0][180],ifm_tile[0][181],ifm_tile[0][182],ifm_tile[0][183],ifm_tile[0][184],ifm_tile[0][185],ifm_tile[0][186],ifm_tile[0][187],ifm_tile[0][188],ifm_tile[0][189],
ifm_tile[0][190],ifm_tile[0][191],
wgt_tile[counter][0],wgt_tile[counter][1],wgt_tile[counter][2],wgt_tile[counter][3],wgt_tile[counter][4],wgt_tile[counter][5],wgt_tile[counter][6],wgt_tile[counter][7],wgt_tile[counter][8],wgt_tile[counter][9],
wgt_tile[counter][10],wgt_tile[counter][11],wgt_tile[counter][12],wgt_tile[counter][13],wgt_tile[counter][14],wgt_tile[counter][15],wgt_tile[counter][16],wgt_tile[counter][17],wgt_tile[counter][18],wgt_tile[counter][19],
wgt_tile[counter][20],wgt_tile[counter][21],wgt_tile[counter][22],wgt_tile[counter][23],wgt_tile[counter][24],wgt_tile[counter][25],wgt_tile[counter][26],wgt_tile[counter][27],wgt_tile[counter][28],wgt_tile[counter][29],
wgt_tile[counter][30],wgt_tile[counter][31],wgt_tile[counter][32],wgt_tile[counter][33],wgt_tile[counter][34],wgt_tile[counter][35],wgt_tile[counter][36],wgt_tile[counter][37],wgt_tile[counter][38],wgt_tile[counter][39],
wgt_tile[counter][40],wgt_tile[counter][41],wgt_tile[counter][42],wgt_tile[counter][43],wgt_tile[counter][44],wgt_tile[counter][45],wgt_tile[counter][46],wgt_tile[counter][47],wgt_tile[counter][48],wgt_tile[counter][49],
wgt_tile[counter][50],wgt_tile[counter][51],wgt_tile[counter][52],wgt_tile[counter][53],wgt_tile[counter][54],wgt_tile[counter][55],wgt_tile[counter][56],wgt_tile[counter][57],wgt_tile[counter][58],wgt_tile[counter][59],
wgt_tile[counter][60],wgt_tile[counter][61],wgt_tile[counter][62],wgt_tile[counter][63],wgt_tile[counter][64],wgt_tile[counter][65],wgt_tile[counter][66],wgt_tile[counter][67],wgt_tile[counter][68],wgt_tile[counter][69],
wgt_tile[counter][70],wgt_tile[counter][71],wgt_tile[counter][72],wgt_tile[counter][73],wgt_tile[counter][74],wgt_tile[counter][75],wgt_tile[counter][76],wgt_tile[counter][77],wgt_tile[counter][78],wgt_tile[counter][79],
wgt_tile[counter][80],wgt_tile[counter][81],wgt_tile[counter][82],wgt_tile[counter][83],wgt_tile[counter][84],wgt_tile[counter][85],wgt_tile[counter][86],wgt_tile[counter][87],wgt_tile[counter][88],wgt_tile[counter][89],
wgt_tile[counter][90],wgt_tile[counter][91],wgt_tile[counter][92],wgt_tile[counter][93],wgt_tile[counter][94],wgt_tile[counter][95],wgt_tile[counter][96],wgt_tile[counter][97],wgt_tile[counter][98],wgt_tile[counter][99],
wgt_tile[counter][100],wgt_tile[counter][101],wgt_tile[counter][102],wgt_tile[counter][103],wgt_tile[counter][104],wgt_tile[counter][105],wgt_tile[counter][106],wgt_tile[counter][107],wgt_tile[counter][108],wgt_tile[counter][109],
wgt_tile[counter][110],wgt_tile[counter][111],wgt_tile[counter][112],wgt_tile[counter][113],wgt_tile[counter][114],wgt_tile[counter][115],wgt_tile[counter][116],wgt_tile[counter][117],wgt_tile[counter][118],wgt_tile[counter][119],
wgt_tile[counter][120],wgt_tile[counter][121],wgt_tile[counter][122],wgt_tile[counter][123],wgt_tile[counter][124],wgt_tile[counter][125],wgt_tile[counter][126],wgt_tile[counter][127],wgt_tile[counter][128],wgt_tile[counter][129],
wgt_tile[counter][130],wgt_tile[counter][131],wgt_tile[counter][132],wgt_tile[counter][133],wgt_tile[counter][134],wgt_tile[counter][135],wgt_tile[counter][136],wgt_tile[counter][137],wgt_tile[counter][138],wgt_tile[counter][139],
wgt_tile[counter][140],wgt_tile[counter][141],wgt_tile[counter][142],wgt_tile[counter][143],wgt_tile[counter][144],wgt_tile[counter][145],wgt_tile[counter][146],wgt_tile[counter][147],wgt_tile[counter][148],wgt_tile[counter][149],
wgt_tile[counter][150],wgt_tile[counter][151],wgt_tile[counter][152],wgt_tile[counter][153],wgt_tile[counter][154],wgt_tile[counter][155],wgt_tile[counter][156],wgt_tile[counter][157],wgt_tile[counter][158],wgt_tile[counter][159],
wgt_tile[counter][160],wgt_tile[counter][161],wgt_tile[counter][162],wgt_tile[counter][163],wgt_tile[counter][164],wgt_tile[counter][165],wgt_tile[counter][166],wgt_tile[counter][167],wgt_tile[counter][168],wgt_tile[counter][169],
wgt_tile[counter][170],wgt_tile[counter][171],wgt_tile[counter][172],wgt_tile[counter][173],wgt_tile[counter][174],wgt_tile[counter][175],wgt_tile[counter][176],wgt_tile[counter][177],wgt_tile[counter][178],wgt_tile[counter][179],
wgt_tile[counter][180],wgt_tile[counter][181],wgt_tile[counter][182],wgt_tile[counter][183],wgt_tile[counter][184],wgt_tile[counter][185],wgt_tile[counter][186],wgt_tile[counter][187],wgt_tile[counter][188],wgt_tile[counter][189],
wgt_tile[counter][190],wgt_tile[counter][191],
clock,reset,1'b1);

endmodule
